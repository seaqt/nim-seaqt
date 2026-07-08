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


import ./gen_qpdfoutputintent_types
export gen_qpdfoutputintent_types

import
  ../QtCore/gen_qurl_types,
  ./gen_qcolorspace_types
export
  gen_qurl_types,
  gen_qcolorspace_types

type cQPdfOutputIntent*{.exportc: "QPdfOutputIntent", incompleteStruct.} = object

proc fcQPdfOutputIntent_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QPdfOutputIntent_operatorAssign".}
proc fcQPdfOutputIntent_swap(self: pointer, other: pointer): void {.importc: "QPdfOutputIntent_swap".}
proc fcQPdfOutputIntent_outputConditionIdentifier(self: pointer): struct_seaqt_string {.importc: "QPdfOutputIntent_outputConditionIdentifier".}
proc fcQPdfOutputIntent_setOutputConditionIdentifier(self: pointer, identifier: struct_seaqt_string): void {.importc: "QPdfOutputIntent_setOutputConditionIdentifier".}
proc fcQPdfOutputIntent_outputCondition(self: pointer): struct_seaqt_string {.importc: "QPdfOutputIntent_outputCondition".}
proc fcQPdfOutputIntent_setOutputCondition(self: pointer, condition: struct_seaqt_string): void {.importc: "QPdfOutputIntent_setOutputCondition".}
proc fcQPdfOutputIntent_registryName(self: pointer): pointer {.importc: "QPdfOutputIntent_registryName".}
proc fcQPdfOutputIntent_setRegistryName(self: pointer, name: pointer): void {.importc: "QPdfOutputIntent_setRegistryName".}
proc fcQPdfOutputIntent_outputProfile(self: pointer): pointer {.importc: "QPdfOutputIntent_outputProfile".}
proc fcQPdfOutputIntent_setOutputProfile(self: pointer, profile: pointer): void {.importc: "QPdfOutputIntent_setOutputProfile".}
proc fcQPdfOutputIntent_new(): ptr cQPdfOutputIntent {.importc: "QPdfOutputIntent_new".}
proc fcQPdfOutputIntent_new2(fromVal: pointer): ptr cQPdfOutputIntent {.importc: "QPdfOutputIntent_new_from".}

proc operatorAssign*(self: gen_qpdfoutputintent_types.QPdfOutputIntent, fromVal: gen_qpdfoutputintent_types.QPdfOutputIntent): void =
  fcQPdfOutputIntent_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qpdfoutputintent_types.QPdfOutputIntent, other: gen_qpdfoutputintent_types.QPdfOutputIntent): void =
  fcQPdfOutputIntent_swap(self.h, other.h)

proc outputConditionIdentifier*(self: gen_qpdfoutputintent_types.QPdfOutputIntent): string =
  let v_ms = fcQPdfOutputIntent_outputConditionIdentifier(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOutputConditionIdentifier*(self: gen_qpdfoutputintent_types.QPdfOutputIntent, identifier: openArray[char]): void =
  fcQPdfOutputIntent_setOutputConditionIdentifier(self.h, struct_seaqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier))))

proc outputCondition*(self: gen_qpdfoutputintent_types.QPdfOutputIntent): string =
  let v_ms = fcQPdfOutputIntent_outputCondition(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOutputCondition*(self: gen_qpdfoutputintent_types.QPdfOutputIntent, condition: openArray[char]): void =
  fcQPdfOutputIntent_setOutputCondition(self.h, struct_seaqt_string(data: if len(condition) > 0: addr condition[0] else: nil, len: csize_t(len(condition))))

proc registryName*(self: gen_qpdfoutputintent_types.QPdfOutputIntent): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQPdfOutputIntent_registryName(self.h), owned: true)

proc setRegistryName*(self: gen_qpdfoutputintent_types.QPdfOutputIntent, name: gen_qurl_types.QUrl): void =
  fcQPdfOutputIntent_setRegistryName(self.h, name.h)

proc outputProfile*(self: gen_qpdfoutputintent_types.QPdfOutputIntent): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQPdfOutputIntent_outputProfile(self.h), owned: true)

proc setOutputProfile*(self: gen_qpdfoutputintent_types.QPdfOutputIntent, profile: gen_qcolorspace_types.QColorSpace): void =
  fcQPdfOutputIntent_setOutputProfile(self.h, profile.h)

proc create*(T: type gen_qpdfoutputintent_types.QPdfOutputIntent): gen_qpdfoutputintent_types.QPdfOutputIntent =
  let tmp = gen_qpdfoutputintent_types.QPdfOutputIntent(h: fcQPdfOutputIntent_new(), owned: true)
  tmp
proc create*(T: type gen_qpdfoutputintent_types.QPdfOutputIntent,
    fromVal: gen_qpdfoutputintent_types.QPdfOutputIntent): gen_qpdfoutputintent_types.QPdfOutputIntent =
  let tmp = gen_qpdfoutputintent_types.QPdfOutputIntent(h: fcQPdfOutputIntent_new2(fromVal.h), owned: true)
  tmp
