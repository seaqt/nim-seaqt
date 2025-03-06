import ./Qt6Network_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)


import ./gen_qabstractnetworkcache_types
export gen_qabstractnetworkcache_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qdatetime_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types

type cQNetworkCacheMetaData*{.exportc: "QNetworkCacheMetaData", incompleteStruct.} = object
type cQAbstractNetworkCache*{.exportc: "QAbstractNetworkCache", incompleteStruct.} = object

proc fcQNetworkCacheMetaData_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkCacheMetaData_operatorAssign".}
proc fcQNetworkCacheMetaData_swap(self: pointer, other: pointer): void {.importc: "QNetworkCacheMetaData_swap".}
proc fcQNetworkCacheMetaData_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkCacheMetaData_operatorEqual".}
proc fcQNetworkCacheMetaData_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkCacheMetaData_operatorNotEqual".}
proc fcQNetworkCacheMetaData_isValid(self: pointer, ): bool {.importc: "QNetworkCacheMetaData_isValid".}
proc fcQNetworkCacheMetaData_url(self: pointer, ): pointer {.importc: "QNetworkCacheMetaData_url".}
proc fcQNetworkCacheMetaData_setUrl(self: pointer, url: pointer): void {.importc: "QNetworkCacheMetaData_setUrl".}
proc fcQNetworkCacheMetaData_rawHeaders(self: pointer, ): struct_miqt_array {.importc: "QNetworkCacheMetaData_rawHeaders".}
proc fcQNetworkCacheMetaData_setRawHeaders(self: pointer, headers: struct_miqt_array): void {.importc: "QNetworkCacheMetaData_setRawHeaders".}
proc fcQNetworkCacheMetaData_lastModified(self: pointer, ): pointer {.importc: "QNetworkCacheMetaData_lastModified".}
proc fcQNetworkCacheMetaData_setLastModified(self: pointer, dateTime: pointer): void {.importc: "QNetworkCacheMetaData_setLastModified".}
proc fcQNetworkCacheMetaData_expirationDate(self: pointer, ): pointer {.importc: "QNetworkCacheMetaData_expirationDate".}
proc fcQNetworkCacheMetaData_setExpirationDate(self: pointer, dateTime: pointer): void {.importc: "QNetworkCacheMetaData_setExpirationDate".}
proc fcQNetworkCacheMetaData_saveToDisk(self: pointer, ): bool {.importc: "QNetworkCacheMetaData_saveToDisk".}
proc fcQNetworkCacheMetaData_setSaveToDisk(self: pointer, allow: bool): void {.importc: "QNetworkCacheMetaData_setSaveToDisk".}
proc fcQNetworkCacheMetaData_attributes(self: pointer, ): struct_miqt_map {.importc: "QNetworkCacheMetaData_attributes".}
proc fcQNetworkCacheMetaData_setAttributes(self: pointer, attributes: struct_miqt_map): void {.importc: "QNetworkCacheMetaData_setAttributes".}
proc fcQNetworkCacheMetaData_new(): ptr cQNetworkCacheMetaData {.importc: "QNetworkCacheMetaData_new".}
proc fcQNetworkCacheMetaData_new2(other: pointer): ptr cQNetworkCacheMetaData {.importc: "QNetworkCacheMetaData_new2".}
proc fcQAbstractNetworkCache_metaObject(self: pointer, ): pointer {.importc: "QAbstractNetworkCache_metaObject".}
proc fcQAbstractNetworkCache_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractNetworkCache_metacast".}
proc fcQAbstractNetworkCache_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractNetworkCache_metacall".}
proc fcQAbstractNetworkCache_tr(s: cstring): struct_miqt_string {.importc: "QAbstractNetworkCache_tr".}
proc fcQAbstractNetworkCache_metaData(self: pointer, url: pointer): pointer {.importc: "QAbstractNetworkCache_metaData".}
proc fcQAbstractNetworkCache_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QAbstractNetworkCache_updateMetaData".}
proc fcQAbstractNetworkCache_data(self: pointer, url: pointer): pointer {.importc: "QAbstractNetworkCache_data".}
proc fcQAbstractNetworkCache_remove(self: pointer, url: pointer): bool {.importc: "QAbstractNetworkCache_remove".}
proc fcQAbstractNetworkCache_cacheSize(self: pointer, ): clonglong {.importc: "QAbstractNetworkCache_cacheSize".}
proc fcQAbstractNetworkCache_prepare(self: pointer, metaData: pointer): pointer {.importc: "QAbstractNetworkCache_prepare".}
proc fcQAbstractNetworkCache_insert(self: pointer, device: pointer): void {.importc: "QAbstractNetworkCache_insert".}
proc fcQAbstractNetworkCache_clear(self: pointer, ): void {.importc: "QAbstractNetworkCache_clear".}
proc fcQAbstractNetworkCache_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractNetworkCache_tr2".}
proc fcQAbstractNetworkCache_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractNetworkCache_tr3".}
proc fcQAbstractNetworkCache_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractNetworkCache_protectedbase_sender".}
proc fcQAbstractNetworkCache_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractNetworkCache_protectedbase_senderSignalIndex".}
proc fcQAbstractNetworkCache_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractNetworkCache_protectedbase_receivers".}
proc fcQAbstractNetworkCache_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractNetworkCache_protectedbase_isSignalConnected".}
proc fcQAbstractNetworkCache_staticMetaObject(): pointer {.importc: "QAbstractNetworkCache_staticMetaObject".}

