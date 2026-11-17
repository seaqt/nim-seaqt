import ./qtpdf_pkg

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


{.compile("gen_qpdfpagenavigator.cpp", QtPdfCFlags).}


import ./gen_qpdfpagenavigator_types
export gen_qpdfpagenavigator_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qpdflink_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qpdflink_types

type cQPdfPageNavigator*{.exportc: "QPdfPageNavigator", incompleteStruct.} = object

proc fcQPdfPageNavigator_metaObject(self: pointer): pointer {.importc: "QPdfPageNavigator_metaObject".}
proc fcQPdfPageNavigator_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageNavigator_metacast".}
proc fcQPdfPageNavigator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageNavigator_metacall".}
proc fcQPdfPageNavigator_tr(s: cstring): struct_seaqt_string {.importc: "QPdfPageNavigator_tr".}
proc fcQPdfPageNavigator_currentPage(self: pointer): cint {.importc: "QPdfPageNavigator_currentPage".}
proc fcQPdfPageNavigator_currentLocation(self: pointer): pointer {.importc: "QPdfPageNavigator_currentLocation".}
proc fcQPdfPageNavigator_currentZoom(self: pointer): float64 {.importc: "QPdfPageNavigator_currentZoom".}
proc fcQPdfPageNavigator_backAvailable(self: pointer): bool {.importc: "QPdfPageNavigator_backAvailable".}
proc fcQPdfPageNavigator_forwardAvailable(self: pointer): bool {.importc: "QPdfPageNavigator_forwardAvailable".}
proc fcQPdfPageNavigator_clear(self: pointer): void {.importc: "QPdfPageNavigator_clear".}
proc fcQPdfPageNavigator_jump(self: pointer, destination: pointer): void {.importc: "QPdfPageNavigator_jump".}
proc fcQPdfPageNavigator_jump2(self: pointer, page: cint, location: pointer): void {.importc: "QPdfPageNavigator_jump2".}
proc fcQPdfPageNavigator_update(self: pointer, page: cint, location: pointer, zoom: float64): void {.importc: "QPdfPageNavigator_update".}
proc fcQPdfPageNavigator_forward(self: pointer): void {.importc: "QPdfPageNavigator_forward".}
proc fcQPdfPageNavigator_back(self: pointer): void {.importc: "QPdfPageNavigator_back".}
proc fcQPdfPageNavigator_currentPageChanged(self: pointer, page: cint): void {.importc: "QPdfPageNavigator_currentPageChanged".}
proc fcQPdfPageNavigator_connect_currentPageChanged(self: pointer, slot: int, callback: proc (slot: int, page: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigator_connect_currentPageChanged".}
proc fcQPdfPageNavigator_currentLocationChanged(self: pointer, location: pointer): void {.importc: "QPdfPageNavigator_currentLocationChanged".}
proc fcQPdfPageNavigator_connect_currentLocationChanged(self: pointer, slot: int, callback: proc (slot: int, location: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigator_connect_currentLocationChanged".}
proc fcQPdfPageNavigator_currentZoomChanged(self: pointer, zoom: float64): void {.importc: "QPdfPageNavigator_currentZoomChanged".}
proc fcQPdfPageNavigator_connect_currentZoomChanged(self: pointer, slot: int, callback: proc (slot: int, zoom: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigator_connect_currentZoomChanged".}
proc fcQPdfPageNavigator_backAvailableChanged(self: pointer, available: bool): void {.importc: "QPdfPageNavigator_backAvailableChanged".}
proc fcQPdfPageNavigator_connect_backAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigator_connect_backAvailableChanged".}
proc fcQPdfPageNavigator_forwardAvailableChanged(self: pointer, available: bool): void {.importc: "QPdfPageNavigator_forwardAvailableChanged".}
proc fcQPdfPageNavigator_connect_forwardAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigator_connect_forwardAvailableChanged".}
proc fcQPdfPageNavigator_jumped(self: pointer, current: pointer): void {.importc: "QPdfPageNavigator_jumped".}
proc fcQPdfPageNavigator_connect_jumped(self: pointer, slot: int, callback: proc (slot: int, current: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageNavigator_connect_jumped".}
proc fcQPdfPageNavigator_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfPageNavigator_tr2".}
proc fcQPdfPageNavigator_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfPageNavigator_tr3".}
proc fcQPdfPageNavigator_jump3(self: pointer, page: cint, location: pointer, zoom: float64): void {.importc: "QPdfPageNavigator_jump3".}
proc fcQPdfPageNavigator_vdata(self: pointer): ptr pointer {.importc: "QPdfPageNavigator_vdata".}
proc fvdata_cQPdfPageNavigator(self: pointer): pointer {.importc: "vdata_QPdfPageNavigator".}

type cQPdfPageNavigatorVTable {.pure.} = object
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
proc fcQPdfPageNavigator_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfPageNavigator_virtualbase_metaObject".}
proc fcQPdfPageNavigator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageNavigator_virtualbase_metacast".}
proc fcQPdfPageNavigator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageNavigator_virtualbase_metacall".}
proc fcQPdfPageNavigator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfPageNavigator_virtualbase_event".}
proc fcQPdfPageNavigator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfPageNavigator_virtualbase_eventFilter".}
proc fcQPdfPageNavigator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfPageNavigator_virtualbase_timerEvent".}
proc fcQPdfPageNavigator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfPageNavigator_virtualbase_childEvent".}
proc fcQPdfPageNavigator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfPageNavigator_virtualbase_customEvent".}
proc fcQPdfPageNavigator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageNavigator_virtualbase_connectNotify".}
proc fcQPdfPageNavigator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageNavigator_virtualbase_disconnectNotify".}
proc fcQPdfPageNavigator_protectedbase_currentLink(self: pointer): pointer {.importc: "QPdfPageNavigator_protectedbase_currentLink".}
proc fcQPdfPageNavigator_protectedbase_sender(self: pointer): pointer {.importc: "QPdfPageNavigator_protectedbase_sender".}
proc fcQPdfPageNavigator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfPageNavigator_protectedbase_senderSignalIndex".}
proc fcQPdfPageNavigator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfPageNavigator_protectedbase_receivers".}
proc fcQPdfPageNavigator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfPageNavigator_protectedbase_isSignalConnected".}
proc fcQPdfPageNavigator_new(vtbl: pointer, vdata: csize_t): ptr cQPdfPageNavigator {.importc: "QPdfPageNavigator_new".}
proc fcQPdfPageNavigator_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfPageNavigator {.importc: "QPdfPageNavigator_new2".}
proc fcQPdfPageNavigator_staticMetaObject(): pointer {.importc: "QPdfPageNavigator_staticMetaObject".}
proc fcQPdfPageNavigator_delete(self: pointer) {.importc: "QPdfPageNavigator_delete".}

proc metaObject*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageNavigator_metaObject(self.h))

proc metacast*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, param1: cstring): pointer =
  fcQPdfPageNavigator_metacast(self.h, param1)

proc metacall*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageNavigator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfpagenavigator_types.QPdfPageNavigator, s: cstring): string =
  let v_ms = fcQPdfPageNavigator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentPage*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): cint =
  fcQPdfPageNavigator_currentPage(self.h)

proc currentLocation*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPdfPageNavigator_currentLocation(self.h))

proc currentZoom*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): float64 =
  fcQPdfPageNavigator_currentZoom(self.h)

proc backAvailable*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): bool =
  fcQPdfPageNavigator_backAvailable(self.h)

proc forwardAvailable*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): bool =
  fcQPdfPageNavigator_forwardAvailable(self.h)

