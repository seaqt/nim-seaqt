import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSoundEffect* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSoundEffect, source: QSoundEffect) {.error.}
proc `=sink`(dest: var QSoundEffect, source: QSoundEffect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

