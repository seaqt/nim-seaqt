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


{.compile("gen_qstyleditemdelegate.cpp", QtWidgetsCFlags).}


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

proc fcQStyledItemDelegate_metaObject(self: pointer): pointer {.importc: "QStyledItemDelegate_metaObject".}
proc fcQStyledItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyledItemDelegate_metacast".}
proc fcQStyledItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyledItemDelegate_metacall".}
proc fcQStyledItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr".}
proc fcQStyledItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_paint".}
proc fcQStyledItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_sizeHint".}
proc fcQStyledItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_createEditor".}
proc fcQStyledItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QStyledItemDelegate_setEditorData".}
proc fcQStyledItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QStyledItemDelegate_setModelData".}
proc fcQStyledItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_updateEditorGeometry".}
proc fcQStyledItemDelegate_itemEditorFactory(self: pointer): pointer {.importc: "QStyledItemDelegate_itemEditorFactory".}
proc fcQStyledItemDelegate_setItemEditorFactory(self: pointer, factory: pointer): void {.importc: "QStyledItemDelegate_setItemEditorFactory".}
proc fcQStyledItemDelegate_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.importc: "QStyledItemDelegate_displayText".}
proc fcQStyledItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr2".}
proc fcQStyledItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyledItemDelegate_tr3".}
proc fcQStyledItemDelegate_vtbl(self: pointer): pointer {.importc: "QStyledItemDelegate_vtbl".}
proc fcQStyledItemDelegate_vdata(self: pointer): pointer {.importc: "QStyledItemDelegate_vdata".}

type cQStyledItemDelegateVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createEditor*: proc(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setEditorData*: proc(self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setModelData*: proc(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometry*: proc(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  displayText*: proc(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  editorEvent*: proc(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  destroyEditor*: proc(self: pointer, editor: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  helpEvent*: proc(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintingRoles*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStyledItemDelegate_virtualbase_metaObject(self: pointer): pointer {.importc: "QStyledItemDelegate_virtualbase_metaObject".}
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
proc fcQStyledItemDelegate_virtualbase_paintingRoles(self: pointer): struct_miqt_array {.importc: "QStyledItemDelegate_virtualbase_paintingRoles".}
proc fcQStyledItemDelegate_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStyledItemDelegate_virtualbase_event".}
proc fcQStyledItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStyledItemDelegate_virtualbase_timerEvent".}
proc fcQStyledItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStyledItemDelegate_virtualbase_childEvent".}
proc fcQStyledItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStyledItemDelegate_virtualbase_customEvent".}
proc fcQStyledItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStyledItemDelegate_virtualbase_connectNotify".}
proc fcQStyledItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStyledItemDelegate_virtualbase_disconnectNotify".}
proc fcQStyledItemDelegate_protectedbase_sender(self: pointer): pointer {.importc: "QStyledItemDelegate_protectedbase_sender".}
proc fcQStyledItemDelegate_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QStyledItemDelegate_protectedbase_senderSignalIndex".}
proc fcQStyledItemDelegate_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStyledItemDelegate_protectedbase_receivers".}
proc fcQStyledItemDelegate_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStyledItemDelegate_protectedbase_isSignalConnected".}
proc fcQStyledItemDelegate_new(vtbl, vdata: pointer): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new".}
proc fcQStyledItemDelegate_new2(vtbl, vdata: pointer, parent: pointer): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new2".}
proc fcQStyledItemDelegate_staticMetaObject(): pointer {.importc: "QStyledItemDelegate_staticMetaObject".}

proc metaObject*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cstring): pointer =
  fcQStyledItemDelegate_metacast(self.h, param1)

proc metacall*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyledItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring): string =
  let v_ms = fcQStyledItemDelegate_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc paint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyledItemDelegate_sizeHint(self.h, option.h, index.h), owned: true)

proc createEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStyledItemDelegate_createEditor(self.h, parent.h, option.h, index.h), owned: false)

proc setEditorData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc itemEditorFactory*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qitemeditorfactory_types.QItemEditorFactory =
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQStyledItemDelegate_itemEditorFactory(self.h), owned: false)

proc setItemEditorFactory*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, factory: gen_qitemeditorfactory_types.QItemEditorFactory): void =
  fcQStyledItemDelegate_setItemEditorFactory(self.h, factory.h)

proc displayText*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fcQStyledItemDelegate_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQStyledItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyledItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QStyledItemDelegateVTable* {.inheritable, pure.} = object
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

proc QStyledItemDelegatemetaObject*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_virtualbase_metaObject(self.h), owned: false)

proc QStyledItemDelegatemetacast*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cstring): pointer =
  fcQStyledItemDelegate_virtualbase_metacast(self.h, param1)

