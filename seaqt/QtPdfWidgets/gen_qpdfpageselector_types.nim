import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QPdfPageSelector* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QPdfPageSelector, source: QPdfPageSelector) {.error.}
proc `=sink`(dest: var QPdfPageSelector, source: QPdfPageSelector) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

