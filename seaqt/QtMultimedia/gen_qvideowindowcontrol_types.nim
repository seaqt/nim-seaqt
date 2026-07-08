import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QVideoWindowControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QVideoWindowControl, source: QVideoWindowControl) {.error.}
proc `=sink`(dest: var QVideoWindowControl, source: QVideoWindowControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

