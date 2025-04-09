import ../QtCore/gen_qiodevice_types
export gen_qiodevice_types

type QWaveDecoder* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QWaveDecoder, source: QWaveDecoder) {.error.}
proc `=sink`(dest: var QWaveDecoder, source: QWaveDecoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

