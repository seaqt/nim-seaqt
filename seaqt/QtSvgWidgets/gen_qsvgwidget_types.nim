import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QSvgWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QSvgWidget, source: QSvgWidget) {.error.}
proc `=sink`(dest: var QSvgWidget, source: QSvgWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

