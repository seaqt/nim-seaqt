import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

# TODO Multiple inheritance from QMediaBindableInterface
type QVideoWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QVideoWidget, source: QVideoWidget) {.error.}
proc `=sink`(dest: var QVideoWidget, source: QVideoWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

