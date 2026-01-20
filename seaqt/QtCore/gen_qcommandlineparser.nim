import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


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

proc fcQCommandLineParser_trSourceText(sourceText: cstring): struct_seaqt_string {.importc: "QCommandLineParser_tr_sourceText".}
proc fcQCommandLineParser_trUtf8SourceText(sourceText: cstring): struct_seaqt_string {.importc: "QCommandLineParser_trUtf8_sourceText".}
proc fcQCommandLineParser_setSingleDashWordOptionMode(self: pointer, parsingMode: cint): void {.importc: "QCommandLineParser_setSingleDashWordOptionMode".}
proc fcQCommandLineParser_setOptionsAfterPositionalArgumentsMode(self: pointer, mode: cint): void {.importc: "QCommandLineParser_setOptionsAfterPositionalArgumentsMode".}
proc fcQCommandLineParser_addOption(self: pointer, commandLineOption: pointer): bool {.importc: "QCommandLineParser_addOption".}
proc fcQCommandLineParser_addOptions(self: pointer, options: struct_seaqt_array): bool {.importc: "QCommandLineParser_addOptions".}
proc fcQCommandLineParser_addVersionOption(self: pointer): pointer {.importc: "QCommandLineParser_addVersionOption".}
proc fcQCommandLineParser_addHelpOption(self: pointer): pointer {.importc: "QCommandLineParser_addHelpOption".}
proc fcQCommandLineParser_setApplicationDescription(self: pointer, description: struct_seaqt_string): void {.importc: "QCommandLineParser_setApplicationDescription".}
proc fcQCommandLineParser_applicationDescription(self: pointer): struct_seaqt_string {.importc: "QCommandLineParser_applicationDescription".}
proc fcQCommandLineParser_addPositionalArgumentNameDescription(self: pointer, name: struct_seaqt_string, description: struct_seaqt_string): void {.importc: "QCommandLineParser_addPositionalArgument_name_description".}
proc fcQCommandLineParser_clearPositionalArguments(self: pointer): void {.importc: "QCommandLineParser_clearPositionalArguments".}
proc fcQCommandLineParser_processArguments(self: pointer, arguments: struct_seaqt_array): void {.importc: "QCommandLineParser_process_arguments".}
proc fcQCommandLineParser_processApp(self: pointer, app: pointer): void {.importc: "QCommandLineParser_process_app".}
proc fcQCommandLineParser_parse(self: pointer, arguments: struct_seaqt_array): bool {.importc: "QCommandLineParser_parse".}
proc fcQCommandLineParser_errorText(self: pointer): struct_seaqt_string {.importc: "QCommandLineParser_errorText".}
proc fcQCommandLineParser_isSetName(self: pointer, name: struct_seaqt_string): bool {.importc: "QCommandLineParser_isSet_name".}
proc fcQCommandLineParser_valueName(self: pointer, name: struct_seaqt_string): struct_seaqt_string {.importc: "QCommandLineParser_value_name".}
proc fcQCommandLineParser_valuesName(self: pointer, name: struct_seaqt_string): struct_seaqt_array {.importc: "QCommandLineParser_values_name".}
proc fcQCommandLineParser_isSetOption(self: pointer, option: pointer): bool {.importc: "QCommandLineParser_isSet_option".}
proc fcQCommandLineParser_valueOption(self: pointer, option: pointer): struct_seaqt_string {.importc: "QCommandLineParser_value_option".}
proc fcQCommandLineParser_valuesOption(self: pointer, option: pointer): struct_seaqt_array {.importc: "QCommandLineParser_values_option".}
proc fcQCommandLineParser_positionalArguments(self: pointer): struct_seaqt_array {.importc: "QCommandLineParser_positionalArguments".}
proc fcQCommandLineParser_optionNames(self: pointer): struct_seaqt_array {.importc: "QCommandLineParser_optionNames".}
proc fcQCommandLineParser_unknownOptionNames(self: pointer): struct_seaqt_array {.importc: "QCommandLineParser_unknownOptionNames".}
proc fcQCommandLineParser_showVersion(self: pointer): void {.importc: "QCommandLineParser_showVersion".}
proc fcQCommandLineParser_showHelp(self: pointer): void {.importc: "QCommandLineParser_showHelp".}
proc fcQCommandLineParser_helpText(self: pointer): struct_seaqt_string {.importc: "QCommandLineParser_helpText".}
proc fcQCommandLineParser_trSourceTextDisambiguation(sourceText: cstring, disambiguation: cstring): struct_seaqt_string {.importc: "QCommandLineParser_tr_sourceText_disambiguation".}
proc fcQCommandLineParser_trSourceTextDisambiguationN(sourceText: cstring, disambiguation: cstring, n: cint): struct_seaqt_string {.importc: "QCommandLineParser_tr_sourceText_disambiguation_n".}
proc fcQCommandLineParser_trUtf8SourceTextDisambiguation(sourceText: cstring, disambiguation: cstring): struct_seaqt_string {.importc: "QCommandLineParser_trUtf8_sourceText_disambiguation".}
proc fcQCommandLineParser_trUtf8SourceTextDisambiguationN(sourceText: cstring, disambiguation: cstring, n: cint): struct_seaqt_string {.importc: "QCommandLineParser_trUtf8_sourceText_disambiguation_n".}
proc fcQCommandLineParser_addPositionalArgumentNameDescriptionSyntax(self: pointer, name: struct_seaqt_string, description: struct_seaqt_string, syntax: struct_seaqt_string): void {.importc: "QCommandLineParser_addPositionalArgument_name_description_syntax".}
proc fcQCommandLineParser_showHelpExitCode(self: pointer, exitCode: cint): void {.importc: "QCommandLineParser_showHelp_exitCode".}
proc fcQCommandLineParser_new(): ptr cQCommandLineParser {.importc: "QCommandLineParser_new".}

