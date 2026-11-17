import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QMediaBindableInterface
type QMediaPlaylist* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaPlaylist, source: QMediaPlaylist) {.error.}
proc `=sink`(dest: var QMediaPlaylist, source: QMediaPlaylist) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

