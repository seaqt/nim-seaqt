import ./qtpdfwidgets_pkg

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


{.compile("gen_qpdfpageselector.cpp", QtPdfWidgetsCFlags).}


import ./gen_qpdfpageselector_types
export gen_qpdfpageselector_types

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
  ../QtPdf/gen_qpdfdocument_types,
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
  gen_qpdfdocument_types,
  gen_qwidget

type cQPdfPageSelector*{.exportc: "QPdfPageSelector", incompleteStruct.} = object

proc fcQPdfPageSelector_metaObject(self: pointer): pointer {.importc: "QPdfPageSelector_metaObject".}
proc fcQPdfPageSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageSelector_metacast".}
proc fcQPdfPageSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageSelector_metacall".}
proc fcQPdfPageSelector_trS(s: cstring): struct_seaqt_string {.importc: "QPdfPageSelector_tr_s".}
proc fcQPdfPageSelector_setDocument(self: pointer, document: pointer): void {.importc: "QPdfPageSelector_setDocument".}
proc fcQPdfPageSelector_document(self: pointer): pointer {.importc: "QPdfPageSelector_document".}
proc fcQPdfPageSelector_currentPage(self: pointer): cint {.importc: "QPdfPageSelector_currentPage".}
proc fcQPdfPageSelector_currentPageLabel(self: pointer): struct_seaqt_string {.importc: "QPdfPageSelector_currentPageLabel".}
proc fcQPdfPageSelector_setCurrentPage(self: pointer, index: cint): void {.importc: "QPdfPageSelector_setCurrentPage".}
proc fcQPdfPageSelector_documentChanged(self: pointer, document: pointer): void {.importc: "QPdfPageSelector_documentChanged".}
proc fcQPdfPageSelector_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int, document: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageSelector_connect_documentChanged".}
proc fcQPdfPageSelector_currentPageChanged(self: pointer, index: cint): void {.importc: "QPdfPageSelector_currentPageChanged".}
proc fcQPdfPageSelector_connect_currentPageChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageSelector_connect_currentPageChanged".}
proc fcQPdfPageSelector_currentPageLabelChanged(self: pointer, label: struct_seaqt_string): void {.importc: "QPdfPageSelector_currentPageLabelChanged".}
proc fcQPdfPageSelector_connect_currentPageLabelChanged(self: pointer, slot: int, callback: proc (slot: int, label: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageSelector_connect_currentPageLabelChanged".}
proc fcQPdfPageSelector_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfPageSelector_tr_s_c".}
proc fcQPdfPageSelector_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfPageSelector_tr_s_c_n".}
proc fcQPdfPageSelector_vdata(self: pointer): ptr pointer {.importc: "QPdfPageSelector_vdata".}
proc fvdata_cQPdfPageSelector(self: pointer): pointer {.importc: "vdata_QPdfPageSelector".}

type cQPdfPageSelectorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQPdfPageSelector_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfPageSelector_virtualbase_metaObject".}
proc fcQPdfPageSelector_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageSelector_virtualbase_metacast".}
proc fcQPdfPageSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageSelector_virtualbase_metacall".}
proc fcQPdfPageSelector_virtualbase_devType(self: pointer): cint {.importc: "QPdfPageSelector_virtualbase_devType".}
proc fcQPdfPageSelector_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPdfPageSelector_virtualbase_setVisible".}
proc fcQPdfPageSelector_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPdfPageSelector_virtualbase_sizeHint".}
proc fcQPdfPageSelector_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPdfPageSelector_virtualbase_minimumSizeHint".}
proc fcQPdfPageSelector_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPdfPageSelector_virtualbase_heightForWidth".}
proc fcQPdfPageSelector_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPdfPageSelector_virtualbase_hasHeightForWidth".}
proc fcQPdfPageSelector_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPdfPageSelector_virtualbase_paintEngine".}
proc fcQPdfPageSelector_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfPageSelector_virtualbase_event".}
proc fcQPdfPageSelector_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_mousePressEvent".}
proc fcQPdfPageSelector_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_mouseReleaseEvent".}
proc fcQPdfPageSelector_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_mouseDoubleClickEvent".}
proc fcQPdfPageSelector_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_mouseMoveEvent".}
proc fcQPdfPageSelector_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_wheelEvent".}
proc fcQPdfPageSelector_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_keyPressEvent".}
proc fcQPdfPageSelector_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_keyReleaseEvent".}
proc fcQPdfPageSelector_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_focusInEvent".}
proc fcQPdfPageSelector_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_focusOutEvent".}
proc fcQPdfPageSelector_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_enterEvent".}
proc fcQPdfPageSelector_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_leaveEvent".}
proc fcQPdfPageSelector_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_paintEvent".}
proc fcQPdfPageSelector_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_moveEvent".}
proc fcQPdfPageSelector_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_resizeEvent".}
proc fcQPdfPageSelector_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_closeEvent".}
proc fcQPdfPageSelector_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_contextMenuEvent".}
proc fcQPdfPageSelector_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_tabletEvent".}
proc fcQPdfPageSelector_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_actionEvent".}
proc fcQPdfPageSelector_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_dragEnterEvent".}
proc fcQPdfPageSelector_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_dragMoveEvent".}
proc fcQPdfPageSelector_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_dragLeaveEvent".}
proc fcQPdfPageSelector_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_dropEvent".}
proc fcQPdfPageSelector_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_showEvent".}
proc fcQPdfPageSelector_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_hideEvent".}
proc fcQPdfPageSelector_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QPdfPageSelector_virtualbase_nativeEvent".}
proc fcQPdfPageSelector_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPdfPageSelector_virtualbase_changeEvent".}
proc fcQPdfPageSelector_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPdfPageSelector_virtualbase_metric".}
proc fcQPdfPageSelector_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPdfPageSelector_virtualbase_initPainter".}
proc fcQPdfPageSelector_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPdfPageSelector_virtualbase_redirected".}
proc fcQPdfPageSelector_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPdfPageSelector_virtualbase_sharedPainter".}
proc fcQPdfPageSelector_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPdfPageSelector_virtualbase_inputMethodEvent".}
proc fcQPdfPageSelector_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPdfPageSelector_virtualbase_inputMethodQuery".}
proc fcQPdfPageSelector_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPdfPageSelector_virtualbase_focusNextPrevChild".}
proc fcQPdfPageSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfPageSelector_virtualbase_eventFilter".}
proc fcQPdfPageSelector_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_timerEvent".}
proc fcQPdfPageSelector_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_childEvent".}
proc fcQPdfPageSelector_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfPageSelector_virtualbase_customEvent".}
proc fcQPdfPageSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageSelector_virtualbase_connectNotify".}
proc fcQPdfPageSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageSelector_virtualbase_disconnectNotify".}
proc fcQPdfPageSelector_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPdfPageSelector_protectedbase_updateMicroFocus".}
proc fcQPdfPageSelector_protectedbase_create(self: pointer): void {.importc: "QPdfPageSelector_protectedbase_create".}
proc fcQPdfPageSelector_protectedbase_destroy(self: pointer): void {.importc: "QPdfPageSelector_protectedbase_destroy".}
proc fcQPdfPageSelector_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPdfPageSelector_protectedbase_focusNextChild".}
proc fcQPdfPageSelector_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPdfPageSelector_protectedbase_focusPreviousChild".}
proc fcQPdfPageSelector_protectedbase_sender(self: pointer): pointer {.importc: "QPdfPageSelector_protectedbase_sender".}
proc fcQPdfPageSelector_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfPageSelector_protectedbase_senderSignalIndex".}
proc fcQPdfPageSelector_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfPageSelector_protectedbase_receivers".}
proc fcQPdfPageSelector_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfPageSelector_protectedbase_isSignalConnected".}
proc fcQPdfPageSelector_protectedbase_getDecodedMetricF(self: pointer, metricA: cint, metricB: cint): float64 {.importc: "QPdfPageSelector_protectedbase_getDecodedMetricF".}
proc fcQPdfPageSelector_new(vtbl: pointer, vdata: csize_t): ptr cQPdfPageSelector {.importc: "QPdfPageSelector_new".}
proc fcQPdfPageSelector_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfPageSelector {.importc: "QPdfPageSelector_new_parent".}
proc fcQPdfPageSelector_staticMetaObject(): pointer {.importc: "QPdfPageSelector_staticMetaObject".}

proc metaObject*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageSelector_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cstring): pointer =
  fcQPdfPageSelector_metacast(self.h, param1)

proc metacall*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfpageselector_types.QPdfPageSelector, s: cstring): string =
  let v_ms = fcQPdfPageSelector_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qpdfpageselector_types.QPdfPageSelector, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfPageSelector_setDocument(self.h, document.h)

