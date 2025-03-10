import ../QtCore/gen_qiodevice_types
export gen_qiodevice_types

type QNetworkReply* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QNetworkReply, source: QNetworkReply) {.error.}
proc `=sink`(dest: var QNetworkReply, source: QNetworkReply) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