proc clear*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): void =
  fcQPdfPageNavigator_clear(self.h)

proc jump*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, destination: gen_qpdflink_types.QPdfLink): void =
  fcQPdfPageNavigator_jump(self.h, destination.h)

proc jump*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, page: cint, location: gen_qpoint_types.QPointF): void =
  fcQPdfPageNavigator_jump2(self.h, page, location.h)

proc update*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, page: cint, location: gen_qpoint_types.QPointF, zoom: float64): void =
  fcQPdfPageNavigator_update(self.h, page, location.h, zoom)

proc forward*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): void =
  fcQPdfPageNavigator_forward(self.h)

proc back*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): void =
  fcQPdfPageNavigator_back(self.h)

proc currentPageChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, page: cint): void =
  fcQPdfPageNavigator_currentPageChanged(self.h, page)

type QPdfPageNavigatorcurrentPageChangedSlot* = proc(page: cint)
proc fcQPdfPageNavigator_slot_callback_currentPageChanged(slot: int, page: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigatorcurrentPageChangedSlot](cast[pointer](slot))
  let slotval1 = page

  nimfunc[](slotval1)

proc fcQPdfPageNavigator_slot_callback_currentPageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigatorcurrentPageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentPageChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, slot: QPdfPageNavigatorcurrentPageChangedSlot) =
  var tmp = new QPdfPageNavigatorcurrentPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigator_connect_currentPageChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigator_slot_callback_currentPageChanged, fcQPdfPageNavigator_slot_callback_currentPageChanged_release)

