import ../QtMultimedia/gen_qmediacontrol_types
export gen_qmediacontrol_types

type QVideoWidgetControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QVideoWidgetControl, source: QVideoWidgetControl) {.error.}
proc `=sink`(dest: var QVideoWidgetControl, source: QVideoWidgetControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

