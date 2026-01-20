import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaAvailabilityControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaAvailabilityControl, source: QMediaAvailabilityControl) {.error.}
proc `=sink`(dest: var QMediaAvailabilityControl, source: QMediaAvailabilityControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

