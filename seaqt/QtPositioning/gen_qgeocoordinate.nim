import ./qtpositioning_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


type QGeoCoordinateCoordinateTypeEnum* = distinct cint
template InvalidCoordinate*(_: type QGeoCoordinateCoordinateTypeEnum): untyped = 0
template Coordinate2D*(_: type QGeoCoordinateCoordinateTypeEnum): untyped = 1
template Coordinate3D*(_: type QGeoCoordinateCoordinateTypeEnum): untyped = 2


type QGeoCoordinateCoordinateFormatEnum* = distinct cint
template Degrees*(_: type QGeoCoordinateCoordinateFormatEnum): untyped = 0
template DegreesWithHemisphere*(_: type QGeoCoordinateCoordinateFormatEnum): untyped = 1
template DegreesMinutes*(_: type QGeoCoordinateCoordinateFormatEnum): untyped = 2
template DegreesMinutesWithHemisphere*(_: type QGeoCoordinateCoordinateFormatEnum): untyped = 3
template DegreesMinutesSeconds*(_: type QGeoCoordinateCoordinateFormatEnum): untyped = 4
template DegreesMinutesSecondsWithHemisphere*(_: type QGeoCoordinateCoordinateFormatEnum): untyped = 5


import ./gen_qgeocoordinate_types
export gen_qgeocoordinate_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQGeoCoordinate*{.exportc: "QGeoCoordinate", incompleteStruct.} = object

proc fcQGeoCoordinate_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoCoordinate_operatorAssign".}
proc fcQGeoCoordinate_swap(self: pointer, other: pointer): void {.importc: "QGeoCoordinate_swap".}
proc fcQGeoCoordinate_isValid(self: pointer): bool {.importc: "QGeoCoordinate_isValid".}
proc fcQGeoCoordinate_typeX(self: pointer): cint {.importc: "QGeoCoordinate_type".}
proc fcQGeoCoordinate_setLatitude(self: pointer, latitude: float64): void {.importc: "QGeoCoordinate_setLatitude".}
proc fcQGeoCoordinate_latitude(self: pointer): float64 {.importc: "QGeoCoordinate_latitude".}
proc fcQGeoCoordinate_setLongitude(self: pointer, longitude: float64): void {.importc: "QGeoCoordinate_setLongitude".}
proc fcQGeoCoordinate_longitude(self: pointer): float64 {.importc: "QGeoCoordinate_longitude".}
proc fcQGeoCoordinate_setAltitude(self: pointer, altitude: float64): void {.importc: "QGeoCoordinate_setAltitude".}
proc fcQGeoCoordinate_altitude(self: pointer): float64 {.importc: "QGeoCoordinate_altitude".}
proc fcQGeoCoordinate_distanceTo(self: pointer, other: pointer): float64 {.importc: "QGeoCoordinate_distanceTo".}
proc fcQGeoCoordinate_azimuthTo(self: pointer, other: pointer): float64 {.importc: "QGeoCoordinate_azimuthTo".}
proc fcQGeoCoordinate_atDistanceAndAzimuth(self: pointer, distance: float64, azimuth: float64): pointer {.importc: "QGeoCoordinate_atDistanceAndAzimuth".}
proc fcQGeoCoordinate_toString(self: pointer): struct_seaqt_string {.importc: "QGeoCoordinate_toString".}
proc fcQGeoCoordinate_atDistanceAndAzimuth2(self: pointer, distance: float64, azimuth: float64, distanceUp: float64): pointer {.importc: "QGeoCoordinate_atDistanceAndAzimuth2".}
proc fcQGeoCoordinate_toStringWithFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QGeoCoordinate_toStringWithFormat".}
proc fcQGeoCoordinate_new(): ptr cQGeoCoordinate {.importc: "QGeoCoordinate_new".}
proc fcQGeoCoordinate_new2(latitude: float64, longitude: float64): ptr cQGeoCoordinate {.importc: "QGeoCoordinate_new2".}
proc fcQGeoCoordinate_new3(latitude: float64, longitude: float64, altitude: float64): ptr cQGeoCoordinate {.importc: "QGeoCoordinate_new3".}
proc fcQGeoCoordinate_new4(other: pointer): ptr cQGeoCoordinate {.importc: "QGeoCoordinate_new4".}
proc fcQGeoCoordinate_staticMetaObject(): pointer {.importc: "QGeoCoordinate_staticMetaObject".}
proc fcQGeoCoordinate_delete(self: pointer) {.importc: "QGeoCoordinate_delete".}

