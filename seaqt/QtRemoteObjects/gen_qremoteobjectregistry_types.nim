import ./gen_qremoteobjectreplica_types
export gen_qremoteobjectreplica_types

type QRemoteObjectRegistry* = object of gen_qremoteobjectreplica_types.QRemoteObjectReplica
proc `=copy`(dest: var QRemoteObjectRegistry, source: QRemoteObjectRegistry) {.error.}
proc `=sink`(dest: var QRemoteObjectRegistry, source: QRemoteObjectRegistry) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

