import ./qtwidgets_pkg

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


{.compile("gen_qcompleter.cpp", QtWidgetsCFlags).}


type QCompleterCompletionModeEnum* = distinct cint
template PopupCompletion*(_: type QCompleterCompletionModeEnum): untyped = 0
template UnfilteredPopupCompletion*(_: type QCompleterCompletionModeEnum): untyped = 1
template InlineCompletion*(_: type QCompleterCompletionModeEnum): untyped = 2


type QCompleterModelSortingEnum* = distinct cint
template UnsortedModel*(_: type QCompleterModelSortingEnum): untyped = 0
template CaseSensitivelySortedModel*(_: type QCompleterModelSortingEnum): untyped = 1
template CaseInsensitivelySortedModel*(_: type QCompleterModelSortingEnum): untyped = 2


import ./gen_qcompleter_types
export gen_qcompleter_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ./gen_qabstractitemview_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qabstractitemview_types,
  gen_qwidget_types

type cQCompleter*{.exportc: "QCompleter", incompleteStruct.} = object

proc fcQCompleter_metaObject(self: pointer): pointer {.importc: "QCompleter_metaObject".}
proc fcQCompleter_metacast(self: pointer, param1: cstring): pointer {.importc: "QCompleter_metacast".}
proc fcQCompleter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCompleter_metacall".}
proc fcQCompleter_tr(s: cstring): struct_miqt_string {.importc: "QCompleter_tr".}
proc fcQCompleter_trUtf8(s: cstring): struct_miqt_string {.importc: "QCompleter_trUtf8".}
proc fcQCompleter_setWidget(self: pointer, widget: pointer): void {.importc: "QCompleter_setWidget".}
proc fcQCompleter_widget(self: pointer): pointer {.importc: "QCompleter_widget".}
proc fcQCompleter_setModel(self: pointer, c: pointer): void {.importc: "QCompleter_setModel".}
proc fcQCompleter_model(self: pointer): pointer {.importc: "QCompleter_model".}
proc fcQCompleter_setCompletionMode(self: pointer, mode: cint): void {.importc: "QCompleter_setCompletionMode".}
proc fcQCompleter_completionMode(self: pointer): cint {.importc: "QCompleter_completionMode".}
proc fcQCompleter_setFilterMode(self: pointer, filterMode: cint): void {.importc: "QCompleter_setFilterMode".}
proc fcQCompleter_filterMode(self: pointer): cint {.importc: "QCompleter_filterMode".}
proc fcQCompleter_popup(self: pointer): pointer {.importc: "QCompleter_popup".}
proc fcQCompleter_setPopup(self: pointer, popup: pointer): void {.importc: "QCompleter_setPopup".}
proc fcQCompleter_setCaseSensitivity(self: pointer, caseSensitivity: cint): void {.importc: "QCompleter_setCaseSensitivity".}
proc fcQCompleter_caseSensitivity(self: pointer): cint {.importc: "QCompleter_caseSensitivity".}
proc fcQCompleter_setModelSorting(self: pointer, sorting: cint): void {.importc: "QCompleter_setModelSorting".}
proc fcQCompleter_modelSorting(self: pointer): cint {.importc: "QCompleter_modelSorting".}
proc fcQCompleter_setCompletionColumn(self: pointer, column: cint): void {.importc: "QCompleter_setCompletionColumn".}
proc fcQCompleter_completionColumn(self: pointer): cint {.importc: "QCompleter_completionColumn".}
proc fcQCompleter_setCompletionRole(self: pointer, role: cint): void {.importc: "QCompleter_setCompletionRole".}
proc fcQCompleter_completionRole(self: pointer): cint {.importc: "QCompleter_completionRole".}
proc fcQCompleter_wrapAround(self: pointer): bool {.importc: "QCompleter_wrapAround".}
proc fcQCompleter_maxVisibleItems(self: pointer): cint {.importc: "QCompleter_maxVisibleItems".}
proc fcQCompleter_setMaxVisibleItems(self: pointer, maxItems: cint): void {.importc: "QCompleter_setMaxVisibleItems".}
proc fcQCompleter_completionCount(self: pointer): cint {.importc: "QCompleter_completionCount".}
proc fcQCompleter_setCurrentRow(self: pointer, row: cint): bool {.importc: "QCompleter_setCurrentRow".}
proc fcQCompleter_currentRow(self: pointer): cint {.importc: "QCompleter_currentRow".}
proc fcQCompleter_currentIndex(self: pointer): pointer {.importc: "QCompleter_currentIndex".}
proc fcQCompleter_currentCompletion(self: pointer): struct_miqt_string {.importc: "QCompleter_currentCompletion".}
proc fcQCompleter_completionModel(self: pointer): pointer {.importc: "QCompleter_completionModel".}
proc fcQCompleter_completionPrefix(self: pointer): struct_miqt_string {.importc: "QCompleter_completionPrefix".}
proc fcQCompleter_setCompletionPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QCompleter_setCompletionPrefix".}
proc fcQCompleter_complete(self: pointer): void {.importc: "QCompleter_complete".}
proc fcQCompleter_setWrapAround(self: pointer, wrap: bool): void {.importc: "QCompleter_setWrapAround".}
proc fcQCompleter_pathFromIndex(self: pointer, index: pointer): struct_miqt_string {.importc: "QCompleter_pathFromIndex".}
proc fcQCompleter_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array {.importc: "QCompleter_splitPath".}
proc fcQCompleter_activated(self: pointer, text: struct_miqt_string): void {.importc: "QCompleter_activated".}
proc fcQCompleter_connect_activated(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCompleter_connect_activated".}
proc fcQCompleter_activatedWithIndex(self: pointer, index: pointer): void {.importc: "QCompleter_activatedWithIndex".}
proc fcQCompleter_connect_activatedWithIndex(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCompleter_connect_activatedWithIndex".}
proc fcQCompleter_highlighted(self: pointer, text: struct_miqt_string): void {.importc: "QCompleter_highlighted".}
proc fcQCompleter_connect_highlighted(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCompleter_connect_highlighted".}
proc fcQCompleter_highlightedWithIndex(self: pointer, index: pointer): void {.importc: "QCompleter_highlightedWithIndex".}
proc fcQCompleter_connect_highlightedWithIndex(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCompleter_connect_highlightedWithIndex".}
proc fcQCompleter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCompleter_tr2".}
proc fcQCompleter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCompleter_tr3".}
proc fcQCompleter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCompleter_trUtf82".}
proc fcQCompleter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCompleter_trUtf83".}
proc fcQCompleter_complete1(self: pointer, rect: pointer): void {.importc: "QCompleter_complete1".}
proc fcQCompleter_vtbl(self: pointer): pointer {.importc: "QCompleter_vtbl".}
proc fcQCompleter_vdata(self: pointer): pointer {.importc: "QCompleter_vdata".}

type cQCompleterVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  pathFromIndex*: proc(self: pointer, index: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  splitPath*: proc(self: pointer, path: struct_miqt_string): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, o: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCompleter_virtualbase_metaObject(self: pointer): pointer {.importc: "QCompleter_virtualbase_metaObject".}
proc fcQCompleter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCompleter_virtualbase_metacast".}
proc fcQCompleter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCompleter_virtualbase_metacall".}
proc fcQCompleter_virtualbase_pathFromIndex(self: pointer, index: pointer): struct_miqt_string {.importc: "QCompleter_virtualbase_pathFromIndex".}
proc fcQCompleter_virtualbase_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array {.importc: "QCompleter_virtualbase_splitPath".}
proc fcQCompleter_virtualbase_eventFilter(self: pointer, o: pointer, e: pointer): bool {.importc: "QCompleter_virtualbase_eventFilter".}
proc fcQCompleter_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QCompleter_virtualbase_event".}
proc fcQCompleter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCompleter_virtualbase_timerEvent".}
proc fcQCompleter_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCompleter_virtualbase_childEvent".}
proc fcQCompleter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCompleter_virtualbase_customEvent".}
proc fcQCompleter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCompleter_virtualbase_connectNotify".}
proc fcQCompleter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCompleter_virtualbase_disconnectNotify".}
proc fcQCompleter_protectedbase_sender(self: pointer): pointer {.importc: "QCompleter_protectedbase_sender".}
proc fcQCompleter_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCompleter_protectedbase_senderSignalIndex".}
proc fcQCompleter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCompleter_protectedbase_receivers".}
proc fcQCompleter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCompleter_protectedbase_isSignalConnected".}
proc fcQCompleter_new(vtbl, vdata: pointer): ptr cQCompleter {.importc: "QCompleter_new".}
proc fcQCompleter_new2(vtbl, vdata: pointer, model: pointer): ptr cQCompleter {.importc: "QCompleter_new2".}
proc fcQCompleter_new3(vtbl, vdata: pointer, completions: struct_miqt_array): ptr cQCompleter {.importc: "QCompleter_new3".}
proc fcQCompleter_new4(vtbl, vdata: pointer, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new4".}
proc fcQCompleter_new5(vtbl, vdata: pointer, model: pointer, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new5".}
proc fcQCompleter_new6(vtbl, vdata: pointer, completions: struct_miqt_array, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new6".}
proc fcQCompleter_staticMetaObject(): pointer {.importc: "QCompleter_staticMetaObject".}

proc metaObject*(self: gen_qcompleter_types.QCompleter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCompleter_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcompleter_types.QCompleter, param1: cstring): pointer =
  fcQCompleter_metacast(self.h, param1)

proc metacall*(self: gen_qcompleter_types.QCompleter, param1: cint, param2: cint, param3: pointer): cint =
  fcQCompleter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcompleter_types.QCompleter, s: cstring): string =
  let v_ms = fcQCompleter_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcompleter_types.QCompleter, s: cstring): string =
  let v_ms = fcQCompleter_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qcompleter_types.QCompleter, widget: gen_qwidget_types.QWidget): void =
  fcQCompleter_setWidget(self.h, widget.h)

proc widget*(self: gen_qcompleter_types.QCompleter): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQCompleter_widget(self.h), owned: false)

proc setModel*(self: gen_qcompleter_types.QCompleter, c: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQCompleter_setModel(self.h, c.h)

proc model*(self: gen_qcompleter_types.QCompleter): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQCompleter_model(self.h), owned: false)

proc setCompletionMode*(self: gen_qcompleter_types.QCompleter, mode: cint): void =
  fcQCompleter_setCompletionMode(self.h, cint(mode))

proc completionMode*(self: gen_qcompleter_types.QCompleter): cint =
  cint(fcQCompleter_completionMode(self.h))

proc setFilterMode*(self: gen_qcompleter_types.QCompleter, filterMode: cint): void =
  fcQCompleter_setFilterMode(self.h, cint(filterMode))

proc filterMode*(self: gen_qcompleter_types.QCompleter): cint =
  cint(fcQCompleter_filterMode(self.h))

proc popup*(self: gen_qcompleter_types.QCompleter): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView(h: fcQCompleter_popup(self.h), owned: false)

proc setPopup*(self: gen_qcompleter_types.QCompleter, popup: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQCompleter_setPopup(self.h, popup.h)

proc setCaseSensitivity*(self: gen_qcompleter_types.QCompleter, caseSensitivity: cint): void =
  fcQCompleter_setCaseSensitivity(self.h, cint(caseSensitivity))

proc caseSensitivity*(self: gen_qcompleter_types.QCompleter): cint =
  cint(fcQCompleter_caseSensitivity(self.h))

proc setModelSorting*(self: gen_qcompleter_types.QCompleter, sorting: cint): void =
  fcQCompleter_setModelSorting(self.h, cint(sorting))

proc modelSorting*(self: gen_qcompleter_types.QCompleter): cint =
  cint(fcQCompleter_modelSorting(self.h))

proc setCompletionColumn*(self: gen_qcompleter_types.QCompleter, column: cint): void =
  fcQCompleter_setCompletionColumn(self.h, column)

proc completionColumn*(self: gen_qcompleter_types.QCompleter): cint =
  fcQCompleter_completionColumn(self.h)

proc setCompletionRole*(self: gen_qcompleter_types.QCompleter, role: cint): void =
  fcQCompleter_setCompletionRole(self.h, role)

proc completionRole*(self: gen_qcompleter_types.QCompleter): cint =
  fcQCompleter_completionRole(self.h)

proc wrapAround*(self: gen_qcompleter_types.QCompleter): bool =
  fcQCompleter_wrapAround(self.h)

proc maxVisibleItems*(self: gen_qcompleter_types.QCompleter): cint =
  fcQCompleter_maxVisibleItems(self.h)

proc setMaxVisibleItems*(self: gen_qcompleter_types.QCompleter, maxItems: cint): void =
  fcQCompleter_setMaxVisibleItems(self.h, maxItems)

proc completionCount*(self: gen_qcompleter_types.QCompleter): cint =
  fcQCompleter_completionCount(self.h)

proc setCurrentRow*(self: gen_qcompleter_types.QCompleter, row: cint): bool =
  fcQCompleter_setCurrentRow(self.h, row)

proc currentRow*(self: gen_qcompleter_types.QCompleter): cint =
  fcQCompleter_currentRow(self.h)

proc currentIndex*(self: gen_qcompleter_types.QCompleter): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQCompleter_currentIndex(self.h), owned: true)

proc currentCompletion*(self: gen_qcompleter_types.QCompleter): string =
  let v_ms = fcQCompleter_currentCompletion(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc completionModel*(self: gen_qcompleter_types.QCompleter): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQCompleter_completionModel(self.h), owned: false)

proc completionPrefix*(self: gen_qcompleter_types.QCompleter): string =
  let v_ms = fcQCompleter_completionPrefix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCompletionPrefix*(self: gen_qcompleter_types.QCompleter, prefix: openArray[char]): void =
  fcQCompleter_setCompletionPrefix(self.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))))

proc complete*(self: gen_qcompleter_types.QCompleter): void =
  fcQCompleter_complete(self.h)

proc setWrapAround*(self: gen_qcompleter_types.QCompleter, wrap: bool): void =
  fcQCompleter_setWrapAround(self.h, wrap)

proc pathFromIndex*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQCompleter_pathFromIndex(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc splitPath*(self: gen_qcompleter_types.QCompleter, path: openArray[char]): seq[string] =
  var v_ma = fcQCompleter_splitPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc activated*(self: gen_qcompleter_types.QCompleter, text: openArray[char]): void =
  fcQCompleter_activated(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

type QCompleteractivatedSlot* = proc(text: openArray[char])
proc fcQCompleter_slot_callback_activated(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCompleteractivatedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc fcQCompleter_slot_callback_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCompleteractivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActivated*(self: gen_qcompleter_types.QCompleter, slot: QCompleteractivatedSlot) =
  var tmp = new QCompleteractivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_activated(self.h, cast[int](addr tmp[]), fcQCompleter_slot_callback_activated, fcQCompleter_slot_callback_activated_release)

proc activated*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQCompleter_activatedWithIndex(self.h, index.h)

type QCompleteractivatedWithIndexSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc fcQCompleter_slot_callback_activatedWithIndex(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCompleteractivatedWithIndexSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc fcQCompleter_slot_callback_activatedWithIndex_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCompleteractivatedWithIndexSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActivated*(self: gen_qcompleter_types.QCompleter, slot: QCompleteractivatedWithIndexSlot) =
  var tmp = new QCompleteractivatedWithIndexSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_activatedWithIndex(self.h, cast[int](addr tmp[]), fcQCompleter_slot_callback_activatedWithIndex, fcQCompleter_slot_callback_activatedWithIndex_release)

proc highlighted*(self: gen_qcompleter_types.QCompleter, text: openArray[char]): void =
  fcQCompleter_highlighted(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

type QCompleterhighlightedSlot* = proc(text: openArray[char])
proc fcQCompleter_slot_callback_highlighted(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCompleterhighlightedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc fcQCompleter_slot_callback_highlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCompleterhighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHighlighted*(self: gen_qcompleter_types.QCompleter, slot: QCompleterhighlightedSlot) =
  var tmp = new QCompleterhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_highlighted(self.h, cast[int](addr tmp[]), fcQCompleter_slot_callback_highlighted, fcQCompleter_slot_callback_highlighted_release)

proc highlighted*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQCompleter_highlightedWithIndex(self.h, index.h)

type QCompleterhighlightedWithIndexSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc fcQCompleter_slot_callback_highlightedWithIndex(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCompleterhighlightedWithIndexSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc fcQCompleter_slot_callback_highlightedWithIndex_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCompleterhighlightedWithIndexSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHighlighted*(self: gen_qcompleter_types.QCompleter, slot: QCompleterhighlightedWithIndexSlot) =
  var tmp = new QCompleterhighlightedWithIndexSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_highlightedWithIndex(self.h, cast[int](addr tmp[]), fcQCompleter_slot_callback_highlightedWithIndex, fcQCompleter_slot_callback_highlightedWithIndex_release)

proc tr*(_: type gen_qcompleter_types.QCompleter, s: cstring, c: cstring): string =
  let v_ms = fcQCompleter_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcompleter_types.QCompleter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCompleter_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcompleter_types.QCompleter, s: cstring, c: cstring): string =
  let v_ms = fcQCompleter_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcompleter_types.QCompleter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCompleter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc complete*(self: gen_qcompleter_types.QCompleter, rect: gen_qrect_types.QRect): void =
  fcQCompleter_complete1(self.h, rect.h)

type QCompletermetaObjectProc* = proc(self: QCompleter): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCompletermetacastProc* = proc(self: QCompleter, param1: cstring): pointer {.raises: [], gcsafe.}
type QCompletermetacallProc* = proc(self: QCompleter, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCompleterpathFromIndexProc* = proc(self: QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): string {.raises: [], gcsafe.}
type QCompletersplitPathProc* = proc(self: QCompleter, path: openArray[char]): seq[string] {.raises: [], gcsafe.}
type QCompletereventFilterProc* = proc(self: QCompleter, o: gen_qobject_types.QObject, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCompletereventProc* = proc(self: QCompleter, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCompletertimerEventProc* = proc(self: QCompleter, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCompleterchildEventProc* = proc(self: QCompleter, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCompletercustomEventProc* = proc(self: QCompleter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCompleterconnectNotifyProc* = proc(self: QCompleter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCompleterdisconnectNotifyProc* = proc(self: QCompleter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QCompleterVTable* {.inheritable, pure.} = object
  vtbl: cQCompleterVTable
  metaObject*: QCompletermetaObjectProc
  metacast*: QCompletermetacastProc
  metacall*: QCompletermetacallProc
  pathFromIndex*: QCompleterpathFromIndexProc
  splitPath*: QCompletersplitPathProc
  eventFilter*: QCompletereventFilterProc
  event*: QCompletereventProc
  timerEvent*: QCompletertimerEventProc
  childEvent*: QCompleterchildEventProc
  customEvent*: QCompletercustomEventProc
  connectNotify*: QCompleterconnectNotifyProc
  disconnectNotify*: QCompleterdisconnectNotifyProc

proc QCompletermetaObject*(self: gen_qcompleter_types.QCompleter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCompleter_virtualbase_metaObject(self.h), owned: false)

proc QCompletermetacast*(self: gen_qcompleter_types.QCompleter, param1: cstring): pointer =
  fcQCompleter_virtualbase_metacast(self.h, param1)

proc QCompletermetacall*(self: gen_qcompleter_types.QCompleter, param1: cint, param2: cint, param3: pointer): cint =
  fcQCompleter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QCompleterpathFromIndex*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQCompleter_virtualbase_pathFromIndex(self.h, index.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QCompletersplitPath*(self: gen_qcompleter_types.QCompleter, path: openArray[char]): seq[string] =
  var v_ma = fcQCompleter_virtualbase_splitPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QCompletereventFilter*(self: gen_qcompleter_types.QCompleter, o: gen_qobject_types.QObject, e: gen_qcoreevent_types.QEvent): bool =
  fcQCompleter_virtualbase_eventFilter(self.h, o.h, e.h)

proc QCompleterevent*(self: gen_qcompleter_types.QCompleter, param1: gen_qcoreevent_types.QEvent): bool =
  fcQCompleter_virtualbase_event(self.h, param1.h)

proc QCompletertimerEvent*(self: gen_qcompleter_types.QCompleter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCompleter_virtualbase_timerEvent(self.h, event.h)

proc QCompleterchildEvent*(self: gen_qcompleter_types.QCompleter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCompleter_virtualbase_childEvent(self.h, event.h)

proc QCompletercustomEvent*(self: gen_qcompleter_types.QCompleter, event: gen_qcoreevent_types.QEvent): void =
  fcQCompleter_virtualbase_customEvent(self.h, event.h)

proc QCompleterconnectNotify*(self: gen_qcompleter_types.QCompleter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCompleter_virtualbase_connectNotify(self.h, signal.h)

proc QCompleterdisconnectNotify*(self: gen_qcompleter_types.QCompleter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCompleter_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQCompleter_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCompleter_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQCompleter_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCompleter_vtable_callback_pathFromIndex(self: pointer, index: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].pathFromIndex(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQCompleter_vtable_callback_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret
  var virtualReturn = vtbl[].splitPath(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQCompleter_vtable_callback_eventFilter(self: pointer, o: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: o, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQCompleter_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQCompleter_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQCompleter_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQCompleter_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQCompleter_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQCompleter_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCompleterVTable](fcQCompleter_vdata(self))
  let self = QCompleter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCompleter* {.inheritable.} = ref object of QCompleter
  vtbl*: cQCompleterVTable

method metaObject*(self: VirtualQCompleter): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCompletermetaObject(self[])
method metacast*(self: VirtualQCompleter, param1: cstring): pointer {.base.} =
  QCompletermetacast(self[], param1)
method metacall*(self: VirtualQCompleter, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCompletermetacall(self[], param1, param2, param3)
method pathFromIndex*(self: VirtualQCompleter, index: gen_qabstractitemmodel_types.QModelIndex): string {.base.} =
  QCompleterpathFromIndex(self[], index)
method splitPath*(self: VirtualQCompleter, path: openArray[char]): seq[string] {.base.} =
  QCompletersplitPath(self[], path)
method eventFilter*(self: VirtualQCompleter, o: gen_qobject_types.QObject, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCompletereventFilter(self[], o, e)
method event*(self: VirtualQCompleter, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCompleterevent(self[], param1)
method timerEvent*(self: VirtualQCompleter, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCompletertimerEvent(self[], event)
method childEvent*(self: VirtualQCompleter, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCompleterchildEvent(self[], event)
method customEvent*(self: VirtualQCompleter, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCompletercustomEvent(self[], event)
method connectNotify*(self: VirtualQCompleter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCompleterconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQCompleter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCompleterdisconnectNotify(self[], signal)

proc fcQCompleter_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCompleter_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQCompleter_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCompleter_method_callback_pathFromIndex(self: pointer, index: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.pathFromIndex(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQCompleter_method_callback_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(vpath_ms)
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret
  var virtualReturn = inst.splitPath(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQCompleter_method_callback_eventFilter(self: pointer, o: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: o, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQCompleter_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQCompleter_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQCompleter_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQCompleter_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQCompleter_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQCompleter_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCompleter](fcQCompleter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qcompleter_types.QCompleter): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCompleter_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcompleter_types.QCompleter): cint =
  fcQCompleter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcompleter_types.QCompleter, signal: cstring): cint =
  fcQCompleter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcompleter_types.QCompleter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCompleter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcompleter_types.QCompleter,
    vtbl: ref QCompleterVTable = nil): gen_qcompleter_types.QCompleter =
  let vtbl = if vtbl == nil: new QCompleterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCompleterVTable](fcQCompleter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCompleter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCompleter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCompleter_vtable_callback_metacall
  if not isNil(vtbl[].pathFromIndex):
    vtbl[].vtbl.pathFromIndex = fcQCompleter_vtable_callback_pathFromIndex
  if not isNil(vtbl[].splitPath):
    vtbl[].vtbl.splitPath = fcQCompleter_vtable_callback_splitPath
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCompleter_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCompleter_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCompleter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCompleter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCompleter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCompleter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCompleter_vtable_callback_disconnectNotify
  gen_qcompleter_types.QCompleter(h: fcQCompleter_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qcompleter_types.QCompleter,
    model: gen_qabstractitemmodel_types.QAbstractItemModel,
    vtbl: ref QCompleterVTable = nil): gen_qcompleter_types.QCompleter =
  let vtbl = if vtbl == nil: new QCompleterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCompleterVTable](fcQCompleter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCompleter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCompleter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCompleter_vtable_callback_metacall
  if not isNil(vtbl[].pathFromIndex):
    vtbl[].vtbl.pathFromIndex = fcQCompleter_vtable_callback_pathFromIndex
  if not isNil(vtbl[].splitPath):
    vtbl[].vtbl.splitPath = fcQCompleter_vtable_callback_splitPath
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCompleter_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCompleter_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCompleter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCompleter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCompleter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCompleter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCompleter_vtable_callback_disconnectNotify
  gen_qcompleter_types.QCompleter(h: fcQCompleter_new2(addr(vtbl[].vtbl), addr(vtbl[]), model.h), owned: true)

proc create*(T: type gen_qcompleter_types.QCompleter,
    completions: openArray[string],
    vtbl: ref QCompleterVTable = nil): gen_qcompleter_types.QCompleter =
  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: if len(completions[i]) > 0: addr completions[i][0] else: nil, len: csize_t(len(completions[i])))

  let vtbl = if vtbl == nil: new QCompleterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCompleterVTable](fcQCompleter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCompleter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCompleter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCompleter_vtable_callback_metacall
  if not isNil(vtbl[].pathFromIndex):
    vtbl[].vtbl.pathFromIndex = fcQCompleter_vtable_callback_pathFromIndex
  if not isNil(vtbl[].splitPath):
    vtbl[].vtbl.splitPath = fcQCompleter_vtable_callback_splitPath
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCompleter_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCompleter_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCompleter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCompleter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCompleter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCompleter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCompleter_vtable_callback_disconnectNotify
  gen_qcompleter_types.QCompleter(h: fcQCompleter_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0]))), owned: true)

proc create*(T: type gen_qcompleter_types.QCompleter,
    parent: gen_qobject_types.QObject,
    vtbl: ref QCompleterVTable = nil): gen_qcompleter_types.QCompleter =
  let vtbl = if vtbl == nil: new QCompleterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCompleterVTable](fcQCompleter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCompleter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCompleter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCompleter_vtable_callback_metacall
  if not isNil(vtbl[].pathFromIndex):
    vtbl[].vtbl.pathFromIndex = fcQCompleter_vtable_callback_pathFromIndex
  if not isNil(vtbl[].splitPath):
    vtbl[].vtbl.splitPath = fcQCompleter_vtable_callback_splitPath
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCompleter_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCompleter_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCompleter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCompleter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCompleter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCompleter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCompleter_vtable_callback_disconnectNotify
  gen_qcompleter_types.QCompleter(h: fcQCompleter_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qcompleter_types.QCompleter,
    model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject,
    vtbl: ref QCompleterVTable = nil): gen_qcompleter_types.QCompleter =
  let vtbl = if vtbl == nil: new QCompleterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCompleterVTable](fcQCompleter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCompleter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCompleter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCompleter_vtable_callback_metacall
  if not isNil(vtbl[].pathFromIndex):
    vtbl[].vtbl.pathFromIndex = fcQCompleter_vtable_callback_pathFromIndex
  if not isNil(vtbl[].splitPath):
    vtbl[].vtbl.splitPath = fcQCompleter_vtable_callback_splitPath
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCompleter_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCompleter_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCompleter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCompleter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCompleter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCompleter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCompleter_vtable_callback_disconnectNotify
  gen_qcompleter_types.QCompleter(h: fcQCompleter_new5(addr(vtbl[].vtbl), addr(vtbl[]), model.h, parent.h), owned: true)

proc create*(T: type gen_qcompleter_types.QCompleter,
    completions: openArray[string], parent: gen_qobject_types.QObject,
    vtbl: ref QCompleterVTable = nil): gen_qcompleter_types.QCompleter =
  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: if len(completions[i]) > 0: addr completions[i][0] else: nil, len: csize_t(len(completions[i])))

  let vtbl = if vtbl == nil: new QCompleterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCompleterVTable](fcQCompleter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCompleter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCompleter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCompleter_vtable_callback_metacall
  if not isNil(vtbl[].pathFromIndex):
    vtbl[].vtbl.pathFromIndex = fcQCompleter_vtable_callback_pathFromIndex
  if not isNil(vtbl[].splitPath):
    vtbl[].vtbl.splitPath = fcQCompleter_vtable_callback_splitPath
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCompleter_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCompleter_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCompleter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCompleter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCompleter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCompleter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCompleter_vtable_callback_disconnectNotify
  gen_qcompleter_types.QCompleter(h: fcQCompleter_new6(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0])), parent.h), owned: true)

const cQCompleter_mvtbl = cQCompleterVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCompleter()[])](self.fcQCompleter_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQCompleter_method_callback_metaObject,
  metacast: fcQCompleter_method_callback_metacast,
  metacall: fcQCompleter_method_callback_metacall,
  pathFromIndex: fcQCompleter_method_callback_pathFromIndex,
  splitPath: fcQCompleter_method_callback_splitPath,
  eventFilter: fcQCompleter_method_callback_eventFilter,
  event: fcQCompleter_method_callback_event,
  timerEvent: fcQCompleter_method_callback_timerEvent,
  childEvent: fcQCompleter_method_callback_childEvent,
  customEvent: fcQCompleter_method_callback_customEvent,
  connectNotify: fcQCompleter_method_callback_connectNotify,
  disconnectNotify: fcQCompleter_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcompleter_types.QCompleter,
    inst: VirtualQCompleter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCompleter_new(addr(cQCompleter_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qcompleter_types.QCompleter,
    model: gen_qabstractitemmodel_types.QAbstractItemModel,
    inst: VirtualQCompleter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCompleter_new2(addr(cQCompleter_mvtbl), addr(inst[]), model.h)
  inst[].owned = true

proc create*(T: type gen_qcompleter_types.QCompleter,
    completions: openArray[string],
    inst: VirtualQCompleter) =
  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: if len(completions[i]) > 0: addr completions[i][0] else: nil, len: csize_t(len(completions[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCompleter_new3(addr(cQCompleter_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0])))
  inst[].owned = true

proc create*(T: type gen_qcompleter_types.QCompleter,
    parent: gen_qobject_types.QObject,
    inst: VirtualQCompleter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCompleter_new4(addr(cQCompleter_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcompleter_types.QCompleter,
    model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject,
    inst: VirtualQCompleter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCompleter_new5(addr(cQCompleter_mvtbl), addr(inst[]), model.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qcompleter_types.QCompleter,
    completions: openArray[string], parent: gen_qobject_types.QObject,
    inst: VirtualQCompleter) =
  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: if len(completions[i]) > 0: addr completions[i][0] else: nil, len: csize_t(len(completions[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCompleter_new6(addr(cQCompleter_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0])), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcompleter_types.QCompleter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCompleter_staticMetaObject())
