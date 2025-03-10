import ../QtCore/gen_qobject_types
export gen_qobject_types

type QNetworkSession* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QNetworkSession, source: QNetworkSession) {.error.}
proc `=sink`(dest: var QNetworkSession, source: QNetworkSession) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

