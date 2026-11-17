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


{.compile("gen_abstractresourcebrowser.cpp", QtDesignerCFlags).}


import ./gen_abstractresourcebrowser_types
export gen_abstractresourcebrowser_types

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

type cQDesignerResourceBrowserInterface*{.exportc: "QDesignerResourceBrowserInterface", incompleteStruct.} = object

proc fcQDesignerResourceBrowserInterface_metaObject(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_metaObject".}
proc fcQDesignerResourceBrowserInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerResourceBrowserInterface_metacast".}
proc fcQDesignerResourceBrowserInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerResourceBrowserInterface_metacall".}
proc fcQDesignerResourceBrowserInterface_trS(s: cstring): struct_seaqt_string {.importc: "QDesignerResourceBrowserInterface_tr_s".}
proc fcQDesignerResourceBrowserInterface_setCurrentPath(self: pointer, filePath: struct_seaqt_string): void {.importc: "QDesignerResourceBrowserInterface_setCurrentPath".}
proc fcQDesignerResourceBrowserInterface_currentPath(self: pointer): struct_seaqt_string {.importc: "QDesignerResourceBrowserInterface_currentPath".}
proc fcQDesignerResourceBrowserInterface_currentPathChanged(self: pointer, filePath: struct_seaqt_string): void {.importc: "QDesignerResourceBrowserInterface_currentPathChanged".}
proc fcQDesignerResourceBrowserInterface_connect_currentPathChanged(self: pointer, slot: int, callback: proc (slot: int, filePath: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerResourceBrowserInterface_connect_currentPathChanged".}
proc fcQDesignerResourceBrowserInterface_pathActivated(self: pointer, filePath: struct_seaqt_string): void {.importc: "QDesignerResourceBrowserInterface_pathActivated".}
proc fcQDesignerResourceBrowserInterface_connect_pathActivated(self: pointer, slot: int, callback: proc (slot: int, filePath: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerResourceBrowserInterface_connect_pathActivated".}
proc fcQDesignerResourceBrowserInterface_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerResourceBrowserInterface_tr_s_c".}
proc fcQDesignerResourceBrowserInterface_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerResourceBrowserInterface_tr_s_c_n".}
proc fcQDesignerResourceBrowserInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerResourceBrowserInterface_vdata".}
proc fvdata_cQDesignerResourceBrowserInterface(self: pointer): pointer {.importc: "vdata_QDesignerResourceBrowserInterface".}

type cQDesignerResourceBrowserInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setCurrentPath*: proc(self: pointer, filePath: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  currentPath*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
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
proc fcQDesignerResourceBrowserInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_metaObject".}
proc fcQDesignerResourceBrowserInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_metacast".}
proc fcQDesignerResourceBrowserInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerResourceBrowserInterface_virtualbase_metacall".}
proc fcQDesignerResourceBrowserInterface_virtualbase_devType(self: pointer): cint {.importc: "QDesignerResourceBrowserInterface_virtualbase_devType".}
proc fcQDesignerResourceBrowserInterface_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_setVisible".}
proc fcQDesignerResourceBrowserInterface_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_sizeHint".}
proc fcQDesignerResourceBrowserInterface_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_minimumSizeHint".}
proc fcQDesignerResourceBrowserInterface_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesignerResourceBrowserInterface_virtualbase_heightForWidth".}
proc fcQDesignerResourceBrowserInterface_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDesignerResourceBrowserInterface_virtualbase_hasHeightForWidth".}
proc fcQDesignerResourceBrowserInterface_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_paintEngine".}
proc fcQDesignerResourceBrowserInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesignerResourceBrowserInterface_virtualbase_event".}
proc fcQDesignerResourceBrowserInterface_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_mousePressEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_mouseReleaseEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_mouseDoubleClickEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_mouseMoveEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_wheelEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_keyPressEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_keyReleaseEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_focusInEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_focusOutEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_enterEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_leaveEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_paintEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_moveEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_resizeEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_closeEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_contextMenuEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_tabletEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_actionEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_dragEnterEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_dragMoveEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_dragLeaveEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_dropEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_showEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_hideEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDesignerResourceBrowserInterface_virtualbase_nativeEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_changeEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDesignerResourceBrowserInterface_virtualbase_metric".}
proc fcQDesignerResourceBrowserInterface_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_initPainter".}
proc fcQDesignerResourceBrowserInterface_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_redirected".}
proc fcQDesignerResourceBrowserInterface_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_sharedPainter".}
proc fcQDesignerResourceBrowserInterface_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_inputMethodEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesignerResourceBrowserInterface_virtualbase_inputMethodQuery".}
proc fcQDesignerResourceBrowserInterface_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesignerResourceBrowserInterface_virtualbase_focusNextPrevChild".}
proc fcQDesignerResourceBrowserInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesignerResourceBrowserInterface_virtualbase_eventFilter".}
proc fcQDesignerResourceBrowserInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_timerEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_childEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_customEvent".}
proc fcQDesignerResourceBrowserInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_connectNotify".}
proc fcQDesignerResourceBrowserInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerResourceBrowserInterface_virtualbase_disconnectNotify".}
proc fcQDesignerResourceBrowserInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerResourceBrowserInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerResourceBrowserInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerResourceBrowserInterface_protectedbase_create".}
proc fcQDesignerResourceBrowserInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerResourceBrowserInterface_protectedbase_destroy".}
proc fcQDesignerResourceBrowserInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerResourceBrowserInterface_protectedbase_focusNextChild".}
proc fcQDesignerResourceBrowserInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerResourceBrowserInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerResourceBrowserInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerResourceBrowserInterface_protectedbase_sender".}
proc fcQDesignerResourceBrowserInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerResourceBrowserInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerResourceBrowserInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerResourceBrowserInterface_protectedbase_receivers".}
proc fcQDesignerResourceBrowserInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerResourceBrowserInterface_protectedbase_isSignalConnected".}
proc fcQDesignerResourceBrowserInterface_protectedbase_getDecodedMetricF(self: pointer, metricA: cint, metricB: cint): float64 {.importc: "QDesignerResourceBrowserInterface_protectedbase_getDecodedMetricF".}
proc fcQDesignerResourceBrowserInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerResourceBrowserInterface {.importc: "QDesignerResourceBrowserInterface_new".}
proc fcQDesignerResourceBrowserInterface_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQDesignerResourceBrowserInterface {.importc: "QDesignerResourceBrowserInterface_new_parent".}
proc fcQDesignerResourceBrowserInterface_staticMetaObject(): pointer {.importc: "QDesignerResourceBrowserInterface_staticMetaObject".}

proc metaObject*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerResourceBrowserInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cstring): pointer =
  fcQDesignerResourceBrowserInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerResourceBrowserInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, s: cstring): string =
  let v_ms = fcQDesignerResourceBrowserInterface_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCurrentPath*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, filePath: openArray[char]): void =
  fcQDesignerResourceBrowserInterface_setCurrentPath(self.h, struct_seaqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))

proc currentPath*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): string =
  let v_ms = fcQDesignerResourceBrowserInterface_currentPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentPathChanged*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, filePath: openArray[char]): void =
  fcQDesignerResourceBrowserInterface_currentPathChanged(self.h, struct_seaqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))

