import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QRadioTunerControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QRadioTunerControl, source: QRadioTunerControl) {.error.}
proc `=sink`(dest: var QRadioTunerControl, source: QRadioTunerControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

