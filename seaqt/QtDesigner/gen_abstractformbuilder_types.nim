type QAbstractFormBuilder* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractformbuilder.cpp", QtDesignerCFlags).}

proc fcQAbstractFormBuilder_delete(self: pointer) {.importc: "QAbstractFormBuilder_delete".}
proc `=destroy`(self: var QAbstractFormBuilder) =
  if self.owned: fcQAbstractFormBuilder_delete(self.h)

proc `=sink`(dest: var QAbstractFormBuilder, source: QAbstractFormBuilder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractFormBuilder, source: QAbstractFormBuilder) {.error.}
proc delete*(self: sink QAbstractFormBuilder) =
  let h = self.h
  wasMoved(self)
  fcQAbstractFormBuilder_delete(h)

