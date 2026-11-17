import ../QtCore/gen_qiodevice_types
export gen_qiodevice_types

type QQnxNativeIo* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QQnxNativeIo, source: QQnxNativeIo) {.error.}
proc `=sink`(dest: var QQnxNativeIo, source: QQnxNativeIo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QIOQnxSource* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QIOQnxSource, source: QIOQnxSource) {.error.}
proc `=sink`(dest: var QIOQnxSource, source: QIOQnxSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

