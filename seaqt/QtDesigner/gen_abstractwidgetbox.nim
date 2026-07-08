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


type QDesignerWidgetBoxInterfaceWidgetTypeEnum* = distinct cint
template Default*(_: type QDesignerWidgetBoxInterfaceWidgetTypeEnum): untyped = 0
template Custom*(_: type QDesignerWidgetBoxInterfaceWidgetTypeEnum): untyped = 1


type QDesignerWidgetBoxInterfaceCategoryTypeEnum* = distinct cint
template Default*(_: type QDesignerWidgetBoxInterfaceCategoryTypeEnum): untyped = 0
template Scratchpad*(_: type QDesignerWidgetBoxInterfaceCategoryTypeEnum): untyped = 1


import ./gen_abstractwidgetbox_types
export gen_abstractwidgetbox_types

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
  ../QtWidgets/gen_qwidget,
  ./gen_abstractdnditem_types
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
  gen_qwidget,
  gen_abstractdnditem_types

type cQDesignerWidgetBoxInterface*{.exportc: "QDesignerWidgetBoxInterface", incompleteStruct.} = object
type cQDesignerWidgetBoxInterfaceWidget*{.exportc: "QDesignerWidgetBoxInterface__Widget", incompleteStruct.} = object
type cQDesignerWidgetBoxInterfaceCategory*{.exportc: "QDesignerWidgetBoxInterface__Category", incompleteStruct.} = object

