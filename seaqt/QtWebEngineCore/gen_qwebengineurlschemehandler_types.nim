import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineUrlSchemeHandler* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineUrlSchemeHandler, source: QWebEngineUrlSchemeHandler) {.error.}
proc `=sink`(dest: var QWebEngineUrlSchemeHandler, source: QWebEngineUrlSchemeHandler) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

