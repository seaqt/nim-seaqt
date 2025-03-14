type QQmlProperty* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qqmlproperty.cpp", QtQmlCFlags).}

proc fcQQmlProperty_delete(self: pointer) {.importc: "QQmlProperty_delete".}
proc `=destroy`(self: var QQmlProperty) =
  if self.owned: fcQQmlProperty_delete(self.h)

proc `=sink`(dest: var QQmlProperty, source: QQmlProperty) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlProperty, source: QQmlProperty) {.error.}
proc delete*(self: sink QQmlProperty) =
  let h = self.h
  wasMoved(self)
  fcQQmlProperty_delete(h)

