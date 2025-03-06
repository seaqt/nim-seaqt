import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qcompleter.cpp", cflags).}


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

proc fcQCompleter_new(): ptr cQCompleter {.importc: "QCompleter_new".}
proc fcQCompleter_new2(model: pointer): ptr cQCompleter {.importc: "QCompleter_new2".}
proc fcQCompleter_new3(completions: struct_miqt_array): ptr cQCompleter {.importc: "QCompleter_new3".}
proc fcQCompleter_new4(parent: pointer): ptr cQCompleter {.importc: "QCompleter_new4".}
proc fcQCompleter_new5(model: pointer, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new5".}
proc fcQCompleter_new6(completions: struct_miqt_array, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new6".}
proc fcQCompleter_metaObject(self: pointer, ): pointer {.importc: "QCompleter_metaObject".}
proc fcQCompleter_metacast(self: pointer, param1: cstring): pointer {.importc: "QCompleter_metacast".}
proc fcQCompleter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCompleter_metacall".}
proc fcQCompleter_tr(s: cstring): struct_miqt_string {.importc: "QCompleter_tr".}
proc fcQCompleter_setWidget(self: pointer, widget: pointer): void {.importc: "QCompleter_setWidget".}
proc fcQCompleter_widget(self: pointer, ): pointer {.importc: "QCompleter_widget".}
proc fcQCompleter_setModel(self: pointer, c: pointer): void {.importc: "QCompleter_setModel".}
proc fcQCompleter_model(self: pointer, ): pointer {.importc: "QCompleter_model".}
proc fcQCompleter_setCompletionMode(self: pointer, mode: cint): void {.importc: "QCompleter_setCompletionMode".}
proc fcQCompleter_completionMode(self: pointer, ): cint {.importc: "QCompleter_completionMode".}
proc fcQCompleter_setFilterMode(self: pointer, filterMode: cint): void {.importc: "QCompleter_setFilterMode".}
proc fcQCompleter_filterMode(self: pointer, ): cint {.importc: "QCompleter_filterMode".}
proc fcQCompleter_popup(self: pointer, ): pointer {.importc: "QCompleter_popup".}
proc fcQCompleter_setPopup(self: pointer, popup: pointer): void {.importc: "QCompleter_setPopup".}
proc fcQCompleter_setCaseSensitivity(self: pointer, caseSensitivity: cint): void {.importc: "QCompleter_setCaseSensitivity".}
proc fcQCompleter_caseSensitivity(self: pointer, ): cint {.importc: "QCompleter_caseSensitivity".}
proc fcQCompleter_setModelSorting(self: pointer, sorting: cint): void {.importc: "QCompleter_setModelSorting".}
proc fcQCompleter_modelSorting(self: pointer, ): cint {.importc: "QCompleter_modelSorting".}
proc fcQCompleter_setCompletionColumn(self: pointer, column: cint): void {.importc: "QCompleter_setCompletionColumn".}
proc fcQCompleter_completionColumn(self: pointer, ): cint {.importc: "QCompleter_completionColumn".}
proc fcQCompleter_setCompletionRole(self: pointer, role: cint): void {.importc: "QCompleter_setCompletionRole".}
proc fcQCompleter_completionRole(self: pointer, ): cint {.importc: "QCompleter_completionRole".}
proc fcQCompleter_wrapAround(self: pointer, ): bool {.importc: "QCompleter_wrapAround".}
proc fcQCompleter_maxVisibleItems(self: pointer, ): cint {.importc: "QCompleter_maxVisibleItems".}
proc fcQCompleter_setMaxVisibleItems(self: pointer, maxItems: cint): void {.importc: "QCompleter_setMaxVisibleItems".}
proc fcQCompleter_completionCount(self: pointer, ): cint {.importc: "QCompleter_completionCount".}
proc fcQCompleter_setCurrentRow(self: pointer, row: cint): bool {.importc: "QCompleter_setCurrentRow".}
proc fcQCompleter_currentRow(self: pointer, ): cint {.importc: "QCompleter_currentRow".}
proc fcQCompleter_currentIndex(self: pointer, ): pointer {.importc: "QCompleter_currentIndex".}
proc fcQCompleter_currentCompletion(self: pointer, ): struct_miqt_string {.importc: "QCompleter_currentCompletion".}
proc fcQCompleter_completionModel(self: pointer, ): pointer {.importc: "QCompleter_completionModel".}
proc fcQCompleter_completionPrefix(self: pointer, ): struct_miqt_string {.importc: "QCompleter_completionPrefix".}
proc fcQCompleter_setCompletionPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QCompleter_setCompletionPrefix".}
proc fcQCompleter_complete(self: pointer, ): void {.importc: "QCompleter_complete".}
proc fcQCompleter_setWrapAround(self: pointer, wrap: bool): void {.importc: "QCompleter_setWrapAround".}
proc fcQCompleter_pathFromIndex(self: pointer, index: pointer): struct_miqt_string {.importc: "QCompleter_pathFromIndex".}
proc fcQCompleter_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array {.importc: "QCompleter_splitPath".}
proc fcQCompleter_activated(self: pointer, text: struct_miqt_string): void {.importc: "QCompleter_activated".}
proc fcQCompleter_connect_activated(self: pointer, slot: int) {.importc: "QCompleter_connect_activated".}
proc fcQCompleter_activatedWithIndex(self: pointer, index: pointer): void {.importc: "QCompleter_activatedWithIndex".}
proc fcQCompleter_connect_activatedWithIndex(self: pointer, slot: int) {.importc: "QCompleter_connect_activatedWithIndex".}
proc fcQCompleter_highlighted(self: pointer, text: struct_miqt_string): void {.importc: "QCompleter_highlighted".}
proc fcQCompleter_connect_highlighted(self: pointer, slot: int) {.importc: "QCompleter_connect_highlighted".}
proc fcQCompleter_highlightedWithIndex(self: pointer, index: pointer): void {.importc: "QCompleter_highlightedWithIndex".}
proc fcQCompleter_connect_highlightedWithIndex(self: pointer, slot: int) {.importc: "QCompleter_connect_highlightedWithIndex".}
proc fcQCompleter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCompleter_tr2".}
proc fcQCompleter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCompleter_tr3".}
proc fcQCompleter_complete1(self: pointer, rect: pointer): void {.importc: "QCompleter_complete1".}
proc fQCompleter_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCompleter_virtualbase_metaObject".}
proc fcQCompleter_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_metaObject".}
proc fQCompleter_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCompleter_virtualbase_metacast".}
proc fcQCompleter_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_metacast".}
proc fQCompleter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCompleter_virtualbase_metacall".}
proc fcQCompleter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_metacall".}
proc fQCompleter_virtualbase_pathFromIndex(self: pointer, index: pointer): struct_miqt_string{.importc: "QCompleter_virtualbase_pathFromIndex".}
proc fcQCompleter_override_virtual_pathFromIndex(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_pathFromIndex".}
proc fQCompleter_virtualbase_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array{.importc: "QCompleter_virtualbase_splitPath".}
proc fcQCompleter_override_virtual_splitPath(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_splitPath".}
proc fQCompleter_virtualbase_eventFilter(self: pointer, o: pointer, e: pointer): bool{.importc: "QCompleter_virtualbase_eventFilter".}
proc fcQCompleter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_eventFilter".}
proc fQCompleter_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QCompleter_virtualbase_event".}
proc fcQCompleter_override_virtual_event(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_event".}
proc fQCompleter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCompleter_virtualbase_timerEvent".}
proc fcQCompleter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_timerEvent".}
proc fQCompleter_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCompleter_virtualbase_childEvent".}
proc fcQCompleter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_childEvent".}
proc fQCompleter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCompleter_virtualbase_customEvent".}
proc fcQCompleter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_customEvent".}
proc fQCompleter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCompleter_virtualbase_connectNotify".}
proc fcQCompleter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_connectNotify".}
proc fQCompleter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCompleter_virtualbase_disconnectNotify".}
proc fcQCompleter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_disconnectNotify".}
proc fcQCompleter_staticMetaObject(): pointer {.importc: "QCompleter_staticMetaObject".}
proc fcQCompleter_delete(self: pointer) {.importc: "QCompleter_delete".}


func init*(T: type gen_qcompleter_types.QCompleter, h: ptr cQCompleter): gen_qcompleter_types.QCompleter =
  T(h: h)
proc create*(T: type gen_qcompleter_types.QCompleter, ): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter.init(fcQCompleter_new())

proc create*(T: type gen_qcompleter_types.QCompleter, model: gen_qabstractitemmodel_types.QAbstractItemModel): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter.init(fcQCompleter_new2(model.h))

proc create*(T: type gen_qcompleter_types.QCompleter, completions: seq[string]): gen_qcompleter_types.QCompleter =
  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: completions[i], len: csize_t(len(completions[i])))

  gen_qcompleter_types.QCompleter.init(fcQCompleter_new3(struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0]))))

proc create*(T: type gen_qcompleter_types.QCompleter, parent: gen_qobject_types.QObject): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter.init(fcQCompleter_new4(parent.h))

proc create*(T: type gen_qcompleter_types.QCompleter, model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter.init(fcQCompleter_new5(model.h, parent.h))

proc create*(T: type gen_qcompleter_types.QCompleter, completions: seq[string], parent: gen_qobject_types.QObject): gen_qcompleter_types.QCompleter =
  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: completions[i], len: csize_t(len(completions[i])))

  gen_qcompleter_types.QCompleter.init(fcQCompleter_new6(struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0])), parent.h))

