import ./gen_qiodevicebase_types
export gen_qiodevicebase_types

type QDataStream* = object of gen_qiodevicebase_types.QIODeviceBase
proc `=copy`(dest: var QDataStream, source: QDataStream) {.error.}
proc `=sink`(dest: var QDataStream, source: QDataStream) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