proc fcQDesignerWidgetBoxInterface_metaObject(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_metaObject".}
proc fcQDesignerWidgetBoxInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerWidgetBoxInterface_metacast".}
proc fcQDesignerWidgetBoxInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerWidgetBoxInterface_metacall".}
proc fcQDesignerWidgetBoxInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface_tr".}
proc fcQDesignerWidgetBoxInterface_categoryCount(self: pointer): cint {.importc: "QDesignerWidgetBoxInterface_categoryCount".}
proc fcQDesignerWidgetBoxInterface_category(self: pointer, cat_idx: cint): pointer {.importc: "QDesignerWidgetBoxInterface_category".}
proc fcQDesignerWidgetBoxInterface_addCategory(self: pointer, cat: pointer): void {.importc: "QDesignerWidgetBoxInterface_addCategory".}
proc fcQDesignerWidgetBoxInterface_removeCategory(self: pointer, cat_idx: cint): void {.importc: "QDesignerWidgetBoxInterface_removeCategory".}
proc fcQDesignerWidgetBoxInterface_widgetCount(self: pointer, cat_idx: cint): cint {.importc: "QDesignerWidgetBoxInterface_widgetCount".}
proc fcQDesignerWidgetBoxInterface_widget(self: pointer, cat_idx: cint, wgt_idx: cint): pointer {.importc: "QDesignerWidgetBoxInterface_widget".}
proc fcQDesignerWidgetBoxInterface_addWidget(self: pointer, cat_idx: cint, wgt: pointer): void {.importc: "QDesignerWidgetBoxInterface_addWidget".}
proc fcQDesignerWidgetBoxInterface_removeWidget(self: pointer, cat_idx: cint, wgt_idx: cint): void {.importc: "QDesignerWidgetBoxInterface_removeWidget".}
proc fcQDesignerWidgetBoxInterface_findOrInsertCategory(self: pointer, categoryName: struct_seaqt_string): cint {.importc: "QDesignerWidgetBoxInterface_findOrInsertCategory".}
proc fcQDesignerWidgetBoxInterface_dropWidgets(self: pointer, item_list: struct_seaqt_array, global_mouse_pos: pointer): void {.importc: "QDesignerWidgetBoxInterface_dropWidgets".}
proc fcQDesignerWidgetBoxInterface_setFileName(self: pointer, file_name: struct_seaqt_string): void {.importc: "QDesignerWidgetBoxInterface_setFileName".}
proc fcQDesignerWidgetBoxInterface_fileName(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface_fileName".}
proc fcQDesignerWidgetBoxInterface_load(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface_load".}
proc fcQDesignerWidgetBoxInterface_save(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface_save".}
proc fcQDesignerWidgetBoxInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface_tr2".}
proc fcQDesignerWidgetBoxInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface_tr3".}
proc fcQDesignerWidgetBoxInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerWidgetBoxInterface_vdata".}
proc fvdata_cQDesignerWidgetBoxInterface(self: pointer): pointer {.importc: "vdata_QDesignerWidgetBoxInterface".}

type cQDesignerWidgetBoxInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  categoryCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  category*: proc(self: pointer, cat_idx: cint): pointer {.cdecl, raises: [], gcsafe.}
  addCategory*: proc(self: pointer, cat: pointer): void {.cdecl, raises: [], gcsafe.}
  removeCategory*: proc(self: pointer, cat_idx: cint): void {.cdecl, raises: [], gcsafe.}
  widgetCount*: proc(self: pointer, cat_idx: cint): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer, cat_idx: cint, wgt_idx: cint): pointer {.cdecl, raises: [], gcsafe.}
  addWidget*: proc(self: pointer, cat_idx: cint, wgt: pointer): void {.cdecl, raises: [], gcsafe.}
  removeWidget*: proc(self: pointer, cat_idx: cint, wgt_idx: cint): void {.cdecl, raises: [], gcsafe.}
  dropWidgets*: proc(self: pointer, item_list: struct_seaqt_array, global_mouse_pos: pointer): void {.cdecl, raises: [], gcsafe.}
  setFileName*: proc(self: pointer, file_name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  fileName*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  load*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  save*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQDesignerWidgetBoxInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_metaObject".}
proc fcQDesignerWidgetBoxInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_metacast".}
proc fcQDesignerWidgetBoxInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerWidgetBoxInterface_virtualbase_metacall".}
proc fcQDesignerWidgetBoxInterface_virtualbase_devType(self: pointer): cint {.importc: "QDesignerWidgetBoxInterface_virtualbase_devType".}
proc fcQDesignerWidgetBoxInterface_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_setVisible".}
proc fcQDesignerWidgetBoxInterface_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_sizeHint".}
proc fcQDesignerWidgetBoxInterface_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_minimumSizeHint".}
proc fcQDesignerWidgetBoxInterface_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesignerWidgetBoxInterface_virtualbase_heightForWidth".}
proc fcQDesignerWidgetBoxInterface_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface_virtualbase_hasHeightForWidth".}
proc fcQDesignerWidgetBoxInterface_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_paintEngine".}
proc fcQDesignerWidgetBoxInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesignerWidgetBoxInterface_virtualbase_event".}
proc fcQDesignerWidgetBoxInterface_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_mousePressEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_mouseReleaseEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_mouseDoubleClickEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_mouseMoveEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_wheelEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_keyPressEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_keyReleaseEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_focusInEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_focusOutEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_enterEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_leaveEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_paintEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_moveEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_resizeEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_closeEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_contextMenuEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_tabletEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_actionEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_dragEnterEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_dragMoveEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_dragLeaveEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_dropEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_showEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_hideEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDesignerWidgetBoxInterface_virtualbase_nativeEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_changeEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDesignerWidgetBoxInterface_virtualbase_metric".}
proc fcQDesignerWidgetBoxInterface_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_initPainter".}
proc fcQDesignerWidgetBoxInterface_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_redirected".}
proc fcQDesignerWidgetBoxInterface_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_sharedPainter".}
proc fcQDesignerWidgetBoxInterface_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_inputMethodEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesignerWidgetBoxInterface_virtualbase_inputMethodQuery".}
proc fcQDesignerWidgetBoxInterface_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesignerWidgetBoxInterface_virtualbase_focusNextPrevChild".}
proc fcQDesignerWidgetBoxInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesignerWidgetBoxInterface_virtualbase_eventFilter".}
proc fcQDesignerWidgetBoxInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_timerEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_childEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_customEvent".}
proc fcQDesignerWidgetBoxInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_connectNotify".}
proc fcQDesignerWidgetBoxInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerWidgetBoxInterface_virtualbase_disconnectNotify".}
proc fcQDesignerWidgetBoxInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerWidgetBoxInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerWidgetBoxInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerWidgetBoxInterface_protectedbase_create".}
proc fcQDesignerWidgetBoxInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerWidgetBoxInterface_protectedbase_destroy".}
proc fcQDesignerWidgetBoxInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface_protectedbase_focusNextChild".}
proc fcQDesignerWidgetBoxInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerWidgetBoxInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerWidgetBoxInterface_protectedbase_sender".}
proc fcQDesignerWidgetBoxInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerWidgetBoxInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerWidgetBoxInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerWidgetBoxInterface_protectedbase_receivers".}
proc fcQDesignerWidgetBoxInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerWidgetBoxInterface_protectedbase_isSignalConnected".}
proc fcQDesignerWidgetBoxInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerWidgetBoxInterface {.importc: "QDesignerWidgetBoxInterface_new".}
proc fcQDesignerWidgetBoxInterface_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQDesignerWidgetBoxInterface {.importc: "QDesignerWidgetBoxInterface_new2".}
proc fcQDesignerWidgetBoxInterface_new3(vtbl: pointer, vdata: csize_t, parent: pointer, flags: cint): ptr cQDesignerWidgetBoxInterface {.importc: "QDesignerWidgetBoxInterface_new3".}
proc fcQDesignerWidgetBoxInterface_staticMetaObject(): pointer {.importc: "QDesignerWidgetBoxInterface_staticMetaObject".}
proc fcQDesignerWidgetBoxInterfaceWidget_operatorAssign(self: pointer, w: pointer): void {.importc: "QDesignerWidgetBoxInterface__Widget_operatorAssign".}
proc fcQDesignerWidgetBoxInterfaceWidget_name(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface__Widget_name".}
proc fcQDesignerWidgetBoxInterfaceWidget_setName(self: pointer, aname: struct_seaqt_string): void {.importc: "QDesignerWidgetBoxInterface__Widget_setName".}
proc fcQDesignerWidgetBoxInterfaceWidget_domXml(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface__Widget_domXml".}
proc fcQDesignerWidgetBoxInterfaceWidget_setDomXml(self: pointer, xml: struct_seaqt_string): void {.importc: "QDesignerWidgetBoxInterface__Widget_setDomXml".}
proc fcQDesignerWidgetBoxInterfaceWidget_iconName(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface__Widget_iconName".}
proc fcQDesignerWidgetBoxInterfaceWidget_setIconName(self: pointer, icon_name: struct_seaqt_string): void {.importc: "QDesignerWidgetBoxInterface__Widget_setIconName".}
proc fcQDesignerWidgetBoxInterfaceWidget_typeX(self: pointer): cint {.importc: "QDesignerWidgetBoxInterface__Widget_type".}
proc fcQDesignerWidgetBoxInterfaceWidget_setType(self: pointer, atype: cint): void {.importc: "QDesignerWidgetBoxInterface__Widget_setType".}
proc fcQDesignerWidgetBoxInterfaceWidget_isNull(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface__Widget_isNull".}
proc fcQDesignerWidgetBoxInterfaceWidget_new(): ptr cQDesignerWidgetBoxInterfaceWidget {.importc: "QDesignerWidgetBoxInterface__Widget_new".}
proc fcQDesignerWidgetBoxInterfaceWidget_new2(w: pointer): ptr cQDesignerWidgetBoxInterfaceWidget {.importc: "QDesignerWidgetBoxInterface__Widget_new2".}
proc fcQDesignerWidgetBoxInterfaceWidget_new3(aname: struct_seaqt_string): ptr cQDesignerWidgetBoxInterfaceWidget {.importc: "QDesignerWidgetBoxInterface__Widget_new3".}
proc fcQDesignerWidgetBoxInterfaceWidget_new4(aname: struct_seaqt_string, xml: struct_seaqt_string): ptr cQDesignerWidgetBoxInterfaceWidget {.importc: "QDesignerWidgetBoxInterface__Widget_new4".}
proc fcQDesignerWidgetBoxInterfaceWidget_new5(aname: struct_seaqt_string, xml: struct_seaqt_string, icon_name: struct_seaqt_string): ptr cQDesignerWidgetBoxInterfaceWidget {.importc: "QDesignerWidgetBoxInterface__Widget_new5".}
proc fcQDesignerWidgetBoxInterfaceWidget_new6(aname: struct_seaqt_string, xml: struct_seaqt_string, icon_name: struct_seaqt_string, atype: cint): ptr cQDesignerWidgetBoxInterfaceWidget {.importc: "QDesignerWidgetBoxInterface__Widget_new6".}
proc fcQDesignerWidgetBoxInterfaceCategory_name(self: pointer): struct_seaqt_string {.importc: "QDesignerWidgetBoxInterface__Category_name".}
proc fcQDesignerWidgetBoxInterfaceCategory_setName(self: pointer, aname: struct_seaqt_string): void {.importc: "QDesignerWidgetBoxInterface__Category_setName".}
proc fcQDesignerWidgetBoxInterfaceCategory_widgetCount(self: pointer): cint {.importc: "QDesignerWidgetBoxInterface__Category_widgetCount".}
proc fcQDesignerWidgetBoxInterfaceCategory_widget(self: pointer, idx: cint): pointer {.importc: "QDesignerWidgetBoxInterface__Category_widget".}
proc fcQDesignerWidgetBoxInterfaceCategory_removeWidget(self: pointer, idx: cint): void {.importc: "QDesignerWidgetBoxInterface__Category_removeWidget".}
proc fcQDesignerWidgetBoxInterfaceCategory_addWidget(self: pointer, awidget: pointer): void {.importc: "QDesignerWidgetBoxInterface__Category_addWidget".}
proc fcQDesignerWidgetBoxInterfaceCategory_typeX(self: pointer): cint {.importc: "QDesignerWidgetBoxInterface__Category_type".}
proc fcQDesignerWidgetBoxInterfaceCategory_setType(self: pointer, atype: cint): void {.importc: "QDesignerWidgetBoxInterface__Category_setType".}
proc fcQDesignerWidgetBoxInterfaceCategory_isNull(self: pointer): bool {.importc: "QDesignerWidgetBoxInterface__Category_isNull".}
proc fcQDesignerWidgetBoxInterfaceCategory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDesignerWidgetBoxInterface__Category_operatorAssign".}
proc fcQDesignerWidgetBoxInterfaceCategory_new(): ptr cQDesignerWidgetBoxInterfaceCategory {.importc: "QDesignerWidgetBoxInterface__Category_new".}
proc fcQDesignerWidgetBoxInterfaceCategory_new2(param1: pointer): ptr cQDesignerWidgetBoxInterfaceCategory {.importc: "QDesignerWidgetBoxInterface__Category_new2".}
proc fcQDesignerWidgetBoxInterfaceCategory_new3(aname: struct_seaqt_string): ptr cQDesignerWidgetBoxInterfaceCategory {.importc: "QDesignerWidgetBoxInterface__Category_new3".}
proc fcQDesignerWidgetBoxInterfaceCategory_new4(aname: struct_seaqt_string, atype: cint): ptr cQDesignerWidgetBoxInterfaceCategory {.importc: "QDesignerWidgetBoxInterface__Category_new4".}

proc metaObject*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetBoxInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cstring): pointer =
  fcQDesignerWidgetBoxInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerWidgetBoxInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, s: cstring): string =
  let v_ms = fcQDesignerWidgetBoxInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc categoryCount*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): cint =
  fcQDesignerWidgetBoxInterface_categoryCount(self.h)

proc category*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat_idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory =
  gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: fcQDesignerWidgetBoxInterface_category(self.h, cat_idx), owned: true)

proc addCategory*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): void =
  fcQDesignerWidgetBoxInterface_addCategory(self.h, cat.h)

proc removeCategory*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat_idx: cint): void =
  fcQDesignerWidgetBoxInterface_removeCategory(self.h, cat_idx)

proc widgetCount*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat_idx: cint): cint =
  fcQDesignerWidgetBoxInterface_widgetCount(self.h, cat_idx)

proc widget*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat_idx: cint, wgt_idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterface_widget(self.h, cat_idx, wgt_idx), owned: true)

