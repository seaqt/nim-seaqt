import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineDownloadRequest* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineDownloadRequest, source: QWebEngineDownloadRequest) {.error.}
proc `=sink`(dest: var QWebEngineDownloadRequest, source: QWebEngineDownloadRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