proc document*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfPageSelector_document(self.h), owned: false)

proc currentPage*(self: gen_qpdfpageselector_types.QPdfPageSelector): cint =
  fcQPdfPageSelector_currentPage(self.h)

proc currentPageLabel*(self: gen_qpdfpageselector_types.QPdfPageSelector): string =
  let v_ms = fcQPdfPageSelector_currentPageLabel(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCurrentPage*(self: gen_qpdfpageselector_types.QPdfPageSelector, index: cint): void =
  fcQPdfPageSelector_setCurrentPage(self.h, index)

proc documentChanged*(self: gen_qpdfpageselector_types.QPdfPageSelector, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfPageSelector_documentChanged(self.h, document.h)

type QPdfPageSelectordocumentChangedSlot* = proc(document: gen_qpdfdocument_types.QPdfDocument)
proc fcQPdfPageSelector_slot_callback_documentChanged(slot: int, document: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageSelectordocumentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpdfdocument_types.QPdfDocument(h: document, owned: false)

  nimfunc[](slotval1)

proc fcQPdfPageSelector_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageSelectordocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdfpageselector_types.QPdfPageSelector, slot: QPdfPageSelectordocumentChangedSlot) =
  var tmp = new QPdfPageSelectordocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageSelector_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfPageSelector_slot_callback_documentChanged, fcQPdfPageSelector_slot_callback_documentChanged_release)

proc currentPageChanged*(self: gen_qpdfpageselector_types.QPdfPageSelector, index: cint): void =
  fcQPdfPageSelector_currentPageChanged(self.h, index)

type QPdfPageSelectorcurrentPageChangedSlot* = proc(index: cint)
proc fcQPdfPageSelector_slot_callback_currentPageChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageSelectorcurrentPageChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQPdfPageSelector_slot_callback_currentPageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageSelectorcurrentPageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentPageChanged*(self: gen_qpdfpageselector_types.QPdfPageSelector, slot: QPdfPageSelectorcurrentPageChangedSlot) =
  var tmp = new QPdfPageSelectorcurrentPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageSelector_connect_currentPageChanged(self.h, cast[int](addr tmp[]), fcQPdfPageSelector_slot_callback_currentPageChanged, fcQPdfPageSelector_slot_callback_currentPageChanged_release)

proc currentPageLabelChanged*(self: gen_qpdfpageselector_types.QPdfPageSelector, label: openArray[char]): void =
  fcQPdfPageSelector_currentPageLabelChanged(self.h, struct_seaqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

type QPdfPageSelectorcurrentPageLabelChangedSlot* = proc(label: openArray[char])
proc fcQPdfPageSelector_slot_callback_currentPageLabelChanged(slot: int, label: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageSelectorcurrentPageLabelChangedSlot](cast[pointer](slot))
  let vlabel_ms = label
  let vlabelx_ret = string.fromBytes(vlabel_ms)
  c_free(vlabel_ms.data)
  let slotval1 = vlabelx_ret

  nimfunc[](slotval1)

proc fcQPdfPageSelector_slot_callback_currentPageLabelChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageSelectorcurrentPageLabelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentPageLabelChanged*(self: gen_qpdfpageselector_types.QPdfPageSelector, slot: QPdfPageSelectorcurrentPageLabelChangedSlot) =
  var tmp = new QPdfPageSelectorcurrentPageLabelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageSelector_connect_currentPageLabelChanged(self.h, cast[int](addr tmp[]), fcQPdfPageSelector_slot_callback_currentPageLabelChanged, fcQPdfPageSelector_slot_callback_currentPageLabelChanged_release)

proc tr*(_: type gen_qpdfpageselector_types.QPdfPageSelector, s: cstring, c: cstring): string =
  let v_ms = fcQPdfPageSelector_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfpageselector_types.QPdfPageSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfPageSelector_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPdfPageSelectormetaObjectProc* = proc(self: QPdfPageSelector): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfPageSelectormetacastProc* = proc(self: QPdfPageSelector, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfPageSelectormetacallProc* = proc(self: QPdfPageSelector, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfPageSelectordevTypeProc* = proc(self: QPdfPageSelector): cint {.raises: [], gcsafe.}
type QPdfPageSelectorsetVisibleProc* = proc(self: QPdfPageSelector, visible: bool): void {.raises: [], gcsafe.}
type QPdfPageSelectorsizeHintProc* = proc(self: QPdfPageSelector): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfPageSelectorminimumSizeHintProc* = proc(self: QPdfPageSelector): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfPageSelectorheightForWidthProc* = proc(self: QPdfPageSelector, param1: cint): cint {.raises: [], gcsafe.}
type QPdfPageSelectorhasHeightForWidthProc* = proc(self: QPdfPageSelector): bool {.raises: [], gcsafe.}
type QPdfPageSelectorpaintEngineProc* = proc(self: QPdfPageSelector): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPdfPageSelectoreventProc* = proc(self: QPdfPageSelector, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageSelectormousePressEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectormouseReleaseEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectormouseDoubleClickEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectormouseMoveEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorwheelEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorkeyPressEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorkeyReleaseEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorfocusInEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorfocusOutEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorenterEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorleaveEventProc* = proc(self: QPdfPageSelector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorpaintEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectormoveEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorresizeEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorcloseEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorcontextMenuEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectortabletEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectoractionEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectordragEnterEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectordragMoveEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectordragLeaveEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectordropEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorshowEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorhideEventProc* = proc(self: QPdfPageSelector, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectornativeEventProc* = proc(self: QPdfPageSelector, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QPdfPageSelectorchangeEventProc* = proc(self: QPdfPageSelector, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectormetricProc* = proc(self: QPdfPageSelector, param1: cint): cint {.raises: [], gcsafe.}
type QPdfPageSelectorinitPainterProc* = proc(self: QPdfPageSelector, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPdfPageSelectorredirectedProc* = proc(self: QPdfPageSelector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPdfPageSelectorsharedPainterProc* = proc(self: QPdfPageSelector): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPdfPageSelectorinputMethodEventProc* = proc(self: QPdfPageSelector, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorinputMethodQueryProc* = proc(self: QPdfPageSelector, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfPageSelectorfocusNextPrevChildProc* = proc(self: QPdfPageSelector, next: bool): bool {.raises: [], gcsafe.}
type QPdfPageSelectoreventFilterProc* = proc(self: QPdfPageSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageSelectortimerEventProc* = proc(self: QPdfPageSelector, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorchildEventProc* = proc(self: QPdfPageSelector, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorcustomEventProc* = proc(self: QPdfPageSelector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfPageSelectorconnectNotifyProc* = proc(self: QPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageSelectordisconnectNotifyProc* = proc(self: QPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPdfPageSelectorVTable* {.inheritable, pure.} = object
  vtbl: cQPdfPageSelectorVTable
  metaObject*: QPdfPageSelectormetaObjectProc
  metacast*: QPdfPageSelectormetacastProc
  metacall*: QPdfPageSelectormetacallProc
  devType*: QPdfPageSelectordevTypeProc
  setVisible*: QPdfPageSelectorsetVisibleProc
  sizeHint*: QPdfPageSelectorsizeHintProc
  minimumSizeHint*: QPdfPageSelectorminimumSizeHintProc
  heightForWidth*: QPdfPageSelectorheightForWidthProc
  hasHeightForWidth*: QPdfPageSelectorhasHeightForWidthProc
  paintEngine*: QPdfPageSelectorpaintEngineProc
  event*: QPdfPageSelectoreventProc
  mousePressEvent*: QPdfPageSelectormousePressEventProc
  mouseReleaseEvent*: QPdfPageSelectormouseReleaseEventProc
  mouseDoubleClickEvent*: QPdfPageSelectormouseDoubleClickEventProc
  mouseMoveEvent*: QPdfPageSelectormouseMoveEventProc
  wheelEvent*: QPdfPageSelectorwheelEventProc
  keyPressEvent*: QPdfPageSelectorkeyPressEventProc
  keyReleaseEvent*: QPdfPageSelectorkeyReleaseEventProc
  focusInEvent*: QPdfPageSelectorfocusInEventProc
  focusOutEvent*: QPdfPageSelectorfocusOutEventProc
  enterEvent*: QPdfPageSelectorenterEventProc
  leaveEvent*: QPdfPageSelectorleaveEventProc
  paintEvent*: QPdfPageSelectorpaintEventProc
  moveEvent*: QPdfPageSelectormoveEventProc
  resizeEvent*: QPdfPageSelectorresizeEventProc
  closeEvent*: QPdfPageSelectorcloseEventProc
  contextMenuEvent*: QPdfPageSelectorcontextMenuEventProc
  tabletEvent*: QPdfPageSelectortabletEventProc
  actionEvent*: QPdfPageSelectoractionEventProc
  dragEnterEvent*: QPdfPageSelectordragEnterEventProc
  dragMoveEvent*: QPdfPageSelectordragMoveEventProc
  dragLeaveEvent*: QPdfPageSelectordragLeaveEventProc
  dropEvent*: QPdfPageSelectordropEventProc
  showEvent*: QPdfPageSelectorshowEventProc
  hideEvent*: QPdfPageSelectorhideEventProc
  nativeEvent*: QPdfPageSelectornativeEventProc
  changeEvent*: QPdfPageSelectorchangeEventProc
  metric*: QPdfPageSelectormetricProc
  initPainter*: QPdfPageSelectorinitPainterProc
  redirected*: QPdfPageSelectorredirectedProc
  sharedPainter*: QPdfPageSelectorsharedPainterProc
  inputMethodEvent*: QPdfPageSelectorinputMethodEventProc
  inputMethodQuery*: QPdfPageSelectorinputMethodQueryProc
  focusNextPrevChild*: QPdfPageSelectorfocusNextPrevChildProc
  eventFilter*: QPdfPageSelectoreventFilterProc
  timerEvent*: QPdfPageSelectortimerEventProc
  childEvent*: QPdfPageSelectorchildEventProc
  customEvent*: QPdfPageSelectorcustomEventProc
  connectNotify*: QPdfPageSelectorconnectNotifyProc
  disconnectNotify*: QPdfPageSelectordisconnectNotifyProc

proc QPdfPageSelectormetaObject*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageSelector_virtualbase_metaObject(self.h), owned: false)

proc QPdfPageSelectormetacast*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cstring): pointer =
  fcQPdfPageSelector_virtualbase_metacast(self.h, param1)

proc QPdfPageSelectormetacall*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfPageSelectordevType*(self: gen_qpdfpageselector_types.QPdfPageSelector): cint =
  fcQPdfPageSelector_virtualbase_devType(self.h)

proc QPdfPageSelectorsetVisible*(self: gen_qpdfpageselector_types.QPdfPageSelector, visible: bool): void =
  fcQPdfPageSelector_virtualbase_setVisible(self.h, visible)

proc QPdfPageSelectorsizeHint*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfPageSelector_virtualbase_sizeHint(self.h), owned: true)

proc QPdfPageSelectorminimumSizeHint*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfPageSelector_virtualbase_minimumSizeHint(self.h), owned: true)

proc QPdfPageSelectorheightForWidth*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cint): cint =
  fcQPdfPageSelector_virtualbase_heightForWidth(self.h, param1)

proc QPdfPageSelectorhasHeightForWidth*(self: gen_qpdfpageselector_types.QPdfPageSelector): bool =
  fcQPdfPageSelector_virtualbase_hasHeightForWidth(self.h)

proc QPdfPageSelectorpaintEngine*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPdfPageSelector_virtualbase_paintEngine(self.h), owned: false)

proc QPdfPageSelectorevent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageSelector_virtualbase_event(self.h, event.h)

proc QPdfPageSelectormousePressEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void =
  fcQPdfPageSelector_virtualbase_mousePressEvent(self.h, event.h)

proc QPdfPageSelectormouseReleaseEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void =
  fcQPdfPageSelector_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QPdfPageSelectormouseDoubleClickEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void =
  fcQPdfPageSelector_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QPdfPageSelectormouseMoveEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QMouseEvent): void =
  fcQPdfPageSelector_virtualbase_mouseMoveEvent(self.h, event.h)

proc QPdfPageSelectorwheelEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QWheelEvent): void =
  fcQPdfPageSelector_virtualbase_wheelEvent(self.h, event.h)

proc QPdfPageSelectorkeyPressEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QKeyEvent): void =
  fcQPdfPageSelector_virtualbase_keyPressEvent(self.h, event.h)

proc QPdfPageSelectorkeyReleaseEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QKeyEvent): void =
  fcQPdfPageSelector_virtualbase_keyReleaseEvent(self.h, event.h)

proc QPdfPageSelectorfocusInEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QFocusEvent): void =
  fcQPdfPageSelector_virtualbase_focusInEvent(self.h, event.h)

proc QPdfPageSelectorfocusOutEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QFocusEvent): void =
  fcQPdfPageSelector_virtualbase_focusOutEvent(self.h, event.h)

proc QPdfPageSelectorenterEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QEnterEvent): void =
  fcQPdfPageSelector_virtualbase_enterEvent(self.h, event.h)

proc QPdfPageSelectorleaveEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfPageSelector_virtualbase_leaveEvent(self.h, event.h)

proc QPdfPageSelectorpaintEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QPaintEvent): void =
  fcQPdfPageSelector_virtualbase_paintEvent(self.h, event.h)

proc QPdfPageSelectormoveEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QMoveEvent): void =
  fcQPdfPageSelector_virtualbase_moveEvent(self.h, event.h)

proc QPdfPageSelectorresizeEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QResizeEvent): void =
  fcQPdfPageSelector_virtualbase_resizeEvent(self.h, event.h)

proc QPdfPageSelectorcloseEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QCloseEvent): void =
  fcQPdfPageSelector_virtualbase_closeEvent(self.h, event.h)

proc QPdfPageSelectorcontextMenuEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QContextMenuEvent): void =
  fcQPdfPageSelector_virtualbase_contextMenuEvent(self.h, event.h)

proc QPdfPageSelectortabletEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QTabletEvent): void =
  fcQPdfPageSelector_virtualbase_tabletEvent(self.h, event.h)

proc QPdfPageSelectoractionEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QActionEvent): void =
  fcQPdfPageSelector_virtualbase_actionEvent(self.h, event.h)

proc QPdfPageSelectordragEnterEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPdfPageSelector_virtualbase_dragEnterEvent(self.h, event.h)

proc QPdfPageSelectordragMoveEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPdfPageSelector_virtualbase_dragMoveEvent(self.h, event.h)

proc QPdfPageSelectordragLeaveEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPdfPageSelector_virtualbase_dragLeaveEvent(self.h, event.h)

proc QPdfPageSelectordropEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QDropEvent): void =
  fcQPdfPageSelector_virtualbase_dropEvent(self.h, event.h)

proc QPdfPageSelectorshowEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QShowEvent): void =
  fcQPdfPageSelector_virtualbase_showEvent(self.h, event.h)

proc QPdfPageSelectorhideEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qevent_types.QHideEvent): void =
  fcQPdfPageSelector_virtualbase_hideEvent(self.h, event.h)

proc QPdfPageSelectornativeEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQPdfPageSelector_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QPdfPageSelectorchangeEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: gen_qcoreevent_types.QEvent): void =
  fcQPdfPageSelector_virtualbase_changeEvent(self.h, param1.h)

proc QPdfPageSelectormetric*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cint): cint =
  fcQPdfPageSelector_virtualbase_metric(self.h, cint(param1))