proc tr*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring): string =
  let v_ms = fcQCommandLineParser_trSourceText(sourceText)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring): string =
  let v_ms = fcQCommandLineParser_trUtf8SourceText(sourceText)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSingleDashWordOptionMode*(self: gen_qcommandlineparser_types.QCommandLineParser, parsingMode: cint): void =
  fcQCommandLineParser_setSingleDashWordOptionMode(self.h, cint(parsingMode))

proc setOptionsAfterPositionalArgumentsMode*(self: gen_qcommandlineparser_types.QCommandLineParser, mode: cint): void =
  fcQCommandLineParser_setOptionsAfterPositionalArgumentsMode(self.h, cint(mode))

proc addOption*(self: gen_qcommandlineparser_types.QCommandLineParser, commandLineOption: gen_qcommandlineoption_types.QCommandLineOption): bool =
  fcQCommandLineParser_addOption(self.h, commandLineOption.h)

proc addOptions*(self: gen_qcommandlineparser_types.QCommandLineParser, options: openArray[gen_qcommandlineoption_types.QCommandLineOption]): bool =
  var options_CArray = newSeq[pointer](len(options))
  for i in 0..<len(options):
    options_CArray[i] = options[i].h

  fcQCommandLineParser_addOptions(self.h, struct_seaqt_array(len: csize_t(len(options)), data: if len(options) == 0: nil else: addr(options_CArray[0])))

proc addVersionOption*(self: gen_qcommandlineparser_types.QCommandLineParser): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption(h: fcQCommandLineParser_addVersionOption(self.h), owned: true)

proc addHelpOption*(self: gen_qcommandlineparser_types.QCommandLineParser): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption(h: fcQCommandLineParser_addHelpOption(self.h), owned: true)

