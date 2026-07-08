import ./gen_qiodevicebase_types
export gen_qiodevicebase_types

type QTextStream* = object of gen_qiodevicebase_types.QIODeviceBase
proc `=copy`(dest: var QTextStream, source: QTextStream) {.error.}
proc `=sink`(dest: var QTextStream, source: QTextStream) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

