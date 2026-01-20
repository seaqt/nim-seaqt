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


{.compile("gen_qgeopath.cpp", QtPositioningCFlags).}


import ./gen_qgeopath_types
export gen_qgeopath_types

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

type cQGeoPath*{.exportc: "QGeoPath", incompleteStruct.} = object

proc fcQGeoPath_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoPath_operatorAssign".}
proc fcQGeoPath_setPath(self: pointer, path: struct_seaqt_array): void {.importc: "QGeoPath_setPath".}
proc fcQGeoPath_path(self: pointer): struct_seaqt_array {.importc: "QGeoPath_path".}
proc fcQGeoPath_clearPath(self: pointer): void {.importc: "QGeoPath_clearPath".}
proc fcQGeoPath_setVariantPath(self: pointer, path: struct_seaqt_array): void {.importc: "QGeoPath_setVariantPath".}
proc fcQGeoPath_variantPath(self: pointer): struct_seaqt_array {.importc: "QGeoPath_variantPath".}
proc fcQGeoPath_setWidth(self: pointer, width: ptr float64): void {.importc: "QGeoPath_setWidth".}
proc fcQGeoPath_width(self: pointer): float64 {.importc: "QGeoPath_width".}
proc fcQGeoPath_translate(self: pointer, degreesLatitude: float64, degreesLongitude: float64): void {.importc: "QGeoPath_translate".}
proc fcQGeoPath_translated(self: pointer, degreesLatitude: float64, degreesLongitude: float64): pointer {.importc: "QGeoPath_translated".}
proc fcQGeoPath_length(self: pointer): float64 {.importc: "QGeoPath_length".}
proc fcQGeoPath_size(self: pointer): int64 {.importc: "QGeoPath_size".}
proc fcQGeoPath_addCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPath_addCoordinate".}
proc fcQGeoPath_insertCoordinate(self: pointer, index: int64, coordinate: pointer): void {.importc: "QGeoPath_insertCoordinate".}
proc fcQGeoPath_replaceCoordinate(self: pointer, index: int64, coordinate: pointer): void {.importc: "QGeoPath_replaceCoordinate".}
proc fcQGeoPath_coordinateAt(self: pointer, index: int64): pointer {.importc: "QGeoPath_coordinateAt".}
proc fcQGeoPath_containsCoordinate(self: pointer, coordinate: pointer): bool {.importc: "QGeoPath_containsCoordinate".}
proc fcQGeoPath_removeCoordinate(self: pointer, coordinate: pointer): void {.importc: "QGeoPath_removeCoordinate".}
proc fcQGeoPath_removeCoordinateWithIndex(self: pointer, index: int64): void {.importc: "QGeoPath_removeCoordinateWithIndex".}
proc fcQGeoPath_toString(self: pointer): struct_seaqt_string {.importc: "QGeoPath_toString".}
proc fcQGeoPath_lengthWithIndexFrom(self: pointer, indexFrom: int64): float64 {.importc: "QGeoPath_lengthWithIndexFrom".}
proc fcQGeoPath_length2(self: pointer, indexFrom: int64, indexTo: int64): float64 {.importc: "QGeoPath_length2".}
proc fcQGeoPath_new(): ptr cQGeoPath {.importc: "QGeoPath_new".}
proc fcQGeoPath_new2(path: struct_seaqt_array): ptr cQGeoPath {.importc: "QGeoPath_new2".}
proc fcQGeoPath_new3(other: pointer): ptr cQGeoPath {.importc: "QGeoPath_new3".}
proc fcQGeoPath_new4(other: pointer): ptr cQGeoPath {.importc: "QGeoPath_new4".}
proc fcQGeoPath_new5(path: struct_seaqt_array, width: ptr float64): ptr cQGeoPath {.importc: "QGeoPath_new5".}
proc fcQGeoPath_staticMetaObject(): pointer {.importc: "QGeoPath_staticMetaObject".}

proc operatorAssign*(self: gen_qgeopath_types.QGeoPath, other: gen_qgeopath_types.QGeoPath): void =
  fcQGeoPath_operatorAssign(self.h, other.h)

proc setPath*(self: gen_qgeopath_types.QGeoPath, path: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): void =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  fcQGeoPath_setPath(self.h, struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0])))

proc path*(self: gen_qgeopath_types.QGeoPath): seq[gen_qgeocoordinate_types.QGeoCoordinate] =
  var v_ma = fcQGeoPath_path(self.h)
  var vx_ret = newSeq[gen_qgeocoordinate_types.QGeoCoordinate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeocoordinate_types.QGeoCoordinate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc clearPath*(self: gen_qgeopath_types.QGeoPath): void =
  fcQGeoPath_clearPath(self.h)

proc setVariantPath*(self: gen_qgeopath_types.QGeoPath, path: openArray[gen_qvariant_types.QVariant]): void =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  fcQGeoPath_setVariantPath(self.h, struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0])))