type QDesignerResourceBrowserInterfacecurrentPathChangedSlot* = proc(filePath: openArray[char])
proc fcQDesignerResourceBrowserInterface_slot_callback_currentPathChanged(slot: int, filePath: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerResourceBrowserInterfacecurrentPathChangedSlot](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(vfilePath_ms)
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  nimfunc[](slotval1)

proc fcQDesignerResourceBrowserInterface_slot_callback_currentPathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerResourceBrowserInterfacecurrentPathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentPathChanged*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, slot: QDesignerResourceBrowserInterfacecurrentPathChangedSlot) =
  var tmp = new QDesignerResourceBrowserInterfacecurrentPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerResourceBrowserInterface_connect_currentPathChanged(self.h, cast[int](addr tmp[]), fcQDesignerResourceBrowserInterface_slot_callback_currentPathChanged, fcQDesignerResourceBrowserInterface_slot_callback_currentPathChanged_release)

proc pathActivated*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, filePath: openArray[char]): void =
  fcQDesignerResourceBrowserInterface_pathActivated(self.h, struct_seaqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))

type QDesignerResourceBrowserInterfacepathActivatedSlot* = proc(filePath: openArray[char])
proc fcQDesignerResourceBrowserInterface_slot_callback_pathActivated(slot: int, filePath: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerResourceBrowserInterfacepathActivatedSlot](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(vfilePath_ms)
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  nimfunc[](slotval1)

proc fcQDesignerResourceBrowserInterface_slot_callback_pathActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerResourceBrowserInterfacepathActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPathActivated*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, slot: QDesignerResourceBrowserInterfacepathActivatedSlot) =
  var tmp = new QDesignerResourceBrowserInterfacepathActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerResourceBrowserInterface_connect_pathActivated(self.h, cast[int](addr tmp[]), fcQDesignerResourceBrowserInterface_slot_callback_pathActivated, fcQDesignerResourceBrowserInterface_slot_callback_pathActivated_release)

