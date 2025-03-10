import ./gen_qmediaobject_types
export gen_qmediaobject_types

type QRadioTuner* = object of gen_qmediaobject_types.QMediaObject
proc `=copy`(dest: var QRadioTuner, source: QRadioTuner) {.error.}
proc `=sink`(dest: var QRadioTuner, source: QRadioTuner) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

