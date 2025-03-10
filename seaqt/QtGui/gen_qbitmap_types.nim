import ./gen_qpixmap_types
export gen_qpixmap_types

type QBitmap* = object of gen_qpixmap_types.QPixmap
proc `=copy`(dest: var QBitmap, source: QBitmap) {.error.}
proc `=sink`(dest: var QBitmap, source: QBitmap) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

