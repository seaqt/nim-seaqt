import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

# TODO Multiple inheritance from QMediaBindableInterface
type QVideoWidget* = object of gen_qwidget_types.QWidget
