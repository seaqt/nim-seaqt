type QStringView* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qstringview.cpp", QtCoreCFlags).}

proc fcQStringView_delete(self: pointer) {.importc: "QStringView_delete".}
proc `=destroy`(self: var QStringView) =
  if self.owned: fcQStringView_delete(self.h)

proc `=sink`(dest: var QStringView, source: QStringView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStringView, source: QStringView) {.error.}
proc delete*(self: sink QStringView) =
  let h = self.h
  wasMoved(self)
  fcQStringView_delete(h)

