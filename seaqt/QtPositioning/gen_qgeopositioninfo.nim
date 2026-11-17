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


type QGeoPositionInfoAttributeEnum* = distinct cint
template Direction*(_: type QGeoPositionInfoAttributeEnum): untyped = 0
template GroundSpeed*(_: type QGeoPositionInfoAttributeEnum): untyped = 1
template VerticalSpeed*(_: type QGeoPositionInfoAttributeEnum): untyped = 2
template MagneticVariation*(_: type QGeoPositionInfoAttributeEnum): untyped = 3
template HorizontalAccuracy*(_: type QGeoPositionInfoAttributeEnum): untyped = 4
template VerticalAccuracy*(_: type QGeoPositionInfoAttributeEnum): untyped = 5


import ./gen_qgeopositioninfo_types
export gen_qgeopositioninfo_types

import
  ../QtCore/gen_qdatetime_types,
  ./gen_qgeocoordinate_types
export
  gen_qdatetime_types,
  gen_qgeocoordinate_types

type cQGeoPositionInfo*{.exportc: "QGeoPositionInfo", incompleteStruct.} = object

proc fcQGeoPositionInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoPositionInfo_operatorAssign".}
proc fcQGeoPositionInfo_operatorEqual(self: pointer, other: pointer): bool {.importc: "QGeoPositionInfo_operatorEqual".}
proc fcQGeoPositionInfo_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGeoPositionInfo_operatorNotEqual".}
proc fcQGeoPositionInfo_isValid(self: pointer): bool {.importc: "QGeoPositionInfo_isValid".}
proc fcQGeoPositionInfo_setTimestamp(self: pointer, timestamp: pointer): void {.importc: "QGeoPositionInfo_setTimestamp".}
proc fcQGeoPositionInfo_timestamp(self: pointer): pointer {.importc: "QGeoPositionInfo_timestamp".}
proc fcQGeoPositionInfo_setCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPositionInfo_setCoordinate".}
proc fcQGeoPositionInfo_coordinate(self: pointer): pointer {.importc: "QGeoPositionInfo_coordinate".}
proc fcQGeoPositionInfo_setAttribute(self: pointer, attribute: cint, value: float64): void {.importc: "QGeoPositionInfo_setAttribute".}
proc fcQGeoPositionInfo_attribute(self: pointer, attribute: cint): float64 {.importc: "QGeoPositionInfo_attribute".}
proc fcQGeoPositionInfo_removeAttribute(self: pointer, attribute: cint): void {.importc: "QGeoPositionInfo_removeAttribute".}
proc fcQGeoPositionInfo_hasAttribute(self: pointer, attribute: cint): bool {.importc: "QGeoPositionInfo_hasAttribute".}
proc fcQGeoPositionInfo_new(): ptr cQGeoPositionInfo {.importc: "QGeoPositionInfo_new".}
proc fcQGeoPositionInfo_new2(coordinate: pointer, updateTime: pointer): ptr cQGeoPositionInfo {.importc: "QGeoPositionInfo_new2".}
proc fcQGeoPositionInfo_new3(other: pointer): ptr cQGeoPositionInfo {.importc: "QGeoPositionInfo_new3".}

proc operatorAssign*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, other: gen_qgeopositioninfo_types.QGeoPositionInfo): void =
  fcQGeoPositionInfo_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, other: gen_qgeopositioninfo_types.QGeoPositionInfo): bool =
  fcQGeoPositionInfo_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, other: gen_qgeopositioninfo_types.QGeoPositionInfo): bool =
  fcQGeoPositionInfo_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qgeopositioninfo_types.QGeoPositionInfo): bool =
  fcQGeoPositionInfo_isValid(self.h)

proc setTimestamp*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, timestamp: gen_qdatetime_types.QDateTime): void =
  fcQGeoPositionInfo_setTimestamp(self.h, timestamp.h)

proc timestamp*(self: gen_qgeopositioninfo_types.QGeoPositionInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQGeoPositionInfo_timestamp(self.h), owned: true)

proc setCoordinate*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPositionInfo_setCoordinate(self.h, coordinate.h)

proc coordinate*(self: gen_qgeopositioninfo_types.QGeoPositionInfo): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoPositionInfo_coordinate(self.h), owned: true)

proc setAttribute*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, attribute: cint, value: float64): void =
  fcQGeoPositionInfo_setAttribute(self.h, cint(attribute), value)

proc attribute*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, attribute: cint): float64 =
  fcQGeoPositionInfo_attribute(self.h, cint(attribute))

proc removeAttribute*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, attribute: cint): void =
  fcQGeoPositionInfo_removeAttribute(self.h, cint(attribute))

proc hasAttribute*(self: gen_qgeopositioninfo_types.QGeoPositionInfo, attribute: cint): bool =
  fcQGeoPositionInfo_hasAttribute(self.h, cint(attribute))

proc create*(T: type gen_qgeopositioninfo_types.QGeoPositionInfo): gen_qgeopositioninfo_types.QGeoPositionInfo =
  let tmp = gen_qgeopositioninfo_types.QGeoPositionInfo(h: fcQGeoPositionInfo_new(), owned: true)
  tmp
proc create*(T: type gen_qgeopositioninfo_types.QGeoPositionInfo,
    coordinate: gen_qgeocoordinate_types.QGeoCoordinate, updateTime: gen_qdatetime_types.QDateTime): gen_qgeopositioninfo_types.QGeoPositionInfo =
  let tmp = gen_qgeopositioninfo_types.QGeoPositionInfo(h: fcQGeoPositionInfo_new2(coordinate.h, updateTime.h), owned: true)
  tmp
proc create*(T: type gen_qgeopositioninfo_types.QGeoPositionInfo,
    other: gen_qgeopositioninfo_types.QGeoPositionInfo): gen_qgeopositioninfo_types.QGeoPositionInfo =
  let tmp = gen_qgeopositioninfo_types.QGeoPositionInfo(h: fcQGeoPositionInfo_new3(other.h), owned: true)
  tmp
