import ./qtpdf_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_qpdfpagenavigation.cpp", QtPdfCFlags).}


import ./gen_qpdfpagenavigation_types
export gen_qpdfpagenavigation_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qpdfdocument_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpdfdocument_types

type cQPdfPageNavigation*{.exportc: "QPdfPageNavigation", incompleteStruct.} = object

proc fcQPdfPageNavigation_metaObject(self: pointer): pointer {.importc: "QPdfPageNavigation_metaObject".}
proc fcQPdfPageNavigation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageNavigation_metacast".}
proc fcQPdfPageNavigation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageNavigation_metacall".}
proc fcQPdfPageNavigation_tr(s: cstring): struct_seaqt_string {.importc: "QPdfPageNavigation_tr".}
proc fcQPdfPageNavigation_trUtf8(s: cstring): struct_seaqt_string {.importc: "QPdfPageNavigation_trUtf8".}
proc fcQPdfPageNavigation_document(self: pointer): pointer {.importc: "QPdfPageNavigation_document".}
proc fcQPdfPageNavigation_setDocument(self: pointer, document: pointer): void {.importc: "QPdfPageNavigation_setDocument".}
proc fcQPdfPageNavigation_currentPage(self: pointer): cint {.importc: "QPdfPageNavigation_currentPage".}
proc fcQPdfPageNavigation_setCurrentPage(self: pointer, currentPage: cint): void {.importc: "QPdfPageNavigation_setCurrentPage".}
proc fcQPdfPageNavigation_pageCount(self: pointer): cint {.importc: "QPdfPageNavigation_pageCount".}
proc fcQPdfPageNavigation_canGoToPreviousPage(self: pointer): bool {.importc: "QPdfPageNavigation_canGoToPreviousPage".}
proc fcQPdfPageNavigation_canGoToNextPage(self: pointer): bool {.importc: "QPdfPageNavigation_canGoToNextPage".}
proc fcQPdfPageNavigation_goToPreviousPage(self: pointer): void {.importc: "QPdfPageNavigation_goToPreviousPage".}
proc fcQPdfPageNavigation_goToNextPage(self: pointer): void {.importc: "QPdfPageNavigation_goToNextPage".}
proc fcQPdfPageNavigation_documentChanged(self: pointer, document: pointer): void {.importc: "QPdfPageNavigation_documentChanged".}
proc fcQPdfPageNavigation_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int, document: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigation_connect_documentChanged".}
proc fcQPdfPageNavigation_currentPageChanged(self: pointer, currentPage: cint): void {.importc: "QPdfPageNavigation_currentPageChanged".}
proc fcQPdfPageNavigation_connect_currentPageChanged(self: pointer, slot: int, callback: proc (slot: int, currentPage: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigation_connect_currentPageChanged".}
proc fcQPdfPageNavigation_pageCountChanged(self: pointer, pageCount: cint): void {.importc: "QPdfPageNavigation_pageCountChanged".}
proc fcQPdfPageNavigation_connect_pageCountChanged(self: pointer, slot: int, callback: proc (slot: int, pageCount: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigation_connect_pageCountChanged".}
proc fcQPdfPageNavigation_canGoToPreviousPageChanged(self: pointer, canGo: bool): void {.importc: "QPdfPageNavigation_canGoToPreviousPageChanged".}
proc fcQPdfPageNavigation_connect_canGoToPreviousPageChanged(self: pointer, slot: int, callback: proc (slot: int, canGo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigation_connect_canGoToPreviousPageChanged".}
proc fcQPdfPageNavigation_canGoToNextPageChanged(self: pointer, canGo: bool): void {.importc: "QPdfPageNavigation_canGoToNextPageChanged".}
proc fcQPdfPageNavigation_connect_canGoToNextPageChanged(self: pointer, slot: int, callback: proc (slot: int, canGo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigation_connect_canGoToNextPageChanged".}
proc fcQPdfPageNavigation_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfPageNavigation_tr2".}
proc fcQPdfPageNavigation_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfPageNavigation_tr3".}
proc fcQPdfPageNavigation_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfPageNavigation_trUtf82".}
proc fcQPdfPageNavigation_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfPageNavigation_trUtf83".}
proc fcQPdfPageNavigation_vdata(self: pointer): ptr pointer {.importc: "QPdfPageNavigation_vdata".}
proc fvdata_cQPdfPageNavigation(self: pointer): pointer {.importc: "vdata_QPdfPageNavigation".}

type cQPdfPageNavigationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPdfPageNavigation_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfPageNavigation_virtualbase_metaObject".}
proc fcQPdfPageNavigation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageNavigation_virtualbase_metacast".}
proc fcQPdfPageNavigation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageNavigation_virtualbase_metacall".}
proc fcQPdfPageNavigation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfPageNavigation_virtualbase_event".}
proc fcQPdfPageNavigation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfPageNavigation_virtualbase_eventFilter".}
proc fcQPdfPageNavigation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfPageNavigation_virtualbase_timerEvent".}
proc fcQPdfPageNavigation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfPageNavigation_virtualbase_childEvent".}
proc fcQPdfPageNavigation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfPageNavigation_virtualbase_customEvent".}
proc fcQPdfPageNavigation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageNavigation_virtualbase_connectNotify".}
proc fcQPdfPageNavigation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageNavigation_virtualbase_disconnectNotify".}
proc fcQPdfPageNavigation_protectedbase_sender(self: pointer): pointer {.importc: "QPdfPageNavigation_protectedbase_sender".}
proc fcQPdfPageNavigation_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfPageNavigation_protectedbase_senderSignalIndex".}
proc fcQPdfPageNavigation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfPageNavigation_protectedbase_receivers".}
proc fcQPdfPageNavigation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfPageNavigation_protectedbase_isSignalConnected".}
proc fcQPdfPageNavigation_new(vtbl: pointer, vdata: csize_t): ptr cQPdfPageNavigation {.importc: "QPdfPageNavigation_new".}
proc fcQPdfPageNavigation_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfPageNavigation {.importc: "QPdfPageNavigation_new2".}
proc fcQPdfPageNavigation_staticMetaObject(): pointer {.importc: "QPdfPageNavigation_staticMetaObject".}
proc fcQPdfPageNavigation_delete(self: pointer) {.importc: "QPdfPageNavigation_delete".}

proc metaObject*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageNavigation_metaObject(self.h))

proc metacast*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, param1: cstring): pointer =
  fcQPdfPageNavigation_metacast(self.h, param1)

proc metacall*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageNavigation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation, s: cstring): string =
  let v_ms = fcQPdfPageNavigation_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation, s: cstring): string =
  let v_ms = fcQPdfPageNavigation_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc document*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfPageNavigation_document(self.h))

proc setDocument*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfPageNavigation_setDocument(self.h, document.h)

proc currentPage*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): cint =
  fcQPdfPageNavigation_currentPage(self.h)

proc setCurrentPage*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, currentPage: cint): void =
  fcQPdfPageNavigation_setCurrentPage(self.h, currentPage)

proc pageCount*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): cint =
  fcQPdfPageNavigation_pageCount(self.h)

