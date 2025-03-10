import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineUrlRequestJob* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineUrlRequestJob, source: QWebEngineUrlRequestJob) {.error.}
proc `=sink`(dest: var QWebEngineUrlRequestJob, source: QWebEngineUrlRequestJob) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

