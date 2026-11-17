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

proc fcQGeoPolygon_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QGeoPolygon_operatorAssign".}
proc fcQGeoPolygon_setPerimeter(self: pointer, path: struct_seaqt_array): void {.importc: "QGeoPolygon_setPerimeter".}
proc fcQGeoPolygon_perimeter(self: pointer): struct_seaqt_array {.importc: "QGeoPolygon_perimeter".}
proc fcQGeoPolygon_addHole_QVariant(self: pointer, holePath: pointer): void {.importc: "QGeoPolygon_addHole_QVariant".}
proc fcQGeoPolygon_addHole_QListOfQGeoCoordinate(self: pointer, holePath: struct_seaqt_array): void {.importc: "QGeoPolygon_addHole_QListOfQGeoCoordinate".}
proc fcQGeoPolygon_hole(self: pointer, index: int64): struct_seaqt_array {.importc: "QGeoPolygon_hole".}
proc fcQGeoPolygon_holePath(self: pointer, index: int64): struct_seaqt_array {.importc: "QGeoPolygon_holePath".}
proc fcQGeoPolygon_removeHole(self: pointer, index: int64): void {.importc: "QGeoPolygon_removeHole".}
proc fcQGeoPolygon_holesCount(self: pointer): int64 {.importc: "QGeoPolygon_holesCount".}
proc fcQGeoPolygon_translate(self: pointer, degreesLatitude: float64, degreesLongitude: float64): void {.importc: "QGeoPolygon_translate".}
proc fcQGeoPolygon_translated(self: pointer, degreesLatitude: float64, degreesLongitude: float64): pointer {.importc: "QGeoPolygon_translated".}
proc fcQGeoPolygon_length(self: pointer): float64 {.importc: "QGeoPolygon_length".}
proc fcQGeoPolygon_size(self: pointer): int64 {.importc: "QGeoPolygon_size".}
proc fcQGeoPolygon_addCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPolygon_addCoordinate".}
proc fcQGeoPolygon_insertCoordinate(self: pointer, index: int64, coordinate: pointer): void {.importc: "QGeoPolygon_insertCoordinate".}
proc fcQGeoPolygon_replaceCoordinate(self: pointer, index: int64, coordinate: pointer): void {.importc: "QGeoPolygon_replaceCoordinate".}
proc fcQGeoPolygon_coordinateAt(self: pointer, index: int64): pointer {.importc: "QGeoPolygon_coordinateAt".}
proc fcQGeoPolygon_containsCoordinate(self: pointer, coordinate: pointer): bool {.importc: "QGeoPolygon_containsCoordinate".}
proc fcQGeoPolygon_removeCoordinateCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPolygon_removeCoordinate_coordinate".}
proc fcQGeoPolygon_removeCoordinateIndex(self: pointer, index: int64): void {.importc: "QGeoPolygon_removeCoordinate_index".}
proc fcQGeoPolygon_toString(self: pointer): struct_seaqt_string {.importc: "QGeoPolygon_toString".}
proc fcQGeoPolygon_lengthIndexFrom(self: pointer, indexFrom: int64): float64 {.importc: "QGeoPolygon_length_indexFrom".}
proc fcQGeoPolygon_lengthIndexFromIndexTo(self: pointer, indexFrom: int64, indexTo: int64): float64 {.importc: "QGeoPolygon_length_indexFrom_indexTo".}
proc fcQGeoPolygon_new(): ptr cQGeoPolygon {.importc: "QGeoPolygon_new".}
proc fcQGeoPolygon_new2(path: struct_seaqt_array): ptr cQGeoPolygon {.importc: "QGeoPolygon_new_path".}
proc fcQGeoPolygon_new3(fromVal: pointer): ptr cQGeoPolygon {.importc: "QGeoPolygon_new_from".}
proc fcQGeoPolygon_new4(other: pointer): ptr cQGeoPolygon {.importc: "QGeoPolygon_new_other".}
proc fcQGeoPolygon_staticMetaObject(): pointer {.importc: "QGeoPolygon_staticMetaObject".}

proc operatorAssign*(self: gen_qgeopolygon_types.QGeoPolygon, fromVal: gen_qgeopolygon_types.QGeoPolygon): void =
  fcQGeoPolygon_operatorAssign(self.h, fromVal.h)

