import ./Qt6Core_libs

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


import ./gen_qshareddata_types
export gen_qshareddata_types


type cQSharedData*{.exportc: "QSharedData", incompleteStruct.} = object
type cQAdoptSharedDataTag*{.exportc: "QAdoptSharedDataTag", incompleteStruct.} = object

proc fcQSharedData_new(): ptr cQSharedData {.importc: "QSharedData_new".}
proc fcQSharedData_new2(param1: pointer): ptr cQSharedData {.importc: "QSharedData_new2".}
proc fcQAdoptSharedDataTag_new(): ptr cQAdoptSharedDataTag {.importc: "QAdoptSharedDataTag_new".}

proc create*(T: type gen_qshareddata_types.QSharedData): gen_qshareddata_types.QSharedData =
  gen_qshareddata_types.QSharedData(h: fcQSharedData_new(), owned: true)

proc create*(T: type gen_qshareddata_types.QSharedData,
    param1: gen_qshareddata_types.QSharedData): gen_qshareddata_types.QSharedData =
  gen_qshareddata_types.QSharedData(h: fcQSharedData_new2(param1.h), owned: true)

proc create*(T: type gen_qshareddata_types.QAdoptSharedDataTag): gen_qshareddata_types.QAdoptSharedDataTag =
  gen_qshareddata_types.QAdoptSharedDataTag(h: fcQAdoptSharedDataTag_new(), owned: true)

