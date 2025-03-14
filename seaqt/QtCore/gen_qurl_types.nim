type QUrl* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qurl.cpp", QtCoreCFlags).}

proc fcQUrl_delete(self: pointer) {.importc: "QUrl_delete".}
proc `=destroy`(self: var QUrl) =
  if self.owned: fcQUrl_delete(self.h)

proc `=sink`(dest: var QUrl, source: QUrl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUrl, source: QUrl) {.error.}
proc delete*(self: sink QUrl) =
  let h = self.h
  wasMoved(self)
  fcQUrl_delete(h)

