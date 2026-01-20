import ../QtCore/gen_qobject_types
export gen_qobject_types

type QPictureFormatPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPictureFormatPlugin, source: QPictureFormatPlugin) {.error.}
proc `=sink`(dest: var QPictureFormatPlugin, source: QPictureFormatPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

