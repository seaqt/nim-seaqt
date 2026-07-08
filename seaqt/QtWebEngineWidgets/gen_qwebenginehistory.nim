import ./qtwebenginewidgets_pkg

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


import ./gen_qwebenginehistory_types
export gen_qwebenginehistory_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qurl_types
export
  gen_qdatetime_types,
  gen_qurl_types

type cQWebEngineHistoryItem*{.exportc: "QWebEngineHistoryItem", incompleteStruct.} = object
type cQWebEngineHistory*{.exportc: "QWebEngineHistory", incompleteStruct.} = object

proc fcQWebEngineHistoryItem_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QWebEngineHistoryItem_operatorAssign".}
proc fcQWebEngineHistoryItem_originalUrl(self: pointer): pointer {.importc: "QWebEngineHistoryItem_originalUrl".}
proc fcQWebEngineHistoryItem_url(self: pointer): pointer {.importc: "QWebEngineHistoryItem_url".}
proc fcQWebEngineHistoryItem_title(self: pointer): struct_seaqt_string {.importc: "QWebEngineHistoryItem_title".}
proc fcQWebEngineHistoryItem_lastVisited(self: pointer): pointer {.importc: "QWebEngineHistoryItem_lastVisited".}
proc fcQWebEngineHistoryItem_iconUrl(self: pointer): pointer {.importc: "QWebEngineHistoryItem_iconUrl".}
proc fcQWebEngineHistoryItem_isValid(self: pointer): bool {.importc: "QWebEngineHistoryItem_isValid".}
proc fcQWebEngineHistoryItem_swap(self: pointer, other: pointer): void {.importc: "QWebEngineHistoryItem_swap".}
proc fcQWebEngineHistoryItem_new(fromVal: pointer): ptr cQWebEngineHistoryItem {.importc: "QWebEngineHistoryItem_new".}
proc fcQWebEngineHistory_clear(self: pointer): void {.importc: "QWebEngineHistory_clear".}
proc fcQWebEngineHistory_items(self: pointer): struct_seaqt_array {.importc: "QWebEngineHistory_items".}
proc fcQWebEngineHistory_backItems(self: pointer, maxItems: cint): struct_seaqt_array {.importc: "QWebEngineHistory_backItems".}
proc fcQWebEngineHistory_forwardItems(self: pointer, maxItems: cint): struct_seaqt_array {.importc: "QWebEngineHistory_forwardItems".}
proc fcQWebEngineHistory_canGoBack(self: pointer): bool {.importc: "QWebEngineHistory_canGoBack".}
proc fcQWebEngineHistory_canGoForward(self: pointer): bool {.importc: "QWebEngineHistory_canGoForward".}
proc fcQWebEngineHistory_back(self: pointer): void {.importc: "QWebEngineHistory_back".}
proc fcQWebEngineHistory_forward(self: pointer): void {.importc: "QWebEngineHistory_forward".}
proc fcQWebEngineHistory_goToItem(self: pointer, item: pointer): void {.importc: "QWebEngineHistory_goToItem".}
proc fcQWebEngineHistory_backItem(self: pointer): pointer {.importc: "QWebEngineHistory_backItem".}
proc fcQWebEngineHistory_currentItem(self: pointer): pointer {.importc: "QWebEngineHistory_currentItem".}
proc fcQWebEngineHistory_forwardItem(self: pointer): pointer {.importc: "QWebEngineHistory_forwardItem".}
proc fcQWebEngineHistory_itemAt(self: pointer, i: cint): pointer {.importc: "QWebEngineHistory_itemAt".}
proc fcQWebEngineHistory_currentItemIndex(self: pointer): cint {.importc: "QWebEngineHistory_currentItemIndex".}
proc fcQWebEngineHistory_count(self: pointer): cint {.importc: "QWebEngineHistory_count".}

proc operatorAssign*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, fromVal: gen_qwebenginehistory_types.QWebEngineHistoryItem): void =
  fcQWebEngineHistoryItem_operatorAssign(self.h, fromVal.h)

