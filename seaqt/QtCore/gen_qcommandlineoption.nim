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
{.compile("gen_qcommandlineoption.cpp", cflags).}


type QCommandLineOptionFlagEnum* = distinct cint
template HiddenFromHelp*(_: type QCommandLineOptionFlagEnum): untyped = 1
template ShortOptionStyle*(_: type QCommandLineOptionFlagEnum): untyped = 2


import ./gen_qcommandlineoption_types
export gen_qcommandlineoption_types


type cQCommandLineOption*{.exportc: "QCommandLineOption", incompleteStruct.} = object

proc fcQCommandLineOption_new(name: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new".}
proc fcQCommandLineOption_new2(names: struct_miqt_array): ptr cQCommandLineOption {.importc: "QCommandLineOption_new2".}
proc fcQCommandLineOption_new3(name: struct_miqt_string, description: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new3".}
proc fcQCommandLineOption_new4(names: struct_miqt_array, description: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new4".}
proc fcQCommandLineOption_new5(other: pointer): ptr cQCommandLineOption {.importc: "QCommandLineOption_new5".}
proc fcQCommandLineOption_new6(name: struct_miqt_string, description: struct_miqt_string, valueName: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new6".}
proc fcQCommandLineOption_new7(name: struct_miqt_string, description: struct_miqt_string, valueName: struct_miqt_string, defaultValue: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new7".}
proc fcQCommandLineOption_new8(names: struct_miqt_array, description: struct_miqt_string, valueName: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new8".}
proc fcQCommandLineOption_new9(names: struct_miqt_array, description: struct_miqt_string, valueName: struct_miqt_string, defaultValue: struct_miqt_string): ptr cQCommandLineOption {.importc: "QCommandLineOption_new9".}
proc fcQCommandLineOption_operatorAssign(self: pointer, other: pointer): void {.importc: "QCommandLineOption_operatorAssign".}
proc fcQCommandLineOption_swap(self: pointer, other: pointer): void {.importc: "QCommandLineOption_swap".}
proc fcQCommandLineOption_names(self: pointer, ): struct_miqt_array {.importc: "QCommandLineOption_names".}
proc fcQCommandLineOption_setValueName(self: pointer, name: struct_miqt_string): void {.importc: "QCommandLineOption_setValueName".}
proc fcQCommandLineOption_valueName(self: pointer, ): struct_miqt_string {.importc: "QCommandLineOption_valueName".}
proc fcQCommandLineOption_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QCommandLineOption_setDescription".}
proc fcQCommandLineOption_description(self: pointer, ): struct_miqt_string {.importc: "QCommandLineOption_description".}
proc fcQCommandLineOption_setDefaultValue(self: pointer, defaultValue: struct_miqt_string): void {.importc: "QCommandLineOption_setDefaultValue".}
proc fcQCommandLineOption_setDefaultValues(self: pointer, defaultValues: struct_miqt_array): void {.importc: "QCommandLineOption_setDefaultValues".}
proc fcQCommandLineOption_defaultValues(self: pointer, ): struct_miqt_array {.importc: "QCommandLineOption_defaultValues".}
proc fcQCommandLineOption_flags(self: pointer, ): cint {.importc: "QCommandLineOption_flags".}
proc fcQCommandLineOption_setFlags(self: pointer, aflags: cint): void {.importc: "QCommandLineOption_setFlags".}
proc fcQCommandLineOption_setHidden(self: pointer, hidden: bool): void {.importc: "QCommandLineOption_setHidden".}
proc fcQCommandLineOption_isHidden(self: pointer, ): bool {.importc: "QCommandLineOption_isHidden".}
proc fcQCommandLineOption_delete(self: pointer) {.importc: "QCommandLineOption_delete".}


func init*(T: type gen_qcommandlineoption_types.QCommandLineOption, h: ptr cQCommandLineOption): gen_qcommandlineoption_types.QCommandLineOption =
  T(h: h)
proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, name: string): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, names: seq[string]): gen_qcommandlineoption_types.QCommandLineOption =
  var names_CArray = newSeq[struct_miqt_string](len(names))
  for i in 0..<len(names):
    names_CArray[i] = struct_miqt_string(data: names[i], len: csize_t(len(names[i])))

  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new2(struct_miqt_array(len: csize_t(len(names)), data: if len(names) == 0: nil else: addr(names_CArray[0]))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, name: string, description: string): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new3(struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: description, len: csize_t(len(description)))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, names: seq[string], description: string): gen_qcommandlineoption_types.QCommandLineOption =
  var names_CArray = newSeq[struct_miqt_string](len(names))
  for i in 0..<len(names):
    names_CArray[i] = struct_miqt_string(data: names[i], len: csize_t(len(names[i])))

  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new4(struct_miqt_array(len: csize_t(len(names)), data: if len(names) == 0: nil else: addr(names_CArray[0])), struct_miqt_string(data: description, len: csize_t(len(description)))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, other: gen_qcommandlineoption_types.QCommandLineOption): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new5(other.h))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, name: string, description: string, valueName: string): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new6(struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: description, len: csize_t(len(description))), struct_miqt_string(data: valueName, len: csize_t(len(valueName)))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, name: string, description: string, valueName: string, defaultValue: string): gen_qcommandlineoption_types.QCommandLineOption =
  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new7(struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: description, len: csize_t(len(description))), struct_miqt_string(data: valueName, len: csize_t(len(valueName))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue)))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, names: seq[string], description: string, valueName: string): gen_qcommandlineoption_types.QCommandLineOption =
  var names_CArray = newSeq[struct_miqt_string](len(names))
  for i in 0..<len(names):
    names_CArray[i] = struct_miqt_string(data: names[i], len: csize_t(len(names[i])))

  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new8(struct_miqt_array(len: csize_t(len(names)), data: if len(names) == 0: nil else: addr(names_CArray[0])), struct_miqt_string(data: description, len: csize_t(len(description))), struct_miqt_string(data: valueName, len: csize_t(len(valueName)))))