proc addWidget*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat_idx: cint, wgt: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): void =
  fcQDesignerWidgetBoxInterface_addWidget(self.h, cat_idx, wgt.h)

proc removeWidget*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, cat_idx: cint, wgt_idx: cint): void =
  fcQDesignerWidgetBoxInterface_removeWidget(self.h, cat_idx, wgt_idx)

proc findOrInsertCategory*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, categoryName: openArray[char]): cint =
  fcQDesignerWidgetBoxInterface_findOrInsertCategory(self.h, struct_seaqt_string(data: if len(categoryName) > 0: addr categoryName[0] else: nil, len: csize_t(len(categoryName))))

proc dropWidgets*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, item_list: openArray[gen_abstractdnditem_types.QDesignerDnDItemInterface], global_mouse_pos: gen_qpoint_types.QPoint): void =
  var item_list_CArray = newSeq[pointer](len(item_list))
  for i in 0..<len(item_list):
    item_list_CArray[i] = item_list[i].h

  fcQDesignerWidgetBoxInterface_dropWidgets(self.h, struct_seaqt_array(len: csize_t(len(item_list)), data: if len(item_list) == 0: nil else: addr(item_list_CArray[0])), global_mouse_pos.h)

proc setFileName*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, file_name: openArray[char]): void =
  fcQDesignerWidgetBoxInterface_setFileName(self.h, struct_seaqt_string(data: if len(file_name) > 0: addr file_name[0] else: nil, len: csize_t(len(file_name))))

proc fileName*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): string =
  let v_ms = fcQDesignerWidgetBoxInterface_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): bool =
  fcQDesignerWidgetBoxInterface_load(self.h)

proc save*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): bool =
  fcQDesignerWidgetBoxInterface_save(self.h)