proc variantPath*(self: gen_qgeopath_types.QGeoPath): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQGeoPath_variantPath(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setWidth*(self: gen_qgeopath_types.QGeoPath, width: ptr float64): void =
  fcQGeoPath_setWidth(self.h, width)

proc width*(self: gen_qgeopath_types.QGeoPath): float64 =
  fcQGeoPath_width(self.h)

proc translate*(self: gen_qgeopath_types.QGeoPath, degreesLatitude: float64, degreesLongitude: float64): void =
  fcQGeoPath_translate(self.h, degreesLatitude, degreesLongitude)

proc translated*(self: gen_qgeopath_types.QGeoPath, degreesLatitude: float64, degreesLongitude: float64): gen_qgeopath_types.QGeoPath =
  gen_qgeopath_types.QGeoPath(h: fcQGeoPath_translated(self.h, degreesLatitude, degreesLongitude), owned: true)

proc length*(self: gen_qgeopath_types.QGeoPath): float64 =
  fcQGeoPath_length(self.h)

proc size*(self: gen_qgeopath_types.QGeoPath): int64 =
  fcQGeoPath_size(self.h)

proc addCoordinate*(self: gen_qgeopath_types.QGeoPath, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPath_addCoordinate(self.h, coordinate.h)

proc insertCoordinate*(self: gen_qgeopath_types.QGeoPath, index: int64, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPath_insertCoordinate(self.h, index, coordinate.h)

proc replaceCoordinate*(self: gen_qgeopath_types.QGeoPath, index: int64, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPath_replaceCoordinate(self.h, index, coordinate.h)

proc coordinateAt*(self: gen_qgeopath_types.QGeoPath, index: int64): gen_qgeocoordinate_types.QGeoCoordinate =
  gen_qgeocoordinate_types.QGeoCoordinate(h: fcQGeoPath_coordinateAt(self.h, index), owned: true)

proc containsCoordinate*(self: gen_qgeopath_types.QGeoPath, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): bool =
  fcQGeoPath_containsCoordinate(self.h, coordinate.h)

proc removeCoordinate*(self: gen_qgeopath_types.QGeoPath, coordinate: gen_qgeocoordinate_types.QGeoCoordinate): void =
  fcQGeoPath_removeCoordinate(self.h, coordinate.h)

proc removeCoordinate*(self: gen_qgeopath_types.QGeoPath, index: int64): void =
  fcQGeoPath_removeCoordinateWithIndex(self.h, index)

proc toString*(self: gen_qgeopath_types.QGeoPath): string =
  let v_ms = fcQGeoPath_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc length*(self: gen_qgeopath_types.QGeoPath, indexFrom: int64): float64 =
  fcQGeoPath_lengthWithIndexFrom(self.h, indexFrom)

proc length*(self: gen_qgeopath_types.QGeoPath, indexFrom: int64, indexTo: int64): float64 =
  fcQGeoPath_length2(self.h, indexFrom, indexTo)

proc create*(T: type gen_qgeopath_types.QGeoPath): gen_qgeopath_types.QGeoPath =
  let tmp = gen_qgeopath_types.QGeoPath(h: fcQGeoPath_new(), owned: true)
  tmp
proc create*(T: type gen_qgeopath_types.QGeoPath,
    path: openArray[gen_qgeocoordinate_types.QGeoCoordinate]): gen_qgeopath_types.QGeoPath =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  let tmp = gen_qgeopath_types.QGeoPath(h: fcQGeoPath_new2(struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qgeopath_types.QGeoPath,
    other: gen_qgeopath_types.QGeoPath): gen_qgeopath_types.QGeoPath =
  let tmp = gen_qgeopath_types.QGeoPath(h: fcQGeoPath_new3(other.h), owned: true)
  tmp
proc create*(T: type gen_qgeopath_types.QGeoPath,
    other: gen_qgeoshape_types.QGeoShape): gen_qgeopath_types.QGeoPath =
  let tmp = gen_qgeopath_types.QGeoPath(h: fcQGeoPath_new4(other.h), owned: true)
  tmp
proc create*(T: type gen_qgeopath_types.QGeoPath,
    path: openArray[gen_qgeocoordinate_types.QGeoCoordinate], width: ptr float64): gen_qgeopath_types.QGeoPath =
  var path_CArray = newSeq[pointer](len(path))
  for i in 0..<len(path):
    path_CArray[i] = path[i].h

  let tmp = gen_qgeopath_types.QGeoPath(h: fcQGeoPath_new5(struct_seaqt_array(len: csize_t(len(path)), data: if len(path) == 0: nil else: addr(path_CArray[0])), width), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qgeopath_types.QGeoPath): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoPath_staticMetaObject())
