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


{.compile("gen_qgeocircle.cpp", QtPositioningCFlags).}


import ./gen_qgeocircle_types
export gen_qgeocircle_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qgeocoordinate_types,
  ./gen_qgeoshape
export
  gen_qobjectdefs_types,
  gen_qgeocoordinate_types,
  gen_qgeoshape

type cQGeoCircle*{.exportc: "QGeoCircle", incompleteStruct.} = object

proc fcQGeoCircle_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoCircle_operatorAssign".}
proc fcQGeoCircle_setCenter(self: pointer, center: pointer): void {.importc: "QGeoCircle_setCenter".}
proc fcQGeoCircle_center(self: pointer): pointer {.importc: "QGeoCircle_center".}
proc fcQGeoCircle_setRadius(self: pointer, radius: float64): void {.importc: "QGeoCircle_setRadius".}
proc fcQGeoCircle_radius(self: pointer): float64 {.importc: "QGeoCircle_radius".}
proc fcQGeoCircle_translate(self: pointer, degreesLatitude: float64, degreesLongitude: float64): void {.importc: "QGeoCircle_translate".}
proc fcQGeoCircle_translated(self: pointer, degreesLatitude: float64, degreesLongitude: float64): pointer {.importc: "QGeoCircle_translated".}
proc fcQGeoCircle_extendCircle(self: pointer, coordinate: pointer): void {.importc: "QGeoCircle_extendCircle".}
proc fcQGeoCircle_toString(self: pointer): struct_seaqt_string {.importc: "QGeoCircle_toString".}
proc fcQGeoCircle_new(): ptr cQGeoCircle {.importc: "QGeoCircle_new".}
proc fcQGeoCircle_new2(center: pointer): ptr cQGeoCircle {.importc: "QGeoCircle_new2".}
proc fcQGeoCircle_new3(other: pointer): ptr cQGeoCircle {.importc: "QGeoCircle_new3".}
proc fcQGeoCircle_new4(other: pointer): ptr cQGeoCircle {.importc: "QGeoCircle_new4".}
proc fcQGeoCircle_new5(center: pointer, radius: float64): ptr cQGeoCircle {.importc: "QGeoCircle_new5".}
proc fcQGeoCircle_staticMetaObject(): pointer {.importc: "QGeoCircle_staticMetaObject".}
proc fcQGeoCircle_delete(self: pointer) {.importc: "QGeoCircle_delete".}

proc operatorAssign*(self: gen_qgeocircle_types.QGeoCircle, other: gen_qgeocircle_types.QGeoCircle): void =
  fcQGeoCircle_operatorAssign(self.h, other.h)

proc setCenter*(self: gen_qgeocircle_types.QGeoCircle, center: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoCircle_setCenter(self.h, center.h)

proc center*(self: gen_qgeocircle_types.QGeoCircle): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoCircle_center(self.h))

proc setRadius*(self: gen_qgeocircle_types.QGeoCircle, radius: float64): void =
  fcQGeoCircle_setRadius(self.h, radius)

proc radius*(self: gen_qgeocircle_types.QGeoCircle): float64 =
  fcQGeoCircle_radius(self.h)

proc translate*(self: gen_qgeocircle_types.QGeoCircle, degreesLatitude: float64, degreesLongitude: float64): void =
  fcQGeoCircle_translate(self.h, degreesLatitude, degreesLongitude)

proc translated*(self: gen_qgeocircle_types.QGeoCircle, degreesLatitude: float64, degreesLongitude: float64): gen_qgeocircle_types.QGeoCircle =
  gen_qgeocircle_types.QGeoCircle(h: fcQGeoCircle_translated(self.h, degreesLatitude, degreesLongitude))

proc extendCircle*(self: gen_qgeocircle_types.QGeoCircle, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoCircle_extendCircle(self.h, coordinate.h)

proc toString*(self: gen_qgeocircle_types.QGeoCircle): string =
  let v_ms = fcQGeoCircle_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qgeocircle_types.QGeoCircle): gen_qgeocircle_types.QGeoCircle =
  let tmp = gen_qgeocircle_types.QGeoCircle(h: fcQGeoCircle_new())
  tmp
proc create*(T: type gen_qgeocircle_types.QGeoCircle,
    center: gen_qgeocoordinate_types.QGeoCoordinate): gen_qgeocircle_types.QGeoCircle =
  let tmp = gen_qgeocircle_types.QGeoCircle(h: fcQGeoCircle_new2(center.h))
  tmp
proc create*(T: type gen_qgeocircle_types.QGeoCircle,
    other: gen_qgeocircle_types.QGeoCircle): gen_qgeocircle_types.QGeoCircle =
  let tmp = gen_qgeocircle_types.QGeoCircle(h: fcQGeoCircle_new3(other.h))
  tmp
proc create*(T: type gen_qgeocircle_types.QGeoCircle,
    other: gen_qgeoshape_types.QGeoShape): gen_qgeocircle_types.QGeoCircle =
  let tmp = gen_qgeocircle_types.QGeoCircle(h: fcQGeoCircle_new4(other.h))
  tmp
proc create*(T: type gen_qgeocircle_types.QGeoCircle,
    center: gen_qgeocoordinate_types.QGeoCoordinate, radius: float64): gen_qgeocircle_types.QGeoCircle =
  let tmp = gen_qgeocircle_types.QGeoCircle(h: fcQGeoCircle_new5(center.h, radius))
  tmp
proc staticMetaObject*(_: type gen_qgeocircle_types.QGeoCircle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoCircle_staticMetaObject())
proc delete*(self: gen_qgeocircle_types.QGeoCircle) =
  fcQGeoCircle_delete(self.h)
