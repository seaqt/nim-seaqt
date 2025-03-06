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
  gen_qpainter_types,
  gen_qabstractitemview_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQAbstractItemDelegate*{.exportc: "QAbstractItemDelegate", incompleteStruct.} = object

proc fcQAbstractItemDelegate_new(): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new".}
proc fcQAbstractItemDelegate_new2(parent: pointer): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new2".}
proc fcQAbstractItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemDelegate_metaObject".}
proc fcQAbstractItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemDelegate_metacast".}
proc fcQAbstractItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_tr".}
proc fcQAbstractItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_paint".}
proc fcQAbstractItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_sizeHint".}
proc fcQAbstractItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_createEditor".}
proc fcQAbstractItemDelegate_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_destroyEditor".}
proc fcQAbstractItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_setEditorData".}
proc fcQAbstractItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_setModelData".}
proc fcQAbstractItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_updateEditorGeometry".}
proc fcQAbstractItemDelegate_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_editorEvent".}
proc fcQAbstractItemDelegate_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_helpEvent".}
proc fcQAbstractItemDelegate_paintingRoles(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemDelegate_paintingRoles".}
proc fcQAbstractItemDelegate_commitData(self: pointer, editor: pointer): void {.importc: "QAbstractItemDelegate_commitData".}
proc fcQAbstractItemDelegate_connect_commitData(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_commitData".}
proc fcQAbstractItemDelegate_closeEditor(self: pointer, editor: pointer): void {.importc: "QAbstractItemDelegate_closeEditor".}
proc fcQAbstractItemDelegate_connect_closeEditor(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_closeEditor".}
proc fcQAbstractItemDelegate_sizeHintChanged(self: pointer, param1: pointer): void {.importc: "QAbstractItemDelegate_sizeHintChanged".}
proc fcQAbstractItemDelegate_connect_sizeHintChanged(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_sizeHintChanged".}
proc fcQAbstractItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_tr2".}
proc fcQAbstractItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemDelegate_tr3".}
proc fcQAbstractItemDelegate_closeEditor2(self: pointer, editor: pointer, hint: cint): void {.importc: "QAbstractItemDelegate_closeEditor2".}
proc fcQAbstractItemDelegate_connect_closeEditor2(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_closeEditor2".}
proc fcQAbstractItemDelegate_override_virtual_paint(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_paint".}
proc fcQAbstractItemDelegate_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_sizeHint".}
proc fQAbstractItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer{.importc: "QAbstractItemDelegate_virtualbase_createEditor".}
proc fcQAbstractItemDelegate_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_createEditor".}
proc fQAbstractItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_destroyEditor".}
proc fcQAbstractItemDelegate_override_virtual_destroyEditor(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_destroyEditor".}
proc fQAbstractItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_setEditorData".}
proc fcQAbstractItemDelegate_override_virtual_setEditorData(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_setEditorData".}
proc fQAbstractItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_setModelData".}
proc fcQAbstractItemDelegate_override_virtual_setModelData(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_setModelData".}
proc fQAbstractItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQAbstractItemDelegate_override_virtual_updateEditorGeometry(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_updateEditorGeometry".}
proc fQAbstractItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_editorEvent".}
proc fcQAbstractItemDelegate_override_virtual_editorEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_editorEvent".}
proc fQAbstractItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_helpEvent".}
proc fcQAbstractItemDelegate_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_helpEvent".}
proc fQAbstractItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array{.importc: "QAbstractItemDelegate_virtualbase_paintingRoles".}
proc fcQAbstractItemDelegate_override_virtual_paintingRoles(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_paintingRoles".}
proc fQAbstractItemDelegate_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_event".}
proc fcQAbstractItemDelegate_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_event".}
proc fQAbstractItemDelegate_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_eventFilter".}
proc fcQAbstractItemDelegate_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_eventFilter".}
proc fQAbstractItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_timerEvent".}
proc fcQAbstractItemDelegate_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_timerEvent".}
proc fQAbstractItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_childEvent".}
proc fcQAbstractItemDelegate_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_childEvent".}
proc fQAbstractItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_customEvent".}
proc fcQAbstractItemDelegate_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_customEvent".}
proc fQAbstractItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_connectNotify".}
proc fcQAbstractItemDelegate_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_connectNotify".}
proc fQAbstractItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_disconnectNotify".}
proc fcQAbstractItemDelegate_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_disconnectNotify".}
proc fcQAbstractItemDelegate_delete(self: pointer) {.importc: "QAbstractItemDelegate_delete".}


func init*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, h: ptr cQAbstractItemDelegate): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  T(h: h)
proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate.init(fcQAbstractItemDelegate_new())

proc create*(T: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, parent: gen_qobject_types.QObject): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate.init(fcQAbstractItemDelegate_new2(parent.h))

proc metaObject*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemDelegate_metaObject(self.h))

proc metacast*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: cstring): pointer =
  fcQAbstractItemDelegate_metacast(self.h, param1)

proc tr*(_: type gen_qabstractitemdelegate_types.QAbstractItemDelegate, s: cstring): string =
  let v_ms = fcQAbstractItemDelegate_tr(s)
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

proc helpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemDelegate_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc paintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): seq[cint] =
  var v_ma = fcQAbstractItemDelegate_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc commitData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemDelegate_commitData(self.h, editor.h)

type QAbstractItemDelegatecommitDataSlot* = proc(editor: gen_qwidget_types.QWidget)
proc miqt_exec_callback_QAbstractItemDelegate_commitData(slot: int, editor: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecommitDataSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  nimfunc[](slotval1)

proc oncommitData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecommitDataSlot) =
  var tmp = new QAbstractItemDelegatecommitDataSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_commitData(self.h, cast[int](addr tmp[]))

proc closeEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemDelegate_closeEditor(self.h, editor.h)

type QAbstractItemDelegatecloseEditorSlot* = proc(editor: gen_qwidget_types.QWidget)
proc miqt_exec_callback_QAbstractItemDelegate_closeEditor(slot: int, editor: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecloseEditorSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  nimfunc[](slotval1)

proc oncloseEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecloseEditorSlot) =
  var tmp = new QAbstractItemDelegatecloseEditorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_closeEditor(self.h, cast[int](addr tmp[]))

proc sizeHintChanged*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, param1: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemDelegate_sizeHintChanged(self.h, param1.h)

type QAbstractItemDelegatesizeHintChangedSlot* = proc(param1: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemDelegate_sizeHintChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemDelegatesizeHintChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: param1)

  nimfunc[](slotval1)

proc onsizeHintChanged*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatesizeHintChangedSlot) =
  var tmp = new QAbstractItemDelegatesizeHintChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_sizeHintChanged(self.h, cast[int](addr tmp[]))

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

proc closeEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQAbstractItemDelegate_closeEditor2(self.h, editor.h, cint(hint))

type QAbstractItemDelegatecloseEditor2Slot* = proc(editor: gen_qwidget_types.QWidget, hint: cint)
proc miqt_exec_callback_QAbstractItemDelegate_closeEditor2(slot: int, editor: pointer, hint: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemDelegatecloseEditor2Slot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc oncloseEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecloseEditor2Slot) =
  var tmp = new QAbstractItemDelegatecloseEditor2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_connect_closeEditor2(self.h, cast[int](addr tmp[]))

type QAbstractItemDelegatepaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onpaint*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatepaintProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatepaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_paint(self: ptr cQAbstractItemDelegate, slot: int, painter: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_paint ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatepaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
type QAbstractItemDelegatesizeHintProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatesizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_sizeHint(self: ptr cQAbstractItemDelegate, slot: int, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemDelegate_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatesizeHintProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAbstractItemDelegatecreateEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQAbstractItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

type QAbstractItemDelegatecreateEditorProc* = proc(parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget
proc oncreateEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecreateEditorProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatecreateEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_createEditor(self: ptr cQAbstractItemDelegate, slot: int, parent: pointer, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemDelegate_createEditor ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatecreateEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: parent)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractItemDelegatedestroyEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

type QAbstractItemDelegatedestroyEditorProc* = proc(editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondestroyEditor*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatedestroyEditorProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatedestroyEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_destroyEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_destroyEditor(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_destroyEditor ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatedestroyEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemDelegatesetEditorData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

type QAbstractItemDelegatesetEditorDataProc* = proc(editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetEditorData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatesetEditorDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatesetEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_setEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_setEditorData(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_setEditorData ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatesetEditorDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemDelegatesetModelData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

type QAbstractItemDelegatesetModelDataProc* = proc(editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetModelData*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatesetModelDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatesetModelDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_setModelData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_setModelData(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, model: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_setModelData ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatesetModelDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractItemDelegateupdateEditorGeometry*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

type QAbstractItemDelegateupdateEditorGeometryProc* = proc(editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onupdateEditorGeometry*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegateupdateEditorGeometryProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegateupdateEditorGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_updateEditorGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_updateEditorGeometry(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_updateEditorGeometry ".} =
  var nimfunc = cast[ptr QAbstractItemDelegateupdateEditorGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractItemDelegateeditorEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

type QAbstractItemDelegateeditorEventProc* = proc(event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool
proc oneditorEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegateeditorEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegateeditorEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_editorEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_editorEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer, model: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_editorEvent ".} =
  var nimfunc = cast[ptr QAbstractItemDelegateeditorEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)

  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QAbstractItemDelegatehelpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

type QAbstractItemDelegatehelpEventProc* = proc(event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhelpEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatehelpEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatehelpEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_helpEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer, view: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_helpEvent ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatehelpEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHelpEvent(h: event)

  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view)

  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QAbstractItemDelegatepaintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, ): seq[cint] =
  var v_ma = fQAbstractItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

type QAbstractItemDelegatepaintingRolesProc* = proc(): seq[cint]
proc onpaintingRoles*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatepaintingRolesProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatepaintingRolesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_paintingRoles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_paintingRoles(self: ptr cQAbstractItemDelegate, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemDelegate_paintingRoles ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatepaintingRolesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractItemDelegateevent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemDelegate_virtualbase_event(self.h, event.h)

type QAbstractItemDelegateeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegateeventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegateeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_event(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_event ".} =
  var nimfunc = cast[ptr QAbstractItemDelegateeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemDelegateeventFilter*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemDelegate_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractItemDelegateeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegateeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegateeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_eventFilter(self: ptr cQAbstractItemDelegate, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractItemDelegateeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractItemDelegatetimerEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractItemDelegate_virtualbase_timerEvent(self.h, event.h)

type QAbstractItemDelegatetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatetimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_timerEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemDelegatechildEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractItemDelegate_virtualbase_childEvent(self.h, event.h)

type QAbstractItemDelegatechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatechildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_childEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_childEvent ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemDelegatecustomEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractItemDelegate_virtualbase_customEvent(self.h, event.h)

type QAbstractItemDelegatecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatecustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_customEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_customEvent ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemDelegateconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractItemDelegate_virtualbase_connectNotify(self.h, signal.h)

type QAbstractItemDelegateconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegateconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegateconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_connectNotify(self: ptr cQAbstractItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractItemDelegateconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractItemDelegatedisconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractItemDelegatedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate, slot: QAbstractItemDelegatedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemDelegatedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_disconnectNotify(self: ptr cQAbstractItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractItemDelegatedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qabstractitemdelegate_types.QAbstractItemDelegate) =
  fcQAbstractItemDelegate_delete(self.h)
