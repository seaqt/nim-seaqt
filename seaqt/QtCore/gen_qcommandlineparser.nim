import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qcommandlineparser.cpp", cflags).}


type QCommandLineParserSingleDashWordOptionModeEnum* = distinct cint
template ParseAsCompactedShortOptions*(_: type QCommandLineParserSingleDashWordOptionModeEnum): untyped = 0
template ParseAsLongOptions*(_: type QCommandLineParserSingleDashWordOptionModeEnum): untyped = 1


type QCommandLineParserOptionsAfterPositionalArgumentsModeEnum* = distinct cint
template ParseAsOptions*(_: type QCommandLineParserOptionsAfterPositionalArgumentsModeEnum): untyped = 0
template ParseAsPositionalArguments*(_: type QCommandLineParserOptionsAfterPositionalArgumentsModeEnum): untyped = 1


import ./gen_qcommandlineparser_types
export gen_qcommandlineparser_types

import
  ./gen_qcommandlineoption_types,
  ./gen_qcoreapplication_types
export
  gen_qcommandlineoption_types,
  gen_qcoreapplication_types

type cQCommandLineParser*{.exportc: "QCommandLineParser", incompleteStruct.} = object

proc fcQCommandLineParser_new(): ptr cQCommandLineParser {.importc: "QCommandLineParser_new".}
proc fcQCommandLineParser_tr(sourceText: cstring): struct_miqt_string {.importc: "QCommandLineParser_tr".}
proc fcQCommandLineParser_trUtf8(sourceText: cstring): struct_miqt_string {.importc: "QCommandLineParser_trUtf8".}
proc fcQCommandLineParser_setSingleDashWordOptionMode(self: pointer, parsingMode: cint): void {.importc: "QCommandLineParser_setSingleDashWordOptionMode".}
proc fcQCommandLineParser_setOptionsAfterPositionalArgumentsMode(self: pointer, mode: cint): void {.importc: "QCommandLineParser_setOptionsAfterPositionalArgumentsMode".}
proc fcQCommandLineParser_addOption(self: pointer, commandLineOption: pointer): bool {.importc: "QCommandLineParser_addOption".}
proc fcQCommandLineParser_addOptions(self: pointer, options: struct_miqt_array): bool {.importc: "QCommandLineParser_addOptions".}
proc fcQCommandLineParser_addVersionOption(self: pointer, ): pointer {.importc: "QCommandLineParser_addVersionOption".}
proc fcQCommandLineParser_addHelpOption(self: pointer, ): pointer {.importc: "QCommandLineParser_addHelpOption".}
proc fcQCommandLineParser_setApplicationDescription(self: pointer, description: struct_miqt_string): void {.importc: "QCommandLineParser_setApplicationDescription".}
proc fcQCommandLineParser_applicationDescription(self: pointer, ): struct_miqt_string {.importc: "QCommandLineParser_applicationDescription".}
proc fcQCommandLineParser_addPositionalArgument(self: pointer, name: struct_miqt_string, description: struct_miqt_string): void {.importc: "QCommandLineParser_addPositionalArgument".}
proc fcQCommandLineParser_clearPositionalArguments(self: pointer, ): void {.importc: "QCommandLineParser_clearPositionalArguments".}
proc fcQCommandLineParser_process(self: pointer, arguments: struct_miqt_array): void {.importc: "QCommandLineParser_process".}
proc fcQCommandLineParser_processWithApp(self: pointer, app: pointer): void {.importc: "QCommandLineParser_processWithApp".}
proc fcQCommandLineParser_parse(self: pointer, arguments: struct_miqt_array): bool {.importc: "QCommandLineParser_parse".}
proc fcQCommandLineParser_errorText(self: pointer, ): struct_miqt_string {.importc: "QCommandLineParser_errorText".}
proc fcQCommandLineParser_isSet(self: pointer, name: struct_miqt_string): bool {.importc: "QCommandLineParser_isSet".}
proc fcQCommandLineParser_value(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QCommandLineParser_value".}
proc fcQCommandLineParser_values(self: pointer, name: struct_miqt_string): struct_miqt_array {.importc: "QCommandLineParser_values".}
proc fcQCommandLineParser_isSetWithOption(self: pointer, option: pointer): bool {.importc: "QCommandLineParser_isSetWithOption".}
proc fcQCommandLineParser_valueWithOption(self: pointer, option: pointer): struct_miqt_string {.importc: "QCommandLineParser_valueWithOption".}
proc fcQCommandLineParser_valuesWithOption(self: pointer, option: pointer): struct_miqt_array {.importc: "QCommandLineParser_valuesWithOption".}
proc fcQCommandLineParser_positionalArguments(self: pointer, ): struct_miqt_array {.importc: "QCommandLineParser_positionalArguments".}
proc fcQCommandLineParser_optionNames(self: pointer, ): struct_miqt_array {.importc: "QCommandLineParser_optionNames".}
proc fcQCommandLineParser_unknownOptionNames(self: pointer, ): struct_miqt_array {.importc: "QCommandLineParser_unknownOptionNames".}
proc fcQCommandLineParser_helpText(self: pointer, ): struct_miqt_string {.importc: "QCommandLineParser_helpText".}
proc fcQCommandLineParser_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QCommandLineParser_tr2".}
proc fcQCommandLineParser_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QCommandLineParser_tr3".}
proc fcQCommandLineParser_trUtf82(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QCommandLineParser_trUtf82".}
proc fcQCommandLineParser_trUtf83(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QCommandLineParser_trUtf83".}
proc fcQCommandLineParser_addPositionalArgument3(self: pointer, name: struct_miqt_string, description: struct_miqt_string, syntax: struct_miqt_string): void {.importc: "QCommandLineParser_addPositionalArgument3".}
proc fcQCommandLineParser_delete(self: pointer) {.importc: "QCommandLineParser_delete".}


func init*(T: type gen_qcommandlineparser_types.QCommandLineParser, h: ptr cQCommandLineParser): gen_qcommandlineparser_types.QCommandLineParser =
  T(h: h)
proc create*(T: type gen_qcommandlineparser_types.QCommandLineParser, ): gen_qcommandlineparser_types.QCommandLineParser =
  gen_qcommandlineparser_types.QCommandLineParser.init(fcQCommandLineParser_new())

proc tr*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring): string =
  let v_ms = fcQCommandLineParser_tr(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring): string =
  let v_ms = fcQCommandLineParser_trUtf8(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSingleDashWordOptionMode*(self: gen_qcommandlineparser_types.QCommandLineParser, parsingMode: cint): void =
  fcQCommandLineParser_setSingleDashWordOptionMode(self.h, cint(parsingMode))

proc setOptionsAfterPositionalArgumentsMode*(self: gen_qcommandlineparser_types.QCommandLineParser, mode: cint): void =
  fcQCommandLineParser_setOptionsAfterPositionalArgumentsMode(self.h, cint(mode))

proc addOption*(self: gen_qcommandlineparser_types.QCommandLineParser, commandLineOption: gen_qcommandlineoption_types.QCommandLineOption): bool =
  fcQCommandLineParser_addOption(self.h, commandLineOption.h)

proc addOptions*(self: gen_qcommandlineparser_types.QCommandLineParser, options: seq[gen_qcommandlineoption_types.QCommandLineOption]): bool =
  var options_CArray = newSeq[pointer](len(options))
  for i in 0..<len(options):
    options_CArray[i] = options[i].h

  fcQCommandLineParser_addOptions(self.h, struct_miqt_array(len: csize_t(len(options)), data: if len(options) == 0: nil else: addr(options_CArray[0])))

proc addVersionOption*(self: gen_qcommandlineparser_types.QCommandLineParser, ): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption(h: fcQCommandLineParser_addVersionOption(self.h))

proc addHelpOption*(self: gen_qcommandlineparser_types.QCommandLineParser, ): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption(h: fcQCommandLineParser_addHelpOption(self.h))

proc setApplicationDescription*(self: gen_qcommandlineparser_types.QCommandLineParser, description: string): void =
  fcQCommandLineParser_setApplicationDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc applicationDescription*(self: gen_qcommandlineparser_types.QCommandLineParser, ): string =
  let v_ms = fcQCommandLineParser_applicationDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPositionalArgument*(self: gen_qcommandlineparser_types.QCommandLineParser, name: string, description: string): void =
  fcQCommandLineParser_addPositionalArgument(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: description, len: csize_t(len(description))))

proc clearPositionalArguments*(self: gen_qcommandlineparser_types.QCommandLineParser, ): void =
  fcQCommandLineParser_clearPositionalArguments(self.h)

proc process*(self: gen_qcommandlineparser_types.QCommandLineParser, arguments: seq[string]): void =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQCommandLineParser_process(self.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc process*(self: gen_qcommandlineparser_types.QCommandLineParser, app: gen_qcoreapplication_types.QCoreApplication): void =
  fcQCommandLineParser_processWithApp(self.h, app.h)

proc parse*(self: gen_qcommandlineparser_types.QCommandLineParser, arguments: seq[string]): bool =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQCommandLineParser_parse(self.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc errorText*(self: gen_qcommandlineparser_types.QCommandLineParser, ): string =
  let v_ms = fcQCommandLineParser_errorText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSet*(self: gen_qcommandlineparser_types.QCommandLineParser, name: string): bool =
  fcQCommandLineParser_isSet(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc value*(self: gen_qcommandlineparser_types.QCommandLineParser, name: string): string =
  let v_ms = fcQCommandLineParser_value(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc values*(self: gen_qcommandlineparser_types.QCommandLineParser, name: string): seq[string] =
  var v_ma = fcQCommandLineParser_values(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc isSet*(self: gen_qcommandlineparser_types.QCommandLineParser, option: gen_qcommandlineoption_types.QCommandLineOption): bool =
  fcQCommandLineParser_isSetWithOption(self.h, option.h)

proc value*(self: gen_qcommandlineparser_types.QCommandLineParser, option: gen_qcommandlineoption_types.QCommandLineOption): string =
  let v_ms = fcQCommandLineParser_valueWithOption(self.h, option.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc values*(self: gen_qcommandlineparser_types.QCommandLineParser, option: gen_qcommandlineoption_types.QCommandLineOption): seq[string] =
  var v_ma = fcQCommandLineParser_valuesWithOption(self.h, option.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc positionalArguments*(self: gen_qcommandlineparser_types.QCommandLineParser, ): seq[string] =
  var v_ma = fcQCommandLineParser_positionalArguments(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc optionNames*(self: gen_qcommandlineparser_types.QCommandLineParser, ): seq[string] =
  var v_ma = fcQCommandLineParser_optionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc unknownOptionNames*(self: gen_qcommandlineparser_types.QCommandLineParser, ): seq[string] =
  var v_ma = fcQCommandLineParser_unknownOptionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc helpText*(self: gen_qcommandlineparser_types.QCommandLineParser, ): string =
  let v_ms = fcQCommandLineParser_helpText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQCommandLineParser_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCommandLineParser_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQCommandLineParser_trUtf82(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCommandLineParser_trUtf83(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPositionalArgument*(self: gen_qcommandlineparser_types.QCommandLineParser, name: string, description: string, syntax: string): void =
  fcQCommandLineParser_addPositionalArgument3(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: description, len: csize_t(len(description))), struct_miqt_string(data: syntax, len: csize_t(len(syntax))))

proc delete*(self: gen_qcommandlineparser_types.QCommandLineParser) =
  fcQCommandLineParser_delete(self.h)
