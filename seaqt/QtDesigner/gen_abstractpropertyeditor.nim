import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_abstractpropertyeditor.cpp", QtDesignerCFlags).}


import ./gen_abstractpropertyeditor_types
export gen_abstractpropertyeditor_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtWidgets/gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qwidget

type cQDesignerPropertyEditorInterface*{.exportc: "QDesignerPropertyEditorInterface", incompleteStruct.} = object

proc fcQDesignerPropertyEditorInterface_metaObject(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_metaObject".}
proc fcQDesignerPropertyEditorInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerPropertyEditorInterface_metacast".}
proc fcQDesignerPropertyEditorInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerPropertyEditorInterface_metacall".}
proc fcQDesignerPropertyEditorInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerPropertyEditorInterface_tr".}
proc fcQDesignerPropertyEditorInterface_isReadOnly(self: pointer): bool {.importc: "QDesignerPropertyEditorInterface_isReadOnly".}
proc fcQDesignerPropertyEditorInterface_objectX(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_object".}
proc fcQDesignerPropertyEditorInterface_currentPropertyName(self: pointer): struct_seaqt_string {.importc: "QDesignerPropertyEditorInterface_currentPropertyName".}
proc fcQDesignerPropertyEditorInterface_propertyChanged(self: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerPropertyEditorInterface_propertyChanged".}
proc fcQDesignerPropertyEditorInterface_connect_propertyChanged(self: pointer, slot: int, callback: proc (slot: int, name: struct_seaqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerPropertyEditorInterface_connect_propertyChanged".}
proc fcQDesignerPropertyEditorInterface_setObject(self: pointer, objectVal: pointer): void {.importc: "QDesignerPropertyEditorInterface_setObject".}
proc fcQDesignerPropertyEditorInterface_setPropertyValue(self: pointer, name: struct_seaqt_string, value: pointer, changed: bool): void {.importc: "QDesignerPropertyEditorInterface_setPropertyValue".}
proc fcQDesignerPropertyEditorInterface_setReadOnly(self: pointer, readOnly: bool): void {.importc: "QDesignerPropertyEditorInterface_setReadOnly".}
proc fcQDesignerPropertyEditorInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerPropertyEditorInterface_tr2".}
proc fcQDesignerPropertyEditorInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerPropertyEditorInterface_tr3".}
proc fcQDesignerPropertyEditorInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerPropertyEditorInterface_vdata".}
proc fvdata_cQDesignerPropertyEditorInterface(self: pointer): pointer {.importc: "vdata_QDesignerPropertyEditorInterface".}

type cQDesignerPropertyEditorInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isReadOnly*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  objectX*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  currentPropertyName*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setObject*: proc(self: pointer, objectVal: pointer): void {.cdecl, raises: [], gcsafe.}
  setPropertyValue*: proc(self: pointer, name: struct_seaqt_string, value: pointer, changed: bool): void {.cdecl, raises: [], gcsafe.}
  setReadOnly*: proc(self: pointer, readOnly: bool): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerPropertyEditorInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_metaObject".}
proc fcQDesignerPropertyEditorInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_metacast".}
proc fcQDesignerPropertyEditorInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerPropertyEditorInterface_virtualbase_metacall".}
proc fcQDesignerPropertyEditorInterface_virtualbase_devType(self: pointer): cint {.importc: "QDesignerPropertyEditorInterface_virtualbase_devType".}
proc fcQDesignerPropertyEditorInterface_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_setVisible".}
proc fcQDesignerPropertyEditorInterface_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_sizeHint".}
proc fcQDesignerPropertyEditorInterface_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_minimumSizeHint".}
proc fcQDesignerPropertyEditorInterface_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesignerPropertyEditorInterface_virtualbase_heightForWidth".}
proc fcQDesignerPropertyEditorInterface_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDesignerPropertyEditorInterface_virtualbase_hasHeightForWidth".}
proc fcQDesignerPropertyEditorInterface_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_paintEngine".}
proc fcQDesignerPropertyEditorInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesignerPropertyEditorInterface_virtualbase_event".}
proc fcQDesignerPropertyEditorInterface_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_mousePressEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_mouseReleaseEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_mouseDoubleClickEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_mouseMoveEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_wheelEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_keyPressEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_keyReleaseEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_focusInEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_focusOutEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_enterEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_leaveEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_paintEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_moveEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_resizeEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_closeEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_contextMenuEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_tabletEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_actionEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_dragEnterEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_dragMoveEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_dragLeaveEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_dropEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_showEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_hideEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDesignerPropertyEditorInterface_virtualbase_nativeEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_changeEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDesignerPropertyEditorInterface_virtualbase_metric".}
proc fcQDesignerPropertyEditorInterface_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_initPainter".}
proc fcQDesignerPropertyEditorInterface_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_redirected".}
proc fcQDesignerPropertyEditorInterface_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_sharedPainter".}
proc fcQDesignerPropertyEditorInterface_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_inputMethodEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesignerPropertyEditorInterface_virtualbase_inputMethodQuery".}
proc fcQDesignerPropertyEditorInterface_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesignerPropertyEditorInterface_virtualbase_focusNextPrevChild".}
proc fcQDesignerPropertyEditorInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesignerPropertyEditorInterface_virtualbase_eventFilter".}
proc fcQDesignerPropertyEditorInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_timerEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_childEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_customEvent".}
proc fcQDesignerPropertyEditorInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_connectNotify".}
proc fcQDesignerPropertyEditorInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerPropertyEditorInterface_virtualbase_disconnectNotify".}
proc fcQDesignerPropertyEditorInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerPropertyEditorInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerPropertyEditorInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerPropertyEditorInterface_protectedbase_create".}
proc fcQDesignerPropertyEditorInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerPropertyEditorInterface_protectedbase_destroy".}
proc fcQDesignerPropertyEditorInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerPropertyEditorInterface_protectedbase_focusNextChild".}
proc fcQDesignerPropertyEditorInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerPropertyEditorInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerPropertyEditorInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerPropertyEditorInterface_protectedbase_sender".}
proc fcQDesignerPropertyEditorInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerPropertyEditorInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerPropertyEditorInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerPropertyEditorInterface_protectedbase_receivers".}
proc fcQDesignerPropertyEditorInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerPropertyEditorInterface_protectedbase_isSignalConnected".}
proc fcQDesignerPropertyEditorInterface_new(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQDesignerPropertyEditorInterface {.importc: "QDesignerPropertyEditorInterface_new".}
proc fcQDesignerPropertyEditorInterface_new2(vtbl: pointer, vdata: csize_t, parent: pointer, flags: cint): ptr cQDesignerPropertyEditorInterface {.importc: "QDesignerPropertyEditorInterface_new2".}
proc fcQDesignerPropertyEditorInterface_staticMetaObject(): pointer {.importc: "QDesignerPropertyEditorInterface_staticMetaObject".}
proc fcQDesignerPropertyEditorInterface_delete(self: pointer) {.importc: "QDesignerPropertyEditorInterface_delete".}

proc metaObject*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerPropertyEditorInterface_metaObject(self.h))

proc metacast*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cstring): pointer =
  fcQDesignerPropertyEditorInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerPropertyEditorInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, s: cstring): string =
  let v_ms = fcQDesignerPropertyEditorInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isReadOnly*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): bool =
  fcQDesignerPropertyEditorInterface_isReadOnly(self.h)

proc objectX*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerPropertyEditorInterface_objectX(self.h))

proc currentPropertyName*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): string =
  let v_ms = fcQDesignerPropertyEditorInterface_currentPropertyName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc propertyChanged*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerPropertyEditorInterface_propertyChanged(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

type QDesignerPropertyEditorInterfacepropertyChangedSlot* = proc(name: openArray[char], value: gen_qvariant_types.QVariant)
proc fcQDesignerPropertyEditorInterface_slot_callback_propertyChanged(slot: int, name: struct_seaqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerPropertyEditorInterfacepropertyChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2)

proc fcQDesignerPropertyEditorInterface_slot_callback_propertyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerPropertyEditorInterfacepropertyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPropertyChanged*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, slot: QDesignerPropertyEditorInterfacepropertyChangedSlot) =
  var tmp = new QDesignerPropertyEditorInterfacepropertyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerPropertyEditorInterface_connect_propertyChanged(self.h, cast[int](addr tmp[]), fcQDesignerPropertyEditorInterface_slot_callback_propertyChanged, fcQDesignerPropertyEditorInterface_slot_callback_propertyChanged_release)

