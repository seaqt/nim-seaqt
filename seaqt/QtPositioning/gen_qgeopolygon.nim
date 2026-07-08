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


{.compile("gen_qgeopolygon.cpp", QtPositioningCFlags).}


import ./gen_qgeopolygon_types
export gen_qgeopolygon_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeocoordinate_types,
  ./gen_qgeoshape
export
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qgeocoordinate_types,
  gen_qgeoshape

type cQGeoPolygon*{.exportc: "QGeoPolygon", incompleteStruct.} = object

proc fcQGeoPolygon_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoPolygon_operatorAssign".}
proc fcQGeoPolygon_operatorEqual(self: pointer, other: pointer): bool {.importc: "QGeoPolygon_operatorEqual".}
proc fcQGeoPolygon_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGeoPolygon_operatorNotEqual".}
proc fcQGeoPolygon_setPath(self: pointer, path: struct_seaqt_array): void {.importc: "QGeoPolygon_setPath".}
proc fcQGeoPolygon_path(self: pointer): struct_seaqt_array {.importc: "QGeoPolygon_path".}
proc fcQGeoPolygon_addHole(self: pointer, holePath: pointer): void {.importc: "QGeoPolygon_addHole".}
proc fcQGeoPolygon_addHoleWithHolePath(self: pointer, holePath: struct_seaqt_array): void {.importc: "QGeoPolygon_addHoleWithHolePath".}
proc fcQGeoPolygon_hole(self: pointer, index: cint): struct_seaqt_array {.importc: "QGeoPolygon_hole".}
proc fcQGeoPolygon_holePath(self: pointer, index: cint): struct_seaqt_array {.importc: "QGeoPolygon_holePath".}
proc fcQGeoPolygon_removeHole(self: pointer, index: cint): void {.importc: "QGeoPolygon_removeHole".}
proc fcQGeoPolygon_holesCount(self: pointer): cint {.importc: "QGeoPolygon_holesCount".}
proc fcQGeoPolygon_translate(self: pointer, degreesLatitude: float64, degreesLongitude: float64): void {.importc: "QGeoPolygon_translate".}
proc fcQGeoPolygon_translated(self: pointer, degreesLatitude: float64, degreesLongitude: float64): pointer {.importc: "QGeoPolygon_translated".}
proc fcQGeoPolygon_length(self: pointer): float64 {.importc: "QGeoPolygon_length".}
proc fcQGeoPolygon_size(self: pointer): cint {.importc: "QGeoPolygon_size".}
proc fcQGeoPolygon_addCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPolygon_addCoordinate".}
proc fcQGeoPolygon_insertCoordinate(self: pointer, index: cint, coordinate: pointer): void {.importc: "QGeoPolygon_insertCoordinate".}
proc fcQGeoPolygon_replaceCoordinate(self: pointer, index: cint, coordinate: pointer): void {.importc: "QGeoPolygon_replaceCoordinate".}
proc fcQGeoPolygon_coordinateAt(self: pointer, index: cint): pointer {.importc: "QGeoPolygon_coordinateAt".}
proc fcQGeoPolygon_containsCoordinate(self: pointer, coordinate: pointer): bool {.importc: "QGeoPolygon_containsCoordinate".}
proc fcQGeoPolygon_removeCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPolygon_removeCoordinate".}
proc fcQGeoPolygon_removeCoordinateWithIndex(self: pointer, index: cint): void {.importc: "QGeoPolygon_removeCoordinateWithIndex".}
proc fcQGeoPolygon_toString(self: pointer): struct_seaqt_string {.importc: "QGeoPolygon_toString".}
proc fcQGeoPolygon_lengthWithIndexFrom(self: pointer, indexFrom: cint): float64 {.importc: "QGeoPolygon_lengthWithIndexFrom".}
proc fcQGeoPolygon_length2(self: pointer, indexFrom: cint, indexTo: cint): float64 {.importc: "QGeoPolygon_length2".}
proc fcQGeoPolygon_protectedbase_setPerimeter(self: pointer, path: struct_seaqt_array): void {.importc: "QGeoPolygon_protectedbase_setPerimeter".}
proc fcQGeoPolygon_protectedbase_perimeter(self: pointer): struct_seaqt_array {.importc: "QGeoPolygon_protectedbase_perimeter".}
proc fcQGeoPolygon_new(): ptr cQGeoPolygon {.importc: "QGeoPolygon_new".}
proc fcQGeoPolygon_new2(path: struct_seaqt_array): ptr cQGeoPolygon {.importc: "QGeoPolygon_new2".}
proc fcQGeoPolygon_new3(other: pointer): ptr cQGeoPolygon {.importc: "QGeoPolygon_new3".}
proc fcQGeoPolygon_new4(other: pointer): ptr cQGeoPolygon {.importc: "QGeoPolygon_new4".}
proc fcQGeoPolygon_staticMetaObject(): pointer {.importc: "QGeoPolygon_staticMetaObject".}

proc operatorAssign*(self: gen_qgeopolygon_types.QGeoPolygon, other: gen_qgeopolygon_types.QGeoPolygon): void =
  fcQGeoPolygon_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qgeopolygon_types.QGeoPolygon, other: gen_qgeopolygon_types.QGeoPolygon): bool =
  fcQGeoPolygon_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qgeopolygon_types.QGeoPolygon, other: gen_qgeopolygon_types.QGeoPolygon): bool =
  fcQGeoPolygon_operatorNotEqual(self.h, other.h)

