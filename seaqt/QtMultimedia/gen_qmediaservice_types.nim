import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMediaService* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaService, source: QMediaService) {.error.}
proc `=sink`(dest: var QMediaService, source: QMediaService) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

