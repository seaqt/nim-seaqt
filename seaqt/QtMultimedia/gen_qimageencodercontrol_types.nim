import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QImageEncoderControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QImageEncoderControl, source: QImageEncoderControl) {.error.}
proc `=sink`(dest: var QImageEncoderControl, source: QImageEncoderControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