proc setPath*(self: gen_qgeopolygon_types.QGeoPolygon, path: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): void =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  fcQGeoPolygon_setPath(self.h, struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0])))

proc path*(self: gen_qgeopolygon_types.QGeoPolygon): seq[gen_qgeocoordinate_types.QGeoCoordinate] =
  var v_ma = fcQGeoPolygon_path(self.h)
  var vx_ret = newSeq[gen_qgeocoordinate_types.QGeoCoordinate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeocoordinate_types.QGeoCoordinate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc addHole*(self: gen_qgeopolygon_types.QGeoPolygon, holePath: gen_qvariant_types.QVariant): void =
  fcQGeoPolygon_addHole(self.h, holePath.h)

proc addHole*(self: gen_qgeopolygon_types.QGeoPolygon, holePath: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): void =
  var holePath_CArray = newSeq[pointer](len(holePath))
  for i in 0..<len(holePath):
    holePath_CArray[i] = holePath[i].h

  fcQGeoPolygon_addHoleWithHolePath(self.h, struct_seaqt_array(len: csize_t(len(holePath)), data: if len(holePath) == 0: nil else: addr(holePath_CArray[0])))

proc hole*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQGeoPolygon_hole(self.h, index)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc holePath*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint): seq[gen_qgeocoordinate_types.QGeoCoordinate] =
  var v_ma = fcQGeoPolygon_holePath(self.h, index)
  var vx_ret = newSeq[gen_qgeocoordinate_types.QGeoCoordinate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeocoordinate_types.QGeoCoordinate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc removeHole*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint): void =
  fcQGeoPolygon_removeHole(self.h, index)

proc holesCount*(self: gen_qgeopolygon_types.QGeoPolygon): cint =
  fcQGeoPolygon_holesCount(self.h)

proc translate*(self: gen_qgeopolygon_types.QGeoPolygon, degreesLatitude: float64, degreesLongitude: float64): void =
  fcQGeoPolygon_translate(self.h, degreesLatitude, degreesLongitude)

proc translated*(self: gen_qgeopolygon_types.QGeoPolygon, degreesLatitude: float64, degreesLongitude: float64): gen_qgeopolygon_types.QGeoPolygon =
  gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_translated(self.h, degreesLatitude, degreesLongitude), owned: true)

proc length*(self: gen_qgeopolygon_types.QGeoPolygon): float64 =
  fcQGeoPolygon_length(self.h)

proc size*(self: gen_qgeopolygon_types.QGeoPolygon): cint =
  fcQGeoPolygon_size(self.h)

proc addCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_addCoordinate(self.h, coordinate.h)

proc insertCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_insertCoordinate(self.h, index, coordinate.h)

proc replaceCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_replaceCoordinate(self.h, index, coordinate.h)

proc coordinateAt*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoPolygon_coordinateAt(self.h, index), owned: true)

proc containsCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): bool =
  fcQGeoPolygon_containsCoordinate(self.h, coordinate.h)

proc removeCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_removeCoordinate(self.h, coordinate.h)

proc removeCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, index: cint): void =
  fcQGeoPolygon_removeCoordinateWithIndex(self.h, index)

proc toString*(self: gen_qgeopolygon_types.QGeoPolygon): string =
  let v_ms = fcQGeoPolygon_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc length*(self: gen_qgeopolygon_types.QGeoPolygon, indexFrom: cint): float64 =
  fcQGeoPolygon_lengthWithIndexFrom(self.h, indexFrom)

proc length*(self: gen_qgeopolygon_types.QGeoPolygon, indexFrom: cint, indexTo: cint): float64 =
  fcQGeoPolygon_length2(self.h, indexFrom, indexTo)

proc setPerimeter*(self: gen_qgeopolygon_types.QGeoPolygon, path: openArray[gen_qvariant_types.QVariant]): void =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  fcQGeoPolygon_protectedbase_setPerimeter(self.h, struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0])))

proc perimeter*(self: gen_qgeopolygon_types.QGeoPolygon): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQGeoPolygon_protectedbase_perimeter(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qgeopolygon_types.QGeoPolygon): gen_qgeopolygon_types.QGeoPolygon =
  let tmp = gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_new(), owned: true)
  tmp
proc create*(T: type gen_qgeopolygon_types.QGeoPolygon,
    path: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): gen_qgeopolygon_types.QGeoPolygon =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  let tmp = gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_new2(struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qgeopolygon_types.QGeoPolygon,
    other: gen_qgeopolygon_types.QGeoPolygon): gen_qgeopolygon_types.QGeoPolygon =
  let tmp = gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_new3(other.h), owned: true)
  tmp
proc create*(T: type gen_qgeopolygon_types.QGeoPolygon,
    other: gen_qgeoshape_types.QGeoShape): gen_qgeopolygon_types.QGeoPolygon =
  let tmp = gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_new4(other.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qgeopolygon_types.QGeoPolygon): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoPolygon_staticMetaObject())
