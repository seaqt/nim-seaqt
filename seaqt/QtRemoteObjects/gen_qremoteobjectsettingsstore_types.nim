import ./gen_qremoteobjectnode_types
export gen_qremoteobjectnode_types

type QRemoteObjectSettingsStore* = object of gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore
proc `=copy`(dest: var QRemoteObjectSettingsStore, source: QRemoteObjectSettingsStore) {.error.}
proc `=sink`(dest: var QRemoteObjectSettingsStore, source: QRemoteObjectSettingsStore) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

