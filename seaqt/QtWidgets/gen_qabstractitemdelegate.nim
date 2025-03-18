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


{.compile("gen_qabstractitemdelegate.cpp", QtWidgetsCFlags).}


type QAbstractItemDelegateEndEditHintEnum* = distinct cint
template NoHint*(_: type QAbstractItemDelegateEndEditHintEnum): untyped = 0
template EditNextItem*(_: type QAbstractItemDelegateEndEditHintEnum): untyped = 1
template EditPreviousItem*(_: type QAbstractItemDelegateEndEditHintEnum): untyped = 2
template SubmitModelCache*(_: type QAbstractItemDelegateEndEditHintEnum): untyped = 3
template RevertModelCache*(_: type QAbstractItemDelegateEndEditHintEnum): untyped = 4


import ./gen_qabstractitemdelegate_types
export gen_qabstractitemdelegate_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractitemview_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qevent_types,
  gen_qfontmetrics_types,
  gen_qpainter_types,
  gen_qabstractitemview_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQAbstractItemDelegate*{.exportc: "QAbstractItemDelegate", incompleteStruct.} = object

proc fcQAbstractItemDelegate_metaObject(self: pointer): pointer {.importc: "QAbstractItemDelegate_metaObject".}
proc fcQAbstractItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemDelegate_metacast".}
proc fcQAbstractItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemDelegate_metacall".}
proc fcQAbstractItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_tr".}
proc fcQAbstractItemDelegate_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_trUtf8".}
proc fcQAbstractItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_paint".}
proc fcQAbstractItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_sizeHint".}
proc fcQAbstractItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_createEditor".}
proc fcQAbstractItemDelegate_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_destroyEditor".}
proc fcQAbstractItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_setEditorData".}
proc fcQAbstractItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_setModelData".}
proc fcQAbstractItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_updateEditorGeometry".}
proc fcQAbstractItemDelegate_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_editorEvent".}
proc fcQAbstractItemDelegate_elidedText(fontMetrics: pointer, width: cint, mode: cint, text: struct_miqt_string): struct_miqt_string {.importc: "QAbstractItemDelegate_elidedText".}
proc fcQAbstractItemDelegate_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_helpEvent".}
proc fcQAbstractItemDelegate_paintingRoles(self: pointer): struct_miqt_array {.importc: "QAbstractItemDelegate_paintingRoles".}
proc fcQAbstractItemDelegate_commitData(self: pointer, editor: pointer): void {.importc: "QAbstractItemDelegate_commitData".}
proc fcQAbstractItemDelegate_connect_commitData(self: pointer, slot: int, callback: proc (slot: int, editor: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemDelegate_connect_commitData".}
proc fcQAbstractItemDelegate_closeEditor(self: pointer, editor: pointer): void {.importc: "QAbstractItemDelegate_closeEditor".}
proc fcQAbstractItemDelegate_connect_closeEditor(self: pointer, slot: int, callback: proc (slot: int, editor: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemDelegate_connect_closeEditor".}
proc fcQAbstractItemDelegate_sizeHintChanged(self: pointer, param1: pointer): void {.importc: "QAbstractItemDelegate_sizeHintChanged".}
proc fcQAbstractItemDelegate_connect_sizeHintChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemDelegate_connect_sizeHintChanged".}
proc fcQAbstractItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_tr2".}
proc fcQAbstractItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemDelegate_tr3".}
proc fcQAbstractItemDelegate_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_trUtf82".}
proc fcQAbstractItemDelegate_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemDelegate_trUtf83".}
proc fcQAbstractItemDelegate_closeEditor2(self: pointer, editor: pointer, hint: cint): void {.importc: "QAbstractItemDelegate_closeEditor2".}
proc fcQAbstractItemDelegate_connect_closeEditor2(self: pointer, slot: int, callback: proc (slot: int, editor: pointer, hint: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemDelegate_connect_closeEditor2".}
proc fcQAbstractItemDelegate_vtbl(self: pointer): pointer {.importc: "QAbstractItemDelegate_vtbl".}
proc fcQAbstractItemDelegate_vdata(self: pointer): pointer {.importc: "QAbstractItemDelegate_vdata".}

type cQAbstractItemDelegateVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createEditor*: proc(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  destroyEditor*: proc(self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setEditorData*: proc(self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setModelData*: proc(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometry*: proc(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  editorEvent*: proc(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  helpEvent*: proc(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintingRoles*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractItemDelegate_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractItemDelegate_virtualbase_metaObject".}
proc fcQAbstractItemDelegate_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemDelegate_virtualbase_metacast".}
proc fcQAbstractItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemDelegate_virtualbase_metacall".}
proc fcQAbstractItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_virtualbase_createEditor".}
proc fcQAbstractItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_destroyEditor".}
proc fcQAbstractItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_setEditorData".}
proc fcQAbstractItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_setModelData".}
proc fcQAbstractItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQAbstractItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_editorEvent".}
proc fcQAbstractItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_helpEvent".}
proc fcQAbstractItemDelegate_virtualbase_paintingRoles(self: pointer): struct_miqt_array {.importc: "QAbstractItemDelegate_virtualbase_paintingRoles".}
proc fcQAbstractItemDelegate_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_event".}
proc fcQAbstractItemDelegate_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_eventFilter".}
proc fcQAbstractItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_timerEvent".}
proc fcQAbstractItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_childEvent".}
proc fcQAbstractItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_customEvent".}
proc fcQAbstractItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_connectNotify".}
proc fcQAbstractItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_disconnectNotify".}
proc fcQAbstractItemDelegate_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractItemDelegate_protectedbase_sender".}
proc fcQAbstractItemDelegate_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractItemDelegate_protectedbase_senderSignalIndex".}
proc fcQAbstractItemDelegate_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractItemDelegate_protectedbase_receivers".}
proc fcQAbstractItemDelegate_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractItemDelegate_protectedbase_isSignalConnected".}
proc fcQAbstractItemDelegate_new(vtbl, vdata: pointer): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new".}
proc fcQAbstractItemDelegate_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new2".}
proc fcQAbstractItemDelegate_staticMetaObject(): pointer {.importc: "QAbstractItemDelegate_staticMetaObject".}

proc metaObject*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cstring): pointer =
  fcQAbstractItemDelegate_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring): string =
  let v_ms = fcQAbstractItemDelegate_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring): string =
  let v_ms = fcQAbstractItemDelegate_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc paint*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemDelegate_sizeHint(self.h, option.h, index.h), owned: true)

proc createEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractItemDelegate_createEditor(self.h, parent.h, option.h, index.h), owned: false)

proc destroyEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_destroyEditor(self.h, editor.h, index.h)

proc setEditorData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc editorEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc elidedText*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, fontMetrics: gen_qfontmetrics_types.QFontMetrics, width: cint, mode: cint, text: openArray[char]): string =
  let v_ms = fcQAbstractItemDelegate_elidedText(fontMetrics.h, width, cint(mode), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc helpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc paintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate): seq[cint] =
  var v_ma = fcQAbstractItemDelegate_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc commitData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemDelegate_commitData(self.h, editor.h)

type QAbstractItemDelegatecommitDataSlot* = proc(editor: gen_qwidget_types.QWidget)
proc fcQAbstractItemDelegate_slot_callback_commitData(slot: int, editor: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecommitDataSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)

  nimfunc[](slotval1)

proc fcQAbstractItemDelegate_slot_callback_commitData_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatecommitDataSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCommitData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecommitDataSlot) =
  var tmp = new QAbstractItemDelegatecommitDataSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_commitData(self.h, cast[int](addr tmp[]), fcQAbstractItemDelegate_slot_callback_commitData, fcQAbstractItemDelegate_slot_callback_commitData_release)

proc closeEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemDelegate_closeEditor(self.h, editor.h)

type QAbstractItemDelegatecloseEditorSlot* = proc(editor: gen_qwidget_types.QWidget)
proc fcQAbstractItemDelegate_slot_callback_closeEditor(slot: int, editor: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecloseEditorSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)

  nimfunc[](slotval1)

proc fcQAbstractItemDelegate_slot_callback_closeEditor_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatecloseEditorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCloseEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecloseEditorSlot) =
  var tmp = new QAbstractItemDelegatecloseEditorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_closeEditor(self.h, cast[int](addr tmp[]), fcQAbstractItemDelegate_slot_callback_closeEditor, fcQAbstractItemDelegate_slot_callback_closeEditor_release)

proc sizeHintChanged*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_sizeHintChanged(self.h, param1.h)

type QAbstractItemDelegatesizeHintChangedSlot* = proc(param1: gen_qabstractitemmodel_types.QModelIndex)
proc fcQAbstractItemDelegate_slot_callback_sizeHintChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatesizeHintChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQAbstractItemDelegate_slot_callback_sizeHintChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatesizeHintChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSizeHintChanged*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatesizeHintChangedSlot) =
  var tmp = new QAbstractItemDelegatesizeHintChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_sizeHintChanged(self.h, cast[int](addr tmp[]), fcQAbstractItemDelegate_slot_callback_sizeHintChanged, fcQAbstractItemDelegate_slot_callback_sizeHintChanged_release)

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemDelegate_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemDelegate_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc closeEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQAbstractItemDelegate_closeEditor2(self.h, editor.h, cint(hint))

type QAbstractItemDelegatecloseEditor2Slot* = proc(editor: gen_qwidget_types.QWidget, hint: cint)
proc fcQAbstractItemDelegate_slot_callback_closeEditor2(slot: int, editor: pointer, hint: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecloseEditor2Slot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc fcQAbstractItemDelegate_slot_callback_closeEditor2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatecloseEditor2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCloseEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecloseEditor2Slot) =
  var tmp = new QAbstractItemDelegatecloseEditor2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_closeEditor2(self.h, cast[int](addr tmp[]), fcQAbstractItemDelegate_slot_callback_closeEditor2, fcQAbstractItemDelegate_slot_callback_closeEditor2_release)

type QAbstractItemDelegatemetaObjectProc* = proc(self: QAbstractItemDelegate): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractItemDelegatemetacastProc* = proc(self: QAbstractItemDelegate, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractItemDelegatemetacallProc* = proc(self: QAbstractItemDelegate, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractItemDelegatepaintProc* = proc(self: QAbstractItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemDelegatesizeHintProc* = proc(self: QAbstractItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemDelegatecreateEditorProc* = proc(self: QAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QAbstractItemDelegatedestroyEditorProc* = proc(self: QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemDelegatesetEditorDataProc* = proc(self: QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemDelegatesetModelDataProc* = proc(self: QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemDelegateupdateEditorGeometryProc* = proc(self: QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemDelegateeditorEventProc* = proc(self: QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemDelegatehelpEventProc* = proc(self: QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemDelegatepaintingRolesProc* = proc(self: QAbstractItemDelegate): seq[cint] {.raises: [], gcsafe.}
type QAbstractItemDelegateeventProc* = proc(self: QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemDelegateeventFilterProc* = proc(self: QAbstractItemDelegate, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemDelegatetimerEventProc* = proc(self: QAbstractItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractItemDelegatechildEventProc* = proc(self: QAbstractItemDelegate, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractItemDelegatecustomEventProc* = proc(self: QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemDelegateconnectNotifyProc* = proc(self: QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemDelegatedisconnectNotifyProc* = proc(self: QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAbstractItemDelegateVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractItemDelegateVTable
  metaObject*: QAbstractItemDelegatemetaObjectProc
  metacast*: QAbstractItemDelegatemetacastProc
  metacall*: QAbstractItemDelegatemetacallProc
  paint*: QAbstractItemDelegatepaintProc
  sizeHint*: QAbstractItemDelegatesizeHintProc
  createEditor*: QAbstractItemDelegatecreateEditorProc
  destroyEditor*: QAbstractItemDelegatedestroyEditorProc
  setEditorData*: QAbstractItemDelegatesetEditorDataProc
  setModelData*: QAbstractItemDelegatesetModelDataProc
  updateEditorGeometry*: QAbstractItemDelegateupdateEditorGeometryProc
  editorEvent*: QAbstractItemDelegateeditorEventProc
  helpEvent*: QAbstractItemDelegatehelpEventProc
  paintingRoles*: QAbstractItemDelegatepaintingRolesProc
  event*: QAbstractItemDelegateeventProc
  eventFilter*: QAbstractItemDelegateeventFilterProc
  timerEvent*: QAbstractItemDelegatetimerEventProc
  childEvent*: QAbstractItemDelegatechildEventProc
  customEvent*: QAbstractItemDelegatecustomEventProc
  connectNotify*: QAbstractItemDelegateconnectNotifyProc
  disconnectNotify*: QAbstractItemDelegatedisconnectNotifyProc

proc QAbstractItemDelegatemetaObject*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_virtualbase_metaObject(self.h), owned: false)

proc QAbstractItemDelegatemetacast*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cstring): pointer =
  fcQAbstractItemDelegate_virtualbase_metacast(self.h, param1)

proc QAbstractItemDelegatemetacall*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAbstractItemDelegatecreateEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h), owned: false)

proc QAbstractItemDelegatedestroyEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

proc QAbstractItemDelegatesetEditorData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

proc QAbstractItemDelegatesetModelData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

proc QAbstractItemDelegateupdateEditorGeometry*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc QAbstractItemDelegateeditorEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc QAbstractItemDelegatehelpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc QAbstractItemDelegatepaintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate): seq[cint] =
  var v_ma = fcQAbstractItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc QAbstractItemDelegateevent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemDelegate_virtualbase_event(self.h, event.h)

proc QAbstractItemDelegateeventFilter*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemDelegate_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAbstractItemDelegatetimerEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractItemDelegate_virtualbase_timerEvent(self.h, event.h)

proc QAbstractItemDelegatechildEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractItemDelegate_virtualbase_childEvent(self.h, event.h)

proc QAbstractItemDelegatecustomEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemDelegate_virtualbase_customEvent(self.h, event.h)

proc QAbstractItemDelegateconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemDelegate_virtualbase_connectNotify(self.h, signal.h)

proc QAbstractItemDelegatedisconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAbstractItemDelegate_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractItemDelegate_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAbstractItemDelegate_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractItemDelegate_vtable_callback_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc fcQAbstractItemDelegate_vtable_callback_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractItemDelegate_vtable_callback_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].createEditor(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractItemDelegate_vtable_callback_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].destroyEditor(self, slotval1, slotval2)

proc fcQAbstractItemDelegate_vtable_callback_setEditorData(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setEditorData(self, slotval1, slotval2)

proc fcQAbstractItemDelegate_vtable_callback_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setModelData(self, slotval1, slotval2, slotval3)

proc fcQAbstractItemDelegate_vtable_callback_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].updateEditorGeometry(self, slotval1, slotval2, slotval3)

proc fcQAbstractItemDelegate_vtable_callback_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].editorEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQAbstractItemDelegate_vtable_callback_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qevent_types.QHelpEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].helpEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQAbstractItemDelegate_vtable_callback_paintingRoles(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  var virtualReturn = vtbl[].paintingRoles(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQAbstractItemDelegate_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAbstractItemDelegate_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAbstractItemDelegate_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAbstractItemDelegate_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAbstractItemDelegate_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAbstractItemDelegate_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAbstractItemDelegate_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractItemDelegate* {.inheritable.} = ref object of QAbstractItemDelegate
  vtbl*: cQAbstractItemDelegateVTable

method metaObject*(self: VirtualQAbstractItemDelegate): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractItemDelegatemetaObject(self[])
method metacast*(self: VirtualQAbstractItemDelegate, param1: cstring): pointer {.base.} =
  QAbstractItemDelegatemetacast(self[], param1)
method metacall*(self: VirtualQAbstractItemDelegate, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractItemDelegatemetacall(self[], param1, param2, param3)
method paint*(self: VirtualQAbstractItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  raiseAssert("missing implementation of QAbstractItemDelegate.paint")
method sizeHint*(self: VirtualQAbstractItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QAbstractItemDelegate.sizeHint")
method createEditor*(self: VirtualQAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget {.base.} =
  QAbstractItemDelegatecreateEditor(self[], parent, option, index)
method destroyEditor*(self: VirtualQAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemDelegatedestroyEditor(self[], editor, index)
method setEditorData*(self: VirtualQAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemDelegatesetEditorData(self[], editor, index)
method setModelData*(self: VirtualQAbstractItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemDelegatesetModelData(self[], editor, model, index)
method updateEditorGeometry*(self: VirtualQAbstractItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemDelegateupdateEditorGeometry(self[], editor, option, index)
method editorEvent*(self: VirtualQAbstractItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemDelegateeditorEvent(self[], event, model, option, index)
method helpEvent*(self: VirtualQAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QAbstractItemDelegatehelpEvent(self[], event, view, option, index)
method paintingRoles*(self: VirtualQAbstractItemDelegate): seq[cint] {.base.} =
  QAbstractItemDelegatepaintingRoles(self[])
method event*(self: VirtualQAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemDelegateevent(self[], event)
method eventFilter*(self: VirtualQAbstractItemDelegate, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemDelegateeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAbstractItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractItemDelegatetimerEvent(self[], event)
method childEvent*(self: VirtualQAbstractItemDelegate, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractItemDelegatechildEvent(self[], event)
method customEvent*(self: VirtualQAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractItemDelegatecustomEvent(self[], event)
method connectNotify*(self: VirtualQAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractItemDelegateconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractItemDelegatedisconnectNotify(self[], signal)

proc fcQAbstractItemDelegate_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractItemDelegate_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAbstractItemDelegate_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractItemDelegate_method_callback_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

proc fcQAbstractItemDelegate_method_callback_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractItemDelegate_method_callback_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.createEditor(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractItemDelegate_method_callback_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.destroyEditor(slotval1, slotval2)

proc fcQAbstractItemDelegate_method_callback_setEditorData(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setEditorData(slotval1, slotval2)

proc fcQAbstractItemDelegate_method_callback_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setModelData(slotval1, slotval2, slotval3)

proc fcQAbstractItemDelegate_method_callback_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.updateEditorGeometry(slotval1, slotval2, slotval3)

proc fcQAbstractItemDelegate_method_callback_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.editorEvent(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQAbstractItemDelegate_method_callback_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qevent_types.QHelpEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.helpEvent(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQAbstractItemDelegate_method_callback_paintingRoles(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  var virtualReturn = inst.paintingRoles()
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQAbstractItemDelegate_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAbstractItemDelegate_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAbstractItemDelegate_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAbstractItemDelegate_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAbstractItemDelegate_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAbstractItemDelegate_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAbstractItemDelegate_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemDelegate](fcQAbstractItemDelegate_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractItemDelegate_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate): cint =
  fcQAbstractItemDelegate_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: cstring): cint =
  fcQAbstractItemDelegate_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractItemDelegate_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate,
    vtbl: ref QAbstractItemDelegateVTable = nil): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  let vtbl = if vtbl == nil: new QAbstractItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractItemDelegate_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractItemDelegate_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractItemDelegate_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQAbstractItemDelegate_vtable_callback_paint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractItemDelegate_vtable_callback_sizeHint
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = fcQAbstractItemDelegate_vtable_callback_createEditor
  if not isNil(vtbl[].destroyEditor):
    vtbl[].vtbl.destroyEditor = fcQAbstractItemDelegate_vtable_callback_destroyEditor
  if not isNil(vtbl[].setEditorData):
    vtbl[].vtbl.setEditorData = fcQAbstractItemDelegate_vtable_callback_setEditorData
  if not isNil(vtbl[].setModelData):
    vtbl[].vtbl.setModelData = fcQAbstractItemDelegate_vtable_callback_setModelData
  if not isNil(vtbl[].updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = fcQAbstractItemDelegate_vtable_callback_updateEditorGeometry
  if not isNil(vtbl[].editorEvent):
    vtbl[].vtbl.editorEvent = fcQAbstractItemDelegate_vtable_callback_editorEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = fcQAbstractItemDelegate_vtable_callback_helpEvent
  if not isNil(vtbl[].paintingRoles):
    vtbl[].vtbl.paintingRoles = fcQAbstractItemDelegate_vtable_callback_paintingRoles
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractItemDelegate_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractItemDelegate_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractItemDelegate_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractItemDelegate_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractItemDelegate_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractItemDelegate_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractItemDelegate_vtable_callback_disconnectNotify
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemDelegate_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractItemDelegateVTable = nil): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  let vtbl = if vtbl == nil: new QAbstractItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemDelegateVTable](fcQAbstractItemDelegate_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractItemDelegate_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractItemDelegate_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractItemDelegate_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQAbstractItemDelegate_vtable_callback_paint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractItemDelegate_vtable_callback_sizeHint
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = fcQAbstractItemDelegate_vtable_callback_createEditor
  if not isNil(vtbl[].destroyEditor):
    vtbl[].vtbl.destroyEditor = fcQAbstractItemDelegate_vtable_callback_destroyEditor
  if not isNil(vtbl[].setEditorData):
    vtbl[].vtbl.setEditorData = fcQAbstractItemDelegate_vtable_callback_setEditorData
  if not isNil(vtbl[].setModelData):
    vtbl[].vtbl.setModelData = fcQAbstractItemDelegate_vtable_callback_setModelData
  if not isNil(vtbl[].updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = fcQAbstractItemDelegate_vtable_callback_updateEditorGeometry
  if not isNil(vtbl[].editorEvent):
    vtbl[].vtbl.editorEvent = fcQAbstractItemDelegate_vtable_callback_editorEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = fcQAbstractItemDelegate_vtable_callback_helpEvent
  if not isNil(vtbl[].paintingRoles):
    vtbl[].vtbl.paintingRoles = fcQAbstractItemDelegate_vtable_callback_paintingRoles
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractItemDelegate_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractItemDelegate_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractItemDelegate_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractItemDelegate_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractItemDelegate_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractItemDelegate_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractItemDelegate_vtable_callback_disconnectNotify
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemDelegate_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractItemDelegate_mvtbl = cQAbstractItemDelegateVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractItemDelegate()[])](self.fcQAbstractItemDelegate_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAbstractItemDelegate_method_callback_metaObject,
  metacast: fcQAbstractItemDelegate_method_callback_metacast,
  metacall: fcQAbstractItemDelegate_method_callback_metacall,
  paint: fcQAbstractItemDelegate_method_callback_paint,
  sizeHint: fcQAbstractItemDelegate_method_callback_sizeHint,
  createEditor: fcQAbstractItemDelegate_method_callback_createEditor,
  destroyEditor: fcQAbstractItemDelegate_method_callback_destroyEditor,
  setEditorData: fcQAbstractItemDelegate_method_callback_setEditorData,
  setModelData: fcQAbstractItemDelegate_method_callback_setModelData,
  updateEditorGeometry: fcQAbstractItemDelegate_method_callback_updateEditorGeometry,
  editorEvent: fcQAbstractItemDelegate_method_callback_editorEvent,
  helpEvent: fcQAbstractItemDelegate_method_callback_helpEvent,
  paintingRoles: fcQAbstractItemDelegate_method_callback_paintingRoles,
  event: fcQAbstractItemDelegate_method_callback_event,
  eventFilter: fcQAbstractItemDelegate_method_callback_eventFilter,
  timerEvent: fcQAbstractItemDelegate_method_callback_timerEvent,
  childEvent: fcQAbstractItemDelegate_method_callback_childEvent,
  customEvent: fcQAbstractItemDelegate_method_callback_customEvent,
  connectNotify: fcQAbstractItemDelegate_method_callback_connectNotify,
  disconnectNotify: fcQAbstractItemDelegate_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate,
    inst: VirtualQAbstractItemDelegate) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractItemDelegate_new(addr(cQAbstractItemDelegate_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractItemDelegate) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractItemDelegate_new2(addr(cQAbstractItemDelegate_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_staticMetaObject())
