import ./Qt5Core_libs

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


import ./gen_qurlquery_types
export gen_qurlquery_types

import
  ./gen_qchar_types,
  ./gen_qurl_types
export
  gen_qchar_types,
  gen_qurl_types

type cQUrlQuery*{.exportc: "QUrlQuery", incompleteStruct.} = object

proc fcQUrlQuery_operatorAssign(self: pointer, other: pointer): void {.importc: "QUrlQuery_operatorAssign".}
proc fcQUrlQuery_operatorEqual(self: pointer, other: pointer): bool {.importc: "QUrlQuery_operatorEqual".}
proc fcQUrlQuery_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QUrlQuery_operatorNotEqual".}
proc fcQUrlQuery_swap(self: pointer, other: pointer): void {.importc: "QUrlQuery_swap".}
proc fcQUrlQuery_isEmpty(self: pointer, ): bool {.importc: "QUrlQuery_isEmpty".}
proc fcQUrlQuery_isDetached(self: pointer, ): bool {.importc: "QUrlQuery_isDetached".}
proc fcQUrlQuery_clear(self: pointer, ): void {.importc: "QUrlQuery_clear".}
proc fcQUrlQuery_query(self: pointer, ): struct_miqt_string {.importc: "QUrlQuery_query".}
proc fcQUrlQuery_setQuery(self: pointer, queryString: struct_miqt_string): void {.importc: "QUrlQuery_setQuery".}
proc fcQUrlQuery_toString(self: pointer, ): struct_miqt_string {.importc: "QUrlQuery_toString".}
proc fcQUrlQuery_setQueryDelimiters(self: pointer, valueDelimiter: pointer, pairDelimiter: pointer): void {.importc: "QUrlQuery_setQueryDelimiters".}
proc fcQUrlQuery_queryValueDelimiter(self: pointer, ): pointer {.importc: "QUrlQuery_queryValueDelimiter".}
proc fcQUrlQuery_queryPairDelimiter(self: pointer, ): pointer {.importc: "QUrlQuery_queryPairDelimiter".}
proc fcQUrlQuery_setQueryItems(self: pointer, query: struct_miqt_array): void {.importc: "QUrlQuery_setQueryItems".}
proc fcQUrlQuery_queryItems(self: pointer, ): struct_miqt_array {.importc: "QUrlQuery_queryItems".}
proc fcQUrlQuery_hasQueryItem(self: pointer, key: struct_miqt_string): bool {.importc: "QUrlQuery_hasQueryItem".}
proc fcQUrlQuery_addQueryItem(self: pointer, key: struct_miqt_string, value: struct_miqt_string): void {.importc: "QUrlQuery_addQueryItem".}
proc fcQUrlQuery_removeQueryItem(self: pointer, key: struct_miqt_string): void {.importc: "QUrlQuery_removeQueryItem".}
proc fcQUrlQuery_queryItemValue(self: pointer, key: struct_miqt_string): struct_miqt_string {.importc: "QUrlQuery_queryItemValue".}
proc fcQUrlQuery_allQueryItemValues(self: pointer, key: struct_miqt_string): struct_miqt_array {.importc: "QUrlQuery_allQueryItemValues".}
proc fcQUrlQuery_removeAllQueryItems(self: pointer, key: struct_miqt_string): void {.importc: "QUrlQuery_removeAllQueryItems".}
proc fcQUrlQuery_defaultQueryValueDelimiter(): pointer {.importc: "QUrlQuery_defaultQueryValueDelimiter".}
proc fcQUrlQuery_defaultQueryPairDelimiter(): pointer {.importc: "QUrlQuery_defaultQueryPairDelimiter".}
proc fcQUrlQuery_query1(self: pointer, encoding: cint): struct_miqt_string {.importc: "QUrlQuery_query1".}
proc fcQUrlQuery_toString1(self: pointer, encoding: cint): struct_miqt_string {.importc: "QUrlQuery_toString1".}
proc fcQUrlQuery_queryItems1(self: pointer, encoding: cint): struct_miqt_array {.importc: "QUrlQuery_queryItems1".}
proc fcQUrlQuery_queryItemValue2(self: pointer, key: struct_miqt_string, encoding: cint): struct_miqt_string {.importc: "QUrlQuery_queryItemValue2".}
proc fcQUrlQuery_allQueryItemValues2(self: pointer, key: struct_miqt_string, encoding: cint): struct_miqt_array {.importc: "QUrlQuery_allQueryItemValues2".}
proc fcQUrlQuery_new(): ptr cQUrlQuery {.importc: "QUrlQuery_new".}
proc fcQUrlQuery_new2(url: pointer): ptr cQUrlQuery {.importc: "QUrlQuery_new2".}
proc fcQUrlQuery_new3(queryString: struct_miqt_string): ptr cQUrlQuery {.importc: "QUrlQuery_new3".}
proc fcQUrlQuery_new4(other: pointer): ptr cQUrlQuery {.importc: "QUrlQuery_new4".}

