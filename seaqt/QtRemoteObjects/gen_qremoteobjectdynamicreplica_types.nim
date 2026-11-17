import ./gen_qremoteobjectreplica_types
export gen_qremoteobjectreplica_types

type QRemoteObjectDynamicReplica* = object of gen_qremoteobjectreplica_types.QRemoteObjectReplica
proc `=copy`(dest: var QRemoteObjectDynamicReplica, source: QRemoteObjectDynamicReplica) {.error.}
proc `=sink`(dest: var QRemoteObjectDynamicReplica, source: QRemoteObjectDynamicReplica) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

