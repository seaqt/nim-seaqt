import ../QtCore/gen_qobject_types
export gen_qobject_types

type QLocalServer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QLocalServer, source: QLocalServer) {.error.}
proc `=sink`(dest: var QLocalServer, source: QLocalServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

