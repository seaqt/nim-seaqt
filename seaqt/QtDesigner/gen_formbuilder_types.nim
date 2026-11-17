import ./gen_abstractformbuilder_types
export gen_abstractformbuilder_types

type QFormBuilder* = object of gen_abstractformbuilder_types.QAbstractFormBuilder
proc `=copy`(dest: var QFormBuilder, source: QFormBuilder) {.error.}
proc `=sink`(dest: var QFormBuilder, source: QFormBuilder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