proc operatorAssign*(self: gen_qgeocoordinate_types.QGeoCoordinate, other: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoCoordinate_operatorAssign(self.h, other.h)

proc swap*(self: gen_qgeocoordinate_types.QGeoCoordinate, other: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoCoordinate_swap(self.h, other.h)

proc isValid*(self: gen_qgeocoordinate_types.QGeoCoordinate): bool =
  fcQGeoCoordinate_isValid(self.h)

proc typeX*(self: gen_qgeocoordinate_types.QGeoCoordinate): cint =
  cint(fcQGeoCoordinate_typeX(self.h))

proc setLatitude*(self: gen_qgeocoordinate_types.QGeoCoordinate, latitude: float64): void =
  fcQGeoCoordinate_setLatitude(self.h, latitude)

proc latitude*(self: gen_qgeocoordinate_types.QGeoCoordinate): float64 =
  fcQGeoCoordinate_latitude(self.h)

proc setLongitude*(self: gen_qgeocoordinate_types.QGeoCoordinate, longitude: float64): void =
  fcQGeoCoordinate_setLongitude(self.h, longitude)

proc longitude*(self: gen_qgeocoordinate_types.QGeoCoordinate): float64 =
  fcQGeoCoordinate_longitude(self.h)

proc setAltitude*(self: gen_qgeocoordinate_types.QGeoCoordinate, altitude: float64): void =
  fcQGeoCoordinate_setAltitude(self.h, altitude)

proc altitude*(self: gen_qgeocoordinate_types.QGeoCoordinate): float64 =
  fcQGeoCoordinate_altitude(self.h)

proc distanceTo*(self: gen_qgeocoordinate_types.QGeoCoordinate, other: gen_qgeocoordinate_types.QGeoCoordinate): float64 =
  fcQGeoCoordinate_distanceTo(self.h, other.h)

proc azimuthTo*(self: gen_qgeocoordinate_types.QGeoCoordinate, other: gen_qgeocoordinate_types.QGeoCoordinate): float64 =
  fcQGeoCoordinate_azimuthTo(self.h, other.h)

proc atDistanceAndAzimuth*(self: gen_qgeocoordinate_types.QGeoCoordinate, distance: float64, azimuth: float64): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCoordinate_atDistanceAndAzimuth(self.h, distance, azimuth))

proc toString*(self: gen_qgeocoordinate_types.QGeoCoordinate): string =
  let v_ms = fcQGeoCoordinate_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc atDistanceAndAzimuth*(self: gen_qgeocoordinate_types.QGeoCoordinate, distance: float64, azimuth: float64, distanceUp: float64): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCoordinate_atDistanceAndAzimuth2(self.h, distance, azimuth, distanceUp))

proc toString*(self: gen_qgeocoordinate_types.QGeoCoordinate, format: cint): string =
  let v_ms = fcQGeoCoordinate_toStringWithFormat(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qgeocoordinate_types.QGeoCoordinate): gen_qgeocoordinate_types.QGeoCoordinate =
  let tmp = gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCoordinate_new())
  tmp
proc create*(T: type gen_qgeocoordinate_types.QGeoCoordinate,
    latitude: float64, longitude: float64): gen_qgeocoordinate_types.QGeoCoordinate =
  let tmp = gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCoordinate_new2(latitude, longitude))
  tmp
proc create*(T: type gen_qgeocoordinate_types.QGeoCoordinate,
    latitude: float64, longitude: float64, altitude: float64): gen_qgeocoordinate_types.QGeoCoordinate =
  let tmp = gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCoordinate_new3(latitude, longitude, altitude))
  tmp
proc create*(T: type gen_qgeocoordinate_types.QGeoCoordinate,
    other: gen_qgeocoordinate_types.QGeoCoordinate): gen_qgeocoordinate_types.QGeoCoordinate =
  let tmp = gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCoordinate_new4(other.h))
  tmp
proc staticMetaObject*(_: type gen_qgeocoordinate_types.QGeoCoordinate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoCoordinate_staticMetaObject())
proc delete*(self: gen_qgeocoordinate_types.QGeoCoordinate) =
  fcQGeoCoordinate_delete(self.h)
