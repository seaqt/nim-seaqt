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


{.compile("gen_qgeorectangle.cpp", QtPositioningCFlags).}


import ./gen_qgeorectangle_types
export gen_qgeorectangle_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qgeocoordinate_types,
  ./gen_qgeoshape
export
  gen_qobjectdefs_types,
  gen_qgeocoordinate_types,
  gen_qgeoshape

type cQGeoRectangle*{.exportc: "QGeoRectangle", incompleteStruct.} = object

proc fcQGeoRectangle_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoRectangle_operatorAssign".}
proc fcQGeoRectangle_operatorEqual(self: pointer, other: pointer): bool {.importc: "QGeoRectangle_operatorEqual".}
proc fcQGeoRectangle_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGeoRectangle_operatorNotEqual".}
proc fcQGeoRectangle_setTopLeft(self: pointer, topLeft: pointer): void {.importc: "QGeoRectangle_setTopLeft".}
proc fcQGeoRectangle_topLeft(self: pointer): pointer {.importc: "QGeoRectangle_topLeft".}
proc fcQGeoRectangle_setTopRight(self: pointer, topRight: pointer): void {.importc: "QGeoRectangle_setTopRight".}
proc fcQGeoRectangle_topRight(self: pointer): pointer {.importc: "QGeoRectangle_topRight".}
proc fcQGeoRectangle_setBottomLeft(self: pointer, bottomLeft: pointer): void {.importc: "QGeoRectangle_setBottomLeft".}
proc fcQGeoRectangle_bottomLeft(self: pointer): pointer {.importc: "QGeoRectangle_bottomLeft".}
proc fcQGeoRectangle_setBottomRight(self: pointer, bottomRight: pointer): void {.importc: "QGeoRectangle_setBottomRight".}
proc fcQGeoRectangle_bottomRight(self: pointer): pointer {.importc: "QGeoRectangle_bottomRight".}
proc fcQGeoRectangle_setCenter(self: pointer, center: pointer): void {.importc: "QGeoRectangle_setCenter".}
proc fcQGeoRectangle_center(self: pointer): pointer {.importc: "QGeoRectangle_center".}
proc fcQGeoRectangle_setWidth(self: pointer, degreesWidth: float64): void {.importc: "QGeoRectangle_setWidth".}
proc fcQGeoRectangle_width(self: pointer): float64 {.importc: "QGeoRectangle_width".}
proc fcQGeoRectangle_setHeight(self: pointer, degreesHeight: float64): void {.importc: "QGeoRectangle_setHeight".}
proc fcQGeoRectangle_height(self: pointer): float64 {.importc: "QGeoRectangle_height".}
proc fcQGeoRectangle_contains(self: pointer, rectangle: pointer): bool {.importc: "QGeoRectangle_contains".}
proc fcQGeoRectangle_intersects(self: pointer, rectangle: pointer): bool {.importc: "QGeoRectangle_intersects".}
proc fcQGeoRectangle_translate(self: pointer, degreesLatitude: float64, degreesLongitude: float64): void {.importc: "QGeoRectangle_translate".}
proc fcQGeoRectangle_translated(self: pointer, degreesLatitude: float64, degreesLongitude: float64): pointer {.importc: "QGeoRectangle_translated".}
proc fcQGeoRectangle_extendRectangle(self: pointer, coordinate: pointer): void {.importc: "QGeoRectangle_extendRectangle".}
proc fcQGeoRectangle_united(self: pointer, rectangle: pointer): pointer {.importc: "QGeoRectangle_united".}
proc fcQGeoRectangle_operatorBitwiseOr(self: pointer, rectangle: pointer): pointer {.importc: "QGeoRectangle_operatorBitwiseOr".}
proc fcQGeoRectangle_operatorBitwiseOrAssign(self: pointer, rectangle: pointer): void {.importc: "QGeoRectangle_operatorBitwiseOrAssign".}
proc fcQGeoRectangle_toString(self: pointer): struct_seaqt_string {.importc: "QGeoRectangle_toString".}
proc fcQGeoRectangle_new(): ptr cQGeoRectangle {.importc: "QGeoRectangle_new".}
proc fcQGeoRectangle_new2(center: pointer, degreesWidth: float64, degreesHeight: float64): ptr cQGeoRectangle {.importc: "QGeoRectangle_new2".}
proc fcQGeoRectangle_new3(topLeft: pointer, bottomRight: pointer): ptr cQGeoRectangle {.importc: "QGeoRectangle_new3".}
proc fcQGeoRectangle_new4(coordinates: struct_seaqt_array): ptr cQGeoRectangle {.importc: "QGeoRectangle_new4".}
proc fcQGeoRectangle_new5(other: pointer): ptr cQGeoRectangle {.importc: "QGeoRectangle_new5".}
proc fcQGeoRectangle_new6(other: pointer): ptr cQGeoRectangle {.importc: "QGeoRectangle_new6".}
proc fcQGeoRectangle_staticMetaObject(): pointer {.importc: "QGeoRectangle_staticMetaObject".}

