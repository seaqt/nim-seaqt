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
{.compile("gen_qitemdelegate.cpp", cflags).}


import ./gen_qitemdelegate_types
export gen_qitemdelegate_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpixmap_types,
  ./gen_qabstractitemdelegate,
  ./gen_qabstractitemview_types,
  ./gen_qitemeditorfactory_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qevent_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qabstractitemdelegate,
  gen_qabstractitemview_types,
  gen_qitemeditorfactory_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQItemDelegate*{.exportc: "QItemDelegate", incompleteStruct.} = object

proc fcQItemDelegate_new(): ptr cQItemDelegate {.importc: "QItemDelegate_new".}
proc fcQItemDelegate_new2(parent: pointer): ptr cQItemDelegate {.importc: "QItemDelegate_new2".}
proc fcQItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QItemDelegate_metaObject".}
proc fcQItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemDelegate_metacast".}
proc fcQItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemDelegate_metacall".}
proc fcQItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QItemDelegate_tr".}
proc fcQItemDelegate_hasClipping(self: pointer, ): bool {.importc: "QItemDelegate_hasClipping".}
proc fcQItemDelegate_setClipping(self: pointer, clip: bool): void {.importc: "QItemDelegate_setClipping".}
proc fcQItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_paint".}
proc fcQItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_sizeHint".}
proc fcQItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_createEditor".}
proc fcQItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QItemDelegate_setEditorData".}
proc fcQItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QItemDelegate_setModelData".}
proc fcQItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_updateEditorGeometry".}
proc fcQItemDelegate_itemEditorFactory(self: pointer, ): pointer {.importc: "QItemDelegate_itemEditorFactory".}
proc fcQItemDelegate_setItemEditorFactory(self: pointer, factory: pointer): void {.importc: "QItemDelegate_setItemEditorFactory".}
proc fcQItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemDelegate_tr2".}
proc fcQItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemDelegate_tr3".}
proc fQItemDelegate_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QItemDelegate_virtualbase_metaObject".}
proc fcQItemDelegate_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_metaObject".}
proc fQItemDelegate_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QItemDelegate_virtualbase_metacast".}
proc fcQItemDelegate_override_virtual_metacast(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_metacast".}
proc fQItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QItemDelegate_virtualbase_metacall".}
proc fcQItemDelegate_override_virtual_metacall(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_metacall".}
proc fQItemDelegate_virtualbase_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_paint".}
proc fcQItemDelegate_override_virtual_paint(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_paint".}
proc fQItemDelegate_virtualbase_sizeHint(self: pointer, option: pointer, index: pointer): pointer{.importc: "QItemDelegate_virtualbase_sizeHint".}
proc fcQItemDelegate_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_sizeHint".}
proc fQItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer{.importc: "QItemDelegate_virtualbase_createEditor".}
proc fcQItemDelegate_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_createEditor".}
proc fQItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_setEditorData".}
proc fcQItemDelegate_override_virtual_setEditorData(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_setEditorData".}
proc fQItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_setModelData".}
proc fcQItemDelegate_override_virtual_setModelData(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_setModelData".}
proc fQItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQItemDelegate_override_virtual_updateEditorGeometry(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_updateEditorGeometry".}
proc fQItemDelegate_virtualbase_drawDisplay(self: pointer, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void{.importc: "QItemDelegate_virtualbase_drawDisplay".}
proc fcQItemDelegate_override_virtual_drawDisplay(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawDisplay".}
proc fQItemDelegate_virtualbase_drawDecoration(self: pointer, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void{.importc: "QItemDelegate_virtualbase_drawDecoration".}
proc fcQItemDelegate_override_virtual_drawDecoration(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawDecoration".}
proc fQItemDelegate_virtualbase_drawFocus(self: pointer, painter: pointer, option: pointer, rect: pointer): void{.importc: "QItemDelegate_virtualbase_drawFocus".}
proc fcQItemDelegate_override_virtual_drawFocus(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawFocus".}
proc fQItemDelegate_virtualbase_drawCheck(self: pointer, painter: pointer, option: pointer, rect: pointer, state: cint): void{.importc: "QItemDelegate_virtualbase_drawCheck".}
proc fcQItemDelegate_override_virtual_drawCheck(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawCheck".}
proc fQItemDelegate_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QItemDelegate_virtualbase_eventFilter".}
proc fcQItemDelegate_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_eventFilter".}
proc fQItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool{.importc: "QItemDelegate_virtualbase_editorEvent".}
proc fcQItemDelegate_override_virtual_editorEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_editorEvent".}
proc fQItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_destroyEditor".}
proc fcQItemDelegate_override_virtual_destroyEditor(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_destroyEditor".}
proc fQItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool{.importc: "QItemDelegate_virtualbase_helpEvent".}
proc fcQItemDelegate_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_helpEvent".}
proc fQItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array{.importc: "QItemDelegate_virtualbase_paintingRoles".}
proc fcQItemDelegate_override_virtual_paintingRoles(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_paintingRoles".}
proc fQItemDelegate_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QItemDelegate_virtualbase_event".}
proc fcQItemDelegate_override_virtual_event(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_event".}
proc fQItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QItemDelegate_virtualbase_timerEvent".}
proc fcQItemDelegate_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_timerEvent".}
proc fQItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QItemDelegate_virtualbase_childEvent".}
proc fcQItemDelegate_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_childEvent".}
proc fQItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QItemDelegate_virtualbase_customEvent".}
proc fcQItemDelegate_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_customEvent".}
proc fQItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QItemDelegate_virtualbase_connectNotify".}
proc fcQItemDelegate_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_connectNotify".}
proc fQItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QItemDelegate_virtualbase_disconnectNotify".}
proc fcQItemDelegate_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_disconnectNotify".}
proc fcQItemDelegate_staticMetaObject(): pointer {.importc: "QItemDelegate_staticMetaObject".}
proc fcQItemDelegate_delete(self: pointer) {.importc: "QItemDelegate_delete".}


func init*(T: type gen_qitemdelegate_types.QItemDelegate, h: ptr cQItemDelegate): gen_qitemdelegate_types.QItemDelegate =
  T(h: h)
proc create*(T: type gen_qitemdelegate_types.QItemDelegate, ): gen_qitemdelegate_types.QItemDelegate =
  gen_qitemdelegate_types.QItemDelegate.init(fcQItemDelegate_new())

proc create*(T: type gen_qitemdelegate_types.QItemDelegate, parent: gen_qobject_types.QObject): gen_qitemdelegate_types.QItemDelegate =
  gen_qitemdelegate_types.QItemDelegate.init(fcQItemDelegate_new2(parent.h))

proc metaObject*(self: gen_qitemdelegate_types.QItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemDelegate_metaObject(self.h))

proc metacast*(self: gen_qitemdelegate_types.QItemDelegate, param1: cstring): pointer =
  fcQItemDelegate_metacast(self.h, param1)

proc metacall*(self: gen_qitemdelegate_types.QItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qitemdelegate_types.QItemDelegate, s: cstring): string =
  let v_ms = fcQItemDelegate_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasClipping*(self: gen_qitemdelegate_types.QItemDelegate, ): bool =
  fcQItemDelegate_hasClipping(self.h)

proc setClipping*(self: gen_qitemdelegate_types.QItemDelegate, clip: bool): void =
  fcQItemDelegate_setClipping(self.h, clip)

proc paint*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQItemDelegate_sizeHint(self.h, option.h, index.h))

proc createEditor*(self: gen_qitemdelegate_types.QItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQItemDelegate_createEditor(self.h, parent.h, option.h, index.h))

proc setEditorData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc itemEditorFactory*(self: gen_qitemdelegate_types.QItemDelegate, ): gen_qitemeditorfactory_types.QItemEditorFactory =
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQItemDelegate_itemEditorFactory(self.h))

proc setItemEditorFactory*(self: gen_qitemdelegate_types.QItemDelegate, factory: gen_qitemeditorfactory_types.QItemEditorFactory): void =
  fcQItemDelegate_setItemEditorFactory(self.h, factory.h)

proc tr*(_: type gen_qitemdelegate_types.QItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qitemdelegate_types.QItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QItemDelegatemetaObject*(self: gen_qitemdelegate_types.QItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQItemDelegate_virtualbase_metaObject(self.h))

type QItemDelegatemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatemetaObjectProc) =
  # TODO check subclass
  var tmp = new QItemDelegatemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_metaObject(self: ptr cQItemDelegate, slot: int): pointer {.exportc: "miqt_exec_callback_QItemDelegate_metaObject ".} =
  var nimfunc = cast[ptr QItemDelegatemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QItemDelegatemetacast*(self: gen_qitemdelegate_types.QItemDelegate, param1: cstring): pointer =
  fQItemDelegate_virtualbase_metacast(self.h, param1)

type QItemDelegatemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatemetacastProc) =
  # TODO check subclass
  var tmp = new QItemDelegatemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_metacast(self: ptr cQItemDelegate, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QItemDelegate_metacast ".} =
  var nimfunc = cast[ptr QItemDelegatemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QItemDelegatemetacall*(self: gen_qitemdelegate_types.QItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fQItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QItemDelegatemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatemetacallProc) =
  # TODO check subclass
  var tmp = new QItemDelegatemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_metacall(self: ptr cQItemDelegate, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QItemDelegate_metacall ".} =
  var nimfunc = cast[ptr QItemDelegatemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QItemDelegatepaint*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

type QItemDelegatepaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onpaint*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatepaintProc) =
  # TODO check subclass
  var tmp = new QItemDelegatepaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_paint(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_paint ".} =
  var nimfunc = cast[ptr QItemDelegatepaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QItemDelegatesizeHint*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h))

type QItemDelegatesizeHintProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatesizeHintProc) =
  # TODO check subclass
  var tmp = new QItemDelegatesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_sizeHint(self: ptr cQItemDelegate, slot: int, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QItemDelegate_sizeHint ".} =
  var nimfunc = cast[ptr QItemDelegatesizeHintProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QItemDelegatecreateEditor*(self: gen_qitemdelegate_types.QItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

type QItemDelegatecreateEditorProc* = proc(parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget
proc oncreateEditor*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatecreateEditorProc) =
  # TODO check subclass
  var tmp = new QItemDelegatecreateEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_createEditor(self: ptr cQItemDelegate, slot: int, parent: pointer, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QItemDelegate_createEditor ".} =
  var nimfunc = cast[ptr QItemDelegatecreateEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: parent)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QItemDelegatesetEditorData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

type QItemDelegatesetEditorDataProc* = proc(editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetEditorData*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatesetEditorDataProc) =
  # TODO check subclass
  var tmp = new QItemDelegatesetEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_setEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_setEditorData(self: ptr cQItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_setEditorData ".} =
  var nimfunc = cast[ptr QItemDelegatesetEditorDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QItemDelegatesetModelData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

type QItemDelegatesetModelDataProc* = proc(editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetModelData*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatesetModelDataProc) =
  # TODO check subclass
  var tmp = new QItemDelegatesetModelDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_setModelData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_setModelData(self: ptr cQItemDelegate, slot: int, editor: pointer, model: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_setModelData ".} =
  var nimfunc = cast[ptr QItemDelegatesetModelDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QItemDelegateupdateEditorGeometry*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

type QItemDelegateupdateEditorGeometryProc* = proc(editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onupdateEditorGeometry*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegateupdateEditorGeometryProc) =
  # TODO check subclass
  var tmp = new QItemDelegateupdateEditorGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_updateEditorGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_updateEditorGeometry(self: ptr cQItemDelegate, slot: int, editor: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_updateEditorGeometry ".} =
  var nimfunc = cast[ptr QItemDelegateupdateEditorGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QItemDelegatedrawDisplay*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, text: string): void =
  fQItemDelegate_virtualbase_drawDisplay(self.h, painter.h, option.h, rect.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QItemDelegatedrawDisplayProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, text: string): void
proc ondrawDisplay*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatedrawDisplayProc) =
  # TODO check subclass
  var tmp = new QItemDelegatedrawDisplayProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawDisplay(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawDisplay(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QItemDelegate_drawDisplay ".} =
  var nimfunc = cast[ptr QItemDelegatedrawDisplayProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect_types.QRect(h: rect)

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval4 = vtextx_ret


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QItemDelegatedrawDecoration*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, pixmap: gen_qpixmap_types.QPixmap): void =
  fQItemDelegate_virtualbase_drawDecoration(self.h, painter.h, option.h, rect.h, pixmap.h)

type QItemDelegatedrawDecorationProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, pixmap: gen_qpixmap_types.QPixmap): void
proc ondrawDecoration*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatedrawDecorationProc) =
  # TODO check subclass
  var tmp = new QItemDelegatedrawDecorationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawDecoration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawDecoration(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_drawDecoration ".} =
  var nimfunc = cast[ptr QItemDelegatedrawDecorationProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect_types.QRect(h: rect)

  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QItemDelegatedrawFocus*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect): void =
  fQItemDelegate_virtualbase_drawFocus(self.h, painter.h, option.h, rect.h)

type QItemDelegatedrawFocusProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect): void
proc ondrawFocus*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatedrawFocusProc) =
  # TODO check subclass
  var tmp = new QItemDelegatedrawFocusProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawFocus(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawFocus(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_drawFocus ".} =
  var nimfunc = cast[ptr QItemDelegatedrawFocusProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect_types.QRect(h: rect)


  nimfunc[](slotval1, slotval2, slotval3)
proc QItemDelegatedrawCheck*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, state: cint): void =
  fQItemDelegate_virtualbase_drawCheck(self.h, painter.h, option.h, rect.h, cint(state))

type QItemDelegatedrawCheckProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, state: cint): void
proc ondrawCheck*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatedrawCheckProc) =
  # TODO check subclass
  var tmp = new QItemDelegatedrawCheckProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawCheck(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawCheck(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer, state: cint): void {.exportc: "miqt_exec_callback_QItemDelegate_drawCheck ".} =
  var nimfunc = cast[ptr QItemDelegatedrawCheckProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect_types.QRect(h: rect)

  let slotval4 = cint(state)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QItemDelegateeventFilter*(self: gen_qitemdelegate_types.QItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QItemDelegateeventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegateeventFilterProc) =
  # TODO check subclass
  var tmp = new QItemDelegateeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_eventFilter(self: ptr cQItemDelegate, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_eventFilter ".} =
  var nimfunc = cast[ptr QItemDelegateeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QItemDelegateeditorEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

type QItemDelegateeditorEventProc* = proc(event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool
proc oneditorEvent*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegateeditorEventProc) =
  # TODO check subclass
  var tmp = new QItemDelegateeditorEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_editorEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_editorEvent(self: ptr cQItemDelegate, slot: int, event: pointer, model: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_editorEvent ".} =
  var nimfunc = cast[ptr QItemDelegateeditorEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)

  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QItemDelegatedestroyEditor*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

type QItemDelegatedestroyEditorProc* = proc(editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondestroyEditor*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatedestroyEditorProc) =
  # TODO check subclass
  var tmp = new QItemDelegatedestroyEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_destroyEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_destroyEditor(self: ptr cQItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_destroyEditor ".} =
  var nimfunc = cast[ptr QItemDelegatedestroyEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QItemDelegatehelpEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

type QItemDelegatehelpEventProc* = proc(event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhelpEvent*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatehelpEventProc) =
  # TODO check subclass
  var tmp = new QItemDelegatehelpEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_helpEvent(self: ptr cQItemDelegate, slot: int, event: pointer, view: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_helpEvent ".} =
  var nimfunc = cast[ptr QItemDelegatehelpEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHelpEvent(h: event)

  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view)

  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QItemDelegatepaintingRoles*(self: gen_qitemdelegate_types.QItemDelegate, ): seq[cint] =
  var v_ma = fQItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

type QItemDelegatepaintingRolesProc* = proc(): seq[cint]
proc onpaintingRoles*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatepaintingRolesProc) =
  # TODO check subclass
  var tmp = new QItemDelegatepaintingRolesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_paintingRoles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_paintingRoles(self: ptr cQItemDelegate, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QItemDelegate_paintingRoles ".} =
  var nimfunc = cast[ptr QItemDelegatepaintingRolesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QItemDelegateevent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fQItemDelegate_virtualbase_event(self.h, event.h)

type QItemDelegateeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegateeventProc) =
  # TODO check subclass
  var tmp = new QItemDelegateeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_event(self: ptr cQItemDelegate, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_event ".} =
  var nimfunc = cast[ptr QItemDelegateeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QItemDelegatetimerEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fQItemDelegate_virtualbase_timerEvent(self.h, event.h)

type QItemDelegatetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatetimerEventProc) =
  # TODO check subclass
  var tmp = new QItemDelegatetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_timerEvent(self: ptr cQItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_timerEvent ".} =
  var nimfunc = cast[ptr QItemDelegatetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QItemDelegatechildEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fQItemDelegate_virtualbase_childEvent(self.h, event.h)

type QItemDelegatechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatechildEventProc) =
  # TODO check subclass
  var tmp = new QItemDelegatechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_childEvent(self: ptr cQItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_childEvent ".} =
  var nimfunc = cast[ptr QItemDelegatechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QItemDelegatecustomEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fQItemDelegate_virtualbase_customEvent(self.h, event.h)

type QItemDelegatecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatecustomEventProc) =
  # TODO check subclass
  var tmp = new QItemDelegatecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_customEvent(self: ptr cQItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_customEvent ".} =
  var nimfunc = cast[ptr QItemDelegatecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QItemDelegateconnectNotify*(self: gen_qitemdelegate_types.QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQItemDelegate_virtualbase_connectNotify(self.h, signal.h)

type QItemDelegateconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegateconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QItemDelegateconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_connectNotify(self: ptr cQItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_connectNotify ".} =
  var nimfunc = cast[ptr QItemDelegateconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QItemDelegatedisconnectNotify*(self: gen_qitemdelegate_types.QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

type QItemDelegatedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qitemdelegate_types.QItemDelegate, slot: QItemDelegatedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QItemDelegatedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_disconnectNotify(self: ptr cQItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_disconnectNotify ".} =
  var nimfunc = cast[ptr QItemDelegatedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qitemdelegate_types.QItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemDelegate_staticMetaObject())
proc delete*(self: gen_qitemdelegate_types.QItemDelegate) =
  fcQItemDelegate_delete(self.h)
