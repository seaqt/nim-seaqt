import ./Qt5WebEngineCore_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


import ./gen_qwebenginefindtextresult_types
export gen_qwebenginefindtextresult_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQWebEngineFindTextResult*{.exportc: "QWebEngineFindTextResult", incompleteStruct.} = object

proc fcQWebEngineFindTextResult_numberOfMatches(self: pointer): cint {.importc: "QWebEngineFindTextResult_numberOfMatches".}
proc fcQWebEngineFindTextResult_activeMatch(self: pointer): cint {.importc: "QWebEngineFindTextResult_activeMatch".}
proc fcQWebEngineFindTextResult_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineFindTextResult_operatorAssign".}
proc fcQWebEngineFindTextResult_new(): ptr cQWebEngineFindTextResult {.importc: "QWebEngineFindTextResult_new".}
proc fcQWebEngineFindTextResult_new2(other: pointer): ptr cQWebEngineFindTextResult {.importc: "QWebEngineFindTextResult_new2".}
proc fcQWebEngineFindTextResult_staticMetaObject(): pointer {.importc: "QWebEngineFindTextResult_staticMetaObject".}

proc numberOfMatches*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): cint =
  fcQWebEngineFindTextResult_numberOfMatches(self.h)

proc activeMatch*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): cint =
  fcQWebEngineFindTextResult_activeMatch(self.h)

proc operatorAssign*(self: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult, other: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): void =
  fcQWebEngineFindTextResult_operatorAssign(self.h, other.h)

proc create*(T: type gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): gen_qwebenginefindtextresult_types.QWebEngineFindTextResult =
  gen_qwebenginefindtextresult_types.QWebEngineFindTextResult(h: fcQWebEngineFindTextResult_new(), owned: true)

proc create*(T: type gen_qwebenginefindtextresult_types.QWebEngineFindTextResult,
    other: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): gen_qwebenginefindtextresult_types.QWebEngineFindTextResult =
  gen_qwebenginefindtextresult_types.QWebEngineFindTextResult(h: fcQWebEngineFindTextResult_new2(other.h), owned: true)

proc staticMetaObject*(_: type gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineFindTextResult_staticMetaObject())
