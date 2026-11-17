import ../QtCore/gen_qobject_types
export gen_qobject_types

type QNetworkAccessManager* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QNetworkAccessManager, source: QNetworkAccessManager) {.error.}
proc `=sink`(dest: var QNetworkAccessManager, source: QNetworkAccessManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