proc metaObject*(self: gen_qcompleter_types.QCompleter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCompleter_metaObject(self.h))

proc metacast*(self: gen_qcompleter_types.QCompleter, param1: cstring): pointer =
  fcQCompleter_metacast(self.h, param1)

proc metacall*(self: gen_qcompleter_types.QCompleter, param1: cint, param2: cint, param3: pointer): cint =
  fcQCompleter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcompleter_types.QCompleter, s: cstring): string =
  let v_ms = fcQCompleter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qcompleter_types.QCompleter, widget: gen_qwidget_types.QWidget): void =
  fcQCompleter_setWidget(self.h, widget.h)

proc widget*(self: gen_qcompleter_types.QCompleter, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQCompleter_widget(self.h))

proc setModel*(self: gen_qcompleter_types.QCompleter, c: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQCompleter_setModel(self.h, c.h)

proc model*(self: gen_qcompleter_types.QCompleter, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQCompleter_model(self.h))

proc setCompletionMode*(self: gen_qcompleter_types.QCompleter, mode: cint): void =
  fcQCompleter_setCompletionMode(self.h, cint(mode))

proc completionMode*(self: gen_qcompleter_types.QCompleter, ): cint =
  cint(fcQCompleter_completionMode(self.h))

proc setFilterMode*(self: gen_qcompleter_types.QCompleter, filterMode: cint): void =
  fcQCompleter_setFilterMode(self.h, cint(filterMode))

proc filterMode*(self: gen_qcompleter_types.QCompleter, ): cint =
  cint(fcQCompleter_filterMode(self.h))

proc popup*(self: gen_qcompleter_types.QCompleter, ): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView(h: fcQCompleter_popup(self.h))

proc setPopup*(self: gen_qcompleter_types.QCompleter, popup: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQCompleter_setPopup(self.h, popup.h)

proc setCaseSensitivity*(self: gen_qcompleter_types.QCompleter, caseSensitivity: cint): void =
  fcQCompleter_setCaseSensitivity(self.h, cint(caseSensitivity))

proc caseSensitivity*(self: gen_qcompleter_types.QCompleter, ): cint =
  cint(fcQCompleter_caseSensitivity(self.h))

proc setModelSorting*(self: gen_qcompleter_types.QCompleter, sorting: cint): void =
  fcQCompleter_setModelSorting(self.h, cint(sorting))

proc modelSorting*(self: gen_qcompleter_types.QCompleter, ): cint =
  cint(fcQCompleter_modelSorting(self.h))

proc setCompletionColumn*(self: gen_qcompleter_types.QCompleter, column: cint): void =
  fcQCompleter_setCompletionColumn(self.h, column)

proc completionColumn*(self: gen_qcompleter_types.QCompleter, ): cint =
  fcQCompleter_completionColumn(self.h)

proc setCompletionRole*(self: gen_qcompleter_types.QCompleter, role: cint): void =
  fcQCompleter_setCompletionRole(self.h, role)

proc completionRole*(self: gen_qcompleter_types.QCompleter, ): cint =
  fcQCompleter_completionRole(self.h)

proc wrapAround*(self: gen_qcompleter_types.QCompleter, ): bool =
  fcQCompleter_wrapAround(self.h)

proc maxVisibleItems*(self: gen_qcompleter_types.QCompleter, ): cint =
  fcQCompleter_maxVisibleItems(self.h)

proc setMaxVisibleItems*(self: gen_qcompleter_types.QCompleter, maxItems: cint): void =
  fcQCompleter_setMaxVisibleItems(self.h, maxItems)

proc completionCount*(self: gen_qcompleter_types.QCompleter, ): cint =
  fcQCompleter_completionCount(self.h)

proc setCurrentRow*(self: gen_qcompleter_types.QCompleter, row: cint): bool =
  fcQCompleter_setCurrentRow(self.h, row)

proc currentRow*(self: gen_qcompleter_types.QCompleter, ): cint =
  fcQCompleter_currentRow(self.h)

proc currentIndex*(self: gen_qcompleter_types.QCompleter, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQCompleter_currentIndex(self.h))

proc currentCompletion*(self: gen_qcompleter_types.QCompleter, ): string =
  let v_ms = fcQCompleter_currentCompletion(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc completionModel*(self: gen_qcompleter_types.QCompleter, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQCompleter_completionModel(self.h))

proc completionPrefix*(self: gen_qcompleter_types.QCompleter, ): string =
  let v_ms = fcQCompleter_completionPrefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCompletionPrefix*(self: gen_qcompleter_types.QCompleter, prefix: string): void =
  fcQCompleter_setCompletionPrefix(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc complete*(self: gen_qcompleter_types.QCompleter, ): void =
  fcQCompleter_complete(self.h)

proc setWrapAround*(self: gen_qcompleter_types.QCompleter, wrap: bool): void =
  fcQCompleter_setWrapAround(self.h, wrap)

proc pathFromIndex*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fcQCompleter_pathFromIndex(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc splitPath*(self: gen_qcompleter_types.QCompleter, path: string): seq[string] =
  var v_ma = fcQCompleter_splitPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc activated*(self: gen_qcompleter_types.QCompleter, text: string): void =
  fcQCompleter_activated(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QCompleteractivatedSlot* = proc(text: string)
proc miqt_exec_callback_QCompleter_activated(slot: int, text: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QCompleteractivatedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc onactivated*(self: gen_qcompleter_types.QCompleter, slot: QCompleteractivatedSlot) =
  var tmp = new QCompleteractivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_activated(self.h, cast[int](addr tmp[]))

proc activated*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQCompleter_activatedWithIndex(self.h, index.h)

type QCompleteractivatedWithIndexSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QCompleter_activatedWithIndex(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QCompleteractivatedWithIndexSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onactivated*(self: gen_qcompleter_types.QCompleter, slot: QCompleteractivatedWithIndexSlot) =
  var tmp = new QCompleteractivatedWithIndexSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_activatedWithIndex(self.h, cast[int](addr tmp[]))

proc highlighted*(self: gen_qcompleter_types.QCompleter, text: string): void =
  fcQCompleter_highlighted(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QCompleterhighlightedSlot* = proc(text: string)
proc miqt_exec_callback_QCompleter_highlighted(slot: int, text: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QCompleterhighlightedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc onhighlighted*(self: gen_qcompleter_types.QCompleter, slot: QCompleterhighlightedSlot) =
  var tmp = new QCompleterhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_highlighted(self.h, cast[int](addr tmp[]))

proc highlighted*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQCompleter_highlightedWithIndex(self.h, index.h)

type QCompleterhighlightedWithIndexSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QCompleter_highlightedWithIndex(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QCompleterhighlightedWithIndexSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onhighlighted*(self: gen_qcompleter_types.QCompleter, slot: QCompleterhighlightedWithIndexSlot) =
  var tmp = new QCompleterhighlightedWithIndexSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_connect_highlightedWithIndex(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcompleter_types.QCompleter, s: cstring, c: cstring): string =
  let v_ms = fcQCompleter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcompleter_types.QCompleter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCompleter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc complete*(self: gen_qcompleter_types.QCompleter, rect: gen_qrect_types.QRect): void =
  fcQCompleter_complete1(self.h, rect.h)

proc QCompletermetaObject*(self: gen_qcompleter_types.QCompleter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQCompleter_virtualbase_metaObject(self.h))

type QCompletermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcompleter_types.QCompleter, slot: QCompletermetaObjectProc) =
  # TODO check subclass
  var tmp = new QCompletermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_metaObject(self: ptr cQCompleter, slot: int): pointer {.exportc: "miqt_exec_callback_QCompleter_metaObject ".} =
  var nimfunc = cast[ptr QCompletermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCompletermetacast*(self: gen_qcompleter_types.QCompleter, param1: cstring): pointer =
  fQCompleter_virtualbase_metacast(self.h, param1)

type QCompletermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcompleter_types.QCompleter, slot: QCompletermetacastProc) =
  # TODO check subclass
  var tmp = new QCompletermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_metacast(self: ptr cQCompleter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCompleter_metacast ".} =
  var nimfunc = cast[ptr QCompletermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCompletermetacall*(self: gen_qcompleter_types.QCompleter, param1: cint, param2: cint, param3: pointer): cint =
  fQCompleter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCompletermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcompleter_types.QCompleter, slot: QCompletermetacallProc) =
  # TODO check subclass
  var tmp = new QCompletermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_metacall(self: ptr cQCompleter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCompleter_metacall ".} =
  var nimfunc = cast[ptr QCompletermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCompleterpathFromIndex*(self: gen_qcompleter_types.QCompleter, index: gen_qabstractitemmodel_types.QModelIndex): string =
  let v_ms = fQCompleter_virtualbase_pathFromIndex(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QCompleterpathFromIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): string
proc onpathFromIndex*(self: gen_qcompleter_types.QCompleter, slot: QCompleterpathFromIndexProc) =
  # TODO check subclass
  var tmp = new QCompleterpathFromIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_pathFromIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_pathFromIndex(self: ptr cQCompleter, slot: int, index: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QCompleter_pathFromIndex ".} =
  var nimfunc = cast[ptr QCompleterpathFromIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QCompletersplitPath*(self: gen_qcompleter_types.QCompleter, path: string): seq[string] =
  var v_ma = fQCompleter_virtualbase_splitPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QCompletersplitPathProc* = proc(path: string): seq[string]
proc onsplitPath*(self: gen_qcompleter_types.QCompleter, slot: QCompletersplitPathProc) =
  # TODO check subclass
  var tmp = new QCompletersplitPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_splitPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_splitPath(self: ptr cQCompleter, slot: int, path: struct_miqt_string): struct_miqt_array {.exportc: "miqt_exec_callback_QCompleter_splitPath ".} =
  var nimfunc = cast[ptr QCompletersplitPathProc](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QCompletereventFilter*(self: gen_qcompleter_types.QCompleter, o: gen_qobject_types.QObject, e: gen_qcoreevent_types.QEvent): bool =
  fQCompleter_virtualbase_eventFilter(self.h, o.h, e.h)

type QCompletereventFilterProc* = proc(o: gen_qobject_types.QObject, e: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcompleter_types.QCompleter, slot: QCompletereventFilterProc) =
  # TODO check subclass
  var tmp = new QCompletereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_eventFilter(self: ptr cQCompleter, slot: int, o: pointer, e: pointer): bool {.exportc: "miqt_exec_callback_QCompleter_eventFilter ".} =
  var nimfunc = cast[ptr QCompletereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: o)

  let slotval2 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCompleterevent*(self: gen_qcompleter_types.QCompleter, param1: gen_qcoreevent_types.QEvent): bool =
  fQCompleter_virtualbase_event(self.h, param1.h)

type QCompletereventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcompleter_types.QCompleter, slot: QCompletereventProc) =
  # TODO check subclass
  var tmp = new QCompletereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_event(self: ptr cQCompleter, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QCompleter_event ".} =
  var nimfunc = cast[ptr QCompletereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCompletertimerEvent*(self: gen_qcompleter_types.QCompleter, event: gen_qcoreevent_types.QTimerEvent): void =
  fQCompleter_virtualbase_timerEvent(self.h, event.h)

type QCompletertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcompleter_types.QCompleter, slot: QCompletertimerEventProc) =
  # TODO check subclass
  var tmp = new QCompletertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_timerEvent(self: ptr cQCompleter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCompleter_timerEvent ".} =
  var nimfunc = cast[ptr QCompletertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCompleterchildEvent*(self: gen_qcompleter_types.QCompleter, event: gen_qcoreevent_types.QChildEvent): void =
  fQCompleter_virtualbase_childEvent(self.h, event.h)

type QCompleterchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcompleter_types.QCompleter, slot: QCompleterchildEventProc) =
  # TODO check subclass
  var tmp = new QCompleterchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_childEvent(self: ptr cQCompleter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCompleter_childEvent ".} =
  var nimfunc = cast[ptr QCompleterchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCompletercustomEvent*(self: gen_qcompleter_types.QCompleter, event: gen_qcoreevent_types.QEvent): void =
  fQCompleter_virtualbase_customEvent(self.h, event.h)

type QCompletercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcompleter_types.QCompleter, slot: QCompletercustomEventProc) =
  # TODO check subclass
  var tmp = new QCompletercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_customEvent(self: ptr cQCompleter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCompleter_customEvent ".} =
  var nimfunc = cast[ptr QCompletercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCompleterconnectNotify*(self: gen_qcompleter_types.QCompleter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCompleter_virtualbase_connectNotify(self.h, signal.h)

type QCompleterconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcompleter_types.QCompleter, slot: QCompleterconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCompleterconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_connectNotify(self: ptr cQCompleter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCompleter_connectNotify ".} =
  var nimfunc = cast[ptr QCompleterconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCompleterdisconnectNotify*(self: gen_qcompleter_types.QCompleter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCompleter_virtualbase_disconnectNotify(self.h, signal.h)

type QCompleterdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcompleter_types.QCompleter, slot: QCompleterdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCompleterdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_disconnectNotify(self: ptr cQCompleter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCompleter_disconnectNotify ".} =
  var nimfunc = cast[ptr QCompleterdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcompleter_types.QCompleter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCompleter_staticMetaObject())
proc delete*(self: gen_qcompleter_types.QCompleter) =
  fcQCompleter_delete(self.h)
