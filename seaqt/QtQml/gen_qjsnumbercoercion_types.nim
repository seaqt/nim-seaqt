type QJSNumberCoercion* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qjsnumbercoercion.cpp", QtQmlCFlags).}

proc fcQJSNumberCoercion_delete(self: pointer) {.importc: "QJSNumberCoercion_delete".}
proc `=destroy`(self: var QJSNumberCoercion) =
  if self.owned: fcQJSNumberCoercion_delete(self.h)

proc `=sink`(dest: var QJSNumberCoercion, source: QJSNumberCoercion) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSNumberCoercion, source: QJSNumberCoercion) {.error.}
proc delete*(self: sink QJSNumberCoercion) =
  let h = self.h
  wasMoved(self)
  fcQJSNumberCoercion_delete(h)