proc create*(T: type gen_qcommandlineoption_types.QCommandLineOption, names: seq[string], description: string, valueName: string, defaultValue: string): gen_qcommandlineoption_types.QCommandLineOption =
  var names_CArray = newSeq[struct_miqt_string](len(names))
  for i in 0..<len(names):
    names_CArray[i] = struct_miqt_string(data: names[i], len: csize_t(len(names[i])))

  gen_qcommandlineoption_types.QCommandLineOption.init(fcQCommandLineOption_new9(struct_miqt_array(len: csize_t(len(names)), data: if len(names) == 0: nil else: addr(names_CArray[0])), struct_miqt_string(data: description, len: csize_t(len(description))), struct_miqt_string(data: valueName, len: csize_t(len(valueName))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue)))))

proc operatorAssign*(self: gen_qcommandlineoption_types.QCommandLineOption, other: gen_qcommandlineoption_types.QCommandLineOption): void =
  fcQCommandLineOption_operatorAssign(self.h, other.h)

proc swap*(self: gen_qcommandlineoption_types.QCommandLineOption, other: gen_qcommandlineoption_types.QCommandLineOption): void =
  fcQCommandLineOption_swap(self.h, other.h)

proc names*(self: gen_qcommandlineoption_types.QCommandLineOption, ): seq[string] =
  var v_ma = fcQCommandLineOption_names(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setValueName*(self: gen_qcommandlineoption_types.QCommandLineOption, name: string): void =
  fcQCommandLineOption_setValueName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc valueName*(self: gen_qcommandlineoption_types.QCommandLineOption, ): string =
  let v_ms = fcQCommandLineOption_valueName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qcommandlineoption_types.QCommandLineOption, description: string): void =
  fcQCommandLineOption_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc description*(self: gen_qcommandlineoption_types.QCommandLineOption, ): string =
  let v_ms = fcQCommandLineOption_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultValue*(self: gen_qcommandlineoption_types.QCommandLineOption, defaultValue: string): void =
  fcQCommandLineOption_setDefaultValue(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))

proc setDefaultValues*(self: gen_qcommandlineoption_types.QCommandLineOption, defaultValues: seq[string]): void =
  var defaultValues_CArray = newSeq[struct_miqt_string](len(defaultValues))
  for i in 0..<len(defaultValues):
    defaultValues_CArray[i] = struct_miqt_string(data: defaultValues[i], len: csize_t(len(defaultValues[i])))

  fcQCommandLineOption_setDefaultValues(self.h, struct_miqt_array(len: csize_t(len(defaultValues)), data: if len(defaultValues) == 0: nil else: addr(defaultValues_CArray[0])))

proc defaultValues*(self: gen_qcommandlineoption_types.QCommandLineOption, ): seq[string] =
  var v_ma = fcQCommandLineOption_defaultValues(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc flags*(self: gen_qcommandlineoption_types.QCommandLineOption, ): cint =
  cint(fcQCommandLineOption_flags(self.h))

proc setFlags*(self: gen_qcommandlineoption_types.QCommandLineOption, aflags: cint): void =
  fcQCommandLineOption_setFlags(self.h, cint(aflags))

proc setHidden*(self: gen_qcommandlineoption_types.QCommandLineOption, hidden: bool): void =
  fcQCommandLineOption_setHidden(self.h, hidden)

proc isHidden*(self: gen_qcommandlineoption_types.QCommandLineOption, ): bool =
  fcQCommandLineOption_isHidden(self.h)

proc delete*(self: gen_qcommandlineoption_types.QCommandLineOption) =
  fcQCommandLineOption_delete(self.h)
