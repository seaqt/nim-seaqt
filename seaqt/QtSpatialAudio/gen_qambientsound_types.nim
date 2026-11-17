import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAmbientSound* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAmbientSound, source: QAmbientSound) {.error.}
proc `=sink`(dest: var QAmbientSound, source: QAmbientSound) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

