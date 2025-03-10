import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QPagedPaintDevice
type QPdfWriter* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPdfWriter, source: QPdfWriter) {.error.}
proc `=sink`(dest: var QPdfWriter, source: QPdfWriter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