proc canGoToPreviousPage*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): bool =
  fcQPdfPageNavigation_canGoToPreviousPage(self.h)

proc canGoToNextPage*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): bool =
  fcQPdfPageNavigation_canGoToNextPage(self.h)

proc goToPreviousPage*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): void =
  fcQPdfPageNavigation_goToPreviousPage(self.h)

proc goToNextPage*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): void =
  fcQPdfPageNavigation_goToNextPage(self.h)

proc documentChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfPageNavigation_documentChanged(self.h, document.h)

type QPdfPageNavigationdocumentChangedSlot* = proc(document: gen_qpdfdocument_types.QPdfDocument)
proc fcQPdfPageNavigation_slot_callback_documentChanged(slot: int, document: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigationdocumentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpdfdocument_types.QPdfDocument(h: document)

  nimfunc[](slotval1)

proc fcQPdfPageNavigation_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigationdocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, slot: QPdfPageNavigationdocumentChangedSlot) =
  var tmp = new QPdfPageNavigationdocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigation_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigation_slot_callback_documentChanged, fcQPdfPageNavigation_slot_callback_documentChanged_release)

proc currentPageChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, currentPage: cint): void =
  fcQPdfPageNavigation_currentPageChanged(self.h, currentPage)

type QPdfPageNavigationcurrentPageChangedSlot* = proc(currentPage: cint)
proc fcQPdfPageNavigation_slot_callback_currentPageChanged(slot: int, currentPage: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigationcurrentPageChangedSlot](cast[pointer](slot))
  let slotval1 = currentPage

  nimfunc[](slotval1)

proc fcQPdfPageNavigation_slot_callback_currentPageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigationcurrentPageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentPageChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, slot: QPdfPageNavigationcurrentPageChangedSlot) =
  var tmp = new QPdfPageNavigationcurrentPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigation_connect_currentPageChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigation_slot_callback_currentPageChanged, fcQPdfPageNavigation_slot_callback_currentPageChanged_release)

proc pageCountChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, pageCount: cint): void =
  fcQPdfPageNavigation_pageCountChanged(self.h, pageCount)

type QPdfPageNavigationpageCountChangedSlot* = proc(pageCount: cint)
proc fcQPdfPageNavigation_slot_callback_pageCountChanged(slot: int, pageCount: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigationpageCountChangedSlot](cast[pointer](slot))
  let slotval1 = pageCount

  nimfunc[](slotval1)