proc setPerimeter*(self: gen_qgeopolygon_types.QGeoPolygon, path: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): void =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  fcQGeoPolygon_setPerimeter(self.h, struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0])))

proc perimeter*(self: gen_qgeopolygon_types.QGeoPolygon): seq[gen_qgeocoordinate_types.QGeoCoordinate] =
  var v_ma = fcQGeoPolygon_perimeter(self.h)
  var vx_ret = newSeq[gen_qgeocoordinate_types.QGeoCoordinate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeocoordinate_types.QGeoCoordinate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc addHole*(self: gen_qgeopolygon_types.QGeoPolygon, holePath: gen_qvariant_types.QVariant): void =
  fcQGeoPolygon_addHole_QVariant(self.h, holePath.h)

proc addHole*(self: gen_qgeopolygon_types.QGeoPolygon, holePath: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): void =
  var holePath_CArray = newSeq[pointer](len(holePath))
  for i in 0..<len(holePath):
    holePath_CArray[i] = holePath[i].h

  fcQGeoPolygon_addHole_QListOfQGeoCoordinate(self.h, struct_seaqt_array(len: csize_t(len(holePath)), data: if len(holePath) == 0: nil else: addr(holePath_CArray[0])))

proc hole*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQGeoPolygon_hole(self.h, index)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc holePath*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64): seq[gen_qgeocoordinate_types.QGeoCoordinate] =
  var v_ma = fcQGeoPolygon_holePath(self.h, index)
  var vx_ret = newSeq[gen_qgeocoordinate_types.QGeoCoordinate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeocoordinate_types.QGeoCoordinate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc removeHole*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64): void =
  fcQGeoPolygon_removeHole(self.h, index)

proc holesCount*(self: gen_qgeopolygon_types.QGeoPolygon): int64 =
  fcQGeoPolygon_holesCount(self.h)

proc translate*(self: gen_qgeopolygon_types.QGeoPolygon, degreesLatitude: float64, degreesLongitude: float64): void =
  fcQGeoPolygon_translate(self.h, degreesLatitude, degreesLongitude)

proc translated*(self: gen_qgeopolygon_types.QGeoPolygon, degreesLatitude: float64, degreesLongitude: float64): gen_qgeopolygon_types.QGeoPolygon =
  gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_translated(self.h, degreesLatitude, degreesLongitude), owned: true)

proc length*(self: gen_qgeopolygon_types.QGeoPolygon): float64 =
  fcQGeoPolygon_length(self.h)

proc size*(self: gen_qgeopolygon_types.QGeoPolygon): int64 =
  fcQGeoPolygon_size(self.h)

proc addCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_addCoordinate(self.h, coordinate.h)

proc insertCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_insertCoordinate(self.h, index, coordinate.h)

proc replaceCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_replaceCoordinate(self.h, index, coordinate.h)

proc coordinateAt*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoPolygon_coordinateAt(self.h, index), owned: true)

proc containsCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): bool =
  fcQGeoPolygon_containsCoordinate(self.h, coordinate.h)

proc removeCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPolygon_removeCoordinateCoordinate(self.h, coordinate.h)

proc removeCoordinate*(self: gen_qgeopolygon_types.QGeoPolygon, index: int64): void =
  fcQGeoPolygon_removeCoordinateIndex(self.h, index)

proc toString*(self: gen_qgeopolygon_types.QGeoPolygon): string =
  let v_ms = fcQGeoPolygon_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc length*(self: gen_qgeopolygon_types.QGeoPolygon, indexFrom: int64): float64 =
  fcQGeoPolygon_lengthIndexFrom(self.h, indexFrom)

proc length*(self: gen_qgeopolygon_types.QGeoPolygon, indexFrom: int64, indexTo: int64): float64 =
  fcQGeoPolygon_lengthIndexFromIndexTo(self.h, indexFrom, indexTo)

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
    fromVal: gen_qgeopolygon_types.QGeoPolygon): gen_qgeopolygon_types.QGeoPolygon =
  let tmp = gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qgeopolygon_types.QGeoPolygon,
    other: gen_qgeoshape_types.QGeoShape): gen_qgeopolygon_types.QGeoPolygon =
  let tmp = gen_qgeopolygon_types.QGeoPolygon(h: fcQGeoPolygon_new4(other.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qgeopolygon_types.QGeoPolygon): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoPolygon_staticMetaObject())