proc operatorAssign*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, other: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQNetworkCacheMetaData_operatorAssign(self.h, other.h)

proc swap*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, other: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQNetworkCacheMetaData_swap(self.h, other.h)

proc operatorEqual*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, other: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): bool =
  fcQNetworkCacheMetaData_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, other: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): bool =
  fcQNetworkCacheMetaData_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): bool =
  fcQNetworkCacheMetaData_isValid(self.h)

proc url*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQNetworkCacheMetaData_url(self.h), owned: true)

proc setUrl*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, url: gen_qurl_types.QUrl): void =
  fcQNetworkCacheMetaData_setUrl(self.h, url.h)

proc rawHeaders*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): seq[tuple[first: seq[byte], second: seq[byte]]] =
  var v_ma = fcQNetworkCacheMetaData_rawHeaders(self.h)
  var vx_ret = newSeq[tuple[first: seq[byte], second: seq[byte]]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.values)
    var vx_lv_first_bytearray = vx_lv_First_CArray[0]
    var vx_lv_firstx_ret = @(toOpenArrayByte(vx_lv_first_bytearray.data, 0, int(vx_lv_first_bytearray.len)-1))
    c_free(vx_lv_first_bytearray.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    var vx_lv_second_bytearray = vx_lv_Second_CArray[0]
    var vx_lv_secondx_ret = @(toOpenArrayByte(vx_lv_second_bytearray.data, 0, int(vx_lv_second_bytearray.len)-1))
    c_free(vx_lv_second_bytearray.data)
    var vx_lv_entry_Second = vx_lv_secondx_ret

    c_free(vx_lv_mm.keys)
    c_free(vx_lv_mm.values)
    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  c_free(v_ma.data)
  vx_ret

proc setRawHeaders*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, headers: seq[tuple[first: seq[byte], second: seq[byte]]]): void =
  var headers_CArray = newSeq[struct_miqt_map](len(headers))
  for i in 0..<len(headers):
    var headers_i_CArray_First: struct_miqt_string
    var headers_i_CArray_Second: struct_miqt_string
    headers_i_CArray_First = struct_miqt_string(data: cast[cstring](if len(headers[i].first) == 0: nil else: unsafeAddr headers[i].first[0]), len: csize_t(len(headers[i].first)))
    headers_i_CArray_Second = struct_miqt_string(data: cast[cstring](if len(headers[i].second) == 0: nil else: unsafeAddr headers[i].second[0]), len: csize_t(len(headers[i].second)))
    headers_CArray[i] = struct_miqt_map(len: 1,keys: addr(headers_i_CArray_First),values: addr(headers_i_CArray_Second),)

  fcQNetworkCacheMetaData_setRawHeaders(self.h, struct_miqt_array(len: csize_t(len(headers)), data: if len(headers) == 0: nil else: addr(headers_CArray[0])))