proc fcQPdfPageNavigation_slot_callback_pageCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigationpageCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPageCountChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, slot: QPdfPageNavigationpageCountChangedSlot) =
  var tmp = new QPdfPageNavigationpageCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigation_connect_pageCountChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigation_slot_callback_pageCountChanged, fcQPdfPageNavigation_slot_callback_pageCountChanged_release)

proc canGoToPreviousPageChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, canGo: bool): void =
  fcQPdfPageNavigation_canGoToPreviousPageChanged(self.h, canGo)

type QPdfPageNavigationcanGoToPreviousPageChangedSlot* = proc(canGo: bool)
proc fcQPdfPageNavigation_slot_callback_canGoToPreviousPageChanged(slot: int, canGo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigationcanGoToPreviousPageChangedSlot](cast[pointer](slot))
  let slotval1 = canGo

  nimfunc[](slotval1)

proc fcQPdfPageNavigation_slot_callback_canGoToPreviousPageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigationcanGoToPreviousPageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCanGoToPreviousPageChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, slot: QPdfPageNavigationcanGoToPreviousPageChangedSlot) =
  var tmp = new QPdfPageNavigationcanGoToPreviousPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigation_connect_canGoToPreviousPageChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigation_slot_callback_canGoToPreviousPageChanged, fcQPdfPageNavigation_slot_callback_canGoToPreviousPageChanged_release)

proc canGoToNextPageChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, canGo: bool): void =
  fcQPdfPageNavigation_canGoToNextPageChanged(self.h, canGo)

type QPdfPageNavigationcanGoToNextPageChangedSlot* = proc(canGo: bool)
proc fcQPdfPageNavigation_slot_callback_canGoToNextPageChanged(slot: int, canGo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigationcanGoToNextPageChangedSlot](cast[pointer](slot))
  let slotval1 = canGo

  nimfunc[](slotval1)

proc fcQPdfPageNavigation_slot_callback_canGoToNextPageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigationcanGoToNextPageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCanGoToNextPageChanged*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, slot: QPdfPageNavigationcanGoToNextPageChangedSlot) =
  var tmp = new QPdfPageNavigationcanGoToNextPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigation_connect_canGoToNextPageChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigation_slot_callback_canGoToNextPageChanged, fcQPdfPageNavigation_slot_callback_canGoToNextPageChanged_release)

