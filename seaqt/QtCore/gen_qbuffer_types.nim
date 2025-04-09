import ./gen_qiodevice_types
export gen_qiodevice_types

type QBuffer* = object of gen_qiodevice_types.QIODevice