proc lastModified*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQNetworkCacheMetaData_lastModified(self.h), owned: true)

proc setLastModified*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, dateTime: gen_qdatetime_types.QDateTime): void =
  fcQNetworkCacheMetaData_setLastModified(self.h, dateTime.h)

proc expirationDate*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQNetworkCacheMetaData_expirationDate(self.h), owned: true)

proc setExpirationDate*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, dateTime: gen_qdatetime_types.QDateTime): void =
  fcQNetworkCacheMetaData_setExpirationDate(self.h, dateTime.h)

proc saveToDisk*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): bool =
  fcQNetworkCacheMetaData_saveToDisk(self.h)

proc setSaveToDisk*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, allow: bool): void =
  fcQNetworkCacheMetaData_setSaveToDisk(self.h, allow)

proc attributes*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, ): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQNetworkCacheMetaData_attributes(self.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = cint(v_Keys[i])

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc setAttributes*(self: gen_qabstractnetworkcache_types.QNetworkCacheMetaData, attributes: Table[cint,gen_qvariant_types.QVariant]): void =
  var attributes_Keys_CArray = newSeq[cint](len(attributes))
  var attributes_Values_CArray = newSeq[pointer](len(attributes))
  var attributes_ctr = 0
  for attributes_k in attributes.keys():
    attributes_Keys_CArray[attributes_ctr] = cint(attributes_k)
    attributes_ctr += 1
  attributes_ctr = 0
  for attributes_v in attributes.values():
    attributes_Values_CArray[attributes_ctr] = attributes_v.h
    attributes_ctr += 1

  fcQNetworkCacheMetaData_setAttributes(self.h, struct_miqt_map(len: csize_t(len(attributes)),keys: if len(attributes) == 0: nil else: addr(attributes_Keys_CArray[0]), values: if len(attributes) == 0: nil else: addr(attributes_Values_CArray[0]),))

proc create*(T: type gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkCacheMetaData_new(), owned: true)

proc create*(T: type gen_qabstractnetworkcache_types.QNetworkCacheMetaData,
    other: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkCacheMetaData_new2(other.h), owned: true)

proc metaObject*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractNetworkCache_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, param1: cstring): pointer =
  fcQAbstractNetworkCache_metacast(self.h, param1)

proc metacall*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractNetworkCache_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractnetworkcache_types.QAbstractNetworkCache, s: cstring): string =
  let v_ms = fcQAbstractNetworkCache_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc metaData*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQAbstractNetworkCache_metaData(self.h, url.h), owned: true)

proc updateMetaData*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQAbstractNetworkCache_updateMetaData(self.h, metaData.h)

proc data*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAbstractNetworkCache_data(self.h, url.h), owned: false)

proc remove*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, url: gen_qurl_types.QUrl): bool =
  fcQAbstractNetworkCache_remove(self.h, url.h)

proc cacheSize*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, ): clonglong =
  fcQAbstractNetworkCache_cacheSize(self.h)

proc prepare*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAbstractNetworkCache_prepare(self.h, metaData.h), owned: false)

proc insert*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, device: gen_qiodevice_types.QIODevice): void =
  fcQAbstractNetworkCache_insert(self.h, device.h)

proc clear*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, ): void =
  fcQAbstractNetworkCache_clear(self.h)

proc tr*(_: type gen_qabstractnetworkcache_types.QAbstractNetworkCache, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractNetworkCache_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractnetworkcache_types.QAbstractNetworkCache, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractNetworkCache_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractNetworkCache_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, ): cint =
  fcQAbstractNetworkCache_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, signal: cstring): cint =
  fcQAbstractNetworkCache_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractnetworkcache_types.QAbstractNetworkCache, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractNetworkCache_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qabstractnetworkcache_types.QAbstractNetworkCache): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractNetworkCache_staticMetaObject())
