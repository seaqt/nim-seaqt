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


import ./gen_qshareddata_types
export gen_qshareddata_types


type cQSharedData*{.exportc: "QSharedData", incompleteStruct.} = object

proc fcQSharedData_new(): ptr cQSharedData {.importc: "QSharedData_new".}
proc fcQSharedData_new2(fromVal: pointer): ptr cQSharedData {.importc: "QSharedData_new_from".}

proc create*(T: type gen_qshareddata_types.QSharedData): gen_qshareddata_types.QSharedData =
  let tmp = gen_qshareddata_types.QSharedData(h: fcQSharedData_new(), owned: true)
  tmp
proc create*(T: type gen_qshareddata_types.QSharedData,
    fromVal: gen_qshareddata_types.QSharedData): gen_qshareddata_types.QSharedData =
  let tmp = gen_qshareddata_types.QSharedData(h: fcQSharedData_new2(fromVal.h), owned: true)
  tmp