proc tr*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation, s: cstring, c: cstring): string =
  let v_ms = fcQPdfPageNavigation_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfPageNavigation_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation, s: cstring, c: cstring): string =
  let v_ms = fcQPdfPageNavigation_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfPageNavigation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPdfPageNavigationmetaObjectProc* = proc(self: QPdfPageNavigation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfPageNavigationmetacastProc* = proc(self: QPdfPageNavigation, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfPageNavigationmetacallProc* = proc(self: QPdfPageNavigation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfPageNavigationeventProc* = proc(self: QPdfPageNavigation, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageNavigationeventFilterProc* = proc(self: QPdfPageNavigation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageNavigationtimerEventProc* = proc(self: QPdfPageNavigation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfPageNavigationchildEventProc* = proc(self: QPdfPageNavigation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfPageNavigationcustomEventProc* = proc(self: QPdfPageNavigation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfPageNavigationconnectNotifyProc* = proc(self: QPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageNavigationdisconnectNotifyProc* = proc(self: QPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageNavigationVTable* = object
  vtbl: cQPdfPageNavigationVTable
  metaObject*: QPdfPageNavigationmetaObjectProc
  metacast*: QPdfPageNavigationmetacastProc
  metacall*: QPdfPageNavigationmetacallProc
  event*: QPdfPageNavigationeventProc
  eventFilter*: QPdfPageNavigationeventFilterProc
  timerEvent*: QPdfPageNavigationtimerEventProc
  childEvent*: QPdfPageNavigationchildEventProc
  customEvent*: QPdfPageNavigationcustomEventProc
  connectNotify*: QPdfPageNavigationconnectNotifyProc
  disconnectNotify*: QPdfPageNavigationdisconnectNotifyProc

proc QPdfPageNavigationmetaObject*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageNavigation_virtualbase_metaObject(self.h))

proc QPdfPageNavigationmetacast*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, param1: cstring): pointer =
  fcQPdfPageNavigation_virtualbase_metacast(self.h, param1)

proc QPdfPageNavigationmetacall*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageNavigation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfPageNavigationevent*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageNavigation_virtualbase_event(self.h, event.h)

proc QPdfPageNavigationeventFilter*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageNavigation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfPageNavigationtimerEvent*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfPageNavigation_virtualbase_timerEvent(self.h, event.h)

proc QPdfPageNavigationchildEvent*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfPageNavigation_virtualbase_childEvent(self.h, event.h)

proc QPdfPageNavigationcustomEvent*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfPageNavigation_virtualbase_customEvent(self.h, event.h)

proc QPdfPageNavigationconnectNotify*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageNavigation_virtualbase_connectNotify(self.h, signal.h)

proc QPdfPageNavigationdisconnectNotify*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageNavigation_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfPageNavigation_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQPdfPageNavigation_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfPageNavigation_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageNavigation_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfPageNavigation_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfPageNavigation_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfPageNavigation_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfPageNavigation_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfPageNavigation_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfPageNavigation_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
  let self = QPdfPageNavigation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfPageNavigation* {.inheritable.} = ref object of QPdfPageNavigation
  vtbl*: cQPdfPageNavigationVTable

method metaObject*(self: VirtualQPdfPageNavigation): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfPageNavigationmetaObject(self[])
method metacast*(self: VirtualQPdfPageNavigation, param1: cstring): pointer {.base.} =
  QPdfPageNavigationmetacast(self[], param1)
method metacall*(self: VirtualQPdfPageNavigation, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfPageNavigationmetacall(self[], param1, param2, param3)
method event*(self: VirtualQPdfPageNavigation, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageNavigationevent(self[], event)
method eventFilter*(self: VirtualQPdfPageNavigation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageNavigationeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfPageNavigation, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfPageNavigationtimerEvent(self[], event)
method childEvent*(self: VirtualQPdfPageNavigation, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfPageNavigationchildEvent(self[], event)
method customEvent*(self: VirtualQPdfPageNavigation, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfPageNavigationcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageNavigationconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageNavigationdisconnectNotify(self[], signal)

proc fcQPdfPageNavigation_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQPdfPageNavigation_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfPageNavigation_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageNavigation_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfPageNavigation_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfPageNavigation_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQPdfPageNavigation_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQPdfPageNavigation_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQPdfPageNavigation_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQPdfPageNavigation_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigation](fcQPdfPageNavigation_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfPageNavigation_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation): cint =
  fcQPdfPageNavigation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, signal: cstring): cint =
  fcQPdfPageNavigation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfPageNavigation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfpagenavigation_types.QPdfPageNavigation,
    vtbl: ref QPdfPageNavigationVTable = nil): gen_qpdfpagenavigation_types.QPdfPageNavigation =
  let vtbl = if vtbl == nil: new QPdfPageNavigationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageNavigation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageNavigation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageNavigation_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageNavigation_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageNavigation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageNavigation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageNavigation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageNavigation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageNavigation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageNavigation_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpagenavigation_types.QPdfPageNavigation(h: fcQPdfPageNavigation_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQPdfPageNavigation_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfpagenavigation_types.QPdfPageNavigation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfPageNavigationVTable = nil): gen_qpdfpagenavigation_types.QPdfPageNavigation =
  let vtbl = if vtbl == nil: new QPdfPageNavigationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageNavigationVTable](fcQPdfPageNavigation_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageNavigation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageNavigation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageNavigation_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageNavigation_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageNavigation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageNavigation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageNavigation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageNavigation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageNavigation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageNavigation_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpagenavigation_types.QPdfPageNavigation(h: fcQPdfPageNavigation_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQPdfPageNavigation_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfPageNavigation_mvtbl = cQPdfPageNavigationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfPageNavigation()[])](self.fcQPdfPageNavigation_vdata()[])
    inst[].h = nil,

  metaObject: fcQPdfPageNavigation_method_callback_metaObject,
  metacast: fcQPdfPageNavigation_method_callback_metacast,
  metacall: fcQPdfPageNavigation_method_callback_metacall,
  event: fcQPdfPageNavigation_method_callback_event,
  eventFilter: fcQPdfPageNavigation_method_callback_eventFilter,
  timerEvent: fcQPdfPageNavigation_method_callback_timerEvent,
  childEvent: fcQPdfPageNavigation_method_callback_childEvent,
  customEvent: fcQPdfPageNavigation_method_callback_customEvent,
  connectNotify: fcQPdfPageNavigation_method_callback_connectNotify,
  disconnectNotify: fcQPdfPageNavigation_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfpagenavigation_types.QPdfPageNavigation,
    inst: VirtualQPdfPageNavigation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageNavigation_new(addr(cQPdfPageNavigation_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfPageNavigation_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfpagenavigation_types.QPdfPageNavigation,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfPageNavigation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageNavigation_new2(addr(cQPdfPageNavigation_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfPageNavigation_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfpagenavigation_types.QPdfPageNavigation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageNavigation_staticMetaObject())
proc delete*(self: gen_qpdfpagenavigation_types.QPdfPageNavigation) =
  fcQPdfPageNavigation_delete(self.h)
