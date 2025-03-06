type QProcessEnvironment* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qiodevice_types
export gen_qiodevice_types

type QProcess* = object of gen_qiodevice_types.QIODevice
