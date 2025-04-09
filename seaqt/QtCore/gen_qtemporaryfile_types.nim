import ./gen_qfile_types
export gen_qfile_types

type QTemporaryFile* = object of gen_qfile_types.QFile
