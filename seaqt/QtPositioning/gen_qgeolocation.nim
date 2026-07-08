import ./qtpositioning_pkg

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


import ./gen_qgeolocation_types
export gen_qgeolocation_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qgeoaddress_types,
  ./gen_qgeocoordinate_types,
  ./gen_qgeoshape_types,
  std/tables
export
  gen_qvariant_types,
  gen_qgeoaddress_types,
  gen_qgeocoordinate_types,
  gen_qgeoshape_types

type cQGeoLocation*{.exportc: "QGeoLocation", incompleteStruct.} = object

proc fcQGeoLocation_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QGeoLocation_operatorAssign".}
proc fcQGeoLocation_swap(self: pointer, other: pointer): void {.importc: "QGeoLocation_swap".}
proc fcQGeoLocation_address(self: pointer): pointer {.importc: "QGeoLocation_address".}
proc fcQGeoLocation_setAddress(self: pointer, address: pointer): void {.importc: "QGeoLocation_setAddress".}
proc fcQGeoLocation_coordinate(self: pointer): pointer {.importc: "QGeoLocation_coordinate".}
proc fcQGeoLocation_setCoordinate(self: pointer, position: pointer): void {.importc: "QGeoLocation_setCoordinate".}
proc fcQGeoLocation_boundingShape(self: pointer): pointer {.importc: "QGeoLocation_boundingShape".}
proc fcQGeoLocation_setBoundingShape(self: pointer, shape: pointer): void {.importc: "QGeoLocation_setBoundingShape".}
proc fcQGeoLocation_extendedAttributes(self: pointer): struct_seaqt_map {.importc: "QGeoLocation_extendedAttributes".}
proc fcQGeoLocation_setExtendedAttributes(self: pointer, data: struct_seaqt_map): void {.importc: "QGeoLocation_setExtendedAttributes".}
proc fcQGeoLocation_isEmpty(self: pointer): bool {.importc: "QGeoLocation_isEmpty".}
proc fcQGeoLocation_new(): ptr cQGeoLocation {.importc: "QGeoLocation_new".}
proc fcQGeoLocation_new2(fromVal: pointer): ptr cQGeoLocation {.importc: "QGeoLocation_new_from".}

proc operatorAssign*(self: gen_qgeolocation_types.QGeoLocation, fromVal: gen_qgeolocation_types.QGeoLocation): void =
  fcQGeoLocation_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qgeolocation_types.QGeoLocation, other: gen_qgeolocation_types.QGeoLocation): void =
  fcQGeoLocation_swap(self.h, other.h)

proc address*(self: gen_qgeolocation_types.QGeoLocation): gen_qgeoaddress_types.QGeoAddress =
  gen_qgeoaddress_types.QGeoAddress(h: fcQGeoLocation_address(self.h), owned: true)

proc setAddress*(self: gen_qgeolocation_types.QGeoLocation, address: gen_qgeoaddress_types.QGeoAddress): void =
  fcQGeoLocation_setAddress(self.h, address.h)

proc coordinate*(self: gen_qgeolocation_types.QGeoLocation): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoLocation_coordinate(self.h), owned: true)

proc setCoordinate*(self: gen_qgeolocation_types.QGeoLocation, position: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoLocation_setCoordinate(self.h, position.h)

proc boundingShape*(self: gen_qgeolocation_types.QGeoLocation): gen_qgeoshape_types.QGeoShape =
  gen_qgeoshape_types.QGeoShape(h: fcQGeoLocation_boundingShape(self.h), owned: true)

proc setBoundingShape*(self: gen_qgeolocation_types.QGeoLocation, shape: gen_qgeoshape_types.QGeoShape): void =
  fcQGeoLocation_setBoundingShape(self.h, shape.h)

proc extendedAttributes*(self: gen_qgeolocation_types.QGeoLocation): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQGeoLocation_extendedAttributes(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(vx_mapkey_ms)
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc setExtendedAttributes*(self: gen_qgeolocation_types.QGeoLocation, data: Table[string,gen_qvariant_types.QVariant]): void =
  var data_Keys_CArray = newSeq[struct_seaqt_string](len(data))
  var data_Values_CArray = newSeq[pointer](len(data))
  var data_ctr = 0
  for data_k in data.keys():
    data_Keys_CArray[data_ctr] = struct_seaqt_string(data: if len(data_k) > 0: addr data_k[0] else: nil, len: csize_t(len(data_k)))
    data_ctr += 1
  data_ctr = 0
  for data_v in data.values():
    data_Values_CArray[data_ctr] = data_v.h
    data_ctr += 1

  fcQGeoLocation_setExtendedAttributes(self.h, struct_seaqt_map(len: csize_t(len(data)),keys: if len(data) == 0: nil else: addr(data_Keys_CArray[0]), values: if len(data) == 0: nil else: addr(data_Values_CArray[0]),))

proc isEmpty*(self: gen_qgeolocation_types.QGeoLocation): bool =
  fcQGeoLocation_isEmpty(self.h)

proc create*(T: type gen_qgeolocation_types.QGeoLocation): gen_qgeolocation_types.QGeoLocation =
  let tmp = gen_qgeolocation_types.QGeoLocation(h: fcQGeoLocation_new(), owned: true)
  tmp
proc create*(T: type gen_qgeolocation_types.QGeoLocation,
    fromVal: gen_qgeolocation_types.QGeoLocation): gen_qgeolocation_types.QGeoLocation =
  let tmp = gen_qgeolocation_types.QGeoLocation(h: fcQGeoLocation_new2(fromVal.h), owned: true)
  tmp
