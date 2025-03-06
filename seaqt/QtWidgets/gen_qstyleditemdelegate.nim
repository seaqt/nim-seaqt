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
{.compile("gen_qstyleditemdelegate.cpp", cflags).}


import ./gen_qstyleditemdelegate_types
export gen_qstyleditemdelegate_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qlocale_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractitemdelegate,
  ./gen_qabstractitemview_types,
  ./gen_qitemeditorfactory_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpainter_types,
  gen_qabstractitemdelegate,
  gen_qabstractitemview_types,
  gen_qitemeditorfactory_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQStyledItemDelegate*{.exportc: "QStyledItemDelegate", incompleteStruct.} = object

proc fcQStyledItemDelegate_new(): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new".}
proc fcQStyledItemDelegate_new2(parent: pointer): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new2".}
proc fcQStyledItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QStyledItemDelegate_metaObject".}
proc fcQStyledItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyledItemDelegate_metacast".}
proc fcQStyledItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyledItemDelegate_metacall".}
proc fcQStyledItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr".}
proc fcQStyledItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_paint".}
proc fcQStyledItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_sizeHint".}
proc fcQStyledItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_createEditor".}
proc fcQStyledItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QStyledItemDelegate_setEditorData".}
proc fcQStyledItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QStyledItemDelegate_setModelData".}
proc fcQStyledItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_updateEditorGeometry".}
proc fcQStyledItemDelegate_itemEditorFactory(self: pointer, ): pointer {.importc: "QStyledItemDelegate_itemEditorFactory".}
proc fcQStyledItemDelegate_setItemEditorFactory(self: pointer, factory: pointer): void {.importc: "QStyledItemDelegate_setItemEditorFactory".}
proc fcQStyledItemDelegate_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.importc: "QStyledItemDelegate_displayText".}
proc fcQStyledItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr2".}
proc fcQStyledItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyledItemDelegate_tr3".}
proc fQStyledItemDelegate_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStyledItemDelegate_virtualbase_metaObject".}
proc fcQStyledItemDelegate_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_metaObject".}
proc fQStyledItemDelegate_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStyledItemDelegate_virtualbase_metacast".}
proc fcQStyledItemDelegate_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_metacast".}
proc fQStyledItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStyledItemDelegate_virtualbase_metacall".}
proc fcQStyledItemDelegate_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_metacall".}
proc fQStyledItemDelegate_virtualbase_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_paint".}
proc fcQStyledItemDelegate_override_virtual_paint(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_paint".}
proc fQStyledItemDelegate_virtualbase_sizeHint(self: pointer, option: pointer, index: pointer): pointer{.importc: "QStyledItemDelegate_virtualbase_sizeHint".}
proc fcQStyledItemDelegate_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_sizeHint".}
proc fQStyledItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer{.importc: "QStyledItemDelegate_virtualbase_createEditor".}
proc fcQStyledItemDelegate_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_createEditor".}
proc fQStyledItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_setEditorData".}
proc fcQStyledItemDelegate_override_virtual_setEditorData(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_setEditorData".}
proc fQStyledItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_setModelData".}
proc fcQStyledItemDelegate_override_virtual_setModelData(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_setModelData".}
proc fQStyledItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQStyledItemDelegate_override_virtual_updateEditorGeometry(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_updateEditorGeometry".}
proc fQStyledItemDelegate_virtualbase_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string{.importc: "QStyledItemDelegate_virtualbase_displayText".}
proc fcQStyledItemDelegate_override_virtual_displayText(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_displayText".}
proc fQStyledItemDelegate_virtualbase_initStyleOption(self: pointer, option: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_initStyleOption".}
proc fcQStyledItemDelegate_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_initStyleOption".}
proc fQStyledItemDelegate_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_eventFilter".}
proc fcQStyledItemDelegate_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_eventFilter".}
proc fQStyledItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_editorEvent".}
proc fcQStyledItemDelegate_override_virtual_editorEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_editorEvent".}
proc fQStyledItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_destroyEditor".}
proc fcQStyledItemDelegate_override_virtual_destroyEditor(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_destroyEditor".}
proc fQStyledItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_helpEvent".}
proc fcQStyledItemDelegate_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_helpEvent".}
proc fQStyledItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array{.importc: "QStyledItemDelegate_virtualbase_paintingRoles".}
proc fcQStyledItemDelegate_override_virtual_paintingRoles(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_paintingRoles".}
proc fQStyledItemDelegate_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_event".}
proc fcQStyledItemDelegate_override_virtual_event(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_event".}
proc fQStyledItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStyledItemDelegate_virtualbase_timerEvent".}
proc fcQStyledItemDelegate_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_timerEvent".}
proc fQStyledItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStyledItemDelegate_virtualbase_childEvent".}
proc fcQStyledItemDelegate_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_childEvent".}
proc fQStyledItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStyledItemDelegate_virtualbase_customEvent".}
proc fcQStyledItemDelegate_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_customEvent".}
proc fQStyledItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStyledItemDelegate_virtualbase_connectNotify".}
proc fcQStyledItemDelegate_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_connectNotify".}
proc fQStyledItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStyledItemDelegate_virtualbase_disconnectNotify".}
proc fcQStyledItemDelegate_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_disconnectNotify".}
proc fcQStyledItemDelegate_staticMetaObject(): pointer {.importc: "QStyledItemDelegate_staticMetaObject".}
proc fcQStyledItemDelegate_delete(self: pointer) {.importc: "QStyledItemDelegate_delete".}


func init*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate, h: ptr cQStyledItemDelegate): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  T(h: h)
proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate, ): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  gen_qstyleditemdelegate_types.QStyledItemDelegate.init(fcQStyledItemDelegate_new())

proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate, parent: gen_qobject_types.QObject): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  gen_qstyleditemdelegate_types.QStyledItemDelegate.init(fcQStyledItemDelegate_new2(parent.h))

proc metaObject*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_metaObject(self.h))

proc metacast*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cstring): pointer =
  fcQStyledItemDelegate_metacast(self.h, param1)

proc metacall*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyledItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring): string =
  let v_ms = fcQStyledItemDelegate_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyledItemDelegate_sizeHint(self.h, option.h, index.h))

proc createEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStyledItemDelegate_createEditor(self.h, parent.h, option.h, index.h))

proc setEditorData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc itemEditorFactory*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): gen_qitemeditorfactory_types.QItemEditorFactory =
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQStyledItemDelegate_itemEditorFactory(self.h))

