import ./gen_qstringconverter_base_types
export gen_qstringconverter_base_types

type QStringEncoder* = object of gen_qstringconverter_base_types.QStringConverter
type QStringDecoder* = object of gen_qstringconverter_base_types.QStringConverter
