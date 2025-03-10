import ./gen_qcommonstyle_types
export gen_qcommonstyle_types

type QProxyStyle* = object of gen_qcommonstyle_types.QCommonStyle
proc `=copy`(dest: var QProxyStyle, source: QProxyStyle) {.error.}
proc `=sink`(dest: var QProxyStyle, source: QProxyStyle) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

