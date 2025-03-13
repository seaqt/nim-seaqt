import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
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
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
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
  gen_qvariant_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qabstractitemdelegate,
  gen_qabstractitemview_types,
  gen_qitemeditorfactory_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQItemDelegate*{.exportc: "QItemDelegate", incompleteStruct.} = object

proc fcQItemDelegate_metaObject(self: pointer): pointer {.importc: "QItemDelegate_metaObject".}
proc fcQItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemDelegate_metacast".}
proc fcQItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemDelegate_metacall".}
proc fcQItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QItemDelegate_tr".}
proc fcQItemDelegate_hasClipping(self: pointer): bool {.importc: "QItemDelegate_hasClipping".}
proc fcQItemDelegate_setClipping(self: pointer, clip: bool): void {.importc: "QItemDelegate_setClipping".}
proc fcQItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_paint".}
proc fcQItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_sizeHint".}
proc fcQItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_createEditor".}
proc fcQItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QItemDelegate_setEditorData".}
proc fcQItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QItemDelegate_setModelData".}
proc fcQItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_updateEditorGeometry".}
proc fcQItemDelegate_itemEditorFactory(self: pointer): pointer {.importc: "QItemDelegate_itemEditorFactory".}
proc fcQItemDelegate_setItemEditorFactory(self: pointer, factory: pointer): void {.importc: "QItemDelegate_setItemEditorFactory".}
proc fcQItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemDelegate_tr2".}
proc fcQItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemDelegate_tr3".}
proc fcQItemDelegate_vtbl(self: pointer): pointer {.importc: "QItemDelegate_vtbl".}
proc fcQItemDelegate_vdata(self: pointer): pointer {.importc: "QItemDelegate_vdata".}
type cQItemDelegateVTable {.pure.} = object
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
  drawDisplay*: proc(self: pointer, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  drawDecoration*: proc(self: pointer, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void {.cdecl, raises: [], gcsafe.}
  drawFocus*: proc(self: pointer, painter: pointer, option: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  drawCheck*: proc(self: pointer, painter: pointer, option: pointer, rect: pointer, state: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQItemDelegate_virtualbase_metaObject(self: pointer): pointer {.importc: "QItemDelegate_virtualbase_metaObject".}
proc fcQItemDelegate_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemDelegate_virtualbase_metacast".}
proc fcQItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemDelegate_virtualbase_metacall".}
proc fcQItemDelegate_virtualbase_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_virtualbase_paint".}
proc fcQItemDelegate_virtualbase_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_virtualbase_sizeHint".}
proc fcQItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_virtualbase_createEditor".}
proc fcQItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QItemDelegate_virtualbase_setEditorData".}
proc fcQItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QItemDelegate_virtualbase_setModelData".}
proc fcQItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQItemDelegate_virtualbase_drawDisplay(self: pointer, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void {.importc: "QItemDelegate_virtualbase_drawDisplay".}
proc fcQItemDelegate_virtualbase_drawDecoration(self: pointer, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void {.importc: "QItemDelegate_virtualbase_drawDecoration".}
proc fcQItemDelegate_virtualbase_drawFocus(self: pointer, painter: pointer, option: pointer, rect: pointer): void {.importc: "QItemDelegate_virtualbase_drawFocus".}
proc fcQItemDelegate_virtualbase_drawCheck(self: pointer, painter: pointer, option: pointer, rect: pointer, state: cint): void {.importc: "QItemDelegate_virtualbase_drawCheck".}
proc fcQItemDelegate_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QItemDelegate_virtualbase_eventFilter".}
proc fcQItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QItemDelegate_virtualbase_editorEvent".}
proc fcQItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QItemDelegate_virtualbase_destroyEditor".}
proc fcQItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QItemDelegate_virtualbase_helpEvent".}
proc fcQItemDelegate_virtualbase_paintingRoles(self: pointer): struct_miqt_array {.importc: "QItemDelegate_virtualbase_paintingRoles".}
proc fcQItemDelegate_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QItemDelegate_virtualbase_event".}
proc fcQItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QItemDelegate_virtualbase_timerEvent".}
proc fcQItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QItemDelegate_virtualbase_childEvent".}
proc fcQItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QItemDelegate_virtualbase_customEvent".}
proc fcQItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QItemDelegate_virtualbase_connectNotify".}
proc fcQItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QItemDelegate_virtualbase_disconnectNotify".}
proc fcQItemDelegate_protectedbase_drawBackground(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_protectedbase_drawBackground".}
proc fcQItemDelegate_protectedbase_doLayout(self: pointer, option: pointer, checkRect: pointer, iconRect: pointer, textRect: pointer, hint: bool): void {.importc: "QItemDelegate_protectedbase_doLayout".}
proc fcQItemDelegate_protectedbase_rect(self: pointer, option: pointer, index: pointer, role: cint): pointer {.importc: "QItemDelegate_protectedbase_rect".}
proc fcQItemDelegate_protectedbase_setOptions(self: pointer, index: pointer, option: pointer): pointer {.importc: "QItemDelegate_protectedbase_setOptions".}
proc fcQItemDelegate_protectedbase_decoration(self: pointer, option: pointer, variant: pointer): pointer {.importc: "QItemDelegate_protectedbase_decoration".}
proc fcQItemDelegate_protectedbase_doCheck(self: pointer, option: pointer, bounding: pointer, variant: pointer): pointer {.importc: "QItemDelegate_protectedbase_doCheck".}
proc fcQItemDelegate_protectedbase_textRectangle(self: pointer, painter: pointer, rect: pointer, font: pointer, text: struct_miqt_string): pointer {.importc: "QItemDelegate_protectedbase_textRectangle".}
proc fcQItemDelegate_protectedbase_sender(self: pointer): pointer {.importc: "QItemDelegate_protectedbase_sender".}
proc fcQItemDelegate_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QItemDelegate_protectedbase_senderSignalIndex".}
proc fcQItemDelegate_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QItemDelegate_protectedbase_receivers".}
proc fcQItemDelegate_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QItemDelegate_protectedbase_isSignalConnected".}
proc fcQItemDelegate_new(vtbl, vdata: pointer): ptr cQItemDelegate {.importc: "QItemDelegate_new".}
proc fcQItemDelegate_new2(vtbl, vdata: pointer, parent: pointer): ptr cQItemDelegate {.importc: "QItemDelegate_new2".}
proc fcQItemDelegate_staticMetaObject(): pointer {.importc: "QItemDelegate_staticMetaObject".}

proc metaObject*(self: gen_qitemdelegate_types.QItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemDelegate_metaObject(self.h), owned: false)

proc metacast*(self: gen_qitemdelegate_types.QItemDelegate, param1: cstring): pointer =
  fcQItemDelegate_metacast(self.h, param1)

proc metacall*(self: gen_qitemdelegate_types.QItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qitemdelegate_types.QItemDelegate, s: cstring): string =
  let v_ms = fcQItemDelegate_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasClipping*(self: gen_qitemdelegate_types.QItemDelegate): bool =
  fcQItemDelegate_hasClipping(self.h)

proc setClipping*(self: gen_qitemdelegate_types.QItemDelegate, clip: bool): void =
  fcQItemDelegate_setClipping(self.h, clip)

proc paint*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQItemDelegate_sizeHint(self.h, option.h, index.h), owned: true)

proc createEditor*(self: gen_qitemdelegate_types.QItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQItemDelegate_createEditor(self.h, parent.h, option.h, index.h), owned: false)

proc setEditorData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc itemEditorFactory*(self: gen_qitemdelegate_types.QItemDelegate): gen_qitemeditorfactory_types.QItemEditorFactory =
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQItemDelegate_itemEditorFactory(self.h), owned: false)

proc setItemEditorFactory*(self: gen_qitemdelegate_types.QItemDelegate, factory: gen_qitemeditorfactory_types.QItemEditorFactory): void =
  fcQItemDelegate_setItemEditorFactory(self.h, factory.h)

proc tr*(_: type gen_qitemdelegate_types.QItemDelegate, s: cstring, c: cstring): string =
  let v_ms = fcQItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qitemdelegate_types.QItemDelegate, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QItemDelegatemetaObjectProc* = proc(self: QItemDelegate): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QItemDelegatemetacastProc* = proc(self: QItemDelegate, param1: cstring): pointer {.raises: [], gcsafe.}
type QItemDelegatemetacallProc* = proc(self: QItemDelegate, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QItemDelegatepaintProc* = proc(self: QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QItemDelegatesizeHintProc* = proc(self: QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QItemDelegatecreateEditorProc* = proc(self: QItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QItemDelegatesetEditorDataProc* = proc(self: QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QItemDelegatesetModelDataProc* = proc(self: QItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QItemDelegateupdateEditorGeometryProc* = proc(self: QItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QItemDelegatedrawDisplayProc* = proc(self: QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, text: openArray[char]): void {.raises: [], gcsafe.}
type QItemDelegatedrawDecorationProc* = proc(self: QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, pixmap: gen_qpixmap_types.QPixmap): void {.raises: [], gcsafe.}
type QItemDelegatedrawFocusProc* = proc(self: QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QItemDelegatedrawCheckProc* = proc(self: QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, state: cint): void {.raises: [], gcsafe.}
type QItemDelegateeventFilterProc* = proc(self: QItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QItemDelegateeditorEventProc* = proc(self: QItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QItemDelegatedestroyEditorProc* = proc(self: QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QItemDelegatehelpEventProc* = proc(self: QItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QItemDelegatepaintingRolesProc* = proc(self: QItemDelegate): seq[cint] {.raises: [], gcsafe.}
type QItemDelegateeventProc* = proc(self: QItemDelegate, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QItemDelegatetimerEventProc* = proc(self: QItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QItemDelegatechildEventProc* = proc(self: QItemDelegate, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QItemDelegatecustomEventProc* = proc(self: QItemDelegate, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QItemDelegateconnectNotifyProc* = proc(self: QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QItemDelegatedisconnectNotifyProc* = proc(self: QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QItemDelegateVTable* {.inheritable, pure.} = object
  vtbl: cQItemDelegateVTable
  metaObject*: QItemDelegatemetaObjectProc
  metacast*: QItemDelegatemetacastProc
  metacall*: QItemDelegatemetacallProc
  paint*: QItemDelegatepaintProc
  sizeHint*: QItemDelegatesizeHintProc
  createEditor*: QItemDelegatecreateEditorProc
  setEditorData*: QItemDelegatesetEditorDataProc
  setModelData*: QItemDelegatesetModelDataProc
  updateEditorGeometry*: QItemDelegateupdateEditorGeometryProc
  drawDisplay*: QItemDelegatedrawDisplayProc
  drawDecoration*: QItemDelegatedrawDecorationProc
  drawFocus*: QItemDelegatedrawFocusProc
  drawCheck*: QItemDelegatedrawCheckProc
  eventFilter*: QItemDelegateeventFilterProc
  editorEvent*: QItemDelegateeditorEventProc
  destroyEditor*: QItemDelegatedestroyEditorProc
  helpEvent*: QItemDelegatehelpEventProc
  paintingRoles*: QItemDelegatepaintingRolesProc
  event*: QItemDelegateeventProc
  timerEvent*: QItemDelegatetimerEventProc
  childEvent*: QItemDelegatechildEventProc
  customEvent*: QItemDelegatecustomEventProc
  connectNotify*: QItemDelegateconnectNotifyProc
  disconnectNotify*: QItemDelegatedisconnectNotifyProc
proc QItemDelegatemetaObject*(self: gen_qitemdelegate_types.QItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemDelegate_virtualbase_metaObject(self.h), owned: false)

proc cQItemDelegate_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QItemDelegatemetacast*(self: gen_qitemdelegate_types.QItemDelegate, param1: cstring): pointer =
  fcQItemDelegate_virtualbase_metacast(self.h, param1)

proc cQItemDelegate_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QItemDelegatemetacall*(self: gen_qitemdelegate_types.QItemDelegate, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQItemDelegate_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QItemDelegatepaint*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

proc cQItemDelegate_vtable_callback_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QItemDelegatesizeHint*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h), owned: true)

proc cQItemDelegate_vtable_callback_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QItemDelegatecreateEditor*(self: gen_qitemdelegate_types.QItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h), owned: false)

proc cQItemDelegate_vtable_callback_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].createEditor(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QItemDelegatesetEditorData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

proc cQItemDelegate_vtable_callback_setEditorData(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setEditorData(self, slotval1, slotval2)

proc QItemDelegatesetModelData*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

proc cQItemDelegate_vtable_callback_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setModelData(self, slotval1, slotval2, slotval3)

proc QItemDelegateupdateEditorGeometry*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc cQItemDelegate_vtable_callback_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].updateEditorGeometry(self, slotval1, slotval2, slotval3)

proc QItemDelegatedrawDisplay*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, text: openArray[char]): void =
  fcQItemDelegate_virtualbase_drawDisplay(self.h, painter.h, option.h, rect.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc cQItemDelegate_vtable_callback_drawDisplay(self: pointer, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval4 = vtextx_ret
  vtbl[].drawDisplay(self, slotval1, slotval2, slotval3, slotval4)

proc QItemDelegatedrawDecoration*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQItemDelegate_virtualbase_drawDecoration(self.h, painter.h, option.h, rect.h, pixmap.h)

proc cQItemDelegate_vtable_callback_drawDecoration(self: pointer, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  vtbl[].drawDecoration(self, slotval1, slotval2, slotval3, slotval4)

proc QItemDelegatedrawFocus*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect): void =
  fcQItemDelegate_virtualbase_drawFocus(self.h, painter.h, option.h, rect.h)

proc cQItemDelegate_vtable_callback_drawFocus(self: pointer, painter: pointer, option: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  vtbl[].drawFocus(self, slotval1, slotval2, slotval3)

proc QItemDelegatedrawCheck*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, state: cint): void =
  fcQItemDelegate_virtualbase_drawCheck(self.h, painter.h, option.h, rect.h, cint(state))

proc cQItemDelegate_vtable_callback_drawCheck(self: pointer, painter: pointer, option: pointer, rect: pointer, state: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval4 = cint(state)
  vtbl[].drawCheck(self, slotval1, slotval2, slotval3, slotval4)

proc QItemDelegateeventFilter*(self: gen_qitemdelegate_types.QItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc cQItemDelegate_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QItemDelegateeditorEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc cQItemDelegate_vtable_callback_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].editorEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QItemDelegatedestroyEditor*(self: gen_qitemdelegate_types.QItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

proc cQItemDelegate_vtable_callback_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].destroyEditor(self, slotval1, slotval2)

proc QItemDelegatehelpEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc cQItemDelegate_vtable_callback_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qevent_types.QHelpEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].helpEvent(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QItemDelegatepaintingRoles*(self: gen_qitemdelegate_types.QItemDelegate): seq[cint] =
  var v_ma = fcQItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc cQItemDelegate_vtable_callback_paintingRoles(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  var virtualReturn = vtbl[].paintingRoles(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QItemDelegateevent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QEvent): bool =
  fcQItemDelegate_virtualbase_event(self.h, event.h)

proc cQItemDelegate_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QItemDelegatetimerEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQItemDelegate_virtualbase_timerEvent(self.h, event.h)

proc cQItemDelegate_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QItemDelegatechildEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QChildEvent): void =
  fcQItemDelegate_virtualbase_childEvent(self.h, event.h)

proc cQItemDelegate_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QItemDelegatecustomEvent*(self: gen_qitemdelegate_types.QItemDelegate, event: gen_qcoreevent_types.QEvent): void =
  fcQItemDelegate_virtualbase_customEvent(self.h, event.h)

proc cQItemDelegate_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QItemDelegateconnectNotify*(self: gen_qitemdelegate_types.QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQItemDelegate_virtualbase_connectNotify(self.h, signal.h)

proc cQItemDelegate_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QItemDelegatedisconnectNotify*(self: gen_qitemdelegate_types.QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

proc cQItemDelegate_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemDelegateVTable](fcQItemDelegate_vdata(self))
  let self = QItemDelegate(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQItemDelegate* {.inheritable.} = ref object of QItemDelegate
  vtbl*: cQItemDelegateVTable
method metaObject*(self: VirtualQItemDelegate): gen_qobjectdefs_types.QMetaObject {.base.} =
  QItemDelegatemetaObject(self[])
proc cQItemDelegate_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQItemDelegate, param1: cstring): pointer {.base.} =
  QItemDelegatemetacast(self[], param1)
proc cQItemDelegate_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQItemDelegate, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QItemDelegatemetacall(self[], param1, param2, param3)
proc cQItemDelegate_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method paint*(self: VirtualQItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QItemDelegatepaint(self[], painter, option, index)
proc cQItemDelegate_method_callback_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

method sizeHint*(self: VirtualQItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QItemDelegatesizeHint(self[], option, index)
proc cQItemDelegate_method_callback_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method createEditor*(self: VirtualQItemDelegate, parent: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget {.base.} =
  QItemDelegatecreateEditor(self[], parent, option, index)
proc cQItemDelegate_method_callback_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.createEditor(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setEditorData*(self: VirtualQItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QItemDelegatesetEditorData(self[], editor, index)
proc cQItemDelegate_method_callback_setEditorData(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setEditorData(slotval1, slotval2)

method setModelData*(self: VirtualQItemDelegate, editor: gen_qwidget_types.QWidget, model: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QItemDelegatesetModelData(self[], editor, model, index)
proc cQItemDelegate_method_callback_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setModelData(slotval1, slotval2, slotval3)

method updateEditorGeometry*(self: VirtualQItemDelegate, editor: gen_qwidget_types.QWidget, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QItemDelegateupdateEditorGeometry(self[], editor, option, index)
proc cQItemDelegate_method_callback_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.updateEditorGeometry(slotval1, slotval2, slotval3)

method drawDisplay*(self: VirtualQItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, text: openArray[char]): void {.base.} =
  QItemDelegatedrawDisplay(self[], painter, option, rect, text)
proc cQItemDelegate_method_callback_drawDisplay(self: pointer, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval4 = vtextx_ret
  inst.drawDisplay(slotval1, slotval2, slotval3, slotval4)

method drawDecoration*(self: VirtualQItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, pixmap: gen_qpixmap_types.QPixmap): void {.base.} =
  QItemDelegatedrawDecoration(self[], painter, option, rect, pixmap)
proc cQItemDelegate_method_callback_drawDecoration(self: pointer, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap, owned: false)
  inst.drawDecoration(slotval1, slotval2, slotval3, slotval4)

method drawFocus*(self: VirtualQItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect): void {.base.} =
  QItemDelegatedrawFocus(self[], painter, option, rect)
proc cQItemDelegate_method_callback_drawFocus(self: pointer, painter: pointer, option: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  inst.drawFocus(slotval1, slotval2, slotval3)

method drawCheck*(self: VirtualQItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, rect: gen_qrect_types.QRect, state: cint): void {.base.} =
  QItemDelegatedrawCheck(self[], painter, option, rect, state)
proc cQItemDelegate_method_callback_drawCheck(self: pointer, painter: pointer, option: pointer, rect: pointer, state: cint): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval3 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval4 = cint(state)
  inst.drawCheck(slotval1, slotval2, slotval3, slotval4)

method eventFilter*(self: VirtualQItemDelegate, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QItemDelegateeventFilter(self[], objectVal, event)
proc cQItemDelegate_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method editorEvent*(self: VirtualQItemDelegate, event: gen_qcoreevent_types.QEvent, model: gen_qabstractitemmodel_types.QAbstractItemModel, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QItemDelegateeditorEvent(self[], event, model, option, index)
proc cQItemDelegate_method_callback_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.editorEvent(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method destroyEditor*(self: VirtualQItemDelegate, editor: gen_qwidget_types.QWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QItemDelegatedestroyEditor(self[], editor, index)
proc cQItemDelegate_method_callback_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.destroyEditor(slotval1, slotval2)

method helpEvent*(self: VirtualQItemDelegate, event: gen_qevent_types.QHelpEvent, view: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QItemDelegatehelpEvent(self[], event, view, option, index)
proc cQItemDelegate_method_callback_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qevent_types.QHelpEvent(h: event, owned: false)
  let slotval2 = gen_qabstractitemview_types.QAbstractItemView(h: view, owned: false)
  let slotval3 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.helpEvent(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method paintingRoles*(self: VirtualQItemDelegate): seq[cint] {.base.} =
  QItemDelegatepaintingRoles(self[])
proc cQItemDelegate_method_callback_paintingRoles(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  var virtualReturn = inst.paintingRoles()
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method event*(self: VirtualQItemDelegate, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QItemDelegateevent(self[], event)
proc cQItemDelegate_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQItemDelegate, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QItemDelegatetimerEvent(self[], event)
proc cQItemDelegate_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQItemDelegate, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QItemDelegatechildEvent(self[], event)
proc cQItemDelegate_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQItemDelegate, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QItemDelegatecustomEvent(self[], event)
proc cQItemDelegate_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QItemDelegateconnectNotify(self[], signal)
proc cQItemDelegate_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QItemDelegatedisconnectNotify(self[], signal)
proc cQItemDelegate_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemDelegate](fcQItemDelegate_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc drawBackground*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemDelegate_protectedbase_drawBackground(self.h, painter.h, option.h, index.h)

proc doLayout*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, checkRect: gen_qrect_types.QRect, iconRect: gen_qrect_types.QRect, textRect: gen_qrect_types.QRect, hint: bool): void =
  fcQItemDelegate_protectedbase_doLayout(self.h, option.h, checkRect.h, iconRect.h, textRect.h, hint)

proc rect*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQItemDelegate_protectedbase_rect(self.h, option.h, index.h, role), owned: true)

proc setOptions*(self: gen_qitemdelegate_types.QItemDelegate, index: gen_qabstractitemmodel_types.QModelIndex, option: gen_qstyleoption_types.QStyleOptionViewItem): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQItemDelegate_protectedbase_setOptions(self.h, index.h, option.h), owned: true)

proc decoration*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, variant: gen_qvariant_types.QVariant): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQItemDelegate_protectedbase_decoration(self.h, option.h, variant.h), owned: true)

proc doCheck*(self: gen_qitemdelegate_types.QItemDelegate, option: gen_qstyleoption_types.QStyleOptionViewItem, bounding: gen_qrect_types.QRect, variant: gen_qvariant_types.QVariant): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQItemDelegate_protectedbase_doCheck(self.h, option.h, bounding.h, variant.h), owned: true)

proc textRectangle*(self: gen_qitemdelegate_types.QItemDelegate, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, font: gen_qfont_types.QFont, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQItemDelegate_protectedbase_textRectangle(self.h, painter.h, rect.h, font.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc sender*(self: gen_qitemdelegate_types.QItemDelegate): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQItemDelegate_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qitemdelegate_types.QItemDelegate): cint =
  fcQItemDelegate_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qitemdelegate_types.QItemDelegate, signal: cstring): cint =
  fcQItemDelegate_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qitemdelegate_types.QItemDelegate, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQItemDelegate_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qitemdelegate_types.QItemDelegate,
    vtbl: ref QItemDelegateVTable = nil): gen_qitemdelegate_types.QItemDelegate =
  let vtbl = if vtbl == nil: new QItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemDelegateVTable](fcQItemDelegate_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQItemDelegate_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQItemDelegate_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQItemDelegate_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQItemDelegate_vtable_callback_paint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQItemDelegate_vtable_callback_sizeHint
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = cQItemDelegate_vtable_callback_createEditor
  if not isNil(vtbl[].setEditorData):
    vtbl[].vtbl.setEditorData = cQItemDelegate_vtable_callback_setEditorData
  if not isNil(vtbl[].setModelData):
    vtbl[].vtbl.setModelData = cQItemDelegate_vtable_callback_setModelData
  if not isNil(vtbl[].updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = cQItemDelegate_vtable_callback_updateEditorGeometry
  if not isNil(vtbl[].drawDisplay):
    vtbl[].vtbl.drawDisplay = cQItemDelegate_vtable_callback_drawDisplay
  if not isNil(vtbl[].drawDecoration):
    vtbl[].vtbl.drawDecoration = cQItemDelegate_vtable_callback_drawDecoration
  if not isNil(vtbl[].drawFocus):
    vtbl[].vtbl.drawFocus = cQItemDelegate_vtable_callback_drawFocus
  if not isNil(vtbl[].drawCheck):
    vtbl[].vtbl.drawCheck = cQItemDelegate_vtable_callback_drawCheck
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQItemDelegate_vtable_callback_eventFilter
  if not isNil(vtbl[].editorEvent):
    vtbl[].vtbl.editorEvent = cQItemDelegate_vtable_callback_editorEvent
  if not isNil(vtbl[].destroyEditor):
    vtbl[].vtbl.destroyEditor = cQItemDelegate_vtable_callback_destroyEditor
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = cQItemDelegate_vtable_callback_helpEvent
  if not isNil(vtbl[].paintingRoles):
    vtbl[].vtbl.paintingRoles = cQItemDelegate_vtable_callback_paintingRoles
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQItemDelegate_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQItemDelegate_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQItemDelegate_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQItemDelegate_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQItemDelegate_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQItemDelegate_vtable_callback_disconnectNotify
  gen_qitemdelegate_types.QItemDelegate(h: fcQItemDelegate_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qitemdelegate_types.QItemDelegate,
    parent: gen_qobject_types.QObject,
    vtbl: ref QItemDelegateVTable = nil): gen_qitemdelegate_types.QItemDelegate =
  let vtbl = if vtbl == nil: new QItemDelegateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemDelegateVTable](fcQItemDelegate_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQItemDelegate_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQItemDelegate_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQItemDelegate_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQItemDelegate_vtable_callback_paint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQItemDelegate_vtable_callback_sizeHint
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = cQItemDelegate_vtable_callback_createEditor
  if not isNil(vtbl[].setEditorData):
    vtbl[].vtbl.setEditorData = cQItemDelegate_vtable_callback_setEditorData
  if not isNil(vtbl[].setModelData):
    vtbl[].vtbl.setModelData = cQItemDelegate_vtable_callback_setModelData
  if not isNil(vtbl[].updateEditorGeometry):
    vtbl[].vtbl.updateEditorGeometry = cQItemDelegate_vtable_callback_updateEditorGeometry
  if not isNil(vtbl[].drawDisplay):
    vtbl[].vtbl.drawDisplay = cQItemDelegate_vtable_callback_drawDisplay
  if not isNil(vtbl[].drawDecoration):
    vtbl[].vtbl.drawDecoration = cQItemDelegate_vtable_callback_drawDecoration
  if not isNil(vtbl[].drawFocus):
    vtbl[].vtbl.drawFocus = cQItemDelegate_vtable_callback_drawFocus
  if not isNil(vtbl[].drawCheck):
    vtbl[].vtbl.drawCheck = cQItemDelegate_vtable_callback_drawCheck
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQItemDelegate_vtable_callback_eventFilter
  if not isNil(vtbl[].editorEvent):
    vtbl[].vtbl.editorEvent = cQItemDelegate_vtable_callback_editorEvent
  if not isNil(vtbl[].destroyEditor):
    vtbl[].vtbl.destroyEditor = cQItemDelegate_vtable_callback_destroyEditor
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = cQItemDelegate_vtable_callback_helpEvent
  if not isNil(vtbl[].paintingRoles):
    vtbl[].vtbl.paintingRoles = cQItemDelegate_vtable_callback_paintingRoles
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQItemDelegate_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQItemDelegate_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQItemDelegate_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQItemDelegate_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQItemDelegate_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQItemDelegate_vtable_callback_disconnectNotify
  gen_qitemdelegate_types.QItemDelegate(h: fcQItemDelegate_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQItemDelegate_mvtbl = cQItemDelegateVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQItemDelegate()[])](self.fcQItemDelegate_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQItemDelegate_method_callback_metaObject,
  metacast: cQItemDelegate_method_callback_metacast,
  metacall: cQItemDelegate_method_callback_metacall,
  paint: cQItemDelegate_method_callback_paint,
  sizeHint: cQItemDelegate_method_callback_sizeHint,
  createEditor: cQItemDelegate_method_callback_createEditor,
  setEditorData: cQItemDelegate_method_callback_setEditorData,
  setModelData: cQItemDelegate_method_callback_setModelData,
  updateEditorGeometry: cQItemDelegate_method_callback_updateEditorGeometry,
  drawDisplay: cQItemDelegate_method_callback_drawDisplay,
  drawDecoration: cQItemDelegate_method_callback_drawDecoration,
  drawFocus: cQItemDelegate_method_callback_drawFocus,
  drawCheck: cQItemDelegate_method_callback_drawCheck,
  eventFilter: cQItemDelegate_method_callback_eventFilter,
  editorEvent: cQItemDelegate_method_callback_editorEvent,
  destroyEditor: cQItemDelegate_method_callback_destroyEditor,
  helpEvent: cQItemDelegate_method_callback_helpEvent,
  paintingRoles: cQItemDelegate_method_callback_paintingRoles,
  event: cQItemDelegate_method_callback_event,
  timerEvent: cQItemDelegate_method_callback_timerEvent,
  childEvent: cQItemDelegate_method_callback_childEvent,
  customEvent: cQItemDelegate_method_callback_customEvent,
  connectNotify: cQItemDelegate_method_callback_connectNotify,
  disconnectNotify: cQItemDelegate_method_callback_disconnectNotify,
)
proc create*(T: type gen_qitemdelegate_types.QItemDelegate,
    inst: VirtualQItemDelegate) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemDelegate_new(addr(cQItemDelegate_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qitemdelegate_types.QItemDelegate,
    parent: gen_qobject_types.QObject,
    inst: VirtualQItemDelegate) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemDelegate_new2(addr(cQItemDelegate_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qitemdelegate_types.QItemDelegate): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemDelegate_staticMetaObject())
