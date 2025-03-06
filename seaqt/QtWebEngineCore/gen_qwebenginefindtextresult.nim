import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore")  & " -fPIC"
{.compile("gen_qwebenginefindtextresult.cpp", cflags).}


import ./gen_qwebenginefindtextresult_types
export gen_qwebenginefindtextresult_types


type cQWebEngineFindTextResult*{.exportc: "QWebEngineFindTextResult", incompleteStruct.} = object

proc fcQWebEngineFindTextResult_new(): ptr cQWebEngineFindTextResult {.importc: "QWebEngineFindTextResult_new".}
proc fcQWebEngineFindTextResult_new2(other: pointer): ptr cQWebEngineFindTextResult {.importc: "QWebEngineFindTextResult_new2".}
proc fcQWebEngineFindTextResult_numberOfMatches(self: pointer, ): cint {.importc: "QWebEngineFindTextResult_numberOfMatches".}
proc fcQWebEngineFindTextResult_activeMatch(self: pointer, ): cint {.importc: "QWebEngineFindTextResult_activeMatch".}
proc fcQWebEngineFindTextResult_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineFindTextResult_operatorAssign".}
proc fcQWebEngineFindTextResult_delete(self: pointer) {.importc: "QWebEngineFindTextResult_delete".}


func init*(T: type gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, h: ptr cQWebEngineFindTextResult): gen_qwebenginefindtextresult_types.QWebEngineFindTextResult =
  T(h: h)
proc create*(T: type gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, ): gen_qwebenginefindtextresult_types.QWebEngineFindTextResult =
  gen_qwebenginefindtextresult_types.QWebEngineFindTextResult.init(fcQWebEngineFindTextResult_new())

proc create*(T: type gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, other: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): gen_qwebenginefindtextresult_types.QWebEngineFindTextResult =
  gen_qwebenginefindtextresult_types.QWebEngineFindTextResult.init(fcQWebEngineFindTextResult_new2(other.h))

proc numberOfMatches*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, ): cint =
  fcQWebEngineFindTextResult_numberOfMatches(self.h)

proc activeMatch*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, ): cint =
  fcQWebEngineFindTextResult_activeMatch(self.h)

proc operatorAssign*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, other: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): void =
  fcQWebEngineFindTextResult_operatorAssign(self.h, other.h)

proc delete*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult) =
  fcQWebEngineFindTextResult_delete(self.h)