proc operatorAssign*(self: gen_qgeorectangle_types.QGeoRectangle, other: gen_qgeorectangle_types.QGeoRectangle): void =
  fcQGeoRectangle_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qgeorectangle_types.QGeoRectangle, other: gen_qgeorectangle_types.QGeoRectangle): bool =
  fcQGeoRectangle_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qgeorectangle_types.QGeoRectangle, other: gen_qgeorectangle_types.QGeoRectangle): bool =
  fcQGeoRectangle_operatorNotEqual(self.h, other.h)

proc setTopLeft*(self: gen_qgeorectangle_types.QGeoRectangle, topLeft: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoRectangle_setTopLeft(self.h, topLeft.h)

proc topLeft*(self: gen_qgeorectangle_types.QGeoRectangle): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoRectangle_topLeft(self.h), owned: true)

proc setTopRight*(self: gen_qgeorectangle_types.QGeoRectangle, topRight: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoRectangle_setTopRight(self.h, topRight.h)

proc topRight*(self: gen_qgeorectangle_types.QGeoRectangle): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoRectangle_topRight(self.h), owned: true)

proc setBottomLeft*(self: gen_qgeorectangle_types.QGeoRectangle, bottomLeft: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoRectangle_setBottomLeft(self.h, bottomLeft.h)

proc bottomLeft*(self: gen_qgeorectangle_types.QGeoRectangle): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoRectangle_bottomLeft(self.h), owned: true)

proc setBottomRight*(self: gen_qgeorectangle_types.QGeoRectangle, bottomRight: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoRectangle_setBottomRight(self.h, bottomRight.h)

proc bottomRight*(self: gen_qgeorectangle_types.QGeoRectangle): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoRectangle_bottomRight(self.h), owned: true)

proc setCenter*(self: gen_qgeorectangle_types.QGeoRectangle, center: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoRectangle_setCenter(self.h, center.h)

proc center*(self: gen_qgeorectangle_types.QGeoRectangle): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoRectangle_center(self.h), owned: true)

proc setWidth*(self: gen_qgeorectangle_types.QGeoRectangle, degreesWidth: float64): void =
  fcQGeoRectangle_setWidth(self.h, degreesWidth)

proc width*(self: gen_qgeorectangle_types.QGeoRectangle): float64 =
  fcQGeoRectangle_width(self.h)

proc setHeight*(self: gen_qgeorectangle_types.QGeoRectangle, degreesHeight: float64): void =
  fcQGeoRectangle_setHeight(self.h, degreesHeight)

proc height*(self: gen_qgeorectangle_types.QGeoRectangle): float64 =
  fcQGeoRectangle_height(self.h)

proc contains*(self: gen_qgeorectangle_types.QGeoRectangle, rectangle: gen_qgeorectangle_types.QGeoRectangle): bool =
  fcQGeoRectangle_contains(self.h, rectangle.h)

