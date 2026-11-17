import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineDownloadItem* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineDownloadItem, source: QWebEngineDownloadItem) {.error.}
proc `=sink`(dest: var QWebEngineDownloadItem, source: QWebEngineDownloadItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