proc setApplicationDescription*(self: gen_qcommandlineparser_types.QCommandLineParser, description: openArray[char]): void =
  fcQCommandLineParser_setApplicationDescription(self.h, struct_seaqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc applicationDescription*(self: gen_qcommandlineparser_types.QCommandLineParser): string =
  let v_ms = fcQCommandLineParser_applicationDescription(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addPositionalArgument*(self: gen_qcommandlineparser_types.QCommandLineParser, name: openArray[char], description: openArray[char]): void =
  fcQCommandLineParser_addPositionalArgumentNameDescription(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc clearPositionalArguments*(self: gen_qcommandlineparser_types.QCommandLineParser): void =
  fcQCommandLineParser_clearPositionalArguments(self.h)

proc process*(self: gen_qcommandlineparser_types.QCommandLineParser, arguments: openArray[string]): void =
  var arguments_CArray = newSeq[struct_seaqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_seaqt_string(data: if len(arguments[i]) > 0: addr arguments[i][0] else: nil, len: csize_t(len(arguments[i])))

  fcQCommandLineParser_processArguments(self.h, struct_seaqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc process*(self: gen_qcommandlineparser_types.QCommandLineParser, app: gen_qcoreapplication_types.QCoreApplication): void =
  fcQCommandLineParser_processApp(self.h, app.h)

proc parse*(self: gen_qcommandlineparser_types.QCommandLineParser, arguments: openArray[string]): bool =
  var arguments_CArray = newSeq[struct_seaqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_seaqt_string(data: if len(arguments[i]) > 0: addr arguments[i][0] else: nil, len: csize_t(len(arguments[i])))

  fcQCommandLineParser_parse(self.h, struct_seaqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc errorText*(self: gen_qcommandlineparser_types.QCommandLineParser): string =
  let v_ms = fcQCommandLineParser_errorText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isSet*(self: gen_qcommandlineparser_types.QCommandLineParser, name: openArray[char]): bool =
  fcQCommandLineParser_isSetName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc value*(self: gen_qcommandlineparser_types.QCommandLineParser, name: openArray[char]): string =
  let v_ms = fcQCommandLineParser_valueName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc values*(self: gen_qcommandlineparser_types.QCommandLineParser, name: openArray[char]): seq[string] =
  var v_ma = fcQCommandLineParser_valuesName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc isSet*(self: gen_qcommandlineparser_types.QCommandLineParser, option: gen_qcommandlineoption_types.QCommandLineOption): bool =
  fcQCommandLineParser_isSetOption(self.h, option.h)

proc value*(self: gen_qcommandlineparser_types.QCommandLineParser, option: gen_qcommandlineoption_types.QCommandLineOption): string =
  let v_ms = fcQCommandLineParser_valueOption(self.h, option.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc values*(self: gen_qcommandlineparser_types.QCommandLineParser, option: gen_qcommandlineoption_types.QCommandLineOption): seq[string] =
  var v_ma = fcQCommandLineParser_valuesOption(self.h, option.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc positionalArguments*(self: gen_qcommandlineparser_types.QCommandLineParser): seq[string] =
  var v_ma = fcQCommandLineParser_positionalArguments(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc optionNames*(self: gen_qcommandlineparser_types.QCommandLineParser): seq[string] =
  var v_ma = fcQCommandLineParser_optionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc unknownOptionNames*(self: gen_qcommandlineparser_types.QCommandLineParser): seq[string] =
  var v_ma = fcQCommandLineParser_unknownOptionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc showVersion*(self: gen_qcommandlineparser_types.QCommandLineParser): void =
  fcQCommandLineParser_showVersion(self.h)

proc showHelp*(self: gen_qcommandlineparser_types.QCommandLineParser): void =
  fcQCommandLineParser_showHelp(self.h)

proc helpText*(self: gen_qcommandlineparser_types.QCommandLineParser): string =
  let v_ms = fcQCommandLineParser_helpText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQCommandLineParser_trSourceTextDisambiguation(sourceText, disambiguation)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCommandLineParser_trSourceTextDisambiguationN(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQCommandLineParser_trUtf8SourceTextDisambiguation(sourceText, disambiguation)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlineparser_types.QCommandLineParser, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCommandLineParser_trUtf8SourceTextDisambiguationN(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addPositionalArgument*(self: gen_qcommandlineparser_types.QCommandLineParser, name: openArray[char], description: openArray[char], syntax: openArray[char]): void =
  fcQCommandLineParser_addPositionalArgumentNameDescriptionSyntax(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))), struct_seaqt_string(data: if len(syntax) > 0: addr syntax[0] else: nil, len: csize_t(len(syntax))))

proc showHelp*(self: gen_qcommandlineparser_types.QCommandLineParser, exitCode: cint): void =
  fcQCommandLineParser_showHelpExitCode(self.h, exitCode)

proc create*(T: type gen_qcommandlineparser_types.QCommandLineParser): gen_qcommandlineparser_types.QCommandLineParser =
  let tmp = gen_qcommandlineparser_types.QCommandLineParser(h: fcQCommandLineParser_new(), owned: true)
  tmp
