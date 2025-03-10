import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QVideoDeviceSelectorControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QVideoDeviceSelectorControl, source: QVideoDeviceSelectorControl) {.error.}
proc `=sink`(dest: var QVideoDeviceSelectorControl, source: QVideoDeviceSelectorControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

