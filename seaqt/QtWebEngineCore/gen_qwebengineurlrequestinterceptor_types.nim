import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineUrlRequestInterceptor* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineUrlRequestInterceptor, source: QWebEngineUrlRequestInterceptor) {.error.}
proc `=sink`(dest: var QWebEngineUrlRequestInterceptor, source: QWebEngineUrlRequestInterceptor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

