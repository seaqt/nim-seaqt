import ./gen_qmediaobject_types
export gen_qmediaobject_types

type QMediaPlayer* = object of gen_qmediaobject_types.QMediaObject
proc `=copy`(dest: var QMediaPlayer, source: QMediaPlayer) {.error.}
proc `=sink`(dest: var QMediaPlayer, source: QMediaPlayer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