proc tr*(_: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerResourceBrowserInterface_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerResourceBrowserInterface_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDesignerResourceBrowserInterfacemetaObjectProc* = proc(self: QDesignerResourceBrowserInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemetacastProc* = proc(self: QDesignerResourceBrowserInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemetacallProc* = proc(self: QDesignerResourceBrowserInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacesetCurrentPathProc* = proc(self: QDesignerResourceBrowserInterface, filePath: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacecurrentPathProc* = proc(self: QDesignerResourceBrowserInterface): string {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacedevTypeProc* = proc(self: QDesignerResourceBrowserInterface): cint {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacesetVisibleProc* = proc(self: QDesignerResourceBrowserInterface, visible: bool): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacesizeHintProc* = proc(self: QDesignerResourceBrowserInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceminimumSizeHintProc* = proc(self: QDesignerResourceBrowserInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceheightForWidthProc* = proc(self: QDesignerResourceBrowserInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacehasHeightForWidthProc* = proc(self: QDesignerResourceBrowserInterface): bool {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacepaintEngineProc* = proc(self: QDesignerResourceBrowserInterface): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceeventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemousePressEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemouseReleaseEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemouseDoubleClickEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemouseMoveEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacewheelEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacekeyPressEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacekeyReleaseEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacefocusInEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacefocusOutEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceenterEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceleaveEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacepaintEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemoveEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceresizeEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacecloseEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacecontextMenuEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacetabletEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceactionEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacedragEnterEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacedragMoveEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacedragLeaveEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacedropEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceshowEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacehideEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacenativeEventProc* = proc(self: QDesignerResourceBrowserInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacechangeEventProc* = proc(self: QDesignerResourceBrowserInterface, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacemetricProc* = proc(self: QDesignerResourceBrowserInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceinitPainterProc* = proc(self: QDesignerResourceBrowserInterface, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceredirectedProc* = proc(self: QDesignerResourceBrowserInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacesharedPainterProc* = proc(self: QDesignerResourceBrowserInterface): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceinputMethodEventProc* = proc(self: QDesignerResourceBrowserInterface, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceinputMethodQueryProc* = proc(self: QDesignerResourceBrowserInterface, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacefocusNextPrevChildProc* = proc(self: QDesignerResourceBrowserInterface, next: bool): bool {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceeventFilterProc* = proc(self: QDesignerResourceBrowserInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacetimerEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacechildEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacecustomEventProc* = proc(self: QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfaceconnectNotifyProc* = proc(self: QDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerResourceBrowserInterfacedisconnectNotifyProc* = proc(self: QDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDesignerResourceBrowserInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerResourceBrowserInterfaceVTable
  metaObject*: QDesignerResourceBrowserInterfacemetaObjectProc
  metacast*: QDesignerResourceBrowserInterfacemetacastProc
  metacall*: QDesignerResourceBrowserInterfacemetacallProc
  setCurrentPath*: QDesignerResourceBrowserInterfacesetCurrentPathProc
  currentPath*: QDesignerResourceBrowserInterfacecurrentPathProc
  devType*: QDesignerResourceBrowserInterfacedevTypeProc
  setVisible*: QDesignerResourceBrowserInterfacesetVisibleProc
  sizeHint*: QDesignerResourceBrowserInterfacesizeHintProc
  minimumSizeHint*: QDesignerResourceBrowserInterfaceminimumSizeHintProc
  heightForWidth*: QDesignerResourceBrowserInterfaceheightForWidthProc
  hasHeightForWidth*: QDesignerResourceBrowserInterfacehasHeightForWidthProc
  paintEngine*: QDesignerResourceBrowserInterfacepaintEngineProc
  event*: QDesignerResourceBrowserInterfaceeventProc
  mousePressEvent*: QDesignerResourceBrowserInterfacemousePressEventProc
  mouseReleaseEvent*: QDesignerResourceBrowserInterfacemouseReleaseEventProc
  mouseDoubleClickEvent*: QDesignerResourceBrowserInterfacemouseDoubleClickEventProc
  mouseMoveEvent*: QDesignerResourceBrowserInterfacemouseMoveEventProc
  wheelEvent*: QDesignerResourceBrowserInterfacewheelEventProc
  keyPressEvent*: QDesignerResourceBrowserInterfacekeyPressEventProc
  keyReleaseEvent*: QDesignerResourceBrowserInterfacekeyReleaseEventProc
  focusInEvent*: QDesignerResourceBrowserInterfacefocusInEventProc
  focusOutEvent*: QDesignerResourceBrowserInterfacefocusOutEventProc
  enterEvent*: QDesignerResourceBrowserInterfaceenterEventProc
  leaveEvent*: QDesignerResourceBrowserInterfaceleaveEventProc
  paintEvent*: QDesignerResourceBrowserInterfacepaintEventProc
  moveEvent*: QDesignerResourceBrowserInterfacemoveEventProc
  resizeEvent*: QDesignerResourceBrowserInterfaceresizeEventProc
  closeEvent*: QDesignerResourceBrowserInterfacecloseEventProc
  contextMenuEvent*: QDesignerResourceBrowserInterfacecontextMenuEventProc
  tabletEvent*: QDesignerResourceBrowserInterfacetabletEventProc
  actionEvent*: QDesignerResourceBrowserInterfaceactionEventProc
  dragEnterEvent*: QDesignerResourceBrowserInterfacedragEnterEventProc
  dragMoveEvent*: QDesignerResourceBrowserInterfacedragMoveEventProc
  dragLeaveEvent*: QDesignerResourceBrowserInterfacedragLeaveEventProc
  dropEvent*: QDesignerResourceBrowserInterfacedropEventProc
  showEvent*: QDesignerResourceBrowserInterfaceshowEventProc
  hideEvent*: QDesignerResourceBrowserInterfacehideEventProc
  nativeEvent*: QDesignerResourceBrowserInterfacenativeEventProc
  changeEvent*: QDesignerResourceBrowserInterfacechangeEventProc
  metric*: QDesignerResourceBrowserInterfacemetricProc
  initPainter*: QDesignerResourceBrowserInterfaceinitPainterProc
  redirected*: QDesignerResourceBrowserInterfaceredirectedProc
  sharedPainter*: QDesignerResourceBrowserInterfacesharedPainterProc
  inputMethodEvent*: QDesignerResourceBrowserInterfaceinputMethodEventProc
  inputMethodQuery*: QDesignerResourceBrowserInterfaceinputMethodQueryProc
  focusNextPrevChild*: QDesignerResourceBrowserInterfacefocusNextPrevChildProc
  eventFilter*: QDesignerResourceBrowserInterfaceeventFilterProc
  timerEvent*: QDesignerResourceBrowserInterfacetimerEventProc
  childEvent*: QDesignerResourceBrowserInterfacechildEventProc
  customEvent*: QDesignerResourceBrowserInterfacecustomEventProc
  connectNotify*: QDesignerResourceBrowserInterfaceconnectNotifyProc
  disconnectNotify*: QDesignerResourceBrowserInterfacedisconnectNotifyProc

proc QDesignerResourceBrowserInterfacemetaObject*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerResourceBrowserInterface_virtualbase_metaObject(self.h), owned: false)

proc QDesignerResourceBrowserInterfacemetacast*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cstring): pointer =
  fcQDesignerResourceBrowserInterface_virtualbase_metacast(self.h, param1)

proc QDesignerResourceBrowserInterfacemetacall*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerResourceBrowserInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesignerResourceBrowserInterfacedevType*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): cint =
  fcQDesignerResourceBrowserInterface_virtualbase_devType(self.h)

proc QDesignerResourceBrowserInterfacesetVisible*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, visible: bool): void =
  fcQDesignerResourceBrowserInterface_virtualbase_setVisible(self.h, visible)

proc QDesignerResourceBrowserInterfacesizeHint*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerResourceBrowserInterface_virtualbase_sizeHint(self.h), owned: true)

proc QDesignerResourceBrowserInterfaceminimumSizeHint*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerResourceBrowserInterface_virtualbase_minimumSizeHint(self.h), owned: true)

proc QDesignerResourceBrowserInterfaceheightForWidth*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cint): cint =
  fcQDesignerResourceBrowserInterface_virtualbase_heightForWidth(self.h, param1)

proc QDesignerResourceBrowserInterfacehasHeightForWidth*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): bool =
  fcQDesignerResourceBrowserInterface_virtualbase_hasHeightForWidth(self.h)

proc QDesignerResourceBrowserInterfacepaintEngine*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesignerResourceBrowserInterface_virtualbase_paintEngine(self.h), owned: false)

proc QDesignerResourceBrowserInterfaceevent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerResourceBrowserInterface_virtualbase_event(self.h, event.h)

proc QDesignerResourceBrowserInterfacemousePressEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_mousePressEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacemouseReleaseEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacemouseDoubleClickEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacemouseMoveEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacewheelEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QWheelEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_wheelEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacekeyPressEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_keyPressEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacekeyReleaseEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacefocusInEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_focusInEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacefocusOutEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_focusOutEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfaceenterEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QEnterEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_enterEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfaceleaveEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_leaveEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacepaintEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QPaintEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_paintEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacemoveEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QMoveEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_moveEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfaceresizeEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QResizeEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_resizeEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacecloseEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QCloseEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_closeEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacecontextMenuEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_contextMenuEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacetabletEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QTabletEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_tabletEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfaceactionEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QActionEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_actionEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacedragEnterEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_dragEnterEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacedragMoveEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_dragMoveEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacedragLeaveEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacedropEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QDropEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_dropEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfaceshowEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QShowEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_showEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacehideEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qevent_types.QHideEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_hideEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacenativeEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDesignerResourceBrowserInterface_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QDesignerResourceBrowserInterfacechangeEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_changeEvent(self.h, param1.h)

proc QDesignerResourceBrowserInterfacemetric*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cint): cint =
  fcQDesignerResourceBrowserInterface_virtualbase_metric(self.h, cint(param1))

proc QDesignerResourceBrowserInterfaceinitPainter*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, painter: gen_qpainter_types.QPainter): void =
  fcQDesignerResourceBrowserInterface_virtualbase_initPainter(self.h, painter.h)

proc QDesignerResourceBrowserInterfaceredirected*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesignerResourceBrowserInterface_virtualbase_redirected(self.h, offset.h), owned: false)

proc QDesignerResourceBrowserInterfacesharedPainter*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesignerResourceBrowserInterface_virtualbase_sharedPainter(self.h), owned: false)

proc QDesignerResourceBrowserInterfaceinputMethodEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDesignerResourceBrowserInterfaceinputMethodQuery*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerResourceBrowserInterface_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QDesignerResourceBrowserInterfacefocusNextPrevChild*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, next: bool): bool =
  fcQDesignerResourceBrowserInterface_virtualbase_focusNextPrevChild(self.h, next)

proc QDesignerResourceBrowserInterfaceeventFilter*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerResourceBrowserInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesignerResourceBrowserInterfacetimerEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_timerEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacechildEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_childEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfacecustomEvent*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerResourceBrowserInterface_virtualbase_customEvent(self.h, event.h)

proc QDesignerResourceBrowserInterfaceconnectNotify*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerResourceBrowserInterface_virtualbase_connectNotify(self.h, signal.h)

proc QDesignerResourceBrowserInterfacedisconnectNotify*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerResourceBrowserInterface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesignerResourceBrowserInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_setCurrentPath(self: pointer, filePath: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(vfilePath_ms)
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret
  vtbl[].setCurrentPath(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_currentPath(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].currentPath(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerResourceBrowserInterface_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesignerResourceBrowserInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let self = QDesignerResourceBrowserInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesignerResourceBrowserInterface* {.inheritable.} = ref object of QDesignerResourceBrowserInterface
  vtbl*: cQDesignerResourceBrowserInterfaceVTable

method metaObject*(self: VirtualQDesignerResourceBrowserInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesignerResourceBrowserInterfacemetaObject(self[])
method metacast*(self: VirtualQDesignerResourceBrowserInterface, param1: cstring): pointer {.base.} =
  QDesignerResourceBrowserInterfacemetacast(self[], param1)
method metacall*(self: VirtualQDesignerResourceBrowserInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesignerResourceBrowserInterfacemetacall(self[], param1, param2, param3)
method setCurrentPath*(self: VirtualQDesignerResourceBrowserInterface, filePath: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerResourceBrowserInterface.setCurrentPath")
method currentPath*(self: VirtualQDesignerResourceBrowserInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerResourceBrowserInterface.currentPath")
method devType*(self: VirtualQDesignerResourceBrowserInterface): cint {.base.} =
  QDesignerResourceBrowserInterfacedevType(self[])
method setVisible*(self: VirtualQDesignerResourceBrowserInterface, visible: bool): void {.base.} =
  QDesignerResourceBrowserInterfacesetVisible(self[], visible)
method sizeHint*(self: VirtualQDesignerResourceBrowserInterface): gen_qsize_types.QSize {.base.} =
  QDesignerResourceBrowserInterfacesizeHint(self[])
method minimumSizeHint*(self: VirtualQDesignerResourceBrowserInterface): gen_qsize_types.QSize {.base.} =
  QDesignerResourceBrowserInterfaceminimumSizeHint(self[])
method heightForWidth*(self: VirtualQDesignerResourceBrowserInterface, param1: cint): cint {.base.} =
  QDesignerResourceBrowserInterfaceheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDesignerResourceBrowserInterface): bool {.base.} =
  QDesignerResourceBrowserInterfacehasHeightForWidth(self[])
method paintEngine*(self: VirtualQDesignerResourceBrowserInterface): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDesignerResourceBrowserInterfacepaintEngine(self[])
method event*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerResourceBrowserInterfaceevent(self[], event)
method mousePressEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerResourceBrowserInterfacemousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerResourceBrowserInterfacemouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerResourceBrowserInterfacemouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerResourceBrowserInterfacemouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDesignerResourceBrowserInterfacewheelEvent(self[], event)
method keyPressEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerResourceBrowserInterfacekeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerResourceBrowserInterfacekeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerResourceBrowserInterfacefocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerResourceBrowserInterfacefocusOutEvent(self[], event)
method enterEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDesignerResourceBrowserInterfaceenterEvent(self[], event)
method leaveEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerResourceBrowserInterfaceleaveEvent(self[], event)
method paintEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDesignerResourceBrowserInterfacepaintEvent(self[], event)
method moveEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDesignerResourceBrowserInterfacemoveEvent(self[], event)
method resizeEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDesignerResourceBrowserInterfaceresizeEvent(self[], event)
method closeEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDesignerResourceBrowserInterfacecloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDesignerResourceBrowserInterfacecontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDesignerResourceBrowserInterfacetabletEvent(self[], event)
method actionEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDesignerResourceBrowserInterfaceactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDesignerResourceBrowserInterfacedragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDesignerResourceBrowserInterfacedragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDesignerResourceBrowserInterfacedragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDesignerResourceBrowserInterfacedropEvent(self[], event)
method showEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDesignerResourceBrowserInterfaceshowEvent(self[], event)
method hideEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDesignerResourceBrowserInterfacehideEvent(self[], event)
method nativeEvent*(self: VirtualQDesignerResourceBrowserInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDesignerResourceBrowserInterfacenativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQDesignerResourceBrowserInterface, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerResourceBrowserInterfacechangeEvent(self[], param1)
method metric*(self: VirtualQDesignerResourceBrowserInterface, param1: cint): cint {.base.} =
  QDesignerResourceBrowserInterfacemetric(self[], param1)
method initPainter*(self: VirtualQDesignerResourceBrowserInterface, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDesignerResourceBrowserInterfaceinitPainter(self[], painter)
method redirected*(self: VirtualQDesignerResourceBrowserInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDesignerResourceBrowserInterfaceredirected(self[], offset)
method sharedPainter*(self: VirtualQDesignerResourceBrowserInterface): gen_qpainter_types.QPainter {.base.} =
  QDesignerResourceBrowserInterfacesharedPainter(self[])
method inputMethodEvent*(self: VirtualQDesignerResourceBrowserInterface, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDesignerResourceBrowserInterfaceinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQDesignerResourceBrowserInterface, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDesignerResourceBrowserInterfaceinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQDesignerResourceBrowserInterface, next: bool): bool {.base.} =
  QDesignerResourceBrowserInterfacefocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDesignerResourceBrowserInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerResourceBrowserInterfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesignerResourceBrowserInterfacetimerEvent(self[], event)
method childEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesignerResourceBrowserInterfacechildEvent(self[], event)
method customEvent*(self: VirtualQDesignerResourceBrowserInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerResourceBrowserInterfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerResourceBrowserInterfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerResourceBrowserInterfacedisconnectNotify(self[], signal)

proc fcQDesignerResourceBrowserInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_setCurrentPath(self: pointer, filePath: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(vfilePath_ms)
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret
  inst.setCurrentPath(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_currentPath(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.currentPath()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerResourceBrowserInterface_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerResourceBrowserInterface_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesignerResourceBrowserInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDesignerResourceBrowserInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerResourceBrowserInterface](fcQDesignerResourceBrowserInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): void =
  fcQDesignerResourceBrowserInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): void =
  fcQDesignerResourceBrowserInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): void =
  fcQDesignerResourceBrowserInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): bool =
  fcQDesignerResourceBrowserInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): bool =
  fcQDesignerResourceBrowserInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerResourceBrowserInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): cint =
  fcQDesignerResourceBrowserInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, signal: cstring): cint =
  fcQDesignerResourceBrowserInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerResourceBrowserInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc getDecodedMetricF*(self: gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface, metricA: cint, metricB: cint): float64 =
  fcQDesignerResourceBrowserInterface_protectedbase_getDecodedMetricF(self.h, cint(metricA), cint(metricB))

proc create*(T: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface,
    vtbl: ref QDesignerResourceBrowserInterfaceVTable = nil): gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface =
  let vtbl = if vtbl == nil: new QDesignerResourceBrowserInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerResourceBrowserInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerResourceBrowserInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerResourceBrowserInterface_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentPath):
    vtbl[].vtbl.setCurrentPath = fcQDesignerResourceBrowserInterface_vtable_callback_setCurrentPath
  if not isNil(vtbl[].currentPath):
    vtbl[].vtbl.currentPath = fcQDesignerResourceBrowserInterface_vtable_callback_currentPath
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerResourceBrowserInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerResourceBrowserInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerResourceBrowserInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerResourceBrowserInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerResourceBrowserInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerResourceBrowserInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerResourceBrowserInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerResourceBrowserInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerResourceBrowserInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerResourceBrowserInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerResourceBrowserInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerResourceBrowserInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerResourceBrowserInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerResourceBrowserInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerResourceBrowserInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerResourceBrowserInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerResourceBrowserInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerResourceBrowserInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerResourceBrowserInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerResourceBrowserInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerResourceBrowserInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerResourceBrowserInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerResourceBrowserInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerResourceBrowserInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerResourceBrowserInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerResourceBrowserInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerResourceBrowserInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerResourceBrowserInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerResourceBrowserInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerResourceBrowserInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerResourceBrowserInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerResourceBrowserInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerResourceBrowserInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface(h: fcQDesignerResourceBrowserInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerResourceBrowserInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDesignerResourceBrowserInterfaceVTable = nil): gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface =
  let vtbl = if vtbl == nil: new QDesignerResourceBrowserInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerResourceBrowserInterfaceVTable](fcQDesignerResourceBrowserInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerResourceBrowserInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerResourceBrowserInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerResourceBrowserInterface_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentPath):
    vtbl[].vtbl.setCurrentPath = fcQDesignerResourceBrowserInterface_vtable_callback_setCurrentPath
  if not isNil(vtbl[].currentPath):
    vtbl[].vtbl.currentPath = fcQDesignerResourceBrowserInterface_vtable_callback_currentPath
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerResourceBrowserInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerResourceBrowserInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerResourceBrowserInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerResourceBrowserInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerResourceBrowserInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerResourceBrowserInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerResourceBrowserInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerResourceBrowserInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerResourceBrowserInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerResourceBrowserInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerResourceBrowserInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerResourceBrowserInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerResourceBrowserInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerResourceBrowserInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerResourceBrowserInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerResourceBrowserInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerResourceBrowserInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerResourceBrowserInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerResourceBrowserInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerResourceBrowserInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerResourceBrowserInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerResourceBrowserInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerResourceBrowserInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerResourceBrowserInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerResourceBrowserInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerResourceBrowserInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerResourceBrowserInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerResourceBrowserInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerResourceBrowserInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerResourceBrowserInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerResourceBrowserInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerResourceBrowserInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerResourceBrowserInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerResourceBrowserInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerResourceBrowserInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface(h: fcQDesignerResourceBrowserInterface_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQDesignerResourceBrowserInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerResourceBrowserInterface_mvtbl = cQDesignerResourceBrowserInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerResourceBrowserInterface()[])](self.fcQDesignerResourceBrowserInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDesignerResourceBrowserInterface_method_callback_metaObject,
  metacast: fcQDesignerResourceBrowserInterface_method_callback_metacast,
  metacall: fcQDesignerResourceBrowserInterface_method_callback_metacall,
  setCurrentPath: fcQDesignerResourceBrowserInterface_method_callback_setCurrentPath,
  currentPath: fcQDesignerResourceBrowserInterface_method_callback_currentPath,
  devType: fcQDesignerResourceBrowserInterface_method_callback_devType,
  setVisible: fcQDesignerResourceBrowserInterface_method_callback_setVisible,
  sizeHint: fcQDesignerResourceBrowserInterface_method_callback_sizeHint,
  minimumSizeHint: fcQDesignerResourceBrowserInterface_method_callback_minimumSizeHint,
  heightForWidth: fcQDesignerResourceBrowserInterface_method_callback_heightForWidth,
  hasHeightForWidth: fcQDesignerResourceBrowserInterface_method_callback_hasHeightForWidth,
  paintEngine: fcQDesignerResourceBrowserInterface_method_callback_paintEngine,
  event: fcQDesignerResourceBrowserInterface_method_callback_event,
  mousePressEvent: fcQDesignerResourceBrowserInterface_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDesignerResourceBrowserInterface_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQDesignerResourceBrowserInterface_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQDesignerResourceBrowserInterface_method_callback_mouseMoveEvent,
  wheelEvent: fcQDesignerResourceBrowserInterface_method_callback_wheelEvent,
  keyPressEvent: fcQDesignerResourceBrowserInterface_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDesignerResourceBrowserInterface_method_callback_keyReleaseEvent,
  focusInEvent: fcQDesignerResourceBrowserInterface_method_callback_focusInEvent,
  focusOutEvent: fcQDesignerResourceBrowserInterface_method_callback_focusOutEvent,
  enterEvent: fcQDesignerResourceBrowserInterface_method_callback_enterEvent,
  leaveEvent: fcQDesignerResourceBrowserInterface_method_callback_leaveEvent,
  paintEvent: fcQDesignerResourceBrowserInterface_method_callback_paintEvent,
  moveEvent: fcQDesignerResourceBrowserInterface_method_callback_moveEvent,
  resizeEvent: fcQDesignerResourceBrowserInterface_method_callback_resizeEvent,
  closeEvent: fcQDesignerResourceBrowserInterface_method_callback_closeEvent,
  contextMenuEvent: fcQDesignerResourceBrowserInterface_method_callback_contextMenuEvent,
  tabletEvent: fcQDesignerResourceBrowserInterface_method_callback_tabletEvent,
  actionEvent: fcQDesignerResourceBrowserInterface_method_callback_actionEvent,
  dragEnterEvent: fcQDesignerResourceBrowserInterface_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDesignerResourceBrowserInterface_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDesignerResourceBrowserInterface_method_callback_dragLeaveEvent,
  dropEvent: fcQDesignerResourceBrowserInterface_method_callback_dropEvent,
  showEvent: fcQDesignerResourceBrowserInterface_method_callback_showEvent,
  hideEvent: fcQDesignerResourceBrowserInterface_method_callback_hideEvent,
  nativeEvent: fcQDesignerResourceBrowserInterface_method_callback_nativeEvent,
  changeEvent: fcQDesignerResourceBrowserInterface_method_callback_changeEvent,
  metric: fcQDesignerResourceBrowserInterface_method_callback_metric,
  initPainter: fcQDesignerResourceBrowserInterface_method_callback_initPainter,
  redirected: fcQDesignerResourceBrowserInterface_method_callback_redirected,
  sharedPainter: fcQDesignerResourceBrowserInterface_method_callback_sharedPainter,
  inputMethodEvent: fcQDesignerResourceBrowserInterface_method_callback_inputMethodEvent,
  inputMethodQuery: fcQDesignerResourceBrowserInterface_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQDesignerResourceBrowserInterface_method_callback_focusNextPrevChild,
  eventFilter: fcQDesignerResourceBrowserInterface_method_callback_eventFilter,
  timerEvent: fcQDesignerResourceBrowserInterface_method_callback_timerEvent,
  childEvent: fcQDesignerResourceBrowserInterface_method_callback_childEvent,
  customEvent: fcQDesignerResourceBrowserInterface_method_callback_customEvent,
  connectNotify: fcQDesignerResourceBrowserInterface_method_callback_connectNotify,
  disconnectNotify: fcQDesignerResourceBrowserInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface,
    inst: VirtualQDesignerResourceBrowserInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerResourceBrowserInterface_new(addr(cQDesignerResourceBrowserInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerResourceBrowserInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDesignerResourceBrowserInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerResourceBrowserInterface_new2(addr(cQDesignerResourceBrowserInterface_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQDesignerResourceBrowserInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_abstractresourcebrowser_types.QDesignerResourceBrowserInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerResourceBrowserInterface_staticMetaObject())
