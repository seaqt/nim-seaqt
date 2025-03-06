import ./Qt5Script_libs

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

const cflags = gorge("pkg-config --cflags Qt5Script")  & " -fPIC"
{.compile("gen_qscriptprogram.cpp", cflags).}


import ./gen_qscriptprogram_types
export gen_qscriptprogram_types


type cQScriptProgram*{.exportc: "QScriptProgram", incompleteStruct.} = object

proc fcQScriptProgram_operatorAssign(self: pointer, other: pointer): void {.importc: "QScriptProgram_operatorAssign".}
proc fcQScriptProgram_isNull(self: pointer, ): bool {.importc: "QScriptProgram_isNull".}
proc fcQScriptProgram_sourceCode(self: pointer, ): struct_miqt_string {.importc: "QScriptProgram_sourceCode".}
proc fcQScriptProgram_fileName(self: pointer, ): struct_miqt_string {.importc: "QScriptProgram_fileName".}
proc fcQScriptProgram_firstLineNumber(self: pointer, ): cint {.importc: "QScriptProgram_firstLineNumber".}
proc fcQScriptProgram_operatorEqual(self: pointer, other: pointer): bool {.importc: "QScriptProgram_operatorEqual".}
proc fcQScriptProgram_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QScriptProgram_operatorNotEqual".}
proc fcQScriptProgram_new(): ptr cQScriptProgram {.importc: "QScriptProgram_new".}
proc fcQScriptProgram_new2(sourceCode: struct_miqt_string): ptr cQScriptProgram {.importc: "QScriptProgram_new2".}
proc fcQScriptProgram_new3(other: pointer): ptr cQScriptProgram {.importc: "QScriptProgram_new3".}
proc fcQScriptProgram_new4(sourceCode: struct_miqt_string, fileName: struct_miqt_string): ptr cQScriptProgram {.importc: "QScriptProgram_new4".}
proc fcQScriptProgram_new5(sourceCode: struct_miqt_string, fileName: struct_miqt_string, firstLineNumber: cint): ptr cQScriptProgram {.importc: "QScriptProgram_new5".}
proc fcQScriptProgram_delete(self: pointer) {.importc: "QScriptProgram_delete".}

proc operatorAssign*(self: gen_qscriptprogram_types.QScriptProgram, other: gen_qscriptprogram_types.QScriptProgram): void =
  fcQScriptProgram_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qscriptprogram_types.QScriptProgram, ): bool =
  fcQScriptProgram_isNull(self.h)

proc sourceCode*(self: gen_qscriptprogram_types.QScriptProgram, ): string =
  let v_ms = fcQScriptProgram_sourceCode(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qscriptprogram_types.QScriptProgram, ): string =
  let v_ms = fcQScriptProgram_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc firstLineNumber*(self: gen_qscriptprogram_types.QScriptProgram, ): cint =
  fcQScriptProgram_firstLineNumber(self.h)

proc operatorEqual*(self: gen_qscriptprogram_types.QScriptProgram, other: gen_qscriptprogram_types.QScriptProgram): bool =
  fcQScriptProgram_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qscriptprogram_types.QScriptProgram, other: gen_qscriptprogram_types.QScriptProgram): bool =
  fcQScriptProgram_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qscriptprogram_types.QScriptProgram): gen_qscriptprogram_types.QScriptProgram =
  gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new())

proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    sourceCode: string): gen_qscriptprogram_types.QScriptProgram =
  gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new2(struct_miqt_string(data: sourceCode, len: csize_t(len(sourceCode)))))

proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    other: gen_qscriptprogram_types.QScriptProgram): gen_qscriptprogram_types.QScriptProgram =
  gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new3(other.h))

proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    sourceCode: string, fileName: string): gen_qscriptprogram_types.QScriptProgram =
  gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new4(struct_miqt_string(data: sourceCode, len: csize_t(len(sourceCode))), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qscriptprogram_types.QScriptProgram,
    sourceCode: string, fileName: string, firstLineNumber: cint): gen_qscriptprogram_types.QScriptProgram =
  gen_qscriptprogram_types.QScriptProgram(h: fcQScriptProgram_new5(struct_miqt_string(data: sourceCode, len: csize_t(len(sourceCode))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), firstLineNumber))

proc delete*(self: gen_qscriptprogram_types.QScriptProgram) =
  fcQScriptProgram_delete(self.h)
