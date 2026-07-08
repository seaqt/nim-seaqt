import ../QtCore/gen_qobject_types
export gen_qobject_types

type QNetworkConfigurationManager* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QNetworkConfigurationManager, source: QNetworkConfigurationManager) {.error.}
proc `=sink`(dest: var QNetworkConfigurationManager, source: QNetworkConfigurationManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

