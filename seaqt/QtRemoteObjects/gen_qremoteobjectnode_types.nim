import ../QtCore/gen_qobject_types
export gen_qobject_types

type QRemoteObjectAbstractPersistedStore* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QRemoteObjectAbstractPersistedStore, source: QRemoteObjectAbstractPersistedStore) {.error.}
proc `=sink`(dest: var QRemoteObjectAbstractPersistedStore, source: QRemoteObjectAbstractPersistedStore) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRemoteObjectNode* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QRemoteObjectNode, source: QRemoteObjectNode) {.error.}
proc `=sink`(dest: var QRemoteObjectNode, source: QRemoteObjectNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRemoteObjectHostBase* = object of QRemoteObjectNode
proc `=copy`(dest: var QRemoteObjectHostBase, source: QRemoteObjectHostBase) {.error.}
proc `=sink`(dest: var QRemoteObjectHostBase, source: QRemoteObjectHostBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRemoteObjectHost* = object of QRemoteObjectHostBase
proc `=copy`(dest: var QRemoteObjectHost, source: QRemoteObjectHost) {.error.}
proc `=sink`(dest: var QRemoteObjectHost, source: QRemoteObjectHost) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRemoteObjectRegistryHost* = object of QRemoteObjectHostBase
proc `=copy`(dest: var QRemoteObjectRegistryHost, source: QRemoteObjectRegistryHost) {.error.}
proc `=sink`(dest: var QRemoteObjectRegistryHost, source: QRemoteObjectRegistryHost) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

