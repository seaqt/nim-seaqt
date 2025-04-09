import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMediaPlayer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaPlayer, source: QMediaPlayer) {.error.}
proc `=sink`(dest: var QMediaPlayer, source: QMediaPlayer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

