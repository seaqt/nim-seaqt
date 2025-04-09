import ./gen_qfiledevice_types
export gen_qfiledevice_types

type QSaveFile* = object of gen_qfiledevice_types.QFileDevice
