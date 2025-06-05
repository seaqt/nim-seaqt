type QStringList* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qstringlist.cpp", QtCoreCFlags).}

proc fcQStringList_delete(self: pointer) {.importc: "QStringList_delete".}
proc `=destroy`(self: var QStringList) =
  if self.owned: fcQStringList_delete(self.h)

proc `=sink`(dest: var QStringList, source: QStringList) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStringList, source: QStringList) {.error.}
proc delete*(self: sink QStringList) =
  let h = self.h
  wasMoved(self)
  fcQStringList_delete(h)