proc setObject*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, objectVal: gen_qobject_types.QObject): void =
  fcQDesignerPropertyEditorInterface_setObject(self.h, objectVal.h)

proc setPropertyValue*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, name: openArray[char], value: gen_qvariant_types.QVariant, changed: bool): void =
  fcQDesignerPropertyEditorInterface_setPropertyValue(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h, changed)

proc setReadOnly*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, readOnly: bool): void =
  fcQDesignerPropertyEditorInterface_setReadOnly(self.h, readOnly)

proc tr*(_: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerPropertyEditorInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerPropertyEditorInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDesignerPropertyEditorInterfacemetaObjectProc* = proc(self: QDesignerPropertyEditorInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemetacastProc* = proc(self: QDesignerPropertyEditorInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemetacallProc* = proc(self: QDesignerPropertyEditorInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceisReadOnlyProc* = proc(self: QDesignerPropertyEditorInterface): bool {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceobjectXProc* = proc(self: QDesignerPropertyEditorInterface): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacecurrentPropertyNameProc* = proc(self: QDesignerPropertyEditorInterface): string {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacesetObjectProc* = proc(self: QDesignerPropertyEditorInterface, objectVal: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacesetPropertyValueProc* = proc(self: QDesignerPropertyEditorInterface, name: openArray[char], value: gen_qvariant_types.QVariant, changed: bool): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacesetReadOnlyProc* = proc(self: QDesignerPropertyEditorInterface, readOnly: bool): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacedevTypeProc* = proc(self: QDesignerPropertyEditorInterface): cint {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacesetVisibleProc* = proc(self: QDesignerPropertyEditorInterface, visible: bool): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacesizeHintProc* = proc(self: QDesignerPropertyEditorInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceminimumSizeHintProc* = proc(self: QDesignerPropertyEditorInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceheightForWidthProc* = proc(self: QDesignerPropertyEditorInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacehasHeightForWidthProc* = proc(self: QDesignerPropertyEditorInterface): bool {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacepaintEngineProc* = proc(self: QDesignerPropertyEditorInterface): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceeventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemousePressEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemouseReleaseEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemouseDoubleClickEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemouseMoveEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacewheelEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacekeyPressEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacekeyReleaseEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacefocusInEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacefocusOutEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceenterEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceleaveEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacepaintEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemoveEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceresizeEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacecloseEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacecontextMenuEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacetabletEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceactionEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacedragEnterEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacedragMoveEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacedragLeaveEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacedropEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceshowEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacehideEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacenativeEventProc* = proc(self: QDesignerPropertyEditorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacechangeEventProc* = proc(self: QDesignerPropertyEditorInterface, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacemetricProc* = proc(self: QDesignerPropertyEditorInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceinitPainterProc* = proc(self: QDesignerPropertyEditorInterface, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceredirectedProc* = proc(self: QDesignerPropertyEditorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacesharedPainterProc* = proc(self: QDesignerPropertyEditorInterface): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceinputMethodEventProc* = proc(self: QDesignerPropertyEditorInterface, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceinputMethodQueryProc* = proc(self: QDesignerPropertyEditorInterface, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacefocusNextPrevChildProc* = proc(self: QDesignerPropertyEditorInterface, next: bool): bool {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceeventFilterProc* = proc(self: QDesignerPropertyEditorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacetimerEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacechildEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacecustomEventProc* = proc(self: QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceconnectNotifyProc* = proc(self: QDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfacedisconnectNotifyProc* = proc(self: QDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerPropertyEditorInterfaceVTable* = object
  vtbl: cQDesignerPropertyEditorInterfaceVTable
  metaObject*: QDesignerPropertyEditorInterfacemetaObjectProc
  metacast*: QDesignerPropertyEditorInterfacemetacastProc
  metacall*: QDesignerPropertyEditorInterfacemetacallProc
  isReadOnly*: QDesignerPropertyEditorInterfaceisReadOnlyProc
  objectX*: QDesignerPropertyEditorInterfaceobjectXProc
  currentPropertyName*: QDesignerPropertyEditorInterfacecurrentPropertyNameProc
  setObject*: QDesignerPropertyEditorInterfacesetObjectProc
  setPropertyValue*: QDesignerPropertyEditorInterfacesetPropertyValueProc
  setReadOnly*: QDesignerPropertyEditorInterfacesetReadOnlyProc
  devType*: QDesignerPropertyEditorInterfacedevTypeProc
  setVisible*: QDesignerPropertyEditorInterfacesetVisibleProc
  sizeHint*: QDesignerPropertyEditorInterfacesizeHintProc
  minimumSizeHint*: QDesignerPropertyEditorInterfaceminimumSizeHintProc
  heightForWidth*: QDesignerPropertyEditorInterfaceheightForWidthProc
  hasHeightForWidth*: QDesignerPropertyEditorInterfacehasHeightForWidthProc
  paintEngine*: QDesignerPropertyEditorInterfacepaintEngineProc
  event*: QDesignerPropertyEditorInterfaceeventProc
  mousePressEvent*: QDesignerPropertyEditorInterfacemousePressEventProc
  mouseReleaseEvent*: QDesignerPropertyEditorInterfacemouseReleaseEventProc
  mouseDoubleClickEvent*: QDesignerPropertyEditorInterfacemouseDoubleClickEventProc
  mouseMoveEvent*: QDesignerPropertyEditorInterfacemouseMoveEventProc
  wheelEvent*: QDesignerPropertyEditorInterfacewheelEventProc
  keyPressEvent*: QDesignerPropertyEditorInterfacekeyPressEventProc
  keyReleaseEvent*: QDesignerPropertyEditorInterfacekeyReleaseEventProc
  focusInEvent*: QDesignerPropertyEditorInterfacefocusInEventProc
  focusOutEvent*: QDesignerPropertyEditorInterfacefocusOutEventProc
  enterEvent*: QDesignerPropertyEditorInterfaceenterEventProc
  leaveEvent*: QDesignerPropertyEditorInterfaceleaveEventProc
  paintEvent*: QDesignerPropertyEditorInterfacepaintEventProc
  moveEvent*: QDesignerPropertyEditorInterfacemoveEventProc
  resizeEvent*: QDesignerPropertyEditorInterfaceresizeEventProc
  closeEvent*: QDesignerPropertyEditorInterfacecloseEventProc
  contextMenuEvent*: QDesignerPropertyEditorInterfacecontextMenuEventProc
  tabletEvent*: QDesignerPropertyEditorInterfacetabletEventProc
  actionEvent*: QDesignerPropertyEditorInterfaceactionEventProc
  dragEnterEvent*: QDesignerPropertyEditorInterfacedragEnterEventProc
  dragMoveEvent*: QDesignerPropertyEditorInterfacedragMoveEventProc
  dragLeaveEvent*: QDesignerPropertyEditorInterfacedragLeaveEventProc
  dropEvent*: QDesignerPropertyEditorInterfacedropEventProc
  showEvent*: QDesignerPropertyEditorInterfaceshowEventProc
  hideEvent*: QDesignerPropertyEditorInterfacehideEventProc
  nativeEvent*: QDesignerPropertyEditorInterfacenativeEventProc
  changeEvent*: QDesignerPropertyEditorInterfacechangeEventProc
  metric*: QDesignerPropertyEditorInterfacemetricProc
  initPainter*: QDesignerPropertyEditorInterfaceinitPainterProc
  redirected*: QDesignerPropertyEditorInterfaceredirectedProc
  sharedPainter*: QDesignerPropertyEditorInterfacesharedPainterProc
  inputMethodEvent*: QDesignerPropertyEditorInterfaceinputMethodEventProc
  inputMethodQuery*: QDesignerPropertyEditorInterfaceinputMethodQueryProc
  focusNextPrevChild*: QDesignerPropertyEditorInterfacefocusNextPrevChildProc
  eventFilter*: QDesignerPropertyEditorInterfaceeventFilterProc
  timerEvent*: QDesignerPropertyEditorInterfacetimerEventProc
  childEvent*: QDesignerPropertyEditorInterfacechildEventProc
  customEvent*: QDesignerPropertyEditorInterfacecustomEventProc
  connectNotify*: QDesignerPropertyEditorInterfaceconnectNotifyProc
  disconnectNotify*: QDesignerPropertyEditorInterfacedisconnectNotifyProc

proc QDesignerPropertyEditorInterfacemetaObject*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerPropertyEditorInterface_virtualbase_metaObject(self.h))

proc QDesignerPropertyEditorInterfacemetacast*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cstring): pointer =
  fcQDesignerPropertyEditorInterface_virtualbase_metacast(self.h, param1)

proc QDesignerPropertyEditorInterfacemetacall*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerPropertyEditorInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesignerPropertyEditorInterfacedevType*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): cint =
  fcQDesignerPropertyEditorInterface_virtualbase_devType(self.h)

proc QDesignerPropertyEditorInterfacesetVisible*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, visible: bool): void =
  fcQDesignerPropertyEditorInterface_virtualbase_setVisible(self.h, visible)

proc QDesignerPropertyEditorInterfacesizeHint*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerPropertyEditorInterface_virtualbase_sizeHint(self.h))

proc QDesignerPropertyEditorInterfaceminimumSizeHint*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerPropertyEditorInterface_virtualbase_minimumSizeHint(self.h))

proc QDesignerPropertyEditorInterfaceheightForWidth*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cint): cint =
  fcQDesignerPropertyEditorInterface_virtualbase_heightForWidth(self.h, param1)

proc QDesignerPropertyEditorInterfacehasHeightForWidth*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): bool =
  fcQDesignerPropertyEditorInterface_virtualbase_hasHeightForWidth(self.h)

proc QDesignerPropertyEditorInterfacepaintEngine*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesignerPropertyEditorInterface_virtualbase_paintEngine(self.h))

proc QDesignerPropertyEditorInterfaceevent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerPropertyEditorInterface_virtualbase_event(self.h, event.h)

proc QDesignerPropertyEditorInterfacemousePressEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_mousePressEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacemouseReleaseEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacemouseDoubleClickEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacemouseMoveEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacewheelEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QWheelEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_wheelEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacekeyPressEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_keyPressEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacekeyReleaseEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacefocusInEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_focusInEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacefocusOutEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_focusOutEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfaceenterEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QEnterEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_enterEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfaceleaveEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_leaveEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacepaintEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QPaintEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_paintEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacemoveEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QMoveEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_moveEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfaceresizeEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QResizeEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_resizeEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacecloseEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QCloseEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_closeEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacecontextMenuEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_contextMenuEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacetabletEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QTabletEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_tabletEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfaceactionEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QActionEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_actionEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacedragEnterEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_dragEnterEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacedragMoveEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_dragMoveEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacedragLeaveEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacedropEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QDropEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_dropEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfaceshowEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QShowEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_showEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacehideEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qevent_types.QHideEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_hideEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacenativeEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDesignerPropertyEditorInterface_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QDesignerPropertyEditorInterfacechangeEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_changeEvent(self.h, param1.h)

proc QDesignerPropertyEditorInterfacemetric*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cint): cint =
  fcQDesignerPropertyEditorInterface_virtualbase_metric(self.h, cint(param1))

proc QDesignerPropertyEditorInterfaceinitPainter*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, painter: gen_qpainter_types.QPainter): void =
  fcQDesignerPropertyEditorInterface_virtualbase_initPainter(self.h, painter.h)

proc QDesignerPropertyEditorInterfaceredirected*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesignerPropertyEditorInterface_virtualbase_redirected(self.h, offset.h))

proc QDesignerPropertyEditorInterfacesharedPainter*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesignerPropertyEditorInterface_virtualbase_sharedPainter(self.h))

proc QDesignerPropertyEditorInterfaceinputMethodEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDesignerPropertyEditorInterfaceinputMethodQuery*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerPropertyEditorInterface_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc QDesignerPropertyEditorInterfacefocusNextPrevChild*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, next: bool): bool =
  fcQDesignerPropertyEditorInterface_virtualbase_focusNextPrevChild(self.h, next)

proc QDesignerPropertyEditorInterfaceeventFilter*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerPropertyEditorInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesignerPropertyEditorInterfacetimerEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_timerEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacechildEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_childEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfacecustomEvent*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerPropertyEditorInterface_virtualbase_customEvent(self.h, event.h)

proc QDesignerPropertyEditorInterfaceconnectNotify*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerPropertyEditorInterface_virtualbase_connectNotify(self.h, signal.h)

proc QDesignerPropertyEditorInterfacedisconnectNotify*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerPropertyEditorInterface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesignerPropertyEditorInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_isReadOnly(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].isReadOnly(self)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_objectX(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].objectX(self)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_currentPropertyName(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].currentPropertyName(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerPropertyEditorInterface_vtable_callback_setObject(self: pointer, objectVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  vtbl[].setObject(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_setPropertyValue(self: pointer, name: struct_seaqt_string, value: pointer, changed: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = changed
  vtbl[].setPropertyValue(self, slotval1, slotval2, slotval3)

proc fcQDesignerPropertyEditorInterface_vtable_callback_setReadOnly(self: pointer, readOnly: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = readOnly
  vtbl[].setReadOnly(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesignerPropertyEditorInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let self = QDesignerPropertyEditorInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesignerPropertyEditorInterface* {.inheritable.} = ref object of QDesignerPropertyEditorInterface
  vtbl*: cQDesignerPropertyEditorInterfaceVTable

method metaObject*(self: VirtualQDesignerPropertyEditorInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesignerPropertyEditorInterfacemetaObject(self[])
method metacast*(self: VirtualQDesignerPropertyEditorInterface, param1: cstring): pointer {.base.} =
  QDesignerPropertyEditorInterfacemetacast(self[], param1)
method metacall*(self: VirtualQDesignerPropertyEditorInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesignerPropertyEditorInterfacemetacall(self[], param1, param2, param3)
method isReadOnly*(self: VirtualQDesignerPropertyEditorInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertyEditorInterface.isReadOnly")
method objectX*(self: VirtualQDesignerPropertyEditorInterface): gen_qobject_types.QObject {.base.} =
  raiseAssert("missing implementation of QDesignerPropertyEditorInterface.objectX")
method currentPropertyName*(self: VirtualQDesignerPropertyEditorInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerPropertyEditorInterface.currentPropertyName")
method setObject*(self: VirtualQDesignerPropertyEditorInterface, objectVal: gen_qobject_types.QObject): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertyEditorInterface.setObject")
method setPropertyValue*(self: VirtualQDesignerPropertyEditorInterface, name: openArray[char], value: gen_qvariant_types.QVariant, changed: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertyEditorInterface.setPropertyValue")
method setReadOnly*(self: VirtualQDesignerPropertyEditorInterface, readOnly: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertyEditorInterface.setReadOnly")
method devType*(self: VirtualQDesignerPropertyEditorInterface): cint {.base.} =
  QDesignerPropertyEditorInterfacedevType(self[])
method setVisible*(self: VirtualQDesignerPropertyEditorInterface, visible: bool): void {.base.} =
  QDesignerPropertyEditorInterfacesetVisible(self[], visible)
method sizeHint*(self: VirtualQDesignerPropertyEditorInterface): gen_qsize_types.QSize {.base.} =
  QDesignerPropertyEditorInterfacesizeHint(self[])
method minimumSizeHint*(self: VirtualQDesignerPropertyEditorInterface): gen_qsize_types.QSize {.base.} =
  QDesignerPropertyEditorInterfaceminimumSizeHint(self[])
method heightForWidth*(self: VirtualQDesignerPropertyEditorInterface, param1: cint): cint {.base.} =
  QDesignerPropertyEditorInterfaceheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDesignerPropertyEditorInterface): bool {.base.} =
  QDesignerPropertyEditorInterfacehasHeightForWidth(self[])
method paintEngine*(self: VirtualQDesignerPropertyEditorInterface): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDesignerPropertyEditorInterfacepaintEngine(self[])
method event*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerPropertyEditorInterfaceevent(self[], event)
method mousePressEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerPropertyEditorInterfacemousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerPropertyEditorInterfacemouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerPropertyEditorInterfacemouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerPropertyEditorInterfacemouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDesignerPropertyEditorInterfacewheelEvent(self[], event)
method keyPressEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerPropertyEditorInterfacekeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerPropertyEditorInterfacekeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerPropertyEditorInterfacefocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerPropertyEditorInterfacefocusOutEvent(self[], event)
method enterEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDesignerPropertyEditorInterfaceenterEvent(self[], event)
method leaveEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerPropertyEditorInterfaceleaveEvent(self[], event)
method paintEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDesignerPropertyEditorInterfacepaintEvent(self[], event)
method moveEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDesignerPropertyEditorInterfacemoveEvent(self[], event)
method resizeEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDesignerPropertyEditorInterfaceresizeEvent(self[], event)
method closeEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDesignerPropertyEditorInterfacecloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDesignerPropertyEditorInterfacecontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDesignerPropertyEditorInterfacetabletEvent(self[], event)
method actionEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDesignerPropertyEditorInterfaceactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDesignerPropertyEditorInterfacedragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDesignerPropertyEditorInterfacedragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDesignerPropertyEditorInterfacedragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDesignerPropertyEditorInterfacedropEvent(self[], event)
method showEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDesignerPropertyEditorInterfaceshowEvent(self[], event)
method hideEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDesignerPropertyEditorInterfacehideEvent(self[], event)
method nativeEvent*(self: VirtualQDesignerPropertyEditorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDesignerPropertyEditorInterfacenativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQDesignerPropertyEditorInterface, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerPropertyEditorInterfacechangeEvent(self[], param1)
method metric*(self: VirtualQDesignerPropertyEditorInterface, param1: cint): cint {.base.} =
  QDesignerPropertyEditorInterfacemetric(self[], param1)
method initPainter*(self: VirtualQDesignerPropertyEditorInterface, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDesignerPropertyEditorInterfaceinitPainter(self[], painter)
method redirected*(self: VirtualQDesignerPropertyEditorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDesignerPropertyEditorInterfaceredirected(self[], offset)
method sharedPainter*(self: VirtualQDesignerPropertyEditorInterface): gen_qpainter_types.QPainter {.base.} =
  QDesignerPropertyEditorInterfacesharedPainter(self[])
method inputMethodEvent*(self: VirtualQDesignerPropertyEditorInterface, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDesignerPropertyEditorInterfaceinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQDesignerPropertyEditorInterface, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDesignerPropertyEditorInterfaceinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQDesignerPropertyEditorInterface, next: bool): bool {.base.} =
  QDesignerPropertyEditorInterfacefocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDesignerPropertyEditorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerPropertyEditorInterfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesignerPropertyEditorInterfacetimerEvent(self[], event)
method childEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesignerPropertyEditorInterfacechildEvent(self[], event)
method customEvent*(self: VirtualQDesignerPropertyEditorInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerPropertyEditorInterfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerPropertyEditorInterfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerPropertyEditorInterfacedisconnectNotify(self[], signal)

proc fcQDesignerPropertyEditorInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_isReadOnly(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.isReadOnly()
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_objectX(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.objectX()
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_currentPropertyName(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.currentPropertyName()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerPropertyEditorInterface_method_callback_setObject(self: pointer, objectVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  inst.setObject(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_setPropertyValue(self: pointer, name: struct_seaqt_string, value: pointer, changed: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = changed
  inst.setPropertyValue(slotval1, slotval2, slotval3)

proc fcQDesignerPropertyEditorInterface_method_callback_setReadOnly(self: pointer, readOnly: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = readOnly
  inst.setReadOnly(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mousePressEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mouseReleaseEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mouseMoveEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  inst.wheelEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  inst.keyPressEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  inst.keyReleaseEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  inst.focusInEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  inst.focusOutEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  inst.enterEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.leaveEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  inst.paintEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  inst.moveEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  inst.resizeEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  inst.closeEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  inst.contextMenuEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  inst.tabletEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  inst.actionEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  inst.dragEnterEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  inst.dragMoveEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  inst.dragLeaveEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  inst.dropEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  inst.showEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  inst.hideEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  inst.changeEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  inst.initPainter(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  inst.inputMethodEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.h

proc fcQDesignerPropertyEditorInterface_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesignerPropertyEditorInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQDesignerPropertyEditorInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertyEditorInterface](fcQDesignerPropertyEditorInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): void =
  fcQDesignerPropertyEditorInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): void =
  fcQDesignerPropertyEditorInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): void =
  fcQDesignerPropertyEditorInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): bool =
  fcQDesignerPropertyEditorInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): bool =
  fcQDesignerPropertyEditorInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerPropertyEditorInterface_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): cint =
  fcQDesignerPropertyEditorInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, signal: cstring): cint =
  fcQDesignerPropertyEditorInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerPropertyEditorInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDesignerPropertyEditorInterfaceVTable = nil): gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface =
  let vtbl = if vtbl == nil: new QDesignerPropertyEditorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerPropertyEditorInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerPropertyEditorInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerPropertyEditorInterface_vtable_callback_metacall
  if not isNil(vtbl[].isReadOnly):
    vtbl[].vtbl.isReadOnly = fcQDesignerPropertyEditorInterface_vtable_callback_isReadOnly
  if not isNil(vtbl[].objectX):
    vtbl[].vtbl.objectX = fcQDesignerPropertyEditorInterface_vtable_callback_objectX
  if not isNil(vtbl[].currentPropertyName):
    vtbl[].vtbl.currentPropertyName = fcQDesignerPropertyEditorInterface_vtable_callback_currentPropertyName
  if not isNil(vtbl[].setObject):
    vtbl[].vtbl.setObject = fcQDesignerPropertyEditorInterface_vtable_callback_setObject
  if not isNil(vtbl[].setPropertyValue):
    vtbl[].vtbl.setPropertyValue = fcQDesignerPropertyEditorInterface_vtable_callback_setPropertyValue
  if not isNil(vtbl[].setReadOnly):
    vtbl[].vtbl.setReadOnly = fcQDesignerPropertyEditorInterface_vtable_callback_setReadOnly
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerPropertyEditorInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerPropertyEditorInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerPropertyEditorInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerPropertyEditorInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerPropertyEditorInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerPropertyEditorInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerPropertyEditorInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerPropertyEditorInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerPropertyEditorInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerPropertyEditorInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerPropertyEditorInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerPropertyEditorInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerPropertyEditorInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerPropertyEditorInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerPropertyEditorInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerPropertyEditorInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerPropertyEditorInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerPropertyEditorInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerPropertyEditorInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerPropertyEditorInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerPropertyEditorInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerPropertyEditorInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerPropertyEditorInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerPropertyEditorInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerPropertyEditorInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerPropertyEditorInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerPropertyEditorInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerPropertyEditorInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerPropertyEditorInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerPropertyEditorInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerPropertyEditorInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerPropertyEditorInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerPropertyEditorInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface(h: fcQDesignerPropertyEditorInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQDesignerPropertyEditorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QDesignerPropertyEditorInterfaceVTable = nil): gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface =
  let vtbl = if vtbl == nil: new QDesignerPropertyEditorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerPropertyEditorInterfaceVTable](fcQDesignerPropertyEditorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerPropertyEditorInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerPropertyEditorInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerPropertyEditorInterface_vtable_callback_metacall
  if not isNil(vtbl[].isReadOnly):
    vtbl[].vtbl.isReadOnly = fcQDesignerPropertyEditorInterface_vtable_callback_isReadOnly
  if not isNil(vtbl[].objectX):
    vtbl[].vtbl.objectX = fcQDesignerPropertyEditorInterface_vtable_callback_objectX
  if not isNil(vtbl[].currentPropertyName):
    vtbl[].vtbl.currentPropertyName = fcQDesignerPropertyEditorInterface_vtable_callback_currentPropertyName
  if not isNil(vtbl[].setObject):
    vtbl[].vtbl.setObject = fcQDesignerPropertyEditorInterface_vtable_callback_setObject
  if not isNil(vtbl[].setPropertyValue):
    vtbl[].vtbl.setPropertyValue = fcQDesignerPropertyEditorInterface_vtable_callback_setPropertyValue
  if not isNil(vtbl[].setReadOnly):
    vtbl[].vtbl.setReadOnly = fcQDesignerPropertyEditorInterface_vtable_callback_setReadOnly
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerPropertyEditorInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerPropertyEditorInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerPropertyEditorInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerPropertyEditorInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerPropertyEditorInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerPropertyEditorInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerPropertyEditorInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerPropertyEditorInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerPropertyEditorInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerPropertyEditorInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerPropertyEditorInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerPropertyEditorInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerPropertyEditorInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerPropertyEditorInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerPropertyEditorInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerPropertyEditorInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerPropertyEditorInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerPropertyEditorInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerPropertyEditorInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerPropertyEditorInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerPropertyEditorInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerPropertyEditorInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerPropertyEditorInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerPropertyEditorInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerPropertyEditorInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerPropertyEditorInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerPropertyEditorInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerPropertyEditorInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerPropertyEditorInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerPropertyEditorInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerPropertyEditorInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerPropertyEditorInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerPropertyEditorInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerPropertyEditorInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerPropertyEditorInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface(h: fcQDesignerPropertyEditorInterface_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, cint(flags)))
  fcQDesignerPropertyEditorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerPropertyEditorInterface_mvtbl = cQDesignerPropertyEditorInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerPropertyEditorInterface()[])](self.fcQDesignerPropertyEditorInterface_vdata()[])
    inst[].h = nil,

  metaObject: fcQDesignerPropertyEditorInterface_method_callback_metaObject,
  metacast: fcQDesignerPropertyEditorInterface_method_callback_metacast,
  metacall: fcQDesignerPropertyEditorInterface_method_callback_metacall,
  isReadOnly: fcQDesignerPropertyEditorInterface_method_callback_isReadOnly,
  objectX: fcQDesignerPropertyEditorInterface_method_callback_objectX,
  currentPropertyName: fcQDesignerPropertyEditorInterface_method_callback_currentPropertyName,
  setObject: fcQDesignerPropertyEditorInterface_method_callback_setObject,
  setPropertyValue: fcQDesignerPropertyEditorInterface_method_callback_setPropertyValue,
  setReadOnly: fcQDesignerPropertyEditorInterface_method_callback_setReadOnly,
  devType: fcQDesignerPropertyEditorInterface_method_callback_devType,
  setVisible: fcQDesignerPropertyEditorInterface_method_callback_setVisible,
  sizeHint: fcQDesignerPropertyEditorInterface_method_callback_sizeHint,
  minimumSizeHint: fcQDesignerPropertyEditorInterface_method_callback_minimumSizeHint,
  heightForWidth: fcQDesignerPropertyEditorInterface_method_callback_heightForWidth,
  hasHeightForWidth: fcQDesignerPropertyEditorInterface_method_callback_hasHeightForWidth,
  paintEngine: fcQDesignerPropertyEditorInterface_method_callback_paintEngine,
  event: fcQDesignerPropertyEditorInterface_method_callback_event,
  mousePressEvent: fcQDesignerPropertyEditorInterface_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDesignerPropertyEditorInterface_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQDesignerPropertyEditorInterface_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQDesignerPropertyEditorInterface_method_callback_mouseMoveEvent,
  wheelEvent: fcQDesignerPropertyEditorInterface_method_callback_wheelEvent,
  keyPressEvent: fcQDesignerPropertyEditorInterface_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDesignerPropertyEditorInterface_method_callback_keyReleaseEvent,
  focusInEvent: fcQDesignerPropertyEditorInterface_method_callback_focusInEvent,
  focusOutEvent: fcQDesignerPropertyEditorInterface_method_callback_focusOutEvent,
  enterEvent: fcQDesignerPropertyEditorInterface_method_callback_enterEvent,
  leaveEvent: fcQDesignerPropertyEditorInterface_method_callback_leaveEvent,
  paintEvent: fcQDesignerPropertyEditorInterface_method_callback_paintEvent,
  moveEvent: fcQDesignerPropertyEditorInterface_method_callback_moveEvent,
  resizeEvent: fcQDesignerPropertyEditorInterface_method_callback_resizeEvent,
  closeEvent: fcQDesignerPropertyEditorInterface_method_callback_closeEvent,
  contextMenuEvent: fcQDesignerPropertyEditorInterface_method_callback_contextMenuEvent,
  tabletEvent: fcQDesignerPropertyEditorInterface_method_callback_tabletEvent,
  actionEvent: fcQDesignerPropertyEditorInterface_method_callback_actionEvent,
  dragEnterEvent: fcQDesignerPropertyEditorInterface_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDesignerPropertyEditorInterface_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDesignerPropertyEditorInterface_method_callback_dragLeaveEvent,
  dropEvent: fcQDesignerPropertyEditorInterface_method_callback_dropEvent,
  showEvent: fcQDesignerPropertyEditorInterface_method_callback_showEvent,
  hideEvent: fcQDesignerPropertyEditorInterface_method_callback_hideEvent,
  nativeEvent: fcQDesignerPropertyEditorInterface_method_callback_nativeEvent,
  changeEvent: fcQDesignerPropertyEditorInterface_method_callback_changeEvent,
  metric: fcQDesignerPropertyEditorInterface_method_callback_metric,
  initPainter: fcQDesignerPropertyEditorInterface_method_callback_initPainter,
  redirected: fcQDesignerPropertyEditorInterface_method_callback_redirected,
  sharedPainter: fcQDesignerPropertyEditorInterface_method_callback_sharedPainter,
  inputMethodEvent: fcQDesignerPropertyEditorInterface_method_callback_inputMethodEvent,
  inputMethodQuery: fcQDesignerPropertyEditorInterface_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQDesignerPropertyEditorInterface_method_callback_focusNextPrevChild,
  eventFilter: fcQDesignerPropertyEditorInterface_method_callback_eventFilter,
  timerEvent: fcQDesignerPropertyEditorInterface_method_callback_timerEvent,
  childEvent: fcQDesignerPropertyEditorInterface_method_callback_childEvent,
  customEvent: fcQDesignerPropertyEditorInterface_method_callback_customEvent,
  connectNotify: fcQDesignerPropertyEditorInterface_method_callback_connectNotify,
  disconnectNotify: fcQDesignerPropertyEditorInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDesignerPropertyEditorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerPropertyEditorInterface_new(addr(cQDesignerPropertyEditorInterface_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQDesignerPropertyEditorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQDesignerPropertyEditorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerPropertyEditorInterface_new2(addr(cQDesignerPropertyEditorInterface_mvtbl), csize_t(sizeof(pointer)), parent.h, cint(flags))
  fcQDesignerPropertyEditorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerPropertyEditorInterface_staticMetaObject())
proc delete*(self: gen_abstractpropertyeditor_types.QDesignerPropertyEditorInterface) =
  fcQDesignerPropertyEditorInterface_delete(self.h)
