import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMetaDataReaderControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMetaDataReaderControl, source: QMetaDataReaderControl) {.error.}
proc `=sink`(dest: var QMetaDataReaderControl, source: QMetaDataReaderControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

