import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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

proc fcQStyledItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QStyledItemDelegate_metaObject".}
proc fcQStyledItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyledItemDelegate_metacast".}
proc fcQStyledItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyledItemDelegate_metacall".}
proc fcQStyledItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr".}
proc fcQStyledItemDelegate_trUtf8(s: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_trUtf8".}
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
proc fcQStyledItemDelegate_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_trUtf82".}
proc fcQStyledItemDelegate_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyledItemDelegate_trUtf83".}
type cQStyledItemDelegateVTable = object
  destructor*: proc(vtbl: ptr cQStyledItemDelegateVTable, self: ptr cQStyledItemDelegate) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createEditor*: proc(vtbl, self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setEditorData*: proc(vtbl, self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setModelData*: proc(vtbl, self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometry*: proc(vtbl, self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  displayText*: proc(vtbl, self: pointer, value: pointer, locale: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  editorEvent*: proc(vtbl, self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  destroyEditor*: proc(vtbl, self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  helpEvent*: proc(vtbl, self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintingRoles*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStyledItemDelegate_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStyledItemDelegate_virtualbase_metaObject".}
proc fcQStyledItemDelegate_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyledItemDelegate_virtualbase_metacast".}
proc fcQStyledItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyledItemDelegate_virtualbase_metacall".}
proc fcQStyledItemDelegate_virtualbase_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_virtualbase_paint".}
proc fcQStyledItemDelegate_virtualbase_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_virtualbase_sizeHint".}
proc fcQStyledItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_virtualbase_createEditor".}
proc fcQStyledItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QStyledItemDelegate_virtualbase_setEditorData".}
proc fcQStyledItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QStyledItemDelegate_virtualbase_setModelData".}
proc fcQStyledItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQStyledItemDelegate_virtualbase_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.importc: "QStyledItemDelegate_virtualbase_displayText".}
proc fcQStyledItemDelegate_virtualbase_initStyleOption(self: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_virtualbase_initStyleOption".}
proc fcQStyledItemDelegate_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QStyledItemDelegate_virtualbase_eventFilter".}
proc fcQStyledItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QStyledItemDelegate_virtualbase_editorEvent".}
proc fcQStyledItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QStyledItemDelegate_virtualbase_destroyEditor".}
proc fcQStyledItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QStyledItemDelegate_virtualbase_helpEvent".}
proc fcQStyledItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array {.importc: "QStyledItemDelegate_virtualbase_paintingRoles".}
proc fcQStyledItemDelegate_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStyledItemDelegate_virtualbase_event".}
proc fcQStyledItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStyledItemDelegate_virtualbase_timerEvent".}
proc fcQStyledItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStyledItemDelegate_virtualbase_childEvent".}
proc fcQStyledItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStyledItemDelegate_virtualbase_customEvent".}
proc fcQStyledItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStyledItemDelegate_virtualbase_connectNotify".}
proc fcQStyledItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStyledItemDelegate_virtualbase_disconnectNotify".}
proc fcQStyledItemDelegate_protectedbase_sender(self: pointer, ): pointer {.importc: "QStyledItemDelegate_protectedbase_sender".}
proc fcQStyledItemDelegate_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QStyledItemDelegate_protectedbase_senderSignalIndex".}
proc fcQStyledItemDelegate_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStyledItemDelegate_protectedbase_receivers".}
proc fcQStyledItemDelegate_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStyledItemDelegate_protectedbase_isSignalConnected".}
proc fcQStyledItemDelegate_new(vtbl: pointer, ): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new".}
proc fcQStyledItemDelegate_new2(vtbl: pointer, parent: pointer): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new2".}
proc fcQStyledItemDelegate_staticMetaObject(): pointer {.importc: "QStyledItemDelegate_staticMetaObject".}
proc fcQStyledItemDelegate_delete(self: pointer) {.importc: "QStyledItemDelegate_delete".}

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

proc trUtf8*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring): string =
  let v_ms = fcQStyledItemDelegate_trUtf8(s)
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

proc trUtf8*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQStyledItemDelegate_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyledItemDelegate_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStyledItemDelegatemetaObjectProc* = proc(self: QStyledItemDelegate): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStyledItemDelegatemetacastProc* = proc(self: QStyledItemDelegate, param1: cstring): pointer {.raises: [], gcsafe.}
type QStyledItemDelegatemetacallProc* = proc(self: QStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStyledItemDelegatepaintProc* = proc(self: QStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStyledItemDelegatesizeHintProc* = proc(self: QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStyledItemDelegatecreateEditorProc* = proc(self: QStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QStyledItemDelegatesetEditorDataProc* = proc(self: QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStyledItemDelegatesetModelDataProc* = proc(self: QStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStyledItemDelegateupdateEditorGeometryProc* = proc(self: QStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStyledItemDelegatedisplayTextProc* = proc(self: QStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string {.raises: [], gcsafe.}
type QStyledItemDelegateinitStyleOptionProc* = proc(self: QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStyledItemDelegateeventFilterProc* = proc(self: QStyledItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStyledItemDelegateeditorEventProc* = proc(self: QStyledItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStyledItemDelegatedestroyEditorProc* = proc(self: QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStyledItemDelegatehelpEventProc* = proc(self: QStyledItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStyledItemDelegatepaintingRolesProc* = proc(self: QStyledItemDelegate): seq[cint] {.raises: [], gcsafe.}
type QStyledItemDelegateeventProc* = proc(self: QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStyledItemDelegatetimerEventProc* = proc(self: QStyledItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStyledItemDelegatechildEventProc* = proc(self: QStyledItemDelegate, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStyledItemDelegatecustomEventProc* = proc(self: QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStyledItemDelegateconnectNotifyProc* = proc(self: QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStyledItemDelegatedisconnectNotifyProc* = proc(self: QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStyledItemDelegateVTable* = object
  vtbl: cQStyledItemDelegateVTable
  metaObject*: QStyledItemDelegatemetaObjectProc
  metacast*: QStyledItemDelegatemetacastProc
  metacall*: QStyledItemDelegatemetacallProc
  paint*: QStyledItemDelegatepaintProc
  sizeHint*: QStyledItemDelegatesizeHintProc
  createEditor*: QStyledItemDelegatecreateEditorProc
  setEditorData*: QStyledItemDelegatesetEditorDataProc
  setModelData*: QStyledItemDelegatesetModelDataProc
  updateEditorGeometry*: QStyledItemDelegateupdateEditorGeometryProc
  displayText*: QStyledItemDelegatedisplayTextProc
  initStyleOption*: QStyledItemDelegateinitStyleOptionProc
  eventFilter*: QStyledItemDelegateeventFilterProc
  editorEvent*: QStyledItemDelegateeditorEventProc
  destroyEditor*: QStyledItemDelegatedestroyEditorProc
  helpEvent*: QStyledItemDelegatehelpEventProc
  paintingRoles*: QStyledItemDelegatepaintingRolesProc
  event*: QStyledItemDelegateeventProc
  timerEvent*: QStyledItemDelegatetimerEventProc
  childEvent*: QStyledItemDelegatechildEventProc
  customEvent*: QStyledItemDelegatecustomEventProc
  connectNotify*: QStyledItemDelegateconnectNotifyProc
  disconnectNotify*: QStyledItemDelegatedisconnectNotifyProc
proc QStyledItemDelegatemetaObject*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQStyledItemDelegate_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QStyledItemDelegatemetacast*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cstring): pointer =
  fcQStyledItemDelegate_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStyledItemDelegate_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStyledItemDelegatemetacall*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyledItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStyledItemDelegate_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStyledItemDelegatepaint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QStyledItemDelegatesizeHint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyledItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h))

proc miqt_exec_callback_cQStyledItemDelegate_sizeHint(vtbl: pointer, self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.h

proc QStyledItemDelegatecreateEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStyledItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

proc miqt_exec_callback_cQStyledItemDelegate_createEditor(vtbl: pointer, self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].createEditor(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QStyledItemDelegatesetEditorData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_setEditorData(vtbl: pointer, self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setEditorData(self, slotval1, slotval2)

proc QStyledItemDelegatesetModelData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_setModelData(vtbl: pointer, self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setModelData(self, slotval1, slotval2, slotval3)

proc QStyledItemDelegateupdateEditorGeometry*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_updateEditorGeometry(vtbl: pointer, self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].updateEditorGeometry(self, slotval1, slotval2, slotval3)

proc QStyledItemDelegatedisplayText*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fcQStyledItemDelegate_virtualbase_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQStyledItemDelegate_displayText(vtbl: pointer, self: pointer, value: pointer, locale: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: value)
  let slotval2 = gen_qlocale_types.QLocale(h: locale)
  var virtualReturn = vtbl[].displayText(self, slotval1, slotval2)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QStyledItemDelegateinitStyleOption*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_initStyleOption(self.h, option.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_initStyleOption(vtbl: pointer, self: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].initStyleOption(self, slotval1, slotval2)

proc QStyledItemDelegateeventFilter*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStyledItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQStyledItemDelegate_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStyledItemDelegateeditorEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStyledItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_editorEvent(vtbl: pointer, self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].editorEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QStyledItemDelegatedestroyEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_destroyEditor(vtbl: pointer, self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].destroyEditor(self, slotval1, slotval2)

proc QStyledItemDelegatehelpEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStyledItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc miqt_exec_callback_cQStyledItemDelegate_helpEvent(vtbl: pointer, self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qevent_types.QHelpEvent(h: event)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].helpEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QStyledItemDelegatepaintingRoles*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): seq[cint] =
  var v_ma = fcQStyledItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc miqt_exec_callback_cQStyledItemDelegate_paintingRoles(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  var virtualReturn = vtbl[].paintingRoles(self)
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QStyledItemDelegateevent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fcQStyledItemDelegate_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQStyledItemDelegate_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStyledItemDelegatetimerEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStyledItemDelegate_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStyledItemDelegate_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QStyledItemDelegatechildEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStyledItemDelegate_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStyledItemDelegate_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QStyledItemDelegatecustomEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fcQStyledItemDelegate_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStyledItemDelegate_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QStyledItemDelegateconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStyledItemDelegate_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStyledItemDelegate_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QStyledItemDelegatedisconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStyledItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStyledItemDelegate_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](vtbl)
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStyledItemDelegate_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, ): cint =
  fcQStyledItemDelegate_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: cstring): cint =
  fcQStyledItemDelegate_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStyledItemDelegate_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate,
    vtbl: ref QStyledItemDelegateVTable = nil): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  let vtbl = if vtbl == nil: new QStyledItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStyledItemDelegateVTable, _: ptr cQStyledItemDelegate) {.cdecl.} =
    let vtbl = cast[ref QStyledItemDelegateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStyledItemDelegate_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStyledItemDelegate_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStyledItemDelegate_metacall
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQStyledItemDelegate_paint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStyledItemDelegate_sizeHint
  if not isNil(vtbl.createEditor):
    vtbl[].vtbl.createEditor = miqt_exec_callback_cQStyledItemDelegate_createEditor
  if not isNil(vtbl.setEditorData):
    vtbl[].vtbl.setEditorData = miqt_exec_callback_cQStyledItemDelegate_setEditorData
  if not isNil(vtbl.setModelData):
    vtbl[].vtbl.setModelData = miqt_exec_callback_cQStyledItemDelegate_setModelData
  if not isNil(vtbl.updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = miqt_exec_callback_cQStyledItemDelegate_updateEditorGeometry
  if not isNil(vtbl.displayText):
    vtbl[].vtbl.displayText = miqt_exec_callback_cQStyledItemDelegate_displayText
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQStyledItemDelegate_initStyleOption
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStyledItemDelegate_eventFilter
  if not isNil(vtbl.editorEvent):
    vtbl[].vtbl.editorEvent = miqt_exec_callback_cQStyledItemDelegate_editorEvent
  if not isNil(vtbl.destroyEditor):
    vtbl[].vtbl.destroyEditor = miqt_exec_callback_cQStyledItemDelegate_destroyEditor
  if not isNil(vtbl.helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQStyledItemDelegate_helpEvent
  if not isNil(vtbl.paintingRoles):
    vtbl[].vtbl.paintingRoles = miqt_exec_callback_cQStyledItemDelegate_paintingRoles
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStyledItemDelegate_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStyledItemDelegate_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStyledItemDelegate_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStyledItemDelegate_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStyledItemDelegate_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStyledItemDelegate_disconnectNotify
  gen_qstyleditemdelegate_types.QStyledItemDelegate(h: fcQStyledItemDelegate_new(addr(vtbl[]), ))

proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStyledItemDelegateVTable = nil): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  let vtbl = if vtbl == nil: new QStyledItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStyledItemDelegateVTable, _: ptr cQStyledItemDelegate) {.cdecl.} =
    let vtbl = cast[ref QStyledItemDelegateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStyledItemDelegate_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStyledItemDelegate_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStyledItemDelegate_metacall
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQStyledItemDelegate_paint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStyledItemDelegate_sizeHint
  if not isNil(vtbl.createEditor):
    vtbl[].vtbl.createEditor = miqt_exec_callback_cQStyledItemDelegate_createEditor
  if not isNil(vtbl.setEditorData):
    vtbl[].vtbl.setEditorData = miqt_exec_callback_cQStyledItemDelegate_setEditorData
  if not isNil(vtbl.setModelData):
    vtbl[].vtbl.setModelData = miqt_exec_callback_cQStyledItemDelegate_setModelData
  if not isNil(vtbl.updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = miqt_exec_callback_cQStyledItemDelegate_updateEditorGeometry
  if not isNil(vtbl.displayText):
    vtbl[].vtbl.displayText = miqt_exec_callback_cQStyledItemDelegate_displayText
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQStyledItemDelegate_initStyleOption
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStyledItemDelegate_eventFilter
  if not isNil(vtbl.editorEvent):
    vtbl[].vtbl.editorEvent = miqt_exec_callback_cQStyledItemDelegate_editorEvent
  if not isNil(vtbl.destroyEditor):
    vtbl[].vtbl.destroyEditor = miqt_exec_callback_cQStyledItemDelegate_destroyEditor
  if not isNil(vtbl.helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQStyledItemDelegate_helpEvent
  if not isNil(vtbl.paintingRoles):
    vtbl[].vtbl.paintingRoles = miqt_exec_callback_cQStyledItemDelegate_paintingRoles
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStyledItemDelegate_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStyledItemDelegate_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStyledItemDelegate_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStyledItemDelegate_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStyledItemDelegate_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStyledItemDelegate_disconnectNotify
  gen_qstyleditemdelegate_types.QStyledItemDelegate(h: fcQStyledItemDelegate_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_staticMetaObject())
proc delete*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate) =
  fcQStyledItemDelegate_delete(self.h)