proc QStyledItemDelegatemetacall*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyledItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QStyledItemDelegatepaint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

proc QStyledItemDelegatesizeHint*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyledItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h), owned: true)

proc QStyledItemDelegatecreateEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStyledItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h), owned: false)

proc QStyledItemDelegatesetEditorData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

proc QStyledItemDelegatesetModelData*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

proc QStyledItemDelegateupdateEditorGeometry*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc QStyledItemDelegatedisplayText*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string =
  let v_ms = fcQStyledItemDelegate_virtualbase_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QStyledItemDelegateinitStyleOption*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_initStyleOption(self.h, option.h, index.h)

proc QStyledItemDelegateeventFilter*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStyledItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc QStyledItemDelegateeditorEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStyledItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc QStyledItemDelegatedestroyEditor*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyledItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

proc QStyledItemDelegatehelpEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStyledItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc QStyledItemDelegatepaintingRoles*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate): seq[cint] =
  var v_ma = fcQStyledItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc QStyledItemDelegateevent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fcQStyledItemDelegate_virtualbase_event(self.h, event.h)

proc QStyledItemDelegatetimerEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStyledItemDelegate_virtualbase_timerEvent(self.h, event.h)

proc QStyledItemDelegatechildEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStyledItemDelegate_virtualbase_childEvent(self.h, event.h)

proc QStyledItemDelegatecustomEvent*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fcQStyledItemDelegate_virtualbase_customEvent(self.h, event.h)

proc QStyledItemDelegateconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStyledItemDelegate_virtualbase_connectNotify(self.h, signal.h)

proc QStyledItemDelegatedisconnectNotify*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStyledItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQStyledItemDelegate_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStyledItemDelegate_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQStyledItemDelegate_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStyledItemDelegate_vtable_callback_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc fcQStyledItemDelegate_vtable_callback_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStyledItemDelegate_vtable_callback_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].createEditor(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStyledItemDelegate_vtable_callback_setEditorData(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setEditorData(self, slotval1, slotval2)

proc fcQStyledItemDelegate_vtable_callback_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setModelData(self, slotval1, slotval2, slotval3)

proc fcQStyledItemDelegate_vtable_callback_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].updateEditorGeometry(self, slotval1, slotval2, slotval3)

proc fcQStyledItemDelegate_vtable_callback_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval2 = gen_qlocale_types.QLocale(h: locale, owned: false)
  var virtualReturn = vtbl[].displayText(self, slotval1, slotval2)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQStyledItemDelegate_vtable_callback_initStyleOption(self: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].initStyleOption(self, slotval1, slotval2)

proc fcQStyledItemDelegate_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQStyledItemDelegate_vtable_callback_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].editorEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQStyledItemDelegate_vtable_callback_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].destroyEditor(self, slotval1, slotval2)

