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


type QGeoShapeShapeTypeEnum* = distinct cint
template UnknownType*(_: type QGeoShapeShapeTypeEnum): untyped = 0
template RectangleType*(_: type QGeoShapeShapeTypeEnum): untyped = 1
template CircleType*(_: type QGeoShapeShapeTypeEnum): untyped = 2
template PathType*(_: type QGeoShapeShapeTypeEnum): untyped = 3
template PolygonType*(_: type QGeoShapeShapeTypeEnum): untyped = 4


import ./gen_qgeoshape_types
export gen_qgeoshape_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qgeocoordinate_types,
  ./gen_qgeorectangle_types
export
  gen_qobjectdefs_types,
  gen_qgeocoordinate_types,
  gen_qgeorectangle_types

type cQGeoShape*{.exportc: "QGeoShape", incompleteStruct.} = object

proc fcQGeoShape_typeX(self: pointer): cint {.importc: "QGeoShape_type".}
proc fcQGeoShape_isValid(self: pointer): bool {.importc: "QGeoShape_isValid".}
proc fcQGeoShape_isEmpty(self: pointer): bool {.importc: "QGeoShape_isEmpty".}
proc fcQGeoShape_contains(self: pointer, coordinate: pointer): bool {.importc: "QGeoShape_contains".}
proc fcQGeoShape_boundingGeoRectangle(self: pointer): pointer {.importc: "QGeoShape_boundingGeoRectangle".}
proc fcQGeoShape_center(self: pointer): pointer {.importc: "QGeoShape_center".}
proc fcQGeoShape_extendShape(self: pointer, coordinate: pointer): void {.importc: "QGeoShape_extendShape".}
proc fcQGeoShape_operatorEqual(self: pointer, other: pointer): bool {.importc: "QGeoShape_operatorEqual".}
proc fcQGeoShape_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGeoShape_operatorNotEqual".}
proc fcQGeoShape_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoShape_operatorAssign".}
proc fcQGeoShape_toString(self: pointer): struct_seaqt_string {.importc: "QGeoShape_toString".}
proc fcQGeoShape_new(): ptr cQGeoShape {.importc: "QGeoShape_new".}
proc fcQGeoShape_new2(other: pointer): ptr cQGeoShape {.importc: "QGeoShape_new2".}
proc fcQGeoShape_staticMetaObject(): pointer {.importc: "QGeoShape_staticMetaObject".}
proc fcQGeoShape_delete(self: pointer) {.importc: "QGeoShape_delete".}

proc typeX*(self: gen_qgeoshape_types.QGeoShape): cint =
  cint(fcQGeoShape_typeX(self.h))

proc isValid*(self: gen_qgeoshape_types.QGeoShape): bool =
  fcQGeoShape_isValid(self.h)

proc isEmpty*(self: gen_qgeoshape_types.QGeoShape): bool =
  fcQGeoShape_isEmpty(self.h)

proc contains*(self: gen_qgeoshape_types.QGeoShape, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): bool =
  fcQGeoShape_contains(self.h, coordinate.h)

proc boundingGeoRectangle*(self: gen_qgeoshape_types.QGeoShape): gen_qgeorectangle_types.QGeoRectangle =
  gen_qgeorectangle_types.QGeoRectangle(h: fcQGeoShape_boundingGeoRectangle(self.h))

proc center*(self: gen_qgeoshape_types.QGeoShape): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoShape_center(self.h))

proc extendShape*(self: gen_qgeoshape_types.QGeoShape, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoShape_extendShape(self.h, coordinate.h)

proc operatorEqual*(self: gen_qgeoshape_types.QGeoShape, other: gen_qgeoshape_types.QGeoShape): bool =
  fcQGeoShape_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qgeoshape_types.QGeoShape, other: gen_qgeoshape_types.QGeoShape): bool =
  fcQGeoShape_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: gen_qgeoshape_types.QGeoShape, other: gen_qgeoshape_types.QGeoShape): void =
  fcQGeoShape_operatorAssign(self.h, other.h)

proc toString*(self: gen_qgeoshape_types.QGeoShape): string =
  let v_ms = fcQGeoShape_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qgeoshape_types.QGeoShape): gen_qgeoshape_types.QGeoShape =
  let tmp = gen_qgeoshape_types.QGeoShape(h: fcQGeoShape_new())
  tmp
proc create*(T: type gen_qgeoshape_types.QGeoShape,
    other: gen_qgeoshape_types.QGeoShape): gen_qgeoshape_types.QGeoShape =
  let tmp = gen_qgeoshape_types.QGeoShape(h: fcQGeoShape_new2(other.h))
  tmp
proc staticMetaObject*(_: type gen_qgeoshape_types.QGeoShape): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoShape_staticMetaObject())
proc delete*(self: gen_qgeoshape_types.QGeoShape) =
  fcQGeoShape_delete(self.h)
