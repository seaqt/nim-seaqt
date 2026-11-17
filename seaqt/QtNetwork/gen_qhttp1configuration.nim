import ./qtnetwork_pkg

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


import ./gen_qhttp1configuration_types
export gen_qhttp1configuration_types


type cQHttp1Configuration*{.exportc: "QHttp1Configuration", incompleteStruct.} = object

proc fcQHttp1Configuration_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QHttp1Configuration_operatorAssign".}
proc fcQHttp1Configuration_setNumberOfConnectionsPerHost(self: pointer, amount: int64): void {.importc: "QHttp1Configuration_setNumberOfConnectionsPerHost".}
proc fcQHttp1Configuration_numberOfConnectionsPerHost(self: pointer): int64 {.importc: "QHttp1Configuration_numberOfConnectionsPerHost".}
proc fcQHttp1Configuration_swap(self: pointer, other: pointer): void {.importc: "QHttp1Configuration_swap".}
proc fcQHttp1Configuration_new(): ptr cQHttp1Configuration {.importc: "QHttp1Configuration_new".}
proc fcQHttp1Configuration_new2(fromVal: pointer): ptr cQHttp1Configuration {.importc: "QHttp1Configuration_new_from".}

proc operatorAssign*(self: gen_qhttp1configuration_types.QHttp1Configuration, fromVal: gen_qhttp1configuration_types.QHttp1Configuration): void =
  fcQHttp1Configuration_operatorAssign(self.h, fromVal.h)

proc setNumberOfConnectionsPerHost*(self: gen_qhttp1configuration_types.QHttp1Configuration, amount: int64): void =
  fcQHttp1Configuration_setNumberOfConnectionsPerHost(self.h, amount)

proc numberOfConnectionsPerHost*(self: gen_qhttp1configuration_types.QHttp1Configuration): int64 =
  fcQHttp1Configuration_numberOfConnectionsPerHost(self.h)

proc swap*(self: gen_qhttp1configuration_types.QHttp1Configuration, other: gen_qhttp1configuration_types.QHttp1Configuration): void =
  fcQHttp1Configuration_swap(self.h, other.h)

proc create*(T: type gen_qhttp1configuration_types.QHttp1Configuration): gen_qhttp1configuration_types.QHttp1Configuration =
  let tmp = gen_qhttp1configuration_types.QHttp1Configuration(h: fcQHttp1Configuration_new(), owned: true)
  tmp
proc create*(T: type gen_qhttp1configuration_types.QHttp1Configuration,
    fromVal: gen_qhttp1configuration_types.QHttp1Configuration): gen_qhttp1configuration_types.QHttp1Configuration =
  let tmp = gen_qhttp1configuration_types.QHttp1Configuration(h: fcQHttp1Configuration_new2(fromVal.h), owned: true)
  tmp
