import ./gen_qiodevice_types
export gen_qiodevice_types

type QFileDevice* = object of gen_qiodevice_types.QIODevice
