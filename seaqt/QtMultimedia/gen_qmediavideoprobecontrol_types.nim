import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaVideoProbeControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaVideoProbeControl, source: QMediaVideoProbeControl) {.error.}
proc `=sink`(dest: var QMediaVideoProbeControl, source: QMediaVideoProbeControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

