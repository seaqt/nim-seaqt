import ../QtCore/gen_qobject_types
export gen_qobject_types

type QNetworkInformation* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QNetworkInformation, source: QNetworkInformation) {.error.}
proc `=sink`(dest: var QNetworkInformation, source: QNetworkInformation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

