import ../QtCore/gen_qobject_types
export gen_qobject_types

type QRemoteObjectReplica* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QRemoteObjectReplica, source: QRemoteObjectReplica) {.error.}
proc `=sink`(dest: var QRemoteObjectReplica, source: QRemoteObjectReplica) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