proc originalUrl*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHistoryItem_originalUrl(self.h), owned: true)

proc url*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHistoryItem_url(self.h), owned: true)

proc title*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem): string =
  let v_ms = fcQWebEngineHistoryItem_title(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastVisited*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQWebEngineHistoryItem_lastVisited(self.h), owned: true)

proc iconUrl*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHistoryItem_iconUrl(self.h), owned: true)

proc isValid*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem): bool =
  fcQWebEngineHistoryItem_isValid(self.h)

proc swap*(self: gen_qwebenginehistory_types.QWebEngineHistoryItem, other: gen_qwebenginehistory_types.QWebEngineHistoryItem): void =
  fcQWebEngineHistoryItem_swap(self.h, other.h)

proc create*(T: type gen_qwebenginehistory_types.QWebEngineHistoryItem,
    fromVal: gen_qwebenginehistory_types.QWebEngineHistoryItem): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  let tmp = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistoryItem_new(fromVal.h), owned: true)
  tmp
proc clear*(self: gen_qwebenginehistory_types.QWebEngineHistory): void =
  fcQWebEngineHistory_clear(self.h)

proc items*(self: gen_qwebenginehistory_types.QWebEngineHistory): seq[gen_qwebenginehistory_types.QWebEngineHistoryItem] =
  var v_ma = fcQWebEngineHistory_items(self.h)
  var vx_ret = newSeq[gen_qwebenginehistory_types.QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc backItems*(self: gen_qwebenginehistory_types.QWebEngineHistory, maxItems: cint): seq[gen_qwebenginehistory_types.QWebEngineHistoryItem] =
  var v_ma = fcQWebEngineHistory_backItems(self.h, maxItems)
  var vx_ret = newSeq[gen_qwebenginehistory_types.QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc forwardItems*(self: gen_qwebenginehistory_types.QWebEngineHistory, maxItems: cint): seq[gen_qwebenginehistory_types.QWebEngineHistoryItem] =
  var v_ma = fcQWebEngineHistory_forwardItems(self.h, maxItems)
  var vx_ret = newSeq[gen_qwebenginehistory_types.QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginehistory_types.QWebEngineHistoryItem(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc canGoBack*(self: gen_qwebenginehistory_types.QWebEngineHistory): bool =
  fcQWebEngineHistory_canGoBack(self.h)

proc canGoForward*(self: gen_qwebenginehistory_types.QWebEngineHistory): bool =
  fcQWebEngineHistory_canGoForward(self.h)

proc back*(self: gen_qwebenginehistory_types.QWebEngineHistory): void =
  fcQWebEngineHistory_back(self.h)

proc forward*(self: gen_qwebenginehistory_types.QWebEngineHistory): void =
  fcQWebEngineHistory_forward(self.h)

proc goToItem*(self: gen_qwebenginehistory_types.QWebEngineHistory, item: gen_qwebenginehistory_types.QWebEngineHistoryItem): void =
  fcQWebEngineHistory_goToItem(self.h, item.h)

proc backItem*(self: gen_qwebenginehistory_types.QWebEngineHistory): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_backItem(self.h), owned: true)

proc currentItem*(self: gen_qwebenginehistory_types.QWebEngineHistory): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_currentItem(self.h), owned: true)

proc forwardItem*(self: gen_qwebenginehistory_types.QWebEngineHistory): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_forwardItem(self.h), owned: true)

proc itemAt*(self: gen_qwebenginehistory_types.QWebEngineHistory, i: cint): gen_qwebenginehistory_types.QWebEngineHistoryItem =
  gen_qwebenginehistory_types.QWebEngineHistoryItem(h: fcQWebEngineHistory_itemAt(self.h, i), owned: true)

proc currentItemIndex*(self: gen_qwebenginehistory_types.QWebEngineHistory): cint =
  fcQWebEngineHistory_currentItemIndex(self.h)

proc count*(self: gen_qwebenginehistory_types.QWebEngineHistory): cint =
  fcQWebEngineHistory_count(self.h)