proc intersects*(self: gen_qgeorectangle_types.QGeoRectangle, rectangle: gen_qgeorectangle_types.QGeoRectangle): bool =
  fcQGeoRectangle_intersects(self.h, rectangle.h)

proc translate*(self: gen_qgeorectangle_types.QGeoRectangle, degreesLatitude: float64, degreesLongitude: float64): void =
  fcQGeoRectangle_translate(self.h, degreesLatitude, degreesLongitude)

proc translated*(self: gen_qgeorectangle_types.QGeoRectangle, degreesLatitude: float64, degreesLongitude: float64): gen_qgeorectangle_types.QGeoRectangle =
  gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_translated(self.h, degreesLatitude, degreesLongitude), owned: true)

proc extendRectangle*(self: gen_qgeorectangle_types.QGeoRectangle, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoRectangle_extendRectangle(self.h, coordinate.h)

proc united*(self: gen_qgeorectangle_types.QGeoRectangle, rectangle: gen_qgeorectangle_types.QGeoRectangle): gen_qgeorectangle_types.QGeoRectangle =
  gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_united(self.h, rectangle.h), owned: true)

proc operatorBitwiseOr*(self: gen_qgeorectangle_types.QGeoRectangle, rectangle: gen_qgeorectangle_types.QGeoRectangle): gen_qgeorectangle_types.QGeoRectangle =
  gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_operatorBitwiseOr(self.h, rectangle.h), owned: true)

proc operatorBitwiseOrAssign*(self: gen_qgeorectangle_types.QGeoRectangle, rectangle: gen_qgeorectangle_types.QGeoRectangle): void =
  fcQGeoRectangle_operatorBitwiseOrAssign(self.h, rectangle.h)

proc toString*(self: gen_qgeorectangle_types.QGeoRectangle): string =
  let v_ms = fcQGeoRectangle_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qgeorectangle_types.QGeoRectangle): gen_qgeorectangle_types.QGeoRectangle =
  let tmp = gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_new(), owned: true)
  tmp
proc create*(T: type gen_qgeorectangle_types.QGeoRectangle,
    center: gen_qgeocoordinate_types.QGeoCoordinate, degreesWidth: float64, degreesHeight: float64): gen_qgeorectangle_types.QGeoRectangle =
  let tmp = gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_new2(center.h, degreesWidth, degreesHeight), owned: true)
  tmp
proc create*(T: type gen_qgeorectangle_types.QGeoRectangle,
    topLeft: gen_qgeocoordinate_types.QGeoCoordinate, bottomRight: gen_qgeocoordinate_types.QGeoCoordinate): gen_qgeorectangle_types.QGeoRectangle =
  let tmp = gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_new3(topLeft.h, bottomRight.h), owned: true)
  tmp
proc create*(T: type gen_qgeorectangle_types.QGeoRectangle,
    coordinates: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): gen_qgeorectangle_types.QGeoRectangle =
  var coordinates_CArray = newSeq[pointer](len(coordinates))
  for i in 0..<len(coordinates):
    coordinates_CArray[i] = coordinates[i].h

  let tmp = gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_new4(struct_seaqt_array(len: csize_t(len(coordinates)), data: if len(coordinates) == 0: nil else: addr(coordinates_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qgeorectangle_types.QGeoRectangle,
    other: gen_qgeorectangle_types.QGeoRectangle): gen_qgeorectangle_types.QGeoRectangle =
  let tmp = gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_new5(other.h), owned: true)
  tmp
proc create*(T: type gen_qgeorectangle_types.QGeoRectangle,
    other: gen_qgeoshape_types.QGeoShape): gen_qgeorectangle_types.QGeoRectangle =
  let tmp = gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoRectangle_new6(other.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qgeorectangle_types.QGeoRectangle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoRectangle_staticMetaObject())