proc operatorAssign*(self: gen_qurlquery_types.QUrlQuery, other: gen_qurlquery_types.QUrlQuery): void =
  fcQUrlQuery_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qurlquery_types.QUrlQuery, other: gen_qurlquery_types.QUrlQuery): bool =
  fcQUrlQuery_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qurlquery_types.QUrlQuery, other: gen_qurlquery_types.QUrlQuery): bool =
  fcQUrlQuery_operatorNotEqual(self.h, other.h)

proc swap*(self: gen_qurlquery_types.QUrlQuery, other: gen_qurlquery_types.QUrlQuery): void =
  fcQUrlQuery_swap(self.h, other.h)

proc isEmpty*(self: gen_qurlquery_types.QUrlQuery, ): bool =
  fcQUrlQuery_isEmpty(self.h)

proc isDetached*(self: gen_qurlquery_types.QUrlQuery, ): bool =
  fcQUrlQuery_isDetached(self.h)

proc clear*(self: gen_qurlquery_types.QUrlQuery, ): void =
  fcQUrlQuery_clear(self.h)

proc query*(self: gen_qurlquery_types.QUrlQuery, ): string =
  let v_ms = fcQUrlQuery_query(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setQuery*(self: gen_qurlquery_types.QUrlQuery, queryString: string): void =
  fcQUrlQuery_setQuery(self.h, struct_miqt_string(data: queryString, len: csize_t(len(queryString))))

proc toString*(self: gen_qurlquery_types.QUrlQuery, ): string =
  let v_ms = fcQUrlQuery_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setQueryDelimiters*(self: gen_qurlquery_types.QUrlQuery, valueDelimiter: gen_qchar_types.QChar, pairDelimiter: gen_qchar_types.QChar): void =
  fcQUrlQuery_setQueryDelimiters(self.h, valueDelimiter.h, pairDelimiter.h)

proc queryValueDelimiter*(self: gen_qurlquery_types.QUrlQuery, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQUrlQuery_queryValueDelimiter(self.h), owned: true)

proc queryPairDelimiter*(self: gen_qurlquery_types.QUrlQuery, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQUrlQuery_queryPairDelimiter(self.h), owned: true)

proc setQueryItems*(self: gen_qurlquery_types.QUrlQuery, query: seq[tuple[first: string, second: string]]): void =
  var query_CArray = newSeq[struct_miqt_map](len(query))
  for i in 0..<len(query):
    var query_i_CArray_First: struct_miqt_string
    var query_i_CArray_Second: struct_miqt_string
    query_i_CArray_First = struct_miqt_string(data: query[i].first, len: csize_t(len(query[i].first)))
    query_i_CArray_Second = struct_miqt_string(data: query[i].second, len: csize_t(len(query[i].second)))
    query_CArray[i] = struct_miqt_map(len: 1,keys: addr(query_i_CArray_First),values: addr(query_i_CArray_Second),)

  fcQUrlQuery_setQueryItems(self.h, struct_miqt_array(len: csize_t(len(query)), data: if len(query) == 0: nil else: addr(query_CArray[0])))

proc queryItems*(self: gen_qurlquery_types.QUrlQuery, ): seq[tuple[first: string, second: string]] =
  var v_ma = fcQUrlQuery_queryItems(self.h)
  var vx_ret = newSeq[tuple[first: string, second: string]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.values)
    let vx_lv_first_ms = vx_lv_First_CArray[0]
    let vx_lv_firstx_ret = string.fromBytes(toOpenArrayByte(vx_lv_first_ms.data, 0, int(vx_lv_first_ms.len)-1))
    c_free(vx_lv_first_ms.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    let vx_lv_second_ms = vx_lv_Second_CArray[0]
    let vx_lv_secondx_ret = string.fromBytes(toOpenArrayByte(vx_lv_second_ms.data, 0, int(vx_lv_second_ms.len)-1))
    c_free(vx_lv_second_ms.data)
    var vx_lv_entry_Second = vx_lv_secondx_ret

    c_free(vx_lv_mm.keys)
    c_free(vx_lv_mm.values)
    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  c_free(v_ma.data)
  vx_ret

proc hasQueryItem*(self: gen_qurlquery_types.QUrlQuery, key: string): bool =
  fcQUrlQuery_hasQueryItem(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc addQueryItem*(self: gen_qurlquery_types.QUrlQuery, key: string, value: string): void =
  fcQUrlQuery_addQueryItem(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc removeQueryItem*(self: gen_qurlquery_types.QUrlQuery, key: string): void =
  fcQUrlQuery_removeQueryItem(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc queryItemValue*(self: gen_qurlquery_types.QUrlQuery, key: string): string =
  let v_ms = fcQUrlQuery_queryItemValue(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allQueryItemValues*(self: gen_qurlquery_types.QUrlQuery, key: string): seq[string] =
  var v_ma = fcQUrlQuery_allQueryItemValues(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc removeAllQueryItems*(self: gen_qurlquery_types.QUrlQuery, key: string): void =
  fcQUrlQuery_removeAllQueryItems(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc defaultQueryValueDelimiter*(_: type gen_qurlquery_types.QUrlQuery, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQUrlQuery_defaultQueryValueDelimiter(), owned: true)

proc defaultQueryPairDelimiter*(_: type gen_qurlquery_types.QUrlQuery, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQUrlQuery_defaultQueryPairDelimiter(), owned: true)

proc query*(self: gen_qurlquery_types.QUrlQuery, encoding: cint): string =
  let v_ms = fcQUrlQuery_query1(self.h, cint(encoding))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qurlquery_types.QUrlQuery, encoding: cint): string =
  let v_ms = fcQUrlQuery_toString1(self.h, cint(encoding))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc queryItems*(self: gen_qurlquery_types.QUrlQuery, encoding: cint): seq[tuple[first: string, second: string]] =
  var v_ma = fcQUrlQuery_queryItems1(self.h, cint(encoding))
  var vx_ret = newSeq[tuple[first: string, second: string]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.values)
    let vx_lv_first_ms = vx_lv_First_CArray[0]
    let vx_lv_firstx_ret = string.fromBytes(toOpenArrayByte(vx_lv_first_ms.data, 0, int(vx_lv_first_ms.len)-1))
    c_free(vx_lv_first_ms.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    let vx_lv_second_ms = vx_lv_Second_CArray[0]
    let vx_lv_secondx_ret = string.fromBytes(toOpenArrayByte(vx_lv_second_ms.data, 0, int(vx_lv_second_ms.len)-1))
    c_free(vx_lv_second_ms.data)
    var vx_lv_entry_Second = vx_lv_secondx_ret

    c_free(vx_lv_mm.keys)
    c_free(vx_lv_mm.values)
    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  c_free(v_ma.data)
  vx_ret

proc queryItemValue*(self: gen_qurlquery_types.QUrlQuery, key: string, encoding: cint): string =
  let v_ms = fcQUrlQuery_queryItemValue2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), cint(encoding))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allQueryItemValues*(self: gen_qurlquery_types.QUrlQuery, key: string, encoding: cint): seq[string] =
  var v_ma = fcQUrlQuery_allQueryItemValues2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), cint(encoding))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qurlquery_types.QUrlQuery): gen_qurlquery_types.QUrlQuery =
  gen_qurlquery_types.QUrlQuery(h: fcQUrlQuery_new(), owned: true)

proc create*(T: type gen_qurlquery_types.QUrlQuery,
    url: gen_qurl_types.QUrl): gen_qurlquery_types.QUrlQuery =
  gen_qurlquery_types.QUrlQuery(h: fcQUrlQuery_new2(url.h), owned: true)

proc create*(T: type gen_qurlquery_types.QUrlQuery,
    queryString: string): gen_qurlquery_types.QUrlQuery =
  gen_qurlquery_types.QUrlQuery(h: fcQUrlQuery_new3(struct_miqt_string(data: queryString, len: csize_t(len(queryString)))), owned: true)

proc create*(T: type gen_qurlquery_types.QUrlQuery,
    other: gen_qurlquery_types.QUrlQuery): gen_qurlquery_types.QUrlQuery =
  gen_qurlquery_types.QUrlQuery(h: fcQUrlQuery_new4(other.h), owned: true)

