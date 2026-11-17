import ./qtgui_pkg

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


import ./gen_qfontvariableaxis_types
export gen_qfontvariableaxis_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qfont_types
export
  gen_qobjectdefs_types,
  gen_qfont_types

type cQFontVariableAxis*{.exportc: "QFontVariableAxis", incompleteStruct.} = object

proc fcQFontVariableAxis_swap(self: pointer, other: pointer): void {.importc: "QFontVariableAxis_swap".}
proc fcQFontVariableAxis_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QFontVariableAxis_operatorAssign".}
proc fcQFontVariableAxis_tag(self: pointer): pointer {.importc: "QFontVariableAxis_tag".}
proc fcQFontVariableAxis_setTag(self: pointer, tag: pointer): void {.importc: "QFontVariableAxis_setTag".}
proc fcQFontVariableAxis_name(self: pointer): struct_seaqt_string {.importc: "QFontVariableAxis_name".}
proc fcQFontVariableAxis_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QFontVariableAxis_setName".}
proc fcQFontVariableAxis_minimumValue(self: pointer): float64 {.importc: "QFontVariableAxis_minimumValue".}
proc fcQFontVariableAxis_setMinimumValue(self: pointer, minimumValue: float64): void {.importc: "QFontVariableAxis_setMinimumValue".}
proc fcQFontVariableAxis_maximumValue(self: pointer): float64 {.importc: "QFontVariableAxis_maximumValue".}
proc fcQFontVariableAxis_setMaximumValue(self: pointer, maximumValue: float64): void {.importc: "QFontVariableAxis_setMaximumValue".}
proc fcQFontVariableAxis_defaultValue(self: pointer): float64 {.importc: "QFontVariableAxis_defaultValue".}
proc fcQFontVariableAxis_setDefaultValue(self: pointer, defaultValue: float64): void {.importc: "QFontVariableAxis_setDefaultValue".}
proc fcQFontVariableAxis_new(): ptr cQFontVariableAxis {.importc: "QFontVariableAxis_new".}
proc fcQFontVariableAxis_new2(fromVal: pointer): ptr cQFontVariableAxis {.importc: "QFontVariableAxis_new_from".}
proc fcQFontVariableAxis_staticMetaObject(): pointer {.importc: "QFontVariableAxis_staticMetaObject".}

proc swap*(self: gen_qfontvariableaxis_types.QFontVariableAxis, other: gen_qfontvariableaxis_types.QFontVariableAxis): void =
  fcQFontVariableAxis_swap(self.h, other.h)

proc operatorAssign*(self: gen_qfontvariableaxis_types.QFontVariableAxis, fromVal: gen_qfontvariableaxis_types.QFontVariableAxis): void =
  fcQFontVariableAxis_operatorAssign(self.h, fromVal.h)

proc tag*(self: gen_qfontvariableaxis_types.QFontVariableAxis): gen_qfont_types.QFontTag =
  gen_qfont_types.QFontTag(h: fcQFontVariableAxis_tag(self.h), owned: true)

proc setTag*(self: gen_qfontvariableaxis_types.QFontVariableAxis, tag: gen_qfont_types.QFontTag): void =
  fcQFontVariableAxis_setTag(self.h, tag.h)

proc name*(self: gen_qfontvariableaxis_types.QFontVariableAxis): string =
  let v_ms = fcQFontVariableAxis_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_qfontvariableaxis_types.QFontVariableAxis, name: openArray[char]): void =
  fcQFontVariableAxis_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc minimumValue*(self: gen_qfontvariableaxis_types.QFontVariableAxis): float64 =
  fcQFontVariableAxis_minimumValue(self.h)

proc setMinimumValue*(self: gen_qfontvariableaxis_types.QFontVariableAxis, minimumValue: float64): void =
  fcQFontVariableAxis_setMinimumValue(self.h, minimumValue)

proc maximumValue*(self: gen_qfontvariableaxis_types.QFontVariableAxis): float64 =
  fcQFontVariableAxis_maximumValue(self.h)

proc setMaximumValue*(self: gen_qfontvariableaxis_types.QFontVariableAxis, maximumValue: float64): void =
  fcQFontVariableAxis_setMaximumValue(self.h, maximumValue)

proc defaultValue*(self: gen_qfontvariableaxis_types.QFontVariableAxis): float64 =
  fcQFontVariableAxis_defaultValue(self.h)

proc setDefaultValue*(self: gen_qfontvariableaxis_types.QFontVariableAxis, defaultValue: float64): void =
  fcQFontVariableAxis_setDefaultValue(self.h, defaultValue)

proc create*(T: type gen_qfontvariableaxis_types.QFontVariableAxis): gen_qfontvariableaxis_types.QFontVariableAxis =
  let tmp = gen_qfontvariableaxis_types.QFontVariableAxis(h: fcQFontVariableAxis_new(), owned: true)
  tmp
proc create*(T: type gen_qfontvariableaxis_types.QFontVariableAxis,
    fromVal: gen_qfontvariableaxis_types.QFontVariableAxis): gen_qfontvariableaxis_types.QFontVariableAxis =
  let tmp = gen_qfontvariableaxis_types.QFontVariableAxis(h: fcQFontVariableAxis_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qfontvariableaxis_types.QFontVariableAxis): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontVariableAxis_staticMetaObject())