proc currentLocationChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, location: gen_qpoint_types.QPointF): void =
  fcQPdfPageNavigator_currentLocationChanged(self.h, location.h)

type QPdfPageNavigatorcurrentLocationChangedSlot* = proc(location: gen_qpoint_types.QPointF)
proc fcQPdfPageNavigator_slot_callback_currentLocationChanged(slot: int, location: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigatorcurrentLocationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: location)

  nimfunc[](slotval1)

proc fcQPdfPageNavigator_slot_callback_currentLocationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigatorcurrentLocationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentLocationChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, slot: QPdfPageNavigatorcurrentLocationChangedSlot) =
  var tmp = new QPdfPageNavigatorcurrentLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigator_connect_currentLocationChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigator_slot_callback_currentLocationChanged, fcQPdfPageNavigator_slot_callback_currentLocationChanged_release)

proc currentZoomChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, zoom: float64): void =
  fcQPdfPageNavigator_currentZoomChanged(self.h, zoom)

type QPdfPageNavigatorcurrentZoomChangedSlot* = proc(zoom: float64)
proc fcQPdfPageNavigator_slot_callback_currentZoomChanged(slot: int, zoom: float64) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigatorcurrentZoomChangedSlot](cast[pointer](slot))
  let slotval1 = zoom

  nimfunc[](slotval1)

proc fcQPdfPageNavigator_slot_callback_currentZoomChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigatorcurrentZoomChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentZoomChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, slot: QPdfPageNavigatorcurrentZoomChangedSlot) =
  var tmp = new QPdfPageNavigatorcurrentZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigator_connect_currentZoomChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigator_slot_callback_currentZoomChanged, fcQPdfPageNavigator_slot_callback_currentZoomChanged_release)

proc backAvailableChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, available: bool): void =
  fcQPdfPageNavigator_backAvailableChanged(self.h, available)

type QPdfPageNavigatorbackAvailableChangedSlot* = proc(available: bool)
proc fcQPdfPageNavigator_slot_callback_backAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigatorbackAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc fcQPdfPageNavigator_slot_callback_backAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigatorbackAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBackAvailableChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, slot: QPdfPageNavigatorbackAvailableChangedSlot) =
  var tmp = new QPdfPageNavigatorbackAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigator_connect_backAvailableChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigator_slot_callback_backAvailableChanged, fcQPdfPageNavigator_slot_callback_backAvailableChanged_release)

proc forwardAvailableChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, available: bool): void =
  fcQPdfPageNavigator_forwardAvailableChanged(self.h, available)

type QPdfPageNavigatorforwardAvailableChangedSlot* = proc(available: bool)
proc fcQPdfPageNavigator_slot_callback_forwardAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigatorforwardAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc fcQPdfPageNavigator_slot_callback_forwardAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigatorforwardAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onForwardAvailableChanged*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, slot: QPdfPageNavigatorforwardAvailableChangedSlot) =
  var tmp = new QPdfPageNavigatorforwardAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigator_connect_forwardAvailableChanged(self.h, cast[int](addr tmp[]), fcQPdfPageNavigator_slot_callback_forwardAvailableChanged, fcQPdfPageNavigator_slot_callback_forwardAvailableChanged_release)

proc jumped*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, current: gen_qpdflink_types.QPdfLink): void =
  fcQPdfPageNavigator_jumped(self.h, current.h)

