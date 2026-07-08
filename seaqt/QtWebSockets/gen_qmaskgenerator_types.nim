import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMaskGenerator* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMaskGenerator, source: QMaskGenerator) {.error.}
proc `=sink`(dest: var QMaskGenerator, source: QMaskGenerator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

