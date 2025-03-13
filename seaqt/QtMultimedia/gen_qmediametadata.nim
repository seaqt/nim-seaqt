import ./Qt6Multimedia_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QMediaMetaDataKeyEnum* = distinct cint
template Title*(_: type QMediaMetaDataKeyEnum): untyped = 0
template Author*(_: type QMediaMetaDataKeyEnum): untyped = 1
template Comment*(_: type QMediaMetaDataKeyEnum): untyped = 2
template Description*(_: type QMediaMetaDataKeyEnum): untyped = 3
template Genre*(_: type QMediaMetaDataKeyEnum): untyped = 4
template Date*(_: type QMediaMetaDataKeyEnum): untyped = 5
template Language*(_: type QMediaMetaDataKeyEnum): untyped = 6
template Publisher*(_: type QMediaMetaDataKeyEnum): untyped = 7
template Copyright*(_: type QMediaMetaDataKeyEnum): untyped = 8
template Url*(_: type QMediaMetaDataKeyEnum): untyped = 9
template Duration*(_: type QMediaMetaDataKeyEnum): untyped = 10
template MediaType*(_: type QMediaMetaDataKeyEnum): untyped = 11
template FileFormat*(_: type QMediaMetaDataKeyEnum): untyped = 12
template AudioBitRate*(_: type QMediaMetaDataKeyEnum): untyped = 13
template AudioCodec*(_: type QMediaMetaDataKeyEnum): untyped = 14
template VideoBitRate*(_: type QMediaMetaDataKeyEnum): untyped = 15
template VideoCodec*(_: type QMediaMetaDataKeyEnum): untyped = 16
template VideoFrameRate*(_: type QMediaMetaDataKeyEnum): untyped = 17
template AlbumTitle*(_: type QMediaMetaDataKeyEnum): untyped = 18
template AlbumArtist*(_: type QMediaMetaDataKeyEnum): untyped = 19
template ContributingArtist*(_: type QMediaMetaDataKeyEnum): untyped = 20
template TrackNumber*(_: type QMediaMetaDataKeyEnum): untyped = 21
template Composer*(_: type QMediaMetaDataKeyEnum): untyped = 22
template LeadPerformer*(_: type QMediaMetaDataKeyEnum): untyped = 23
template ThumbnailImage*(_: type QMediaMetaDataKeyEnum): untyped = 24
template CoverArtImage*(_: type QMediaMetaDataKeyEnum): untyped = 25
template Orientation*(_: type QMediaMetaDataKeyEnum): untyped = 26
template Resolution*(_: type QMediaMetaDataKeyEnum): untyped = 27


import ./gen_qmediametadata_types
export gen_qmediametadata_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types
export
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQMediaMetaData*{.exportc: "QMediaMetaData", incompleteStruct.} = object

proc fcQMediaMetaData_value(self: pointer, k: cint): pointer {.importc: "QMediaMetaData_value".}
proc fcQMediaMetaData_insert(self: pointer, k: cint, value: pointer): void {.importc: "QMediaMetaData_insert".}
proc fcQMediaMetaData_remove(self: pointer, k: cint): void {.importc: "QMediaMetaData_remove".}
proc fcQMediaMetaData_keys(self: pointer): struct_miqt_array {.importc: "QMediaMetaData_keys".}
proc fcQMediaMetaData_operatorSubscript(self: pointer, k: cint): pointer {.importc: "QMediaMetaData_operatorSubscript".}
proc fcQMediaMetaData_clear(self: pointer): void {.importc: "QMediaMetaData_clear".}
proc fcQMediaMetaData_isEmpty(self: pointer): bool {.importc: "QMediaMetaData_isEmpty".}
proc fcQMediaMetaData_stringValue(self: pointer, k: cint): struct_miqt_string {.importc: "QMediaMetaData_stringValue".}
proc fcQMediaMetaData_metaDataKeyToString(k: cint): struct_miqt_string {.importc: "QMediaMetaData_metaDataKeyToString".}
proc fcQMediaMetaData_new(param1: pointer): ptr cQMediaMetaData {.importc: "QMediaMetaData_new".}
proc fcQMediaMetaData_new2(): ptr cQMediaMetaData {.importc: "QMediaMetaData_new2".}
proc fcQMediaMetaData_staticMetaObject(): pointer {.importc: "QMediaMetaData_staticMetaObject".}

proc value*(self: gen_qmediametadata_types.QMediaMetaData, k: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaMetaData_value(self.h, cint(k)), owned: true)

proc insert*(self: gen_qmediametadata_types.QMediaMetaData, k: cint, value: gen_qvariant_types.QVariant): void =
  fcQMediaMetaData_insert(self.h, cint(k), value.h)

proc remove*(self: gen_qmediametadata_types.QMediaMetaData, k: cint): void =
  fcQMediaMetaData_remove(self.h, cint(k))

proc keys*(self: gen_qmediametadata_types.QMediaMetaData): seq[cint] =
  var v_ma = fcQMediaMetaData_keys(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc operatorSubscript*(self: gen_qmediametadata_types.QMediaMetaData, k: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaMetaData_operatorSubscript(self.h, cint(k)), owned: false)

proc clear*(self: gen_qmediametadata_types.QMediaMetaData): void =
  fcQMediaMetaData_clear(self.h)

proc isEmpty*(self: gen_qmediametadata_types.QMediaMetaData): bool =
  fcQMediaMetaData_isEmpty(self.h)

proc stringValue*(self: gen_qmediametadata_types.QMediaMetaData, k: cint): string =
  let v_ms = fcQMediaMetaData_stringValue(self.h, cint(k))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc metaDataKeyToString*(_: type gen_qmediametadata_types.QMediaMetaData, k: cint): string =
  let v_ms = fcQMediaMetaData_metaDataKeyToString(cint(k))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qmediametadata_types.QMediaMetaData,
    param1: gen_qmediametadata_types.QMediaMetaData): gen_qmediametadata_types.QMediaMetaData =
  gen_qmediametadata_types.QMediaMetaData(h: fcQMediaMetaData_new(param1.h), owned: true)

proc create*(T: type gen_qmediametadata_types.QMediaMetaData): gen_qmediametadata_types.QMediaMetaData =
  gen_qmediametadata_types.QMediaMetaData(h: fcQMediaMetaData_new2(), owned: true)

proc staticMetaObject*(_: type gen_qmediametadata_types.QMediaMetaData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaMetaData_staticMetaObject())
