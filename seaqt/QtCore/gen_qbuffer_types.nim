import ./gen_qiodevice_types
export gen_qiodevice_types

type QBuffer* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QBuffer, source: QBuffer) {.error.}
proc `=sink`(dest: var QBuffer, source: QBuffer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