proc fcQStyledItemDelegate_vtable_callback_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qevent_types.QHelpEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].helpEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQStyledItemDelegate_vtable_callback_paintingRoles(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  var virtualReturn = vtbl[].paintingRoles(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQStyledItemDelegate_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQStyledItemDelegate_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQStyledItemDelegate_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQStyledItemDelegate_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQStyledItemDelegate_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQStyledItemDelegate_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
  let self = QStyledItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStyledItemDelegate* {.inheritable.} = ref object of QStyledItemDelegate
  vtbl*: cQStyledItemDelegateVTable

method metaObject*(self: VirtualQStyledItemDelegate): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStyledItemDelegatemetaObject(self[])
method metacast*(self: VirtualQStyledItemDelegate, param1: cstring): pointer {.base.} =
  QStyledItemDelegatemetacast(self[], param1)
method metacall*(self: VirtualQStyledItemDelegate, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStyledItemDelegatemetacall(self[], param1, param2, param3)
method paint*(self: VirtualQStyledItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStyledItemDelegatepaint(self[], painter, option, index)
method sizeHint*(self: VirtualQStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QStyledItemDelegatesizeHint(self[], option, index)
method createEditor*(self: VirtualQStyledItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget {.base.} =
  QStyledItemDelegatecreateEditor(self[], parent, option, index)
method setEditorData*(self: VirtualQStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStyledItemDelegatesetEditorData(self[], editor, index)
method setModelData*(self: VirtualQStyledItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStyledItemDelegatesetModelData(self[], editor, model, index)
method updateEditorGeometry*(self: VirtualQStyledItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStyledItemDelegateupdateEditorGeometry(self[], editor, option, index)
method displayText*(self: VirtualQStyledItemDelegate, value: gen_qvariant_types.QVariant, locale: gen_qlocale_types.QLocale): string {.base.} =
  QStyledItemDelegatedisplayText(self[], value, locale)
method initStyleOption*(self: VirtualQStyledItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStyledItemDelegateinitStyleOption(self[], option, index)
method eventFilter*(self: VirtualQStyledItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStyledItemDelegateeventFilter(self[], objectVal, event)
method editorEvent*(self: VirtualQStyledItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStyledItemDelegateeditorEvent(self[], event, model, option, index)
method destroyEditor*(self: VirtualQStyledItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStyledItemDelegatedestroyEditor(self[], editor, index)
method helpEvent*(self: VirtualQStyledItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStyledItemDelegatehelpEvent(self[], event, view, option, index)
method paintingRoles*(self: VirtualQStyledItemDelegate): seq[cint] {.base.} =
  QStyledItemDelegatepaintingRoles(self[])
method event*(self: VirtualQStyledItemDelegate, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStyledItemDelegateevent(self[], event)
method timerEvent*(self: VirtualQStyledItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStyledItemDelegatetimerEvent(self[], event)
method childEvent*(self: VirtualQStyledItemDelegate, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStyledItemDelegatechildEvent(self[], event)
method customEvent*(self: VirtualQStyledItemDelegate, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStyledItemDelegatecustomEvent(self[], event)
method connectNotify*(self: VirtualQStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStyledItemDelegateconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStyledItemDelegatedisconnectNotify(self[], signal)

proc fcQStyledItemDelegate_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStyledItemDelegate_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQStyledItemDelegate_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStyledItemDelegate_method_callback_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

proc fcQStyledItemDelegate_method_callback_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStyledItemDelegate_method_callback_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.createEditor(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStyledItemDelegate_method_callback_setEditorData(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setEditorData(slotval1, slotval2)

proc fcQStyledItemDelegate_method_callback_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setModelData(slotval1, slotval2, slotval3)

proc fcQStyledItemDelegate_method_callback_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.updateEditorGeometry(slotval1, slotval2, slotval3)

proc fcQStyledItemDelegate_method_callback_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval2 = gen_qlocale_types.QLocale(h: locale, owned: false)
  var virtualReturn = inst.displayText(slotval1, slotval2)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQStyledItemDelegate_method_callback_initStyleOption(self: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.initStyleOption(slotval1, slotval2)

proc fcQStyledItemDelegate_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQStyledItemDelegate_method_callback_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.editorEvent(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQStyledItemDelegate_method_callback_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.destroyEditor(slotval1, slotval2)

proc fcQStyledItemDelegate_method_callback_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qevent_types.QHelpEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.helpEvent(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQStyledItemDelegate_method_callback_paintingRoles(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  var virtualReturn = inst.paintingRoles()
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQStyledItemDelegate_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQStyledItemDelegate_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQStyledItemDelegate_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQStyledItemDelegate_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQStyledItemDelegate_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQStyledItemDelegate_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStyledItemDelegate](fcQStyledItemDelegate_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStyledItemDelegate_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate): cint =
  fcQStyledItemDelegate_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: cstring): cint =
  fcQStyledItemDelegate_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstyleditemdelegate_types.QStyledItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStyledItemDelegate_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate,
    vtbl: ref QStyledItemDelegateVTable = nil): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  let vtbl = if vtbl == nil: new QStyledItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStyledItemDelegate_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStyledItemDelegate_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStyledItemDelegate_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQStyledItemDelegate_vtable_callback_paint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQStyledItemDelegate_vtable_callback_sizeHint
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = fcQStyledItemDelegate_vtable_callback_createEditor
  if not isNil(vtbl[].setEditorData):
    vtbl[].vtbl.setEditorData = fcQStyledItemDelegate_vtable_callback_setEditorData
  if not isNil(vtbl[].setModelData):
    vtbl[].vtbl.setModelData = fcQStyledItemDelegate_vtable_callback_setModelData
  if not isNil(vtbl[].updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = fcQStyledItemDelegate_vtable_callback_updateEditorGeometry
  if not isNil(vtbl[].displayText):
    vtbl[].vtbl.displayText = fcQStyledItemDelegate_vtable_callback_displayText
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQStyledItemDelegate_vtable_callback_initStyleOption
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStyledItemDelegate_vtable_callback_eventFilter
  if not isNil(vtbl[].editorEvent):
    vtbl[].vtbl.editorEvent = fcQStyledItemDelegate_vtable_callback_editorEvent
  if not isNil(vtbl[].destroyEditor):
    vtbl[].vtbl.destroyEditor = fcQStyledItemDelegate_vtable_callback_destroyEditor
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = fcQStyledItemDelegate_vtable_callback_helpEvent
  if not isNil(vtbl[].paintingRoles):
    vtbl[].vtbl.paintingRoles = fcQStyledItemDelegate_vtable_callback_paintingRoles
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStyledItemDelegate_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStyledItemDelegate_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStyledItemDelegate_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStyledItemDelegate_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStyledItemDelegate_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStyledItemDelegate_vtable_callback_disconnectNotify
  gen_qstyleditemdelegate_types.QStyledItemDelegate(h: fcQStyledItemDelegate_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStyledItemDelegateVTable = nil): gen_qstyleditemdelegate_types.QStyledItemDelegate =
  let vtbl = if vtbl == nil: new QStyledItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStyledItemDelegateVTable](fcQStyledItemDelegate_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStyledItemDelegate_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStyledItemDelegate_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStyledItemDelegate_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQStyledItemDelegate_vtable_callback_paint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQStyledItemDelegate_vtable_callback_sizeHint
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = fcQStyledItemDelegate_vtable_callback_createEditor
  if not isNil(vtbl[].setEditorData):
    vtbl[].vtbl.setEditorData = fcQStyledItemDelegate_vtable_callback_setEditorData
  if not isNil(vtbl[].setModelData):
    vtbl[].vtbl.setModelData = fcQStyledItemDelegate_vtable_callback_setModelData
  if not isNil(vtbl[].updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = fcQStyledItemDelegate_vtable_callback_updateEditorGeometry
  if not isNil(vtbl[].displayText):
    vtbl[].vtbl.displayText = fcQStyledItemDelegate_vtable_callback_displayText
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQStyledItemDelegate_vtable_callback_initStyleOption
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStyledItemDelegate_vtable_callback_eventFilter
  if not isNil(vtbl[].editorEvent):
    vtbl[].vtbl.editorEvent = fcQStyledItemDelegate_vtable_callback_editorEvent
  if not isNil(vtbl[].destroyEditor):
    vtbl[].vtbl.destroyEditor = fcQStyledItemDelegate_vtable_callback_destroyEditor
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = fcQStyledItemDelegate_vtable_callback_helpEvent
  if not isNil(vtbl[].paintingRoles):
    vtbl[].vtbl.paintingRoles = fcQStyledItemDelegate_vtable_callback_paintingRoles
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStyledItemDelegate_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStyledItemDelegate_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStyledItemDelegate_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStyledItemDelegate_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStyledItemDelegate_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStyledItemDelegate_vtable_callback_disconnectNotify
  gen_qstyleditemdelegate_types.QStyledItemDelegate(h: fcQStyledItemDelegate_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQStyledItemDelegate_mvtbl = cQStyledItemDelegateVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStyledItemDelegate()[])](self.fcQStyledItemDelegate_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQStyledItemDelegate_method_callback_metaObject,
  metacast: fcQStyledItemDelegate_method_callback_metacast,
  metacall: fcQStyledItemDelegate_method_callback_metacall,
  paint: fcQStyledItemDelegate_method_callback_paint,
  sizeHint: fcQStyledItemDelegate_method_callback_sizeHint,
  createEditor: fcQStyledItemDelegate_method_callback_createEditor,
  setEditorData: fcQStyledItemDelegate_method_callback_setEditorData,
  setModelData: fcQStyledItemDelegate_method_callback_setModelData,
  updateEditorGeometry: fcQStyledItemDelegate_method_callback_updateEditorGeometry,
  displayText: fcQStyledItemDelegate_method_callback_displayText,
  initStyleOption: fcQStyledItemDelegate_method_callback_initStyleOption,
  eventFilter: fcQStyledItemDelegate_method_callback_eventFilter,
  editorEvent: fcQStyledItemDelegate_method_callback_editorEvent,
  destroyEditor: fcQStyledItemDelegate_method_callback_destroyEditor,
  helpEvent: fcQStyledItemDelegate_method_callback_helpEvent,
  paintingRoles: fcQStyledItemDelegate_method_callback_paintingRoles,
  event: fcQStyledItemDelegate_method_callback_event,
  timerEvent: fcQStyledItemDelegate_method_callback_timerEvent,
  childEvent: fcQStyledItemDelegate_method_callback_childEvent,
  customEvent: fcQStyledItemDelegate_method_callback_customEvent,
  connectNotify: fcQStyledItemDelegate_method_callback_connectNotify,
  disconnectNotify: fcQStyledItemDelegate_method_callback_disconnectNotify,
)
proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate,
    inst: VirtualQStyledItemDelegate) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStyledItemDelegate_new(addr(cQStyledItemDelegate_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qstyleditemdelegate_types.QStyledItemDelegate,
    parent: gen_qobject_types.QObject,
    inst: VirtualQStyledItemDelegate) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStyledItemDelegate_new2(addr(cQStyledItemDelegate_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qstyleditemdelegate_types.QStyledItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyledItemDelegate_staticMetaObject())