proc QPdfPageSelectorinitPainter*(self: gen_qpdfpageselector_types.QPdfPageSelector, painter: gen_qpainter_types.QPainter): void =
  fcQPdfPageSelector_virtualbase_initPainter(self.h, painter.h)

proc QPdfPageSelectorredirected*(self: gen_qpdfpageselector_types.QPdfPageSelector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPdfPageSelector_virtualbase_redirected(self.h, offset.h), owned: false)

proc QPdfPageSelectorsharedPainter*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPdfPageSelector_virtualbase_sharedPainter(self.h), owned: false)

proc QPdfPageSelectorinputMethodEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPdfPageSelector_virtualbase_inputMethodEvent(self.h, param1.h)

proc QPdfPageSelectorinputMethodQuery*(self: gen_qpdfpageselector_types.QPdfPageSelector, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfPageSelector_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QPdfPageSelectorfocusNextPrevChild*(self: gen_qpdfpageselector_types.QPdfPageSelector, next: bool): bool =
  fcQPdfPageSelector_virtualbase_focusNextPrevChild(self.h, next)

proc QPdfPageSelectoreventFilter*(self: gen_qpdfpageselector_types.QPdfPageSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfPageSelectortimerEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfPageSelector_virtualbase_timerEvent(self.h, event.h)

proc QPdfPageSelectorchildEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfPageSelector_virtualbase_childEvent(self.h, event.h)

proc QPdfPageSelectorcustomEvent*(self: gen_qpdfpageselector_types.QPdfPageSelector, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfPageSelector_virtualbase_customEvent(self.h, event.h)

proc QPdfPageSelectorconnectNotify*(self: gen_qpdfpageselector_types.QPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageSelector_virtualbase_connectNotify(self.h, signal.h)

proc QPdfPageSelectordisconnectNotify*(self: gen_qpdfpageselector_types.QPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageSelector_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfPageSelector_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfPageSelector_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfPageSelector_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
  let self = QPdfPageSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfPageSelector* {.inheritable.} = ref object of QPdfPageSelector
  vtbl*: cQPdfPageSelectorVTable

method metaObject*(self: VirtualQPdfPageSelector): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfPageSelectormetaObject(self[])
method metacast*(self: VirtualQPdfPageSelector, param1: cstring): pointer {.base.} =
  QPdfPageSelectormetacast(self[], param1)
method metacall*(self: VirtualQPdfPageSelector, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfPageSelectormetacall(self[], param1, param2, param3)
method devType*(self: VirtualQPdfPageSelector): cint {.base.} =
  QPdfPageSelectordevType(self[])
method setVisible*(self: VirtualQPdfPageSelector, visible: bool): void {.base.} =
  QPdfPageSelectorsetVisible(self[], visible)
method sizeHint*(self: VirtualQPdfPageSelector): gen_qsize_types.QSize {.base.} =
  QPdfPageSelectorsizeHint(self[])
method minimumSizeHint*(self: VirtualQPdfPageSelector): gen_qsize_types.QSize {.base.} =
  QPdfPageSelectorminimumSizeHint(self[])
method heightForWidth*(self: VirtualQPdfPageSelector, param1: cint): cint {.base.} =
  QPdfPageSelectorheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQPdfPageSelector): bool {.base.} =
  QPdfPageSelectorhasHeightForWidth(self[])
method paintEngine*(self: VirtualQPdfPageSelector): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPdfPageSelectorpaintEngine(self[])
method event*(self: VirtualQPdfPageSelector, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageSelectorevent(self[], event)
method mousePressEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfPageSelectormousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfPageSelectormouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfPageSelectormouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfPageSelectormouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QPdfPageSelectorwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPdfPageSelectorkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPdfPageSelectorkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPdfPageSelectorfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPdfPageSelectorfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QPdfPageSelectorenterEvent(self[], event)
method leaveEvent*(self: VirtualQPdfPageSelector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfPageSelectorleaveEvent(self[], event)
method paintEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QPdfPageSelectorpaintEvent(self[], event)
method moveEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPdfPageSelectormoveEvent(self[], event)
method resizeEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QPdfPageSelectorresizeEvent(self[], event)
method closeEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QPdfPageSelectorcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPdfPageSelectorcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPdfPageSelectortabletEvent(self[], event)
method actionEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPdfPageSelectoractionEvent(self[], event)
method dragEnterEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPdfPageSelectordragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPdfPageSelectordragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPdfPageSelectordragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QDropEvent): void {.base.} =
  QPdfPageSelectordropEvent(self[], event)
method showEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QShowEvent): void {.base.} =
  QPdfPageSelectorshowEvent(self[], event)
method hideEvent*(self: VirtualQPdfPageSelector, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPdfPageSelectorhideEvent(self[], event)
method nativeEvent*(self: VirtualQPdfPageSelector, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QPdfPageSelectornativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQPdfPageSelector, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfPageSelectorchangeEvent(self[], param1)
method metric*(self: VirtualQPdfPageSelector, param1: cint): cint {.base.} =
  QPdfPageSelectormetric(self[], param1)
method initPainter*(self: VirtualQPdfPageSelector, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPdfPageSelectorinitPainter(self[], painter)
method redirected*(self: VirtualQPdfPageSelector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPdfPageSelectorredirected(self[], offset)
method sharedPainter*(self: VirtualQPdfPageSelector): gen_qpainter_types.QPainter {.base.} =
  QPdfPageSelectorsharedPainter(self[])
method inputMethodEvent*(self: VirtualQPdfPageSelector, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPdfPageSelectorinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQPdfPageSelector, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfPageSelectorinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQPdfPageSelector, next: bool): bool {.base.} =
  QPdfPageSelectorfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQPdfPageSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageSelectoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfPageSelector, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfPageSelectortimerEvent(self[], event)
method childEvent*(self: VirtualQPdfPageSelector, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfPageSelectorchildEvent(self[], event)
method customEvent*(self: VirtualQPdfPageSelector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfPageSelectorcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageSelectorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageSelectordisconnectNotify(self[], signal)

proc fcQPdfPageSelector_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfPageSelector_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageSelector_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQPdfPageSelector_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQPdfPageSelector_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQPdfPageSelector_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQPdfPageSelector_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfPageSelector_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQPdfPageSelector_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQPdfPageSelector_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQPdfPageSelector_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQPdfPageSelector_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQPdfPageSelector_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQPdfPageSelector_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQPdfPageSelector_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQPdfPageSelector_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQPdfPageSelector_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQPdfPageSelector_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQPdfPageSelector_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQPdfPageSelector_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQPdfPageSelector_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQPdfPageSelector_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQPdfPageSelector_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQPdfPageSelector_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQPdfPageSelector_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQPdfPageSelector_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQPdfPageSelector_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQPdfPageSelector_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQPdfPageSelector_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQPdfPageSelector_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQPdfPageSelector_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQPdfPageSelector_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageSelector_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQPdfPageSelector_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQPdfPageSelector_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQPdfPageSelector_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQPdfPageSelector_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfPageSelector_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQPdfPageSelector_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfPageSelector_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPdfPageSelector_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPdfPageSelector_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPdfPageSelector_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPdfPageSelector_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageSelector](fcQPdfPageSelector_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qpdfpageselector_types.QPdfPageSelector): void =
  fcQPdfPageSelector_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qpdfpageselector_types.QPdfPageSelector): void =
  fcQPdfPageSelector_protectedbase_create(self.h)

proc destroy*(self: gen_qpdfpageselector_types.QPdfPageSelector): void =
  fcQPdfPageSelector_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qpdfpageselector_types.QPdfPageSelector): bool =
  fcQPdfPageSelector_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qpdfpageselector_types.QPdfPageSelector): bool =
  fcQPdfPageSelector_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qpdfpageselector_types.QPdfPageSelector): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfPageSelector_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpdfpageselector_types.QPdfPageSelector): cint =
  fcQPdfPageSelector_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfpageselector_types.QPdfPageSelector, signal: cstring): cint =
  fcQPdfPageSelector_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfpageselector_types.QPdfPageSelector, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfPageSelector_protectedbase_isSignalConnected(self.h, signal.h)

proc getDecodedMetricF*(self: gen_qpdfpageselector_types.QPdfPageSelector, metricA: cint, metricB: cint): float64 =
  fcQPdfPageSelector_protectedbase_getDecodedMetricF(self.h, cint(metricA), cint(metricB))

proc create*(T: type gen_qpdfpageselector_types.QPdfPageSelector,
    vtbl: ref QPdfPageSelectorVTable = nil): gen_qpdfpageselector_types.QPdfPageSelector =
  let vtbl = if vtbl == nil: new QPdfPageSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageSelector_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageSelector_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageSelector_vtable_callback_metacall
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPdfPageSelector_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPdfPageSelector_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPdfPageSelector_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPdfPageSelector_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPdfPageSelector_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPdfPageSelector_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPdfPageSelector_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageSelector_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPdfPageSelector_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPdfPageSelector_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPdfPageSelector_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPdfPageSelector_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPdfPageSelector_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPdfPageSelector_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPdfPageSelector_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPdfPageSelector_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPdfPageSelector_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPdfPageSelector_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPdfPageSelector_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPdfPageSelector_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPdfPageSelector_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPdfPageSelector_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPdfPageSelector_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPdfPageSelector_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPdfPageSelector_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPdfPageSelector_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPdfPageSelector_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPdfPageSelector_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPdfPageSelector_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPdfPageSelector_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPdfPageSelector_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPdfPageSelector_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPdfPageSelector_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPdfPageSelector_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPdfPageSelector_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPdfPageSelector_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPdfPageSelector_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPdfPageSelector_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPdfPageSelector_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPdfPageSelector_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPdfPageSelector_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageSelector_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageSelector_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageSelector_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageSelector_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageSelector_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageSelector_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpageselector_types.QPdfPageSelector(h: fcQPdfPageSelector_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQPdfPageSelector_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfpageselector_types.QPdfPageSelector,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPdfPageSelectorVTable = nil): gen_qpdfpageselector_types.QPdfPageSelector =
  let vtbl = if vtbl == nil: new QPdfPageSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageSelectorVTable](fcQPdfPageSelector_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageSelector_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageSelector_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageSelector_vtable_callback_metacall
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPdfPageSelector_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPdfPageSelector_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPdfPageSelector_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPdfPageSelector_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPdfPageSelector_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPdfPageSelector_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPdfPageSelector_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageSelector_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPdfPageSelector_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPdfPageSelector_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPdfPageSelector_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPdfPageSelector_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPdfPageSelector_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPdfPageSelector_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPdfPageSelector_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPdfPageSelector_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPdfPageSelector_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPdfPageSelector_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPdfPageSelector_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPdfPageSelector_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPdfPageSelector_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPdfPageSelector_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPdfPageSelector_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPdfPageSelector_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPdfPageSelector_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPdfPageSelector_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPdfPageSelector_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPdfPageSelector_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPdfPageSelector_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPdfPageSelector_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPdfPageSelector_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPdfPageSelector_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPdfPageSelector_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPdfPageSelector_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPdfPageSelector_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPdfPageSelector_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPdfPageSelector_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPdfPageSelector_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPdfPageSelector_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPdfPageSelector_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPdfPageSelector_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageSelector_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageSelector_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageSelector_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageSelector_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageSelector_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageSelector_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpageselector_types.QPdfPageSelector(h: fcQPdfPageSelector_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQPdfPageSelector_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfPageSelector_mvtbl = cQPdfPageSelectorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfPageSelector()[])](self.fcQPdfPageSelector_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPdfPageSelector_method_callback_metaObject,
  metacast: fcQPdfPageSelector_method_callback_metacast,
  metacall: fcQPdfPageSelector_method_callback_metacall,
  devType: fcQPdfPageSelector_method_callback_devType,
  setVisible: fcQPdfPageSelector_method_callback_setVisible,
  sizeHint: fcQPdfPageSelector_method_callback_sizeHint,
  minimumSizeHint: fcQPdfPageSelector_method_callback_minimumSizeHint,
  heightForWidth: fcQPdfPageSelector_method_callback_heightForWidth,
  hasHeightForWidth: fcQPdfPageSelector_method_callback_hasHeightForWidth,
  paintEngine: fcQPdfPageSelector_method_callback_paintEngine,
  event: fcQPdfPageSelector_method_callback_event,
  mousePressEvent: fcQPdfPageSelector_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQPdfPageSelector_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQPdfPageSelector_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQPdfPageSelector_method_callback_mouseMoveEvent,
  wheelEvent: fcQPdfPageSelector_method_callback_wheelEvent,
  keyPressEvent: fcQPdfPageSelector_method_callback_keyPressEvent,
  keyReleaseEvent: fcQPdfPageSelector_method_callback_keyReleaseEvent,
  focusInEvent: fcQPdfPageSelector_method_callback_focusInEvent,
  focusOutEvent: fcQPdfPageSelector_method_callback_focusOutEvent,
  enterEvent: fcQPdfPageSelector_method_callback_enterEvent,
  leaveEvent: fcQPdfPageSelector_method_callback_leaveEvent,
  paintEvent: fcQPdfPageSelector_method_callback_paintEvent,
  moveEvent: fcQPdfPageSelector_method_callback_moveEvent,
  resizeEvent: fcQPdfPageSelector_method_callback_resizeEvent,
  closeEvent: fcQPdfPageSelector_method_callback_closeEvent,
  contextMenuEvent: fcQPdfPageSelector_method_callback_contextMenuEvent,
  tabletEvent: fcQPdfPageSelector_method_callback_tabletEvent,
  actionEvent: fcQPdfPageSelector_method_callback_actionEvent,
  dragEnterEvent: fcQPdfPageSelector_method_callback_dragEnterEvent,
  dragMoveEvent: fcQPdfPageSelector_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQPdfPageSelector_method_callback_dragLeaveEvent,
  dropEvent: fcQPdfPageSelector_method_callback_dropEvent,
  showEvent: fcQPdfPageSelector_method_callback_showEvent,
  hideEvent: fcQPdfPageSelector_method_callback_hideEvent,
  nativeEvent: fcQPdfPageSelector_method_callback_nativeEvent,
  changeEvent: fcQPdfPageSelector_method_callback_changeEvent,
  metric: fcQPdfPageSelector_method_callback_metric,
  initPainter: fcQPdfPageSelector_method_callback_initPainter,
  redirected: fcQPdfPageSelector_method_callback_redirected,
  sharedPainter: fcQPdfPageSelector_method_callback_sharedPainter,
  inputMethodEvent: fcQPdfPageSelector_method_callback_inputMethodEvent,
  inputMethodQuery: fcQPdfPageSelector_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQPdfPageSelector_method_callback_focusNextPrevChild,
  eventFilter: fcQPdfPageSelector_method_callback_eventFilter,
  timerEvent: fcQPdfPageSelector_method_callback_timerEvent,
  childEvent: fcQPdfPageSelector_method_callback_childEvent,
  customEvent: fcQPdfPageSelector_method_callback_customEvent,
  connectNotify: fcQPdfPageSelector_method_callback_connectNotify,
  disconnectNotify: fcQPdfPageSelector_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfpageselector_types.QPdfPageSelector,
    inst: VirtualQPdfPageSelector) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageSelector_new(addr(cQPdfPageSelector_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfPageSelector_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfpageselector_types.QPdfPageSelector,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPdfPageSelector) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageSelector_new2(addr(cQPdfPageSelector_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfPageSelector_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfpageselector_types.QPdfPageSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageSelector_staticMetaObject())
