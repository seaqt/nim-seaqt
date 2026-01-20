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


import ./gen_qpropertyprivate_types
export gen_qpropertyprivate_types


type cQUntypedPropertyData*{.exportc: "QUntypedPropertyData", incompleteStruct.} = object
type cQPropertyProxyBindingData*{.exportc: "QPropertyProxyBindingData", incompleteStruct.} = object

proc fcQPropertyProxyBindingData_dPtr(self: pointer): uint {.importc: "QPropertyProxyBindingData_d_ptr".}
proc fcQPropertyProxyBindingData_setDPtr(self: pointer, d_ptr: uint): void {.importc: "QPropertyProxyBindingData_setD_ptr".}
proc fcQPropertyProxyBindingData_originalBindingData(self: pointer): pointer {.importc: "QPropertyProxyBindingData_originalBindingData".}
proc fcQPropertyProxyBindingData_setOriginalBindingData(self: pointer, originalBindingData: pointer): void {.importc: "QPropertyProxyBindingData_setOriginalBindingData".}
proc fcQPropertyProxyBindingData_propertyData(self: pointer): pointer {.importc: "QPropertyProxyBindingData_propertyData".}
proc fcQPropertyProxyBindingData_setPropertyData(self: pointer, propertyData: pointer): void {.importc: "QPropertyProxyBindingData_setPropertyData".}

proc dPtr*(self: gen_qpropertyprivate_types.QPropertyProxyBindingData): uint =
  fcQPropertyProxyBindingData_dPtr(self.h)

proc setDPtr*(self: gen_qpropertyprivate_types.QPropertyProxyBindingData, d_ptr: uint): void =
  fcQPropertyProxyBindingData_setDPtr(self.h, d_ptr)

proc originalBindingData*(self: gen_qpropertyprivate_types.QPropertyProxyBindingData): pointer =
  fcQPropertyProxyBindingData_originalBindingData(self.h)

proc setOriginalBindingData*(self: gen_qpropertyprivate_types.QPropertyProxyBindingData, originalBindingData: pointer): void =
  fcQPropertyProxyBindingData_setOriginalBindingData(self.h, originalBindingData)

proc propertyData*(self: gen_qpropertyprivate_types.QPropertyProxyBindingData): gen_qpropertyprivate_types.QUntypedPropertyData =
  gen_qpropertyprivate_types.QUntypedPropertyData(h: fcQPropertyProxyBindingData_propertyData(self.h), owned: false)

proc setPropertyData*(self: gen_qpropertyprivate_types.QPropertyProxyBindingData, propertyData: gen_qpropertyprivate_types.QUntypedPropertyData): void =
  fcQPropertyProxyBindingData_setPropertyData(self.h, propertyData.h)

