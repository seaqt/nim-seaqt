import ../QtWebEngineCore/gen_qwebenginedownloadrequest_types
export gen_qwebenginedownloadrequest_types

type QQuickWebEngineDownloadRequest* = object of gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest
proc `=copy`(dest: var QQuickWebEngineDownloadRequest, source: QQuickWebEngineDownloadRequest) {.error.}
proc `=sink`(dest: var QQuickWebEngineDownloadRequest, source: QQuickWebEngineDownloadRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

