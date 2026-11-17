import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QAbstractExtensionFactory
type QExtensionFactory* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QExtensionFactory, source: QExtensionFactory) {.error.}
proc `=sink`(dest: var QExtensionFactory, source: QExtensionFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

