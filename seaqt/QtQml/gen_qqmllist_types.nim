type QQmlListReference* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qqmllist.cpp", QtQmlCFlags).}

proc fcQQmlListReference_delete(self: pointer) {.importc: "QQmlListReference_delete".}
proc `=destroy`(self: var QQmlListReference) =
  if self.owned: fcQQmlListReference_delete(self.h)

proc `=sink`(dest: var QQmlListReference, source: QQmlListReference) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlListReference, source: QQmlListReference) {.error.}
proc delete*(self: sink QQmlListReference) =
  let h = self.h
  wasMoved(self)
  fcQQmlListReference_delete(h)

