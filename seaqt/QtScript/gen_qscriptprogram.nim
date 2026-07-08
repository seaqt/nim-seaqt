import ./qtscript_pkg

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


import ./gen_qscriptprogram_types
export gen_qscriptprogram_types


type cQScriptProgram*{.exportc: "QScriptProgram", incompleteStruct.} = object

proc fcQScriptProgram_operatorAssign(self: pointer, other: pointer): void {.importc: "QScriptProgram_operatorAssign".}
proc fcQScriptProgram_isNull(self: pointer): bool {.importc: "QScriptProgram_isNull".}
proc fcQScriptProgram_sourceCode(self: pointer): struct_seaqt_string {.importc: "QScriptProgram_sourceCode".}
proc fcQScriptProgram_fileName(self: pointer): struct_seaqt_string {.importc: "QScriptProgram_fileName".}
proc fcQScriptProgram_firstLineNumber(self: pointer): cint {.importc: "QScriptProgram_firstLineNumber".}
proc fcQScriptProgram_operatorEqual(self: pointer, other: pointer): bool {.importc: "QScriptProgram_operatorEqual".}
proc fcQScriptProgram_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QScriptProgram_operatorNotEqual".}
proc fcQScriptProgram_new(): ptr cQScriptProgram {.importc: "QScriptProgram_new".}
proc fcQScriptProgram_new2(sourceCode: struct_seaqt_string): ptr cQScriptProgram {.importc: "QScriptProgram_new2".}
proc fcQScriptProgram_new3(other: pointer): ptr cQScriptProgram {.importc: "QScriptProgram_new3".}
proc fcQScriptProgram_new4(sourceCode: struct_seaqt_string, fileName: struct_seaqt_string): ptr cQScriptProgram {.importc: "QScriptProgram_new4".}
proc fcQScriptProgram_new5(sourceCode: struct_seaqt_string, fileName: struct_seaqt_string, firstLineNumber: cint): ptr cQScriptProgram {.importc: "QScriptProgram_new5".}

proc operatorAssign*(self: gen_qscriptprogram_types.QScriptProgram, other: gen_qscriptprogram_types.QScriptProgram): void =
  fcQScriptProgram_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qscriptprogram_types.QScriptProgram): bool =
  fcQScriptProgram_isNull(self.h)

proc sourceCode*(self: gen_qscriptprogram_types.QScriptProgram): string =
  let v_ms = fcQScriptProgram_sourceCode(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qscriptprogram_types.QScriptProgram): string =
  let v_ms = fcQScriptProgram_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc firstLineNumber*(self: gen_qscriptprogram_types.QScriptProgram): cint =
  fcQScriptProgram_firstLineNumber(self.h)

proc operatorEqual*(self: gen_qscriptprogram_types.QScriptProgram, other: gen_qscriptprogram_types.QScriptProgram): bool =
  fcQScriptProgram_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qscriptprogram_types.QScriptProgram, other: gen_qscriptprogram_types.QScriptProgram): bool =
  fcQScriptProgram_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qscriptprogram_types.QScriptProgram): gen_qscriptprogram_types.QScriptProgram =
  let tmp = gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new(), owned: true)
  tmp
proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    sourceCode: openArray[char]): gen_qscriptprogram_types.QScriptProgram =
  let tmp = gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new2(struct_seaqt_string(data: if len(sourceCode) > 0: addr sourceCode[0] else: nil, len: csize_t(len(sourceCode)))), owned: true)
  tmp
proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    other: gen_qscriptprogram_types.QScriptProgram): gen_qscriptprogram_types.QScriptProgram =
  let tmp = gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new3(other.h), owned: true)
  tmp
proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    sourceCode: openArray[char], fileName: openArray[char]): gen_qscriptprogram_types.QScriptProgram =
  let tmp = gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new4(struct_seaqt_string(data: if len(sourceCode) > 0: addr sourceCode[0] else: nil, len: csize_t(len(sourceCode))), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)
  tmp
proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    sourceCode: openArray[char], fileName: openArray[char], firstLineNumber: cint): gen_qscriptprogram_types.QScriptProgram =
  let tmp = gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new5(struct_seaqt_string(data: if len(sourceCode) > 0: addr sourceCode[0] else: nil, len: csize_t(len(sourceCode))), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), firstLineNumber), owned: true)
  tmp