type QPdfPageNavigatorjumpedSlot* = proc(current: gen_qpdflink_types.QPdfLink)
proc fcQPdfPageNavigator_slot_callback_jumped(slot: int, current: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageNavigatorjumpedSlot](cast[pointer](slot))
  let slotval1 = gen_qpdflink_types.QPdfLink(h: current)

  nimfunc[](slotval1)

proc fcQPdfPageNavigator_slot_callback_jumped_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageNavigatorjumpedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onJumped*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, slot: QPdfPageNavigatorjumpedSlot) =
  var tmp = new QPdfPageNavigatorjumpedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageNavigator_connect_jumped(self.h, cast[int](addr tmp[]), fcQPdfPageNavigator_slot_callback_jumped, fcQPdfPageNavigator_slot_callback_jumped_release)

proc tr*(_: type gen_qpdfpagenavigator_types.QPdfPageNavigator, s: cstring, c: cstring): string =
  let v_ms = fcQPdfPageNavigator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfpagenavigator_types.QPdfPageNavigator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfPageNavigator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc jump*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, page: cint, location: gen_qpoint_types.QPointF, zoom: float64): void =
  fcQPdfPageNavigator_jump3(self.h, page, location.h, zoom)

type QPdfPageNavigatormetaObjectProc* = proc(self: QPdfPageNavigator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfPageNavigatormetacastProc* = proc(self: QPdfPageNavigator, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfPageNavigatormetacallProc* = proc(self: QPdfPageNavigator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfPageNavigatoreventProc* = proc(self: QPdfPageNavigator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageNavigatoreventFilterProc* = proc(self: QPdfPageNavigator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageNavigatortimerEventProc* = proc(self: QPdfPageNavigator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfPageNavigatorchildEventProc* = proc(self: QPdfPageNavigator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfPageNavigatorcustomEventProc* = proc(self: QPdfPageNavigator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfPageNavigatorconnectNotifyProc* = proc(self: QPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageNavigatordisconnectNotifyProc* = proc(self: QPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageNavigatorVTable* = object
  vtbl: cQPdfPageNavigatorVTable
  metaObject*: QPdfPageNavigatormetaObjectProc
  metacast*: QPdfPageNavigatormetacastProc
  metacall*: QPdfPageNavigatormetacallProc
  event*: QPdfPageNavigatoreventProc
  eventFilter*: QPdfPageNavigatoreventFilterProc
  timerEvent*: QPdfPageNavigatortimerEventProc
  childEvent*: QPdfPageNavigatorchildEventProc
  customEvent*: QPdfPageNavigatorcustomEventProc
  connectNotify*: QPdfPageNavigatorconnectNotifyProc
  disconnectNotify*: QPdfPageNavigatordisconnectNotifyProc

proc QPdfPageNavigatormetaObject*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageNavigator_virtualbase_metaObject(self.h))

proc QPdfPageNavigatormetacast*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, param1: cstring): pointer =
  fcQPdfPageNavigator_virtualbase_metacast(self.h, param1)

proc QPdfPageNavigatormetacall*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageNavigator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfPageNavigatorevent*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageNavigator_virtualbase_event(self.h, event.h)

proc QPdfPageNavigatoreventFilter*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageNavigator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfPageNavigatortimerEvent*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfPageNavigator_virtualbase_timerEvent(self.h, event.h)

proc QPdfPageNavigatorchildEvent*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfPageNavigator_virtualbase_childEvent(self.h, event.h)

proc QPdfPageNavigatorcustomEvent*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfPageNavigator_virtualbase_customEvent(self.h, event.h)

proc QPdfPageNavigatorconnectNotify*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageNavigator_virtualbase_connectNotify(self.h, signal.h)

proc QPdfPageNavigatordisconnectNotify*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageNavigator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfPageNavigator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQPdfPageNavigator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfPageNavigator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageNavigator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfPageNavigator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfPageNavigator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfPageNavigator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfPageNavigator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfPageNavigator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfPageNavigator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
  let self = QPdfPageNavigator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfPageNavigator* {.inheritable.} = ref object of QPdfPageNavigator
  vtbl*: cQPdfPageNavigatorVTable

method metaObject*(self: VirtualQPdfPageNavigator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfPageNavigatormetaObject(self[])
method metacast*(self: VirtualQPdfPageNavigator, param1: cstring): pointer {.base.} =
  QPdfPageNavigatormetacast(self[], param1)
method metacall*(self: VirtualQPdfPageNavigator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfPageNavigatormetacall(self[], param1, param2, param3)
method event*(self: VirtualQPdfPageNavigator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageNavigatorevent(self[], event)
method eventFilter*(self: VirtualQPdfPageNavigator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageNavigatoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfPageNavigator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfPageNavigatortimerEvent(self[], event)
method childEvent*(self: VirtualQPdfPageNavigator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfPageNavigatorchildEvent(self[], event)
method customEvent*(self: VirtualQPdfPageNavigator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfPageNavigatorcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageNavigatorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageNavigatordisconnectNotify(self[], signal)

proc fcQPdfPageNavigator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQPdfPageNavigator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfPageNavigator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageNavigator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfPageNavigator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfPageNavigator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQPdfPageNavigator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQPdfPageNavigator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQPdfPageNavigator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQPdfPageNavigator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageNavigator](fcQPdfPageNavigator_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc currentLink*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): gen_qpdflink_types.QPdfLink =
  gen_qpdflink_types.QPdfLink(h: fcQPdfPageNavigator_protectedbase_currentLink(self.h))

proc sender*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfPageNavigator_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator): cint =
  fcQPdfPageNavigator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, signal: cstring): cint =
  fcQPdfPageNavigator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfPageNavigator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfpagenavigator_types.QPdfPageNavigator,
    vtbl: ref QPdfPageNavigatorVTable = nil): gen_qpdfpagenavigator_types.QPdfPageNavigator =
  let vtbl = if vtbl == nil: new QPdfPageNavigatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageNavigator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageNavigator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageNavigator_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageNavigator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageNavigator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageNavigator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageNavigator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageNavigator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageNavigator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageNavigator_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpagenavigator_types.QPdfPageNavigator(h: fcQPdfPageNavigator_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQPdfPageNavigator_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfpagenavigator_types.QPdfPageNavigator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfPageNavigatorVTable = nil): gen_qpdfpagenavigator_types.QPdfPageNavigator =
  let vtbl = if vtbl == nil: new QPdfPageNavigatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageNavigatorVTable](fcQPdfPageNavigator_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageNavigator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageNavigator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageNavigator_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageNavigator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageNavigator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageNavigator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageNavigator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageNavigator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageNavigator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageNavigator_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpagenavigator_types.QPdfPageNavigator(h: fcQPdfPageNavigator_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQPdfPageNavigator_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfPageNavigator_mvtbl = cQPdfPageNavigatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfPageNavigator()[])](self.fcQPdfPageNavigator_vdata()[])
    inst[].h = nil,

  metaObject: fcQPdfPageNavigator_method_callback_metaObject,
  metacast: fcQPdfPageNavigator_method_callback_metacast,
  metacall: fcQPdfPageNavigator_method_callback_metacall,
  event: fcQPdfPageNavigator_method_callback_event,
  eventFilter: fcQPdfPageNavigator_method_callback_eventFilter,
  timerEvent: fcQPdfPageNavigator_method_callback_timerEvent,
  childEvent: fcQPdfPageNavigator_method_callback_childEvent,
  customEvent: fcQPdfPageNavigator_method_callback_customEvent,
  connectNotify: fcQPdfPageNavigator_method_callback_connectNotify,
  disconnectNotify: fcQPdfPageNavigator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfpagenavigator_types.QPdfPageNavigator,
    inst: VirtualQPdfPageNavigator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageNavigator_new(addr(cQPdfPageNavigator_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfPageNavigator_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfpagenavigator_types.QPdfPageNavigator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfPageNavigator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageNavigator_new2(addr(cQPdfPageNavigator_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfPageNavigator_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfpagenavigator_types.QPdfPageNavigator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageNavigator_staticMetaObject())
proc delete*(self: gen_qpdfpagenavigator_types.QPdfPageNavigator) =
  fcQPdfPageNavigator_delete(self.h)
