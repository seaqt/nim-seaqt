import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaNetworkAccessControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaNetworkAccessControl, source: QMediaNetworkAccessControl) {.error.}
proc `=sink`(dest: var QMediaNetworkAccessControl, source: QMediaNetworkAccessControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