proc setItemEditorFactory*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, factory: gen_qitemeditorfactory_types.QItemEditorFactory): void =
  fcQStyledItemDelegate_setItemEditorFactory(self.h, factory.h)

proc displayText*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fcQStyledItemDelegate_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQStyledItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyledItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QStyledItemDelegatemetaObject*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQStyledItemDelegate_virtualbase_metaObject(self.h))

type QStyledItemDelegatemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatemetaObjectProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_metaObject(self: ptr cQStyledItemDelegate, slot: int): pointer {.exportc: "miqt_exec_callback_QStyledItemDelegate_metaObject ".} =
  var nimfunc = cast[ptr QStyledItemDelegatemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStyledItemDelegatemetacast*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cstring): pointer =
  fQStyledItemDelegate_virtualbase_metacast(self.h, param1)

type QStyledItemDelegatemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatemetacastProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_metacast(self: ptr cQStyledItemDelegate, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStyledItemDelegate_metacast ".} =
  var nimfunc = cast[ptr QStyledItemDelegatemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStyledItemDelegatemetacall*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fQStyledItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStyledItemDelegatemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatemetacallProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_metacall(self: ptr cQStyledItemDelegate, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStyledItemDelegate_metacall ".} =
  var nimfunc = cast[ptr QStyledItemDelegatemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStyledItemDelegatepaint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStyledItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

type QStyledItemDelegatepaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onpaint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatepaintProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatepaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_paint(self: ptr cQStyledItemDelegate, slot: int, painter: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_paint ".} =
  var nimfunc = cast[ptr QStyledItemDelegatepaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QStyledItemDelegatesizeHint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStyledItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h))

type QStyledItemDelegatesizeHintProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatesizeHintProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_sizeHint(self: ptr cQStyledItemDelegate, slot: int, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QStyledItemDelegate_sizeHint ".} =
  var nimfunc = cast[ptr QStyledItemDelegatesizeHintProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QStyledItemDelegatecreateEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQStyledItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

type QStyledItemDelegatecreateEditorProc* = proc(parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget
proc oncreateEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatecreateEditorProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatecreateEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_createEditor(self: ptr cQStyledItemDelegate, slot: int, parent: pointer, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QStyledItemDelegate_createEditor ".} =
  var nimfunc = cast[ptr QStyledItemDelegatecreateEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: parent)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStyledItemDelegatesetEditorData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStyledItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

type QStyledItemDelegatesetEditorDataProc* = proc(editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetEditorData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatesetEditorDataProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatesetEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_setEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_setEditorData(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_setEditorData ".} =
  var nimfunc = cast[ptr QStyledItemDelegatesetEditorDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QStyledItemDelegatesetModelData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStyledItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

type QStyledItemDelegatesetModelDataProc* = proc(editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetModelData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatesetModelDataProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatesetModelDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_setModelData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_setModelData(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, model: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_setModelData ".} =
  var nimfunc = cast[ptr QStyledItemDelegatesetModelDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QStyledItemDelegateupdateEditorGeometry*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStyledItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

type QStyledItemDelegateupdateEditorGeometryProc* = proc(editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc onupdateEditorGeometry*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegateupdateEditorGeometryProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegateupdateEditorGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_updateEditorGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_updateEditorGeometry(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_updateEditorGeometry ".} =
  var nimfunc = cast[ptr QStyledItemDelegateupdateEditorGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QStyledItemDelegatedisplayText*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fQStyledItemDelegate_virtualbase_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStyledItemDelegatedisplayTextProc* = proc(value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string
proc ondisplayText*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatedisplayTextProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatedisplayTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_displayText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_displayText(self: ptr cQStyledItemDelegate, slot: int, value: pointer, locale: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QStyledItemDelegate_displayText ".} =
  var nimfunc = cast[ptr QStyledItemDelegatedisplayTextProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: value)

  let slotval2 = gen_qlocale_types.QLocale(h: locale)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QStyledItemDelegateinitStyleOption*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStyledItemDelegate_virtualbase_initStyleOption(self.h, option.h, index.h)

type QStyledItemDelegateinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc oninitStyleOption*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegateinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegateinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_initStyleOption(self: ptr cQStyledItemDelegate, slot: int, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_initStyleOption ".} =
  var nimfunc = cast[ptr QStyledItemDelegateinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QStyledItemDelegateeventFilter*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStyledItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QStyledItemDelegateeventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegateeventFilterProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegateeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_eventFilter(self: ptr cQStyledItemDelegate, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_eventFilter ".} =
  var nimfunc = cast[ptr QStyledItemDelegateeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStyledItemDelegateeditorEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStyledItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

type QStyledItemDelegateeditorEventProc* = proc(event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool
proc oneditorEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegateeditorEventProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegateeditorEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_editorEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_editorEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer, model: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_editorEvent ".} =
  var nimfunc = cast[ptr QStyledItemDelegateeditorEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)

  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QStyledItemDelegatedestroyEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStyledItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

type QStyledItemDelegatedestroyEditorProc* = proc(editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondestroyEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatedestroyEditorProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatedestroyEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_destroyEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_destroyEditor(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_destroyEditor ".} =
  var nimfunc = cast[ptr QStyledItemDelegatedestroyEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2)
proc QStyledItemDelegatehelpEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStyledItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

type QStyledItemDelegatehelpEventProc* = proc(event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhelpEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatehelpEventProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatehelpEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_helpEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer, view: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_helpEvent ".} =
  var nimfunc = cast[ptr QStyledItemDelegatehelpEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHelpEvent(h: event)

  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view)

  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QStyledItemDelegatepaintingRoles*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): seq[cint] =
  var v_ma = fQStyledItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

type QStyledItemDelegatepaintingRolesProc* = proc(): seq[cint]
proc onpaintingRoles*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatepaintingRolesProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatepaintingRolesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_paintingRoles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_paintingRoles(self: ptr cQStyledItemDelegate, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QStyledItemDelegate_paintingRoles ".} =
  var nimfunc = cast[ptr QStyledItemDelegatepaintingRolesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QStyledItemDelegateevent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fQStyledItemDelegate_virtualbase_event(self.h, event.h)

type QStyledItemDelegateeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegateeventProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegateeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_event(self: ptr cQStyledItemDelegate, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_event ".} =
  var nimfunc = cast[ptr QStyledItemDelegateeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStyledItemDelegatetimerEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStyledItemDelegate_virtualbase_timerEvent(self.h, event.h)

type QStyledItemDelegatetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatetimerEventProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_timerEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_timerEvent ".} =
  var nimfunc = cast[ptr QStyledItemDelegatetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStyledItemDelegatechildEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fQStyledItemDelegate_virtualbase_childEvent(self.h, event.h)

type QStyledItemDelegatechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatechildEventProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_childEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_childEvent ".} =
  var nimfunc = cast[ptr QStyledItemDelegatechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStyledItemDelegatecustomEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fQStyledItemDelegate_virtualbase_customEvent(self.h, event.h)

type QStyledItemDelegatecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatecustomEventProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_customEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_customEvent ".} =
  var nimfunc = cast[ptr QStyledItemDelegatecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStyledItemDelegateconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStyledItemDelegate_virtualbase_connectNotify(self.h, signal.h)

type QStyledItemDelegateconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegateconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegateconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_connectNotify(self: ptr cQStyledItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_connectNotify ".} =
  var nimfunc = cast[ptr QStyledItemDelegateconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStyledItemDelegatedisconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStyledItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

type QStyledItemDelegatedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, slot: QStyledItemDelegatedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStyledItemDelegatedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_disconnectNotify(self: ptr cQStyledItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_disconnectNotify ".} =
  var nimfunc = cast[ptr QStyledItemDelegatedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_staticMetaObject())
proc delete*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate) =
  fcQStyledItemDelegate_delete(self.h)
