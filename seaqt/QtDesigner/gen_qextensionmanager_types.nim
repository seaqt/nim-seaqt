import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QAbstractExtensionManager
type QExtensionManager* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QExtensionManager, source: QExtensionManager) {.error.}
proc `=sink`(dest: var QExtensionManager, source: QExtensionManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

