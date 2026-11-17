import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQnxNativeServer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQnxNativeServer, source: QQnxNativeServer) {.error.}
proc `=sink`(dest: var QQnxNativeServer, source: QQnxNativeServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