proc tr*(_: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerWidgetBoxInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerWidgetBoxInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDesignerWidgetBoxInterfacemetaObjectProc* = proc(self: QDesignerWidgetBoxInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemetacastProc* = proc(self: QDesignerWidgetBoxInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemetacallProc* = proc(self: QDesignerWidgetBoxInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacecategoryCountProc* = proc(self: QDesignerWidgetBoxInterface): cint {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacecategoryProc* = proc(self: QDesignerWidgetBoxInterface, cat_idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceaddCategoryProc* = proc(self: QDesignerWidgetBoxInterface, cat: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceremoveCategoryProc* = proc(self: QDesignerWidgetBoxInterface, cat_idx: cint): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacewidgetCountProc* = proc(self: QDesignerWidgetBoxInterface, cat_idx: cint): cint {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacewidgetProc* = proc(self: QDesignerWidgetBoxInterface, cat_idx: cint, wgt_idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceaddWidgetProc* = proc(self: QDesignerWidgetBoxInterface, cat_idx: cint, wgt: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceremoveWidgetProc* = proc(self: QDesignerWidgetBoxInterface, cat_idx: cint, wgt_idx: cint): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedropWidgetsProc* = proc(self: QDesignerWidgetBoxInterface, item_list: openArray[gen_abstractdnditem_types.QDesignerDnDItemInterface], global_mouse_pos: gen_qpoint_types.QPoint): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacesetFileNameProc* = proc(self: QDesignerWidgetBoxInterface, file_name: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacefileNameProc* = proc(self: QDesignerWidgetBoxInterface): string {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceloadProc* = proc(self: QDesignerWidgetBoxInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacesaveProc* = proc(self: QDesignerWidgetBoxInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedevTypeProc* = proc(self: QDesignerWidgetBoxInterface): cint {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacesetVisibleProc* = proc(self: QDesignerWidgetBoxInterface, visible: bool): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacesizeHintProc* = proc(self: QDesignerWidgetBoxInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceminimumSizeHintProc* = proc(self: QDesignerWidgetBoxInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceheightForWidthProc* = proc(self: QDesignerWidgetBoxInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacehasHeightForWidthProc* = proc(self: QDesignerWidgetBoxInterface): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacepaintEngineProc* = proc(self: QDesignerWidgetBoxInterface): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceeventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemousePressEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemouseReleaseEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemouseDoubleClickEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemouseMoveEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacewheelEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacekeyPressEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacekeyReleaseEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacefocusInEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacefocusOutEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceenterEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceleaveEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacepaintEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemoveEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceresizeEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacecloseEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacecontextMenuEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacetabletEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceactionEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedragEnterEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedragMoveEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedragLeaveEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedropEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceshowEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacehideEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacenativeEventProc* = proc(self: QDesignerWidgetBoxInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacechangeEventProc* = proc(self: QDesignerWidgetBoxInterface, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacemetricProc* = proc(self: QDesignerWidgetBoxInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceinitPainterProc* = proc(self: QDesignerWidgetBoxInterface, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceredirectedProc* = proc(self: QDesignerWidgetBoxInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacesharedPainterProc* = proc(self: QDesignerWidgetBoxInterface): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceinputMethodEventProc* = proc(self: QDesignerWidgetBoxInterface, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceinputMethodQueryProc* = proc(self: QDesignerWidgetBoxInterface, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacefocusNextPrevChildProc* = proc(self: QDesignerWidgetBoxInterface, next: bool): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceeventFilterProc* = proc(self: QDesignerWidgetBoxInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacetimerEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacechildEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacecustomEventProc* = proc(self: QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfaceconnectNotifyProc* = proc(self: QDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerWidgetBoxInterfacedisconnectNotifyProc* = proc(self: QDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDesignerWidgetBoxInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerWidgetBoxInterfaceVTable
  metaObject*: QDesignerWidgetBoxInterfacemetaObjectProc
  metacast*: QDesignerWidgetBoxInterfacemetacastProc
  metacall*: QDesignerWidgetBoxInterfacemetacallProc
  categoryCount*: QDesignerWidgetBoxInterfacecategoryCountProc
  category*: QDesignerWidgetBoxInterfacecategoryProc
  addCategory*: QDesignerWidgetBoxInterfaceaddCategoryProc
  removeCategory*: QDesignerWidgetBoxInterfaceremoveCategoryProc
  widgetCount*: QDesignerWidgetBoxInterfacewidgetCountProc
  widget*: QDesignerWidgetBoxInterfacewidgetProc
  addWidget*: QDesignerWidgetBoxInterfaceaddWidgetProc
  removeWidget*: QDesignerWidgetBoxInterfaceremoveWidgetProc
  dropWidgets*: QDesignerWidgetBoxInterfacedropWidgetsProc
  setFileName*: QDesignerWidgetBoxInterfacesetFileNameProc
  fileName*: QDesignerWidgetBoxInterfacefileNameProc
  load*: QDesignerWidgetBoxInterfaceloadProc
  save*: QDesignerWidgetBoxInterfacesaveProc
  devType*: QDesignerWidgetBoxInterfacedevTypeProc
  setVisible*: QDesignerWidgetBoxInterfacesetVisibleProc
  sizeHint*: QDesignerWidgetBoxInterfacesizeHintProc
  minimumSizeHint*: QDesignerWidgetBoxInterfaceminimumSizeHintProc
  heightForWidth*: QDesignerWidgetBoxInterfaceheightForWidthProc
  hasHeightForWidth*: QDesignerWidgetBoxInterfacehasHeightForWidthProc
  paintEngine*: QDesignerWidgetBoxInterfacepaintEngineProc
  event*: QDesignerWidgetBoxInterfaceeventProc
  mousePressEvent*: QDesignerWidgetBoxInterfacemousePressEventProc
  mouseReleaseEvent*: QDesignerWidgetBoxInterfacemouseReleaseEventProc
  mouseDoubleClickEvent*: QDesignerWidgetBoxInterfacemouseDoubleClickEventProc
  mouseMoveEvent*: QDesignerWidgetBoxInterfacemouseMoveEventProc
  wheelEvent*: QDesignerWidgetBoxInterfacewheelEventProc
  keyPressEvent*: QDesignerWidgetBoxInterfacekeyPressEventProc
  keyReleaseEvent*: QDesignerWidgetBoxInterfacekeyReleaseEventProc
  focusInEvent*: QDesignerWidgetBoxInterfacefocusInEventProc
  focusOutEvent*: QDesignerWidgetBoxInterfacefocusOutEventProc
  enterEvent*: QDesignerWidgetBoxInterfaceenterEventProc
  leaveEvent*: QDesignerWidgetBoxInterfaceleaveEventProc
  paintEvent*: QDesignerWidgetBoxInterfacepaintEventProc
  moveEvent*: QDesignerWidgetBoxInterfacemoveEventProc
  resizeEvent*: QDesignerWidgetBoxInterfaceresizeEventProc
  closeEvent*: QDesignerWidgetBoxInterfacecloseEventProc
  contextMenuEvent*: QDesignerWidgetBoxInterfacecontextMenuEventProc
  tabletEvent*: QDesignerWidgetBoxInterfacetabletEventProc
  actionEvent*: QDesignerWidgetBoxInterfaceactionEventProc
  dragEnterEvent*: QDesignerWidgetBoxInterfacedragEnterEventProc
  dragMoveEvent*: QDesignerWidgetBoxInterfacedragMoveEventProc
  dragLeaveEvent*: QDesignerWidgetBoxInterfacedragLeaveEventProc
  dropEvent*: QDesignerWidgetBoxInterfacedropEventProc
  showEvent*: QDesignerWidgetBoxInterfaceshowEventProc
  hideEvent*: QDesignerWidgetBoxInterfacehideEventProc
  nativeEvent*: QDesignerWidgetBoxInterfacenativeEventProc
  changeEvent*: QDesignerWidgetBoxInterfacechangeEventProc
  metric*: QDesignerWidgetBoxInterfacemetricProc
  initPainter*: QDesignerWidgetBoxInterfaceinitPainterProc
  redirected*: QDesignerWidgetBoxInterfaceredirectedProc
  sharedPainter*: QDesignerWidgetBoxInterfacesharedPainterProc
  inputMethodEvent*: QDesignerWidgetBoxInterfaceinputMethodEventProc
  inputMethodQuery*: QDesignerWidgetBoxInterfaceinputMethodQueryProc
  focusNextPrevChild*: QDesignerWidgetBoxInterfacefocusNextPrevChildProc
  eventFilter*: QDesignerWidgetBoxInterfaceeventFilterProc
  timerEvent*: QDesignerWidgetBoxInterfacetimerEventProc
  childEvent*: QDesignerWidgetBoxInterfacechildEventProc
  customEvent*: QDesignerWidgetBoxInterfacecustomEventProc
  connectNotify*: QDesignerWidgetBoxInterfaceconnectNotifyProc
  disconnectNotify*: QDesignerWidgetBoxInterfacedisconnectNotifyProc

proc QDesignerWidgetBoxInterfacemetaObject*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetBoxInterface_virtualbase_metaObject(self.h), owned: false)

proc QDesignerWidgetBoxInterfacemetacast*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cstring): pointer =
  fcQDesignerWidgetBoxInterface_virtualbase_metacast(self.h, param1)

proc QDesignerWidgetBoxInterfacemetacall*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerWidgetBoxInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesignerWidgetBoxInterfacedevType*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): cint =
  fcQDesignerWidgetBoxInterface_virtualbase_devType(self.h)

proc QDesignerWidgetBoxInterfacesetVisible*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, visible: bool): void =
  fcQDesignerWidgetBoxInterface_virtualbase_setVisible(self.h, visible)

proc QDesignerWidgetBoxInterfacesizeHint*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerWidgetBoxInterface_virtualbase_sizeHint(self.h), owned: true)

proc QDesignerWidgetBoxInterfaceminimumSizeHint*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerWidgetBoxInterface_virtualbase_minimumSizeHint(self.h), owned: true)

proc QDesignerWidgetBoxInterfaceheightForWidth*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cint): cint =
  fcQDesignerWidgetBoxInterface_virtualbase_heightForWidth(self.h, param1)

proc QDesignerWidgetBoxInterfacehasHeightForWidth*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): bool =
  fcQDesignerWidgetBoxInterface_virtualbase_hasHeightForWidth(self.h)

proc QDesignerWidgetBoxInterfacepaintEngine*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesignerWidgetBoxInterface_virtualbase_paintEngine(self.h), owned: false)

proc QDesignerWidgetBoxInterfaceevent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerWidgetBoxInterface_virtualbase_event(self.h, event.h)

proc QDesignerWidgetBoxInterfacemousePressEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_mousePressEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacemouseReleaseEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacemouseDoubleClickEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacemouseMoveEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacewheelEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QWheelEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_wheelEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacekeyPressEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_keyPressEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacekeyReleaseEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacefocusInEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_focusInEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacefocusOutEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_focusOutEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfaceenterEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QEnterEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_enterEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfaceleaveEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_leaveEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacepaintEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QPaintEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_paintEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacemoveEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QMoveEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_moveEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfaceresizeEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QResizeEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_resizeEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacecloseEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QCloseEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_closeEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacecontextMenuEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_contextMenuEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacetabletEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QTabletEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_tabletEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfaceactionEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QActionEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_actionEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacedragEnterEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_dragEnterEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacedragMoveEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_dragMoveEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacedragLeaveEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacedropEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QDropEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_dropEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfaceshowEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QShowEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_showEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacehideEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qevent_types.QHideEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_hideEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacenativeEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDesignerWidgetBoxInterface_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QDesignerWidgetBoxInterfacechangeEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_changeEvent(self.h, param1.h)

proc QDesignerWidgetBoxInterfacemetric*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cint): cint =
  fcQDesignerWidgetBoxInterface_virtualbase_metric(self.h, cint(param1))

proc QDesignerWidgetBoxInterfaceinitPainter*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, painter: gen_qpainter_types.QPainter): void =
  fcQDesignerWidgetBoxInterface_virtualbase_initPainter(self.h, painter.h)

proc QDesignerWidgetBoxInterfaceredirected*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesignerWidgetBoxInterface_virtualbase_redirected(self.h, offset.h), owned: false)

proc QDesignerWidgetBoxInterfacesharedPainter*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesignerWidgetBoxInterface_virtualbase_sharedPainter(self.h), owned: false)

proc QDesignerWidgetBoxInterfaceinputMethodEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDesignerWidgetBoxInterfaceinputMethodQuery*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerWidgetBoxInterface_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QDesignerWidgetBoxInterfacefocusNextPrevChild*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, next: bool): bool =
  fcQDesignerWidgetBoxInterface_virtualbase_focusNextPrevChild(self.h, next)

proc QDesignerWidgetBoxInterfaceeventFilter*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerWidgetBoxInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesignerWidgetBoxInterfacetimerEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_timerEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacechildEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_childEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfacecustomEvent*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerWidgetBoxInterface_virtualbase_customEvent(self.h, event.h)

proc QDesignerWidgetBoxInterfaceconnectNotify*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerWidgetBoxInterface_virtualbase_connectNotify(self.h, signal.h)

proc QDesignerWidgetBoxInterfacedisconnectNotify*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerWidgetBoxInterface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesignerWidgetBoxInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_categoryCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].categoryCount(self)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_category(self: pointer, cat_idx: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cat_idx
  var virtualReturn = vtbl[].category(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_addCategory(self: pointer, cat: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: cat, owned: false)
  vtbl[].addCategory(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_removeCategory(self: pointer, cat_idx: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cat_idx
  vtbl[].removeCategory(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_widgetCount(self: pointer, cat_idx: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cat_idx
  var virtualReturn = vtbl[].widgetCount(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_widget(self: pointer, cat_idx: cint, wgt_idx: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cat_idx
  let slotval2 = wgt_idx
  var virtualReturn = vtbl[].widget(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_addWidget(self: pointer, cat_idx: cint, wgt: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cat_idx
  let slotval2 = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: wgt, owned: false)
  vtbl[].addWidget(self, slotval1, slotval2)

proc fcQDesignerWidgetBoxInterface_vtable_callback_removeWidget(self: pointer, cat_idx: cint, wgt_idx: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cat_idx
  let slotval2 = wgt_idx
  vtbl[].removeWidget(self, slotval1, slotval2)

proc fcQDesignerWidgetBoxInterface_vtable_callback_dropWidgets(self: pointer, item_list: struct_seaqt_array, global_mouse_pos: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var vitem_list_ma = item_list
  var vitem_listx_ret = newSeq[gen_abstractdnditem_types.QDesignerDnDItemInterface](int(vitem_list_ma.len))
  let vitem_list_outCast = cast[ptr UncheckedArray[pointer]](vitem_list_ma.data)
  for i in 0 ..< vitem_list_ma.len:
    vitem_listx_ret[i] = gen_abstractdnditem_types.QDesignerDnDItemInterface(h: vitem_list_outCast[i], owned: false)
  c_free(vitem_list_ma.data)
  let slotval1 = vitem_listx_ret
  let slotval2 = gen_qpoint_types.QPoint(h: global_mouse_pos, owned: false)
  vtbl[].dropWidgets(self, slotval1, slotval2)

proc fcQDesignerWidgetBoxInterface_vtable_callback_setFileName(self: pointer, file_name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let vfile_name_ms = file_name
  let vfile_namex_ret = string.fromBytes(vfile_name_ms)
  c_free(vfile_name_ms.data)
  let slotval1 = vfile_namex_ret
  vtbl[].setFileName(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_fileName(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].fileName(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetBoxInterface_vtable_callback_load(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].load(self)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_save(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].save(self)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesignerWidgetBoxInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let self = QDesignerWidgetBoxInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesignerWidgetBoxInterface* {.inheritable.} = ref object of QDesignerWidgetBoxInterface
  vtbl*: cQDesignerWidgetBoxInterfaceVTable

method metaObject*(self: VirtualQDesignerWidgetBoxInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesignerWidgetBoxInterfacemetaObject(self[])
method metacast*(self: VirtualQDesignerWidgetBoxInterface, param1: cstring): pointer {.base.} =
  QDesignerWidgetBoxInterfacemetacast(self[], param1)
method metacall*(self: VirtualQDesignerWidgetBoxInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesignerWidgetBoxInterfacemetacall(self[], param1, param2, param3)
method categoryCount*(self: VirtualQDesignerWidgetBoxInterface): cint {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.categoryCount")
method category*(self: VirtualQDesignerWidgetBoxInterface, cat_idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.category")
method addCategory*(self: VirtualQDesignerWidgetBoxInterface, cat: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.addCategory")
method removeCategory*(self: VirtualQDesignerWidgetBoxInterface, cat_idx: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.removeCategory")
method widgetCount*(self: VirtualQDesignerWidgetBoxInterface, cat_idx: cint): cint {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.widgetCount")
method widget*(self: VirtualQDesignerWidgetBoxInterface, cat_idx: cint, wgt_idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.widget")
method addWidget*(self: VirtualQDesignerWidgetBoxInterface, cat_idx: cint, wgt: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.addWidget")
method removeWidget*(self: VirtualQDesignerWidgetBoxInterface, cat_idx: cint, wgt_idx: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.removeWidget")
method dropWidgets*(self: VirtualQDesignerWidgetBoxInterface, item_list: openArray[gen_abstractdnditem_types.QDesignerDnDItemInterface], global_mouse_pos: gen_qpoint_types.QPoint): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.dropWidgets")
method setFileName*(self: VirtualQDesignerWidgetBoxInterface, file_name: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.setFileName")
method fileName*(self: VirtualQDesignerWidgetBoxInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.fileName")
method load*(self: VirtualQDesignerWidgetBoxInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.load")
method save*(self: VirtualQDesignerWidgetBoxInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerWidgetBoxInterface.save")
method devType*(self: VirtualQDesignerWidgetBoxInterface): cint {.base.} =
  QDesignerWidgetBoxInterfacedevType(self[])
method setVisible*(self: VirtualQDesignerWidgetBoxInterface, visible: bool): void {.base.} =
  QDesignerWidgetBoxInterfacesetVisible(self[], visible)
method sizeHint*(self: VirtualQDesignerWidgetBoxInterface): gen_qsize_types.QSize {.base.} =
  QDesignerWidgetBoxInterfacesizeHint(self[])
method minimumSizeHint*(self: VirtualQDesignerWidgetBoxInterface): gen_qsize_types.QSize {.base.} =
  QDesignerWidgetBoxInterfaceminimumSizeHint(self[])
method heightForWidth*(self: VirtualQDesignerWidgetBoxInterface, param1: cint): cint {.base.} =
  QDesignerWidgetBoxInterfaceheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDesignerWidgetBoxInterface): bool {.base.} =
  QDesignerWidgetBoxInterfacehasHeightForWidth(self[])
method paintEngine*(self: VirtualQDesignerWidgetBoxInterface): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDesignerWidgetBoxInterfacepaintEngine(self[])
method event*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerWidgetBoxInterfaceevent(self[], event)
method mousePressEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerWidgetBoxInterfacemousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerWidgetBoxInterfacemouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerWidgetBoxInterfacemouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerWidgetBoxInterfacemouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDesignerWidgetBoxInterfacewheelEvent(self[], event)
method keyPressEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerWidgetBoxInterfacekeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerWidgetBoxInterfacekeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerWidgetBoxInterfacefocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerWidgetBoxInterfacefocusOutEvent(self[], event)
method enterEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDesignerWidgetBoxInterfaceenterEvent(self[], event)
method leaveEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerWidgetBoxInterfaceleaveEvent(self[], event)
method paintEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDesignerWidgetBoxInterfacepaintEvent(self[], event)
method moveEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDesignerWidgetBoxInterfacemoveEvent(self[], event)
method resizeEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDesignerWidgetBoxInterfaceresizeEvent(self[], event)
method closeEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDesignerWidgetBoxInterfacecloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDesignerWidgetBoxInterfacecontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDesignerWidgetBoxInterfacetabletEvent(self[], event)
method actionEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDesignerWidgetBoxInterfaceactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDesignerWidgetBoxInterfacedragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDesignerWidgetBoxInterfacedragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDesignerWidgetBoxInterfacedragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDesignerWidgetBoxInterfacedropEvent(self[], event)
method showEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDesignerWidgetBoxInterfaceshowEvent(self[], event)
method hideEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDesignerWidgetBoxInterfacehideEvent(self[], event)
method nativeEvent*(self: VirtualQDesignerWidgetBoxInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDesignerWidgetBoxInterfacenativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQDesignerWidgetBoxInterface, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerWidgetBoxInterfacechangeEvent(self[], param1)
method metric*(self: VirtualQDesignerWidgetBoxInterface, param1: cint): cint {.base.} =
  QDesignerWidgetBoxInterfacemetric(self[], param1)
method initPainter*(self: VirtualQDesignerWidgetBoxInterface, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDesignerWidgetBoxInterfaceinitPainter(self[], painter)
method redirected*(self: VirtualQDesignerWidgetBoxInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDesignerWidgetBoxInterfaceredirected(self[], offset)
method sharedPainter*(self: VirtualQDesignerWidgetBoxInterface): gen_qpainter_types.QPainter {.base.} =
  QDesignerWidgetBoxInterfacesharedPainter(self[])
method inputMethodEvent*(self: VirtualQDesignerWidgetBoxInterface, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDesignerWidgetBoxInterfaceinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQDesignerWidgetBoxInterface, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDesignerWidgetBoxInterfaceinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQDesignerWidgetBoxInterface, next: bool): bool {.base.} =
  QDesignerWidgetBoxInterfacefocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDesignerWidgetBoxInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerWidgetBoxInterfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesignerWidgetBoxInterfacetimerEvent(self[], event)
method childEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesignerWidgetBoxInterfacechildEvent(self[], event)
method customEvent*(self: VirtualQDesignerWidgetBoxInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerWidgetBoxInterfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerWidgetBoxInterfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerWidgetBoxInterfacedisconnectNotify(self[], signal)

proc fcQDesignerWidgetBoxInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_categoryCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.categoryCount()
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_category(self: pointer, cat_idx: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cat_idx
  var virtualReturn = inst.category(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_addCategory(self: pointer, cat: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: cat, owned: false)
  inst.addCategory(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_removeCategory(self: pointer, cat_idx: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cat_idx
  inst.removeCategory(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_widgetCount(self: pointer, cat_idx: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cat_idx
  var virtualReturn = inst.widgetCount(slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_widget(self: pointer, cat_idx: cint, wgt_idx: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cat_idx
  let slotval2 = wgt_idx
  var virtualReturn = inst.widget(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_addWidget(self: pointer, cat_idx: cint, wgt: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cat_idx
  let slotval2 = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: wgt, owned: false)
  inst.addWidget(slotval1, slotval2)

proc fcQDesignerWidgetBoxInterface_method_callback_removeWidget(self: pointer, cat_idx: cint, wgt_idx: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cat_idx
  let slotval2 = wgt_idx
  inst.removeWidget(slotval1, slotval2)

proc fcQDesignerWidgetBoxInterface_method_callback_dropWidgets(self: pointer, item_list: struct_seaqt_array, global_mouse_pos: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var vitem_list_ma = item_list
  var vitem_listx_ret = newSeq[gen_abstractdnditem_types.QDesignerDnDItemInterface](int(vitem_list_ma.len))
  let vitem_list_outCast = cast[ptr UncheckedArray[pointer]](vitem_list_ma.data)
  for i in 0 ..< vitem_list_ma.len:
    vitem_listx_ret[i] = gen_abstractdnditem_types.QDesignerDnDItemInterface(h: vitem_list_outCast[i], owned: false)
  c_free(vitem_list_ma.data)
  let slotval1 = vitem_listx_ret
  let slotval2 = gen_qpoint_types.QPoint(h: global_mouse_pos, owned: false)
  inst.dropWidgets(slotval1, slotval2)

proc fcQDesignerWidgetBoxInterface_method_callback_setFileName(self: pointer, file_name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let vfile_name_ms = file_name
  let vfile_namex_ret = string.fromBytes(vfile_name_ms)
  c_free(vfile_name_ms.data)
  let slotval1 = vfile_namex_ret
  inst.setFileName(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_fileName(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.fileName()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerWidgetBoxInterface_method_callback_load(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.load()
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_save(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.save()
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerWidgetBoxInterface_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesignerWidgetBoxInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDesignerWidgetBoxInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerWidgetBoxInterface](fcQDesignerWidgetBoxInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): void =
  fcQDesignerWidgetBoxInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): void =
  fcQDesignerWidgetBoxInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): void =
  fcQDesignerWidgetBoxInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): bool =
  fcQDesignerWidgetBoxInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): bool =
  fcQDesignerWidgetBoxInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerWidgetBoxInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): cint =
  fcQDesignerWidgetBoxInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, signal: cstring): cint =
  fcQDesignerWidgetBoxInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerWidgetBoxInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface,
    vtbl: ref QDesignerWidgetBoxInterfaceVTable = nil): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface =
  let vtbl = if vtbl == nil: new QDesignerWidgetBoxInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerWidgetBoxInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerWidgetBoxInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerWidgetBoxInterface_vtable_callback_metacall
  if not isNil(vtbl[].categoryCount):
    vtbl[].vtbl.categoryCount = fcQDesignerWidgetBoxInterface_vtable_callback_categoryCount
  if not isNil(vtbl[].category):
    vtbl[].vtbl.category = fcQDesignerWidgetBoxInterface_vtable_callback_category
  if not isNil(vtbl[].addCategory):
    vtbl[].vtbl.addCategory = fcQDesignerWidgetBoxInterface_vtable_callback_addCategory
  if not isNil(vtbl[].removeCategory):
    vtbl[].vtbl.removeCategory = fcQDesignerWidgetBoxInterface_vtable_callback_removeCategory
  if not isNil(vtbl[].widgetCount):
    vtbl[].vtbl.widgetCount = fcQDesignerWidgetBoxInterface_vtable_callback_widgetCount
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQDesignerWidgetBoxInterface_vtable_callback_widget
  if not isNil(vtbl[].addWidget):
    vtbl[].vtbl.addWidget = fcQDesignerWidgetBoxInterface_vtable_callback_addWidget
  if not isNil(vtbl[].removeWidget):
    vtbl[].vtbl.removeWidget = fcQDesignerWidgetBoxInterface_vtable_callback_removeWidget
  if not isNil(vtbl[].dropWidgets):
    vtbl[].vtbl.dropWidgets = fcQDesignerWidgetBoxInterface_vtable_callback_dropWidgets
  if not isNil(vtbl[].setFileName):
    vtbl[].vtbl.setFileName = fcQDesignerWidgetBoxInterface_vtable_callback_setFileName
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQDesignerWidgetBoxInterface_vtable_callback_fileName
  if not isNil(vtbl[].load):
    vtbl[].vtbl.load = fcQDesignerWidgetBoxInterface_vtable_callback_load
  if not isNil(vtbl[].save):
    vtbl[].vtbl.save = fcQDesignerWidgetBoxInterface_vtable_callback_save
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerWidgetBoxInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerWidgetBoxInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerWidgetBoxInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerWidgetBoxInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerWidgetBoxInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerWidgetBoxInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerWidgetBoxInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerWidgetBoxInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerWidgetBoxInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerWidgetBoxInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerWidgetBoxInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerWidgetBoxInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerWidgetBoxInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerWidgetBoxInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerWidgetBoxInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerWidgetBoxInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerWidgetBoxInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerWidgetBoxInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerWidgetBoxInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerWidgetBoxInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerWidgetBoxInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerWidgetBoxInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerWidgetBoxInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerWidgetBoxInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerWidgetBoxInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerWidgetBoxInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerWidgetBoxInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerWidgetBoxInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerWidgetBoxInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerWidgetBoxInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerWidgetBoxInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface(h: fcQDesignerWidgetBoxInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerWidgetBoxInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDesignerWidgetBoxInterfaceVTable = nil): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface =
  let vtbl = if vtbl == nil: new QDesignerWidgetBoxInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerWidgetBoxInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerWidgetBoxInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerWidgetBoxInterface_vtable_callback_metacall
  if not isNil(vtbl[].categoryCount):
    vtbl[].vtbl.categoryCount = fcQDesignerWidgetBoxInterface_vtable_callback_categoryCount
  if not isNil(vtbl[].category):
    vtbl[].vtbl.category = fcQDesignerWidgetBoxInterface_vtable_callback_category
  if not isNil(vtbl[].addCategory):
    vtbl[].vtbl.addCategory = fcQDesignerWidgetBoxInterface_vtable_callback_addCategory
  if not isNil(vtbl[].removeCategory):
    vtbl[].vtbl.removeCategory = fcQDesignerWidgetBoxInterface_vtable_callback_removeCategory
  if not isNil(vtbl[].widgetCount):
    vtbl[].vtbl.widgetCount = fcQDesignerWidgetBoxInterface_vtable_callback_widgetCount
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQDesignerWidgetBoxInterface_vtable_callback_widget
  if not isNil(vtbl[].addWidget):
    vtbl[].vtbl.addWidget = fcQDesignerWidgetBoxInterface_vtable_callback_addWidget
  if not isNil(vtbl[].removeWidget):
    vtbl[].vtbl.removeWidget = fcQDesignerWidgetBoxInterface_vtable_callback_removeWidget
  if not isNil(vtbl[].dropWidgets):
    vtbl[].vtbl.dropWidgets = fcQDesignerWidgetBoxInterface_vtable_callback_dropWidgets
  if not isNil(vtbl[].setFileName):
    vtbl[].vtbl.setFileName = fcQDesignerWidgetBoxInterface_vtable_callback_setFileName
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQDesignerWidgetBoxInterface_vtable_callback_fileName
  if not isNil(vtbl[].load):
    vtbl[].vtbl.load = fcQDesignerWidgetBoxInterface_vtable_callback_load
  if not isNil(vtbl[].save):
    vtbl[].vtbl.save = fcQDesignerWidgetBoxInterface_vtable_callback_save
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerWidgetBoxInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerWidgetBoxInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerWidgetBoxInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerWidgetBoxInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerWidgetBoxInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerWidgetBoxInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerWidgetBoxInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerWidgetBoxInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerWidgetBoxInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerWidgetBoxInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerWidgetBoxInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerWidgetBoxInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerWidgetBoxInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerWidgetBoxInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerWidgetBoxInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerWidgetBoxInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerWidgetBoxInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerWidgetBoxInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerWidgetBoxInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerWidgetBoxInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerWidgetBoxInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerWidgetBoxInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerWidgetBoxInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerWidgetBoxInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerWidgetBoxInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerWidgetBoxInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerWidgetBoxInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerWidgetBoxInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerWidgetBoxInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerWidgetBoxInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerWidgetBoxInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface(h: fcQDesignerWidgetBoxInterface_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQDesignerWidgetBoxInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QDesignerWidgetBoxInterfaceVTable = nil): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface =
  let vtbl = if vtbl == nil: new QDesignerWidgetBoxInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerWidgetBoxInterfaceVTable](fcQDesignerWidgetBoxInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerWidgetBoxInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerWidgetBoxInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerWidgetBoxInterface_vtable_callback_metacall
  if not isNil(vtbl[].categoryCount):
    vtbl[].vtbl.categoryCount = fcQDesignerWidgetBoxInterface_vtable_callback_categoryCount
  if not isNil(vtbl[].category):
    vtbl[].vtbl.category = fcQDesignerWidgetBoxInterface_vtable_callback_category
  if not isNil(vtbl[].addCategory):
    vtbl[].vtbl.addCategory = fcQDesignerWidgetBoxInterface_vtable_callback_addCategory
  if not isNil(vtbl[].removeCategory):
    vtbl[].vtbl.removeCategory = fcQDesignerWidgetBoxInterface_vtable_callback_removeCategory
  if not isNil(vtbl[].widgetCount):
    vtbl[].vtbl.widgetCount = fcQDesignerWidgetBoxInterface_vtable_callback_widgetCount
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQDesignerWidgetBoxInterface_vtable_callback_widget
  if not isNil(vtbl[].addWidget):
    vtbl[].vtbl.addWidget = fcQDesignerWidgetBoxInterface_vtable_callback_addWidget
  if not isNil(vtbl[].removeWidget):
    vtbl[].vtbl.removeWidget = fcQDesignerWidgetBoxInterface_vtable_callback_removeWidget
  if not isNil(vtbl[].dropWidgets):
    vtbl[].vtbl.dropWidgets = fcQDesignerWidgetBoxInterface_vtable_callback_dropWidgets
  if not isNil(vtbl[].setFileName):
    vtbl[].vtbl.setFileName = fcQDesignerWidgetBoxInterface_vtable_callback_setFileName
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQDesignerWidgetBoxInterface_vtable_callback_fileName
  if not isNil(vtbl[].load):
    vtbl[].vtbl.load = fcQDesignerWidgetBoxInterface_vtable_callback_load
  if not isNil(vtbl[].save):
    vtbl[].vtbl.save = fcQDesignerWidgetBoxInterface_vtable_callback_save
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerWidgetBoxInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerWidgetBoxInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerWidgetBoxInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerWidgetBoxInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerWidgetBoxInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerWidgetBoxInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerWidgetBoxInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerWidgetBoxInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerWidgetBoxInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerWidgetBoxInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerWidgetBoxInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerWidgetBoxInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerWidgetBoxInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerWidgetBoxInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerWidgetBoxInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerWidgetBoxInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerWidgetBoxInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerWidgetBoxInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerWidgetBoxInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerWidgetBoxInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerWidgetBoxInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerWidgetBoxInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerWidgetBoxInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerWidgetBoxInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerWidgetBoxInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerWidgetBoxInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerWidgetBoxInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerWidgetBoxInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerWidgetBoxInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerWidgetBoxInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerWidgetBoxInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerWidgetBoxInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerWidgetBoxInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerWidgetBoxInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface(h: fcQDesignerWidgetBoxInterface_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, cint(flags)), owned: true)
  fcQDesignerWidgetBoxInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerWidgetBoxInterface_mvtbl = cQDesignerWidgetBoxInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerWidgetBoxInterface()[])](self.fcQDesignerWidgetBoxInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDesignerWidgetBoxInterface_method_callback_metaObject,
  metacast: fcQDesignerWidgetBoxInterface_method_callback_metacast,
  metacall: fcQDesignerWidgetBoxInterface_method_callback_metacall,
  categoryCount: fcQDesignerWidgetBoxInterface_method_callback_categoryCount,
  category: fcQDesignerWidgetBoxInterface_method_callback_category,
  addCategory: fcQDesignerWidgetBoxInterface_method_callback_addCategory,
  removeCategory: fcQDesignerWidgetBoxInterface_method_callback_removeCategory,
  widgetCount: fcQDesignerWidgetBoxInterface_method_callback_widgetCount,
  widget: fcQDesignerWidgetBoxInterface_method_callback_widget,
  addWidget: fcQDesignerWidgetBoxInterface_method_callback_addWidget,
  removeWidget: fcQDesignerWidgetBoxInterface_method_callback_removeWidget,
  dropWidgets: fcQDesignerWidgetBoxInterface_method_callback_dropWidgets,
  setFileName: fcQDesignerWidgetBoxInterface_method_callback_setFileName,
  fileName: fcQDesignerWidgetBoxInterface_method_callback_fileName,
  load: fcQDesignerWidgetBoxInterface_method_callback_load,
  save: fcQDesignerWidgetBoxInterface_method_callback_save,
  devType: fcQDesignerWidgetBoxInterface_method_callback_devType,
  setVisible: fcQDesignerWidgetBoxInterface_method_callback_setVisible,
  sizeHint: fcQDesignerWidgetBoxInterface_method_callback_sizeHint,
  minimumSizeHint: fcQDesignerWidgetBoxInterface_method_callback_minimumSizeHint,
  heightForWidth: fcQDesignerWidgetBoxInterface_method_callback_heightForWidth,
  hasHeightForWidth: fcQDesignerWidgetBoxInterface_method_callback_hasHeightForWidth,
  paintEngine: fcQDesignerWidgetBoxInterface_method_callback_paintEngine,
  event: fcQDesignerWidgetBoxInterface_method_callback_event,
  mousePressEvent: fcQDesignerWidgetBoxInterface_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDesignerWidgetBoxInterface_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQDesignerWidgetBoxInterface_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQDesignerWidgetBoxInterface_method_callback_mouseMoveEvent,
  wheelEvent: fcQDesignerWidgetBoxInterface_method_callback_wheelEvent,
  keyPressEvent: fcQDesignerWidgetBoxInterface_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDesignerWidgetBoxInterface_method_callback_keyReleaseEvent,
  focusInEvent: fcQDesignerWidgetBoxInterface_method_callback_focusInEvent,
  focusOutEvent: fcQDesignerWidgetBoxInterface_method_callback_focusOutEvent,
  enterEvent: fcQDesignerWidgetBoxInterface_method_callback_enterEvent,
  leaveEvent: fcQDesignerWidgetBoxInterface_method_callback_leaveEvent,
  paintEvent: fcQDesignerWidgetBoxInterface_method_callback_paintEvent,
  moveEvent: fcQDesignerWidgetBoxInterface_method_callback_moveEvent,
  resizeEvent: fcQDesignerWidgetBoxInterface_method_callback_resizeEvent,
  closeEvent: fcQDesignerWidgetBoxInterface_method_callback_closeEvent,
  contextMenuEvent: fcQDesignerWidgetBoxInterface_method_callback_contextMenuEvent,
  tabletEvent: fcQDesignerWidgetBoxInterface_method_callback_tabletEvent,
  actionEvent: fcQDesignerWidgetBoxInterface_method_callback_actionEvent,
  dragEnterEvent: fcQDesignerWidgetBoxInterface_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDesignerWidgetBoxInterface_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDesignerWidgetBoxInterface_method_callback_dragLeaveEvent,
  dropEvent: fcQDesignerWidgetBoxInterface_method_callback_dropEvent,
  showEvent: fcQDesignerWidgetBoxInterface_method_callback_showEvent,
  hideEvent: fcQDesignerWidgetBoxInterface_method_callback_hideEvent,
  nativeEvent: fcQDesignerWidgetBoxInterface_method_callback_nativeEvent,
  changeEvent: fcQDesignerWidgetBoxInterface_method_callback_changeEvent,
  metric: fcQDesignerWidgetBoxInterface_method_callback_metric,
  initPainter: fcQDesignerWidgetBoxInterface_method_callback_initPainter,
  redirected: fcQDesignerWidgetBoxInterface_method_callback_redirected,
  sharedPainter: fcQDesignerWidgetBoxInterface_method_callback_sharedPainter,
  inputMethodEvent: fcQDesignerWidgetBoxInterface_method_callback_inputMethodEvent,
  inputMethodQuery: fcQDesignerWidgetBoxInterface_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQDesignerWidgetBoxInterface_method_callback_focusNextPrevChild,
  eventFilter: fcQDesignerWidgetBoxInterface_method_callback_eventFilter,
  timerEvent: fcQDesignerWidgetBoxInterface_method_callback_timerEvent,
  childEvent: fcQDesignerWidgetBoxInterface_method_callback_childEvent,
  customEvent: fcQDesignerWidgetBoxInterface_method_callback_customEvent,
  connectNotify: fcQDesignerWidgetBoxInterface_method_callback_connectNotify,
  disconnectNotify: fcQDesignerWidgetBoxInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface,
    inst: VirtualQDesignerWidgetBoxInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerWidgetBoxInterface_new(addr(cQDesignerWidgetBoxInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerWidgetBoxInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDesignerWidgetBoxInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerWidgetBoxInterface_new2(addr(cQDesignerWidgetBoxInterface_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQDesignerWidgetBoxInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQDesignerWidgetBoxInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerWidgetBoxInterface_new3(addr(cQDesignerWidgetBoxInterface_mvtbl), csize_t(sizeof(pointer)), parent.h, cint(flags))
  fcQDesignerWidgetBoxInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetBoxInterface_staticMetaObject())
proc operatorAssign*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget, w: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): void =
  fcQDesignerWidgetBoxInterfaceWidget_operatorAssign(self.h, w.h)

proc name*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): string =
  let v_ms = fcQDesignerWidgetBoxInterfaceWidget_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget, aname: openArray[char]): void =
  fcQDesignerWidgetBoxInterfaceWidget_setName(self.h, struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname))))

proc domXml*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): string =
  let v_ms = fcQDesignerWidgetBoxInterfaceWidget_domXml(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDomXml*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget, xml: openArray[char]): void =
  fcQDesignerWidgetBoxInterfaceWidget_setDomXml(self.h, struct_seaqt_string(data: if len(xml) > 0: addr xml[0] else: nil, len: csize_t(len(xml))))

proc iconName*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): string =
  let v_ms = fcQDesignerWidgetBoxInterfaceWidget_iconName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setIconName*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget, icon_name: openArray[char]): void =
  fcQDesignerWidgetBoxInterfaceWidget_setIconName(self.h, struct_seaqt_string(data: if len(icon_name) > 0: addr icon_name[0] else: nil, len: csize_t(len(icon_name))))

proc typeX*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): cint =
  cint(fcQDesignerWidgetBoxInterfaceWidget_typeX(self.h))

proc setType*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget, atype: cint): void =
  fcQDesignerWidgetBoxInterfaceWidget_setType(self.h, cint(atype))

proc isNull*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): bool =
  fcQDesignerWidgetBoxInterfaceWidget_isNull(self.h)

proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceWidget_new(), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget,
    w: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceWidget_new2(w.h), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget,
    aname: openArray[char]): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceWidget_new3(struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname)))), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget,
    aname: openArray[char], xml: openArray[char]): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceWidget_new4(struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname))), struct_seaqt_string(data: if len(xml) > 0: addr xml[0] else: nil, len: csize_t(len(xml)))), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget,
    aname: openArray[char], xml: openArray[char], icon_name: openArray[char]): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceWidget_new5(struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname))), struct_seaqt_string(data: if len(xml) > 0: addr xml[0] else: nil, len: csize_t(len(xml))), struct_seaqt_string(data: if len(icon_name) > 0: addr icon_name[0] else: nil, len: csize_t(len(icon_name)))), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget,
    aname: openArray[char], xml: openArray[char], icon_name: openArray[char], atype: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceWidget_new6(struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname))), struct_seaqt_string(data: if len(xml) > 0: addr xml[0] else: nil, len: csize_t(len(xml))), struct_seaqt_string(data: if len(icon_name) > 0: addr icon_name[0] else: nil, len: csize_t(len(icon_name))), cint(atype)), owned: true)
  tmp
proc name*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): string =
  let v_ms = fcQDesignerWidgetBoxInterfaceCategory_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory, aname: openArray[char]): void =
  fcQDesignerWidgetBoxInterfaceCategory_setName(self.h, struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname))))

proc widgetCount*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): cint =
  fcQDesignerWidgetBoxInterfaceCategory_widgetCount(self.h)

proc widget*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory, idx: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget =
  gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget(h: fcQDesignerWidgetBoxInterfaceCategory_widget(self.h, idx), owned: true)

proc removeWidget*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory, idx: cint): void =
  fcQDesignerWidgetBoxInterfaceCategory_removeWidget(self.h, idx)

proc addWidget*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory, awidget: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceWidget): void =
  fcQDesignerWidgetBoxInterfaceCategory_addWidget(self.h, awidget.h)

proc typeX*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): cint =
  cint(fcQDesignerWidgetBoxInterfaceCategory_typeX(self.h))

proc setType*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory, atype: cint): void =
  fcQDesignerWidgetBoxInterfaceCategory_setType(self.h, cint(atype))

proc isNull*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): bool =
  fcQDesignerWidgetBoxInterfaceCategory_isNull(self.h)

proc operatorAssign*(self: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory, param1: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): void =
  fcQDesignerWidgetBoxInterfaceCategory_operatorAssign(self.h, param1.h)

proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: fcQDesignerWidgetBoxInterfaceCategory_new(), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory,
    param1: gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: fcQDesignerWidgetBoxInterfaceCategory_new2(param1.h), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory,
    aname: openArray[char]): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: fcQDesignerWidgetBoxInterfaceCategory_new3(struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname)))), owned: true)
  tmp
proc create*(T: type gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory,
    aname: openArray[char], atype: cint): gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory =
  let tmp = gen_abstractwidgetbox_types.QDesignerWidgetBoxInterfaceCategory(h: fcQDesignerWidgetBoxInterfaceCategory_new4(struct_seaqt_string(data: if len(aname) > 0: addr aname[0] else: nil, len: csize_t(len(aname))), cint(atype)), owned: true)
  tmp
