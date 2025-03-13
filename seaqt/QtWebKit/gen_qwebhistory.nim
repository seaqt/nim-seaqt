import ./Qt5WebKit_libs

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


import ./gen_qwebhistory_types
export gen_qwebhistory_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qicon_types,
  std/tables
export
  gen_qdatetime_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qicon_types

type cQWebHistoryItem*{.exportc: "QWebHistoryItem", incompleteStruct.} = object
type cQWebHistory*{.exportc: "QWebHistory", incompleteStruct.} = object

proc fcQWebHistoryItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebHistoryItem_operatorAssign".}
proc fcQWebHistoryItem_originalUrl(self: pointer): pointer {.importc: "QWebHistoryItem_originalUrl".}
proc fcQWebHistoryItem_url(self: pointer): pointer {.importc: "QWebHistoryItem_url".}
proc fcQWebHistoryItem_title(self: pointer): struct_miqt_string {.importc: "QWebHistoryItem_title".}
proc fcQWebHistoryItem_lastVisited(self: pointer): pointer {.importc: "QWebHistoryItem_lastVisited".}
proc fcQWebHistoryItem_icon(self: pointer): pointer {.importc: "QWebHistoryItem_icon".}
proc fcQWebHistoryItem_userData(self: pointer): pointer {.importc: "QWebHistoryItem_userData".}
proc fcQWebHistoryItem_setUserData(self: pointer, userData: pointer): void {.importc: "QWebHistoryItem_setUserData".}
proc fcQWebHistoryItem_isValid(self: pointer): bool {.importc: "QWebHistoryItem_isValid".}
proc fcQWebHistoryItem_toMap(self: pointer): struct_miqt_map {.importc: "QWebHistoryItem_toMap".}
proc fcQWebHistoryItem_loadFromMap(self: pointer, map: struct_miqt_map): void {.importc: "QWebHistoryItem_loadFromMap".}
proc fcQWebHistoryItem_new(other: pointer): ptr cQWebHistoryItem {.importc: "QWebHistoryItem_new".}
proc fcQWebHistory_clear(self: pointer): void {.importc: "QWebHistory_clear".}
proc fcQWebHistory_items(self: pointer): struct_miqt_array {.importc: "QWebHistory_items".}
proc fcQWebHistory_backItems(self: pointer, maxItems: cint): struct_miqt_array {.importc: "QWebHistory_backItems".}
proc fcQWebHistory_forwardItems(self: pointer, maxItems: cint): struct_miqt_array {.importc: "QWebHistory_forwardItems".}
proc fcQWebHistory_canGoBack(self: pointer): bool {.importc: "QWebHistory_canGoBack".}
proc fcQWebHistory_canGoForward(self: pointer): bool {.importc: "QWebHistory_canGoForward".}
proc fcQWebHistory_back(self: pointer): void {.importc: "QWebHistory_back".}
proc fcQWebHistory_forward(self: pointer): void {.importc: "QWebHistory_forward".}
proc fcQWebHistory_goToItem(self: pointer, item: pointer): void {.importc: "QWebHistory_goToItem".}
proc fcQWebHistory_backItem(self: pointer): pointer {.importc: "QWebHistory_backItem".}
proc fcQWebHistory_currentItem(self: pointer): pointer {.importc: "QWebHistory_currentItem".}
proc fcQWebHistory_forwardItem(self: pointer): pointer {.importc: "QWebHistory_forwardItem".}
proc fcQWebHistory_itemAt(self: pointer, i: cint): pointer {.importc: "QWebHistory_itemAt".}
proc fcQWebHistory_currentItemIndex(self: pointer): cint {.importc: "QWebHistory_currentItemIndex".}
proc fcQWebHistory_count(self: pointer): cint {.importc: "QWebHistory_count".}
proc fcQWebHistory_maximumItemCount(self: pointer): cint {.importc: "QWebHistory_maximumItemCount".}
proc fcQWebHistory_setMaximumItemCount(self: pointer, count: cint): void {.importc: "QWebHistory_setMaximumItemCount".}
proc fcQWebHistory_toMap(self: pointer): struct_miqt_map {.importc: "QWebHistory_toMap".}
proc fcQWebHistory_loadFromMap(self: pointer, map: struct_miqt_map): void {.importc: "QWebHistory_loadFromMap".}

proc operatorAssign*(self: gen_qwebhistory_types.QWebHistoryItem, other: gen_qwebhistory_types.QWebHistoryItem): void =
  fcQWebHistoryItem_operatorAssign(self.h, other.h)

proc originalUrl*(self: gen_qwebhistory_types.QWebHistoryItem): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebHistoryItem_originalUrl(self.h), owned: true)

proc url*(self: gen_qwebhistory_types.QWebHistoryItem): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebHistoryItem_url(self.h), owned: true)

proc title*(self: gen_qwebhistory_types.QWebHistoryItem): string =
  let v_ms = fcQWebHistoryItem_title(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastVisited*(self: gen_qwebhistory_types.QWebHistoryItem): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQWebHistoryItem_lastVisited(self.h), owned: true)

proc icon*(self: gen_qwebhistory_types.QWebHistoryItem): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebHistoryItem_icon(self.h), owned: true)

proc userData*(self: gen_qwebhistory_types.QWebHistoryItem): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebHistoryItem_userData(self.h), owned: true)

