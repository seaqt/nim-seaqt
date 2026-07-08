import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMetaDataWriterControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMetaDataWriterControl, source: QMetaDataWriterControl) {.error.}
proc `=sink`(dest: var QMetaDataWriterControl, source: QMetaDataWriterControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

