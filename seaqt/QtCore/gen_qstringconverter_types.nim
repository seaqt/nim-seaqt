import ./gen_qstringconverter_base_types
export gen_qstringconverter_base_types

type QStringEncoder* = object of gen_qstringconverter_base_types.QStringConverter
proc `=copy`(dest: var QStringEncoder, source: QStringEncoder) {.error.}
proc `=sink`(dest: var QStringEncoder, source: QStringEncoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStringDecoder* = object of gen_qstringconverter_base_types.QStringConverter
proc `=copy`(dest: var QStringDecoder, source: QStringDecoder) {.error.}
proc `=sink`(dest: var QStringDecoder, source: QStringDecoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

