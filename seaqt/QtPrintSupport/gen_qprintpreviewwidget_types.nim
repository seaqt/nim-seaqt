import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QPrintPreviewWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QPrintPreviewWidget, source: QPrintPreviewWidget) {.error.}
proc `=sink`(dest: var QPrintPreviewWidget, source: QPrintPreviewWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

