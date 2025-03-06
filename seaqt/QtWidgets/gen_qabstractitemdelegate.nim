import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qabstractitemdelegate.cpp", cflags).}


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

proc fcQAbstractItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemDelegate_metaObject".}
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
proc fcQAbstractItemDelegate_paintingRoles(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemDelegate_paintingRoles".}
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
type cQAbstractItemDelegateVTable = object
  destructor*: proc(vtbl: ptr cQAbstractItemDelegateVTable, self: ptr cQAbstractItemDelegate) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createEditor*: proc(vtbl, self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  destroyEditor*: proc(vtbl, self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setEditorData*: proc(vtbl, self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setModelData*: proc(vtbl, self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometry*: proc(vtbl, self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  editorEvent*: proc(vtbl, self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  helpEvent*: proc(vtbl, self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintingRoles*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractItemDelegate_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemDelegate_virtualbase_metaObject".}
proc fcQAbstractItemDelegate_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemDelegate_virtualbase_metacast".}
proc fcQAbstractItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemDelegate_virtualbase_metacall".}
proc fcQAbstractItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_virtualbase_createEditor".}
proc fcQAbstractItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_destroyEditor".}
proc fcQAbstractItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_setEditorData".}
proc fcQAbstractItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_setModelData".}
proc fcQAbstractItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQAbstractItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_editorEvent".}
proc fcQAbstractItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_helpEvent".}
proc fcQAbstractItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemDelegate_virtualbase_paintingRoles".}
proc fcQAbstractItemDelegate_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_event".}
proc fcQAbstractItemDelegate_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractItemDelegate_virtualbase_eventFilter".}
proc fcQAbstractItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_timerEvent".}
proc fcQAbstractItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_childEvent".}
proc fcQAbstractItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_customEvent".}
proc fcQAbstractItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_connectNotify".}
proc fcQAbstractItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemDelegate_virtualbase_disconnectNotify".}
proc fcQAbstractItemDelegate_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractItemDelegate_protectedbase_sender".}
proc fcQAbstractItemDelegate_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractItemDelegate_protectedbase_senderSignalIndex".}
proc fcQAbstractItemDelegate_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractItemDelegate_protectedbase_receivers".}
proc fcQAbstractItemDelegate_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractItemDelegate_protectedbase_isSignalConnected".}
proc fcQAbstractItemDelegate_new(vtbl: pointer, ): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new".}
proc fcQAbstractItemDelegate_new2(vtbl: pointer, parent: pointer): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new2".}
proc fcQAbstractItemDelegate_staticMetaObject(): pointer {.importc: "QAbstractItemDelegate_staticMetaObject".}
proc fcQAbstractItemDelegate_delete(self: pointer) {.importc: "QAbstractItemDelegate_delete".}

proc metaObject*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_metaObject(self.h))

proc metacast*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cstring): pointer =
  fcQAbstractItemDelegate_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring): string =
  let v_ms = fcQAbstractItemDelegate_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring): string =
  let v_ms = fcQAbstractItemDelegate_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paint*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemDelegate_sizeHint(self.h, option.h, index.h))

proc createEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractItemDelegate_createEditor(self.h, parent.h, option.h, index.h))

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

proc elidedText*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, fontMetrics: gen_qfontmetrics_types.QFontMetrics, width: cint, mode: cint, text: string): string =
  let v_ms = fcQAbstractItemDelegate_elidedText(fontMetrics.h, width, cint(mode), struct_miqt_string(data: text, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc helpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc paintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): seq[cint] =
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
proc miqt_exec_callback_cQAbstractItemDelegate_commitData(slot: int, editor: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecommitDataSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractItemDelegate_commitData_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatecommitDataSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncommitData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecommitDataSlot) =
  var tmp = new QAbstractItemDelegatecommitDataSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_commitData(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractItemDelegate_commitData, miqt_exec_callback_cQAbstractItemDelegate_commitData_release)

proc closeEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemDelegate_closeEditor(self.h, editor.h)

type QAbstractItemDelegatecloseEditorSlot* = proc(editor: gen_qwidget_types.QWidget)
proc miqt_exec_callback_cQAbstractItemDelegate_closeEditor(slot: int, editor: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecloseEditorSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractItemDelegate_closeEditor_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatecloseEditorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncloseEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecloseEditorSlot) =
  var tmp = new QAbstractItemDelegatecloseEditorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_closeEditor(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractItemDelegate_closeEditor, miqt_exec_callback_cQAbstractItemDelegate_closeEditor_release)

proc sizeHintChanged*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_sizeHintChanged(self.h, param1.h)

type QAbstractItemDelegatesizeHintChangedSlot* = proc(param1: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQAbstractItemDelegate_sizeHintChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatesizeHintChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractItemDelegate_sizeHintChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatesizeHintChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsizeHintChanged*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatesizeHintChangedSlot) =
  var tmp = new QAbstractItemDelegatesizeHintChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_sizeHintChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractItemDelegate_sizeHintChanged, miqt_exec_callback_cQAbstractItemDelegate_sizeHintChanged_release)

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemDelegate_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemDelegate_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc closeEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQAbstractItemDelegate_closeEditor2(self.h, editor.h, cint(hint))

type QAbstractItemDelegatecloseEditor2Slot* = proc(editor: gen_qwidget_types.QWidget, hint: cint)
proc miqt_exec_callback_cQAbstractItemDelegate_closeEditor2(slot: int, editor: pointer, hint: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecloseEditor2Slot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQAbstractItemDelegate_closeEditor2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemDelegatecloseEditor2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncloseEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecloseEditor2Slot) =
  var tmp = new QAbstractItemDelegatecloseEditor2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_closeEditor2(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractItemDelegate_closeEditor2, miqt_exec_callback_cQAbstractItemDelegate_closeEditor2_release)

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
type QAbstractItemDelegateVTable* = object
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
proc QAbstractItemDelegatemetaObject*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractItemDelegate_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractItemDelegatemetacast*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cstring): pointer =
  fcQAbstractItemDelegate_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractItemDelegate_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractItemDelegatemetacall*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractItemDelegate_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAbstractItemDelegate_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQAbstractItemDelegate_sizeHint(vtbl: pointer, self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.h

proc QAbstractItemDelegatecreateEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

proc miqt_exec_callback_cQAbstractItemDelegate_createEditor(vtbl: pointer, self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].createEditor(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QAbstractItemDelegatedestroyEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

proc miqt_exec_callback_cQAbstractItemDelegate_destroyEditor(vtbl: pointer, self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].destroyEditor(self, slotval1, slotval2)

proc QAbstractItemDelegatesetEditorData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

proc miqt_exec_callback_cQAbstractItemDelegate_setEditorData(vtbl: pointer, self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setEditorData(self, slotval1, slotval2)

proc QAbstractItemDelegatesetModelData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

proc miqt_exec_callback_cQAbstractItemDelegate_setModelData(vtbl: pointer, self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setModelData(self, slotval1, slotval2, slotval3)

proc QAbstractItemDelegateupdateEditorGeometry*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc miqt_exec_callback_cQAbstractItemDelegate_updateEditorGeometry(vtbl: pointer, self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].updateEditorGeometry(self, slotval1, slotval2, slotval3)

proc QAbstractItemDelegateeditorEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc miqt_exec_callback_cQAbstractItemDelegate_editorEvent(vtbl: pointer, self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].editorEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractItemDelegatehelpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc miqt_exec_callback_cQAbstractItemDelegate_helpEvent(vtbl: pointer, self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qevent_types.QHelpEvent(h: event)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].helpEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QAbstractItemDelegatepaintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): seq[cint] =
  var v_ma = fcQAbstractItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQAbstractItemDelegate_paintingRoles(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  var virtualReturn = vtbl[].paintingRoles(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractItemDelegateevent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemDelegate_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemDelegate_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractItemDelegateeventFilter*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemDelegate_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractItemDelegate_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractItemDelegatetimerEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractItemDelegate_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemDelegate_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractItemDelegatechildEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractItemDelegate_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemDelegate_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractItemDelegatecustomEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemDelegate_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemDelegate_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractItemDelegateconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemDelegate_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractItemDelegate_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractItemDelegatedisconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractItemDelegate_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemDelegateVTable](vtbl)
  let self = QAbstractItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractItemDelegate_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): cint =
  fcQAbstractItemDelegate_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: cstring): cint =
  fcQAbstractItemDelegate_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractItemDelegate_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate,
    vtbl: ref QAbstractItemDelegateVTable = nil): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  let vtbl = if vtbl == nil: new QAbstractItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractItemDelegateVTable, _: ptr cQAbstractItemDelegate) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemDelegateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractItemDelegate_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractItemDelegate_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractItemDelegate_metacall
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQAbstractItemDelegate_paint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractItemDelegate_sizeHint
  if not isNil(vtbl.createEditor):
    vtbl[].vtbl.createEditor = miqt_exec_callback_cQAbstractItemDelegate_createEditor
  if not isNil(vtbl.destroyEditor):
    vtbl[].vtbl.destroyEditor = miqt_exec_callback_cQAbstractItemDelegate_destroyEditor
  if not isNil(vtbl.setEditorData):
    vtbl[].vtbl.setEditorData = miqt_exec_callback_cQAbstractItemDelegate_setEditorData
  if not isNil(vtbl.setModelData):
    vtbl[].vtbl.setModelData = miqt_exec_callback_cQAbstractItemDelegate_setModelData
  if not isNil(vtbl.updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = miqt_exec_callback_cQAbstractItemDelegate_updateEditorGeometry
  if not isNil(vtbl.editorEvent):
    vtbl[].vtbl.editorEvent = miqt_exec_callback_cQAbstractItemDelegate_editorEvent
  if not isNil(vtbl.helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQAbstractItemDelegate_helpEvent
  if not isNil(vtbl.paintingRoles):
    vtbl[].vtbl.paintingRoles = miqt_exec_callback_cQAbstractItemDelegate_paintingRoles
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractItemDelegate_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractItemDelegate_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractItemDelegate_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractItemDelegate_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractItemDelegate_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractItemDelegate_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractItemDelegate_disconnectNotify
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemDelegate_new(addr(vtbl[]), ))

proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractItemDelegateVTable = nil): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  let vtbl = if vtbl == nil: new QAbstractItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractItemDelegateVTable, _: ptr cQAbstractItemDelegate) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemDelegateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractItemDelegate_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractItemDelegate_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractItemDelegate_metacall
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQAbstractItemDelegate_paint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractItemDelegate_sizeHint
  if not isNil(vtbl.createEditor):
    vtbl[].vtbl.createEditor = miqt_exec_callback_cQAbstractItemDelegate_createEditor
  if not isNil(vtbl.destroyEditor):
    vtbl[].vtbl.destroyEditor = miqt_exec_callback_cQAbstractItemDelegate_destroyEditor
  if not isNil(vtbl.setEditorData):
    vtbl[].vtbl.setEditorData = miqt_exec_callback_cQAbstractItemDelegate_setEditorData
  if not isNil(vtbl.setModelData):
    vtbl[].vtbl.setModelData = miqt_exec_callback_cQAbstractItemDelegate_setModelData
  if not isNil(vtbl.updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = miqt_exec_callback_cQAbstractItemDelegate_updateEditorGeometry
  if not isNil(vtbl.editorEvent):
    vtbl[].vtbl.editorEvent = miqt_exec_callback_cQAbstractItemDelegate_editorEvent
  if not isNil(vtbl.helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQAbstractItemDelegate_helpEvent
  if not isNil(vtbl.paintingRoles):
    vtbl[].vtbl.paintingRoles = miqt_exec_callback_cQAbstractItemDelegate_paintingRoles
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractItemDelegate_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractItemDelegate_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractItemDelegate_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractItemDelegate_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractItemDelegate_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractItemDelegate_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractItemDelegate_disconnectNotify
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemDelegate_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_staticMetaObject())
proc delete*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate) =
  fcQAbstractItemDelegate_delete(self.h)
