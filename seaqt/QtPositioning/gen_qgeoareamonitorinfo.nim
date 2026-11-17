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


import ./gen_qgeoareamonitorinfo_types
export gen_qgeoareamonitorinfo_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeoshape_types,
  std/tables
export
  gen_qdatetime_types,
  gen_qvariant_types,
  gen_qgeoshape_types

type cQGeoAreaMonitorInfo*{.exportc: "QGeoAreaMonitorInfo", incompleteStruct.} = object

proc fcQGeoAreaMonitorInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoAreaMonitorInfo_operatorAssign".}
proc fcQGeoAreaMonitorInfo_operatorEqual(self: pointer, other: pointer): bool {.importc: "QGeoAreaMonitorInfo_operatorEqual".}
proc fcQGeoAreaMonitorInfo_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGeoAreaMonitorInfo_operatorNotEqual".}
proc fcQGeoAreaMonitorInfo_name(self: pointer): struct_seaqt_string {.importc: "QGeoAreaMonitorInfo_name".}
proc fcQGeoAreaMonitorInfo_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QGeoAreaMonitorInfo_setName".}
proc fcQGeoAreaMonitorInfo_identifier(self: pointer): struct_seaqt_string {.importc: "QGeoAreaMonitorInfo_identifier".}
proc fcQGeoAreaMonitorInfo_isValid(self: pointer): bool {.importc: "QGeoAreaMonitorInfo_isValid".}
proc fcQGeoAreaMonitorInfo_area(self: pointer): pointer {.importc: "QGeoAreaMonitorInfo_area".}
proc fcQGeoAreaMonitorInfo_setArea(self: pointer, newShape: pointer): void {.importc: "QGeoAreaMonitorInfo_setArea".}
proc fcQGeoAreaMonitorInfo_expiration(self: pointer): pointer {.importc: "QGeoAreaMonitorInfo_expiration".}
proc fcQGeoAreaMonitorInfo_setExpiration(self: pointer, expiry: pointer): void {.importc: "QGeoAreaMonitorInfo_setExpiration".}
proc fcQGeoAreaMonitorInfo_isPersistent(self: pointer): bool {.importc: "QGeoAreaMonitorInfo_isPersistent".}
proc fcQGeoAreaMonitorInfo_setPersistent(self: pointer, isPersistent: bool): void {.importc: "QGeoAreaMonitorInfo_setPersistent".}
proc fcQGeoAreaMonitorInfo_notificationParameters(self: pointer): struct_seaqt_map {.importc: "QGeoAreaMonitorInfo_notificationParameters".}
proc fcQGeoAreaMonitorInfo_setNotificationParameters(self: pointer, parameters: struct_seaqt_map): void {.importc: "QGeoAreaMonitorInfo_setNotificationParameters".}
proc fcQGeoAreaMonitorInfo_new(): ptr cQGeoAreaMonitorInfo {.importc: "QGeoAreaMonitorInfo_new".}
proc fcQGeoAreaMonitorInfo_new2(other: pointer): ptr cQGeoAreaMonitorInfo {.importc: "QGeoAreaMonitorInfo_new2".}
proc fcQGeoAreaMonitorInfo_new3(name: struct_seaqt_string): ptr cQGeoAreaMonitorInfo {.importc: "QGeoAreaMonitorInfo_new3".}

proc operatorAssign*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, other: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): void =
  fcQGeoAreaMonitorInfo_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, other: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool =
  fcQGeoAreaMonitorInfo_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, other: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool =
  fcQGeoAreaMonitorInfo_operatorNotEqual(self.h, other.h)

proc name*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): string =
  let v_ms = fcQGeoAreaMonitorInfo_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, name: openArray[char]): void =
  fcQGeoAreaMonitorInfo_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc identifier*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): string =
  let v_ms = fcQGeoAreaMonitorInfo_identifier(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool =
  fcQGeoAreaMonitorInfo_isValid(self.h)

proc area*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): gen_qgeoshape_types.QGeoShape =
  gen_qgeoshape_types.QGeoShape(h: fcQGeoAreaMonitorInfo_area(self.h), owned: true)

proc setArea*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, newShape: gen_qgeoshape_types.QGeoShape): void =
  fcQGeoAreaMonitorInfo_setArea(self.h, newShape.h)

proc expiration*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQGeoAreaMonitorInfo_expiration(self.h), owned: true)

proc setExpiration*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, expiry: gen_qdatetime_types.QDateTime): void =
  fcQGeoAreaMonitorInfo_setExpiration(self.h, expiry.h)

proc isPersistent*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool =
  fcQGeoAreaMonitorInfo_isPersistent(self.h)

proc setPersistent*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, isPersistent: bool): void =
  fcQGeoAreaMonitorInfo_setPersistent(self.h, isPersistent)

proc notificationParameters*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQGeoAreaMonitorInfo_notificationParameters(self.h)
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

proc setNotificationParameters*(self: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, parameters: Table[string,gen_qvariant_types.QVariant]): void =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k in parameters.keys():
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_ctr += 1
  parameters_ctr = 0
  for parameters_v in parameters.values():
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  fcQGeoAreaMonitorInfo_setNotificationParameters(self.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),))

proc create*(T: type gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo =
  let tmp = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: fcQGeoAreaMonitorInfo_new(), owned: true)
  tmp
proc create*(T: type gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo,
    other: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo =
  let tmp = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: fcQGeoAreaMonitorInfo_new2(other.h), owned: true)
  tmp
proc create*(T: type gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo,
    name: openArray[char]): gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo =
  let tmp = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: fcQGeoAreaMonitorInfo_new3(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)
  tmp
