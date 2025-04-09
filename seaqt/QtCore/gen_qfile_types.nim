import ./gen_qfiledevice_types
export gen_qfiledevice_types

type QFile* = object of gen_qfiledevice_types.QFileDevice
