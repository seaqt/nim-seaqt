import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QRadioDataControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QRadioDataControl, source: QRadioDataControl) {.error.}
proc `=sink`(dest: var QRadioDataControl, source: QRadioDataControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

