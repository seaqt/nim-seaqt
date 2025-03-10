import ./gen_qstyle_types
export gen_qstyle_types

type QCommonStyle* = object of gen_qstyle_types.QStyle
proc `=copy`(dest: var QCommonStyle, source: QCommonStyle) {.error.}
proc `=sink`(dest: var QCommonStyle, source: QCommonStyle) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