proc setUserData*(self: gen_qwebhistory_types.QWebHistoryItem, userData: gen_qvariant_types.QVariant): void =
  fcQWebHistoryItem_setUserData(self.h, userData.h)

proc isValid*(self: gen_qwebhistory_types.QWebHistoryItem): bool =
  fcQWebHistoryItem_isValid(self.h)

proc toMap*(self: gen_qwebhistory_types.QWebHistoryItem): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQWebHistoryItem_toMap(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(vx_mapkey_ms)
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc loadFromMap*(self: gen_qwebhistory_types.QWebHistoryItem, map: Table[string,gen_qvariant_types.QVariant]): void =
  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for map_k in map.keys():
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: if len(map_k) > 0: addr map_k[0] else: nil, len: csize_t(len(map_k)))
    map_ctr += 1
  map_ctr = 0
  for map_v in map.values():
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  fcQWebHistoryItem_loadFromMap(self.h, struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),))

proc create*(T: type gen_qwebhistory_types.QWebHistoryItem,
    other: gen_qwebhistory_types.QWebHistoryItem): gen_qwebhistory_types.QWebHistoryItem =
  gen_qwebhistory_types.QWebHistoryItem(h: fcQWebHistoryItem_new(other.h), owned: true)

proc clear*(self: gen_qwebhistory_types.QWebHistory): void =
  fcQWebHistory_clear(self.h)

proc items*(self: gen_qwebhistory_types.QWebHistory): seq[gen_qwebhistory_types.QWebHistoryItem] =
  var v_ma = fcQWebHistory_items(self.h)
  var vx_ret = newSeq[gen_qwebhistory_types.QWebHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebhistory_types.QWebHistoryItem(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc backItems*(self: gen_qwebhistory_types.QWebHistory, maxItems: cint): seq[gen_qwebhistory_types.QWebHistoryItem] =
  var v_ma = fcQWebHistory_backItems(self.h, maxItems)
  var vx_ret = newSeq[gen_qwebhistory_types.QWebHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebhistory_types.QWebHistoryItem(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc forwardItems*(self: gen_qwebhistory_types.QWebHistory, maxItems: cint): seq[gen_qwebhistory_types.QWebHistoryItem] =
  var v_ma = fcQWebHistory_forwardItems(self.h, maxItems)
  var vx_ret = newSeq[gen_qwebhistory_types.QWebHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebhistory_types.QWebHistoryItem(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc canGoBack*(self: gen_qwebhistory_types.QWebHistory): bool =
  fcQWebHistory_canGoBack(self.h)

proc canGoForward*(self: gen_qwebhistory_types.QWebHistory): bool =
  fcQWebHistory_canGoForward(self.h)

proc back*(self: gen_qwebhistory_types.QWebHistory): void =
  fcQWebHistory_back(self.h)

proc forward*(self: gen_qwebhistory_types.QWebHistory): void =
  fcQWebHistory_forward(self.h)

proc goToItem*(self: gen_qwebhistory_types.QWebHistory, item: gen_qwebhistory_types.QWebHistoryItem): void =
  fcQWebHistory_goToItem(self.h, item.h)

proc backItem*(self: gen_qwebhistory_types.QWebHistory): gen_qwebhistory_types.QWebHistoryItem =
  gen_qwebhistory_types.QWebHistoryItem(h: fcQWebHistory_backItem(self.h), owned: true)

proc currentItem*(self: gen_qwebhistory_types.QWebHistory): gen_qwebhistory_types.QWebHistoryItem =
  gen_qwebhistory_types.QWebHistoryItem(h: fcQWebHistory_currentItem(self.h), owned: true)

proc forwardItem*(self: gen_qwebhistory_types.QWebHistory): gen_qwebhistory_types.QWebHistoryItem =
  gen_qwebhistory_types.QWebHistoryItem(h: fcQWebHistory_forwardItem(self.h), owned: true)

proc itemAt*(self: gen_qwebhistory_types.QWebHistory, i: cint): gen_qwebhistory_types.QWebHistoryItem =
  gen_qwebhistory_types.QWebHistoryItem(h: fcQWebHistory_itemAt(self.h, i), owned: true)

proc currentItemIndex*(self: gen_qwebhistory_types.QWebHistory): cint =
  fcQWebHistory_currentItemIndex(self.h)

proc count*(self: gen_qwebhistory_types.QWebHistory): cint =
  fcQWebHistory_count(self.h)

proc maximumItemCount*(self: gen_qwebhistory_types.QWebHistory): cint =
  fcQWebHistory_maximumItemCount(self.h)

proc setMaximumItemCount*(self: gen_qwebhistory_types.QWebHistory, count: cint): void =
  fcQWebHistory_setMaximumItemCount(self.h, count)

proc toMap*(self: gen_qwebhistory_types.QWebHistory): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQWebHistory_toMap(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(vx_mapkey_ms)
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc loadFromMap*(self: gen_qwebhistory_types.QWebHistory, map: Table[string,gen_qvariant_types.QVariant]): void =
  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for map_k in map.keys():
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: if len(map_k) > 0: addr map_k[0] else: nil, len: csize_t(len(map_k)))
    map_ctr += 1
  map_ctr = 0
  for map_v in map.values():
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  fcQWebHistory_loadFromMap(self.h, struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),))

