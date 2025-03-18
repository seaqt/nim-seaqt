import ./qtquick_pkg

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


{.compile("gen_qquickview.cpp", QtQuickCFlags).}


type QQuickViewResizeModeEnum* = distinct cint
template SizeViewToRootObject*(_: type QQuickViewResizeModeEnum): untyped = 0
template SizeRootObjectToView*(_: type QQuickViewResizeModeEnum): untyped = 1


type QQuickViewStatusEnum* = distinct cint
template Null*(_: type QQuickViewStatusEnum): untyped = 0
template Ready*(_: type QQuickViewStatusEnum): untyped = 1
template Loading*(_: type QQuickViewStatusEnum): untyped = 2
template Error*(_: type QQuickViewStatusEnum): untyped = 3


import ./gen_qquickview_types
export gen_qquickview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaccessible_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qsurfaceformat_types,
  ../QtGui/gen_qwindow_types,
  ../QtQml/gen_qqmlcomponent_types,
  ../QtQml/gen_qqmlcontext_types,
  ../QtQml/gen_qqmlengine_types,
  ../QtQml/gen_qqmlerror_types,
  ./gen_qquickitem_types,
  ./gen_qquickrendercontrol_types,
  ./gen_qquickwindow,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qaccessible_types,
  gen_qevent_types,
  gen_qsurfaceformat_types,
  gen_qwindow_types,
  gen_qqmlcomponent_types,
  gen_qqmlcontext_types,
  gen_qqmlengine_types,
  gen_qqmlerror_types,
  gen_qquickitem_types,
  gen_qquickrendercontrol_types,
  gen_qquickwindow

type cQQuickView*{.exportc: "QQuickView", incompleteStruct.} = object

proc fcQQuickView_metaObject(self: pointer): pointer {.importc: "QQuickView_metaObject".}
proc fcQQuickView_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickView_metacast".}
proc fcQQuickView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickView_metacall".}
proc fcQQuickView_tr(s: cstring): struct_miqt_string {.importc: "QQuickView_tr".}
proc fcQQuickView_source(self: pointer): pointer {.importc: "QQuickView_source".}
proc fcQQuickView_engine(self: pointer): pointer {.importc: "QQuickView_engine".}
proc fcQQuickView_rootContext(self: pointer): pointer {.importc: "QQuickView_rootContext".}
proc fcQQuickView_rootObject(self: pointer): pointer {.importc: "QQuickView_rootObject".}
proc fcQQuickView_resizeMode(self: pointer): cint {.importc: "QQuickView_resizeMode".}
proc fcQQuickView_setResizeMode(self: pointer, resizeMode: cint): void {.importc: "QQuickView_setResizeMode".}
proc fcQQuickView_status(self: pointer): cint {.importc: "QQuickView_status".}
proc fcQQuickView_errors(self: pointer): struct_miqt_array {.importc: "QQuickView_errors".}
proc fcQQuickView_sizeHint(self: pointer): pointer {.importc: "QQuickView_sizeHint".}
proc fcQQuickView_initialSize(self: pointer): pointer {.importc: "QQuickView_initialSize".}
proc fcQQuickView_setSource(self: pointer, source: pointer): void {.importc: "QQuickView_setSource".}
proc fcQQuickView_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQuickView_setInitialProperties".}
proc fcQQuickView_setContent(self: pointer, url: pointer, component: pointer, item: pointer): void {.importc: "QQuickView_setContent".}
proc fcQQuickView_statusChanged(self: pointer, param1: cint): void {.importc: "QQuickView_statusChanged".}
proc fcQQuickView_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickView_connect_statusChanged".}
proc fcQQuickView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickView_tr2".}
proc fcQQuickView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickView_tr3".}
proc fcQQuickView_vtbl(self: pointer): pointer {.importc: "QQuickView_vtbl".}
proc fcQQuickView_vdata(self: pointer): pointer {.importc: "QQuickView_vdata".}

type cQQuickViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  accessibleRoot*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  exposeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickView_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickView_virtualbase_metaObject".}
proc fcQQuickView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickView_virtualbase_metacast".}
proc fcQQuickView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickView_virtualbase_metacall".}
proc fcQQuickView_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_resizeEvent".}
proc fcQQuickView_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_timerEvent".}
proc fcQQuickView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_keyPressEvent".}
proc fcQQuickView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_keyReleaseEvent".}
proc fcQQuickView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mousePressEvent".}
proc fcQQuickView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mouseReleaseEvent".}
proc fcQQuickView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mouseMoveEvent".}
proc fcQQuickView_virtualbase_focusObject(self: pointer): pointer {.importc: "QQuickView_virtualbase_focusObject".}
proc fcQQuickView_virtualbase_accessibleRoot(self: pointer): pointer {.importc: "QQuickView_virtualbase_accessibleRoot".}
proc fcQQuickView_virtualbase_exposeEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_exposeEvent".}
proc fcQQuickView_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_showEvent".}
proc fcQQuickView_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_hideEvent".}
proc fcQQuickView_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_closeEvent".}
proc fcQQuickView_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_focusInEvent".}
proc fcQQuickView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_focusOutEvent".}
proc fcQQuickView_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickView_virtualbase_event".}
proc fcQQuickView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_wheelEvent".}
proc fcQQuickView_virtualbase_tabletEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_tabletEvent".}
proc fcQQuickView_virtualbase_surfaceType(self: pointer): cint {.importc: "QQuickView_virtualbase_surfaceType".}
proc fcQQuickView_virtualbase_format(self: pointer): pointer {.importc: "QQuickView_virtualbase_format".}
proc fcQQuickView_virtualbase_size(self: pointer): pointer {.importc: "QQuickView_virtualbase_size".}
proc fcQQuickView_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_paintEvent".}
proc fcQQuickView_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_moveEvent".}
proc fcQQuickView_virtualbase_touchEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_touchEvent".}
proc fcQQuickView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QQuickView_virtualbase_nativeEvent".}
proc fcQQuickView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickView_virtualbase_eventFilter".}
proc fcQQuickView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickView_virtualbase_childEvent".}
proc fcQQuickView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickView_virtualbase_customEvent".}
proc fcQQuickView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickView_virtualbase_connectNotify".}
proc fcQQuickView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickView_virtualbase_disconnectNotify".}
proc fcQQuickView_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QQuickView_protectedbase_resolveInterface".}
proc fcQQuickView_protectedbase_sender(self: pointer): pointer {.importc: "QQuickView_protectedbase_sender".}
proc fcQQuickView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickView_protectedbase_senderSignalIndex".}
proc fcQQuickView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickView_protectedbase_receivers".}
proc fcQQuickView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickView_protectedbase_isSignalConnected".}
proc fcQQuickView_new(vtbl, vdata: pointer): ptr cQQuickView {.importc: "QQuickView_new".}
proc fcQQuickView_new2(vtbl, vdata: pointer, engine: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new2".}
proc fcQQuickView_new3(vtbl, vdata: pointer, source: pointer): ptr cQQuickView {.importc: "QQuickView_new3".}
proc fcQQuickView_new4(vtbl, vdata: pointer, source: pointer, renderControl: pointer): ptr cQQuickView {.importc: "QQuickView_new4".}
proc fcQQuickView_new5(vtbl, vdata: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new5".}
proc fcQQuickView_new6(vtbl, vdata: pointer, source: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new6".}
proc fcQQuickView_staticMetaObject(): pointer {.importc: "QQuickView_staticMetaObject".}

proc metaObject*(self: gen_qquickview_types.QQuickView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickview_types.QQuickView, param1: cstring): pointer =
  fcQQuickView_metacast(self.h, param1)

proc metacall*(self: gen_qquickview_types.QQuickView, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickview_types.QQuickView, s: cstring): string =
  let v_ms = fcQQuickView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc source*(self: gen_qquickview_types.QQuickView): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQuickView_source(self.h), owned: true)

proc engine*(self: gen_qquickview_types.QQuickView): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQuickView_engine(self.h), owned: false)

proc rootContext*(self: gen_qquickview_types.QQuickView): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQuickView_rootContext(self.h), owned: false)

proc rootObject*(self: gen_qquickview_types.QQuickView): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickView_rootObject(self.h), owned: false)

proc resizeMode*(self: gen_qquickview_types.QQuickView): cint =
  cint(fcQQuickView_resizeMode(self.h))

proc setResizeMode*(self: gen_qquickview_types.QQuickView, resizeMode: cint): void =
  fcQQuickView_setResizeMode(self.h, cint(resizeMode))

proc status*(self: gen_qquickview_types.QQuickView): cint =
  cint(fcQQuickView_status(self.h))

proc errors*(self: gen_qquickview_types.QQuickView): seq[gen_qqmlerror_types.QQmlError] =
  var v_ma = fcQQuickView_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror_types.QQmlError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sizeHint*(self: gen_qquickview_types.QQuickView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickView_sizeHint(self.h), owned: true)

proc initialSize*(self: gen_qquickview_types.QQuickView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickView_initialSize(self.h), owned: true)

proc setSource*(self: gen_qquickview_types.QQuickView, source: gen_qurl_types.QUrl): void =
  fcQQuickView_setSource(self.h, source.h)

proc setInitialProperties*(self: gen_qquickview_types.QQuickView, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialProperties_k in initialProperties.keys():
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: if len(initialProperties_k) > 0: addr initialProperties_k[0] else: nil, len: csize_t(len(initialProperties_k)))
    initialProperties_ctr += 1
  initialProperties_ctr = 0
  for initialProperties_v in initialProperties.values():
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQuickView_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc setContent*(self: gen_qquickview_types.QQuickView, url: gen_qurl_types.QUrl, component: gen_qqmlcomponent_types.QQmlComponent, item: gen_qobject_types.QObject): void =
  fcQQuickView_setContent(self.h, url.h, component.h, item.h)

proc statusChanged*(self: gen_qquickview_types.QQuickView, param1: cint): void =
  fcQQuickView_statusChanged(self.h, cint(param1))

type QQuickViewstatusChangedSlot* = proc(param1: cint)
proc fcQQuickView_slot_callback_statusChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQuickViewstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc fcQQuickView_slot_callback_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickViewstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStatusChanged*(self: gen_qquickview_types.QQuickView, slot: QQuickViewstatusChangedSlot) =
  var tmp = new QQuickViewstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_connect_statusChanged(self.h, cast[int](addr tmp[]), fcQQuickView_slot_callback_statusChanged, fcQQuickView_slot_callback_statusChanged_release)

proc tr*(_: type gen_qquickview_types.QQuickView, s: cstring, c: cstring): string =
  let v_ms = fcQQuickView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickview_types.QQuickView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickViewmetaObjectProc* = proc(self: QQuickView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickViewmetacastProc* = proc(self: QQuickView, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickViewmetacallProc* = proc(self: QQuickView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickViewresizeEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QQuickViewtimerEventProc* = proc(self: QQuickView, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickViewkeyPressEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickViewkeyReleaseEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickViewmousePressEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickViewmouseReleaseEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickViewmouseMoveEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickViewfocusObjectProc* = proc(self: QQuickView): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QQuickViewaccessibleRootProc* = proc(self: QQuickView): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QQuickViewexposeEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QExposeEvent): void {.raises: [], gcsafe.}
type QQuickViewshowEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QQuickViewhideEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QQuickViewcloseEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QQuickViewfocusInEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickViewfocusOutEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickVieweventProc* = proc(self: QQuickView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickViewmouseDoubleClickEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickViewwheelEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickViewtabletEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QQuickViewsurfaceTypeProc* = proc(self: QQuickView): cint {.raises: [], gcsafe.}
type QQuickViewformatProc* = proc(self: QQuickView): gen_qsurfaceformat_types.QSurfaceFormat {.raises: [], gcsafe.}
type QQuickViewsizeProc* = proc(self: QQuickView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QQuickViewpaintEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QQuickViewmoveEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QQuickViewtouchEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickViewnativeEventProc* = proc(self: QQuickView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QQuickVieweventFilterProc* = proc(self: QQuickView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickViewchildEventProc* = proc(self: QQuickView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickViewcustomEventProc* = proc(self: QQuickView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickViewconnectNotifyProc* = proc(self: QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickViewdisconnectNotifyProc* = proc(self: QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQuickViewVTable* {.inheritable, pure.} = object
  vtbl: cQQuickViewVTable
  metaObject*: QQuickViewmetaObjectProc
  metacast*: QQuickViewmetacastProc
  metacall*: QQuickViewmetacallProc
  resizeEvent*: QQuickViewresizeEventProc
  timerEvent*: QQuickViewtimerEventProc
  keyPressEvent*: QQuickViewkeyPressEventProc
  keyReleaseEvent*: QQuickViewkeyReleaseEventProc
  mousePressEvent*: QQuickViewmousePressEventProc
  mouseReleaseEvent*: QQuickViewmouseReleaseEventProc
  mouseMoveEvent*: QQuickViewmouseMoveEventProc
  focusObject*: QQuickViewfocusObjectProc
  accessibleRoot*: QQuickViewaccessibleRootProc
  exposeEvent*: QQuickViewexposeEventProc
  showEvent*: QQuickViewshowEventProc
  hideEvent*: QQuickViewhideEventProc
  closeEvent*: QQuickViewcloseEventProc
  focusInEvent*: QQuickViewfocusInEventProc
  focusOutEvent*: QQuickViewfocusOutEventProc
  event*: QQuickVieweventProc
  mouseDoubleClickEvent*: QQuickViewmouseDoubleClickEventProc
  wheelEvent*: QQuickViewwheelEventProc
  tabletEvent*: QQuickViewtabletEventProc
  surfaceType*: QQuickViewsurfaceTypeProc
  format*: QQuickViewformatProc
  size*: QQuickViewsizeProc
  paintEvent*: QQuickViewpaintEventProc
  moveEvent*: QQuickViewmoveEventProc
  touchEvent*: QQuickViewtouchEventProc
  nativeEvent*: QQuickViewnativeEventProc
  eventFilter*: QQuickVieweventFilterProc
  childEvent*: QQuickViewchildEventProc
  customEvent*: QQuickViewcustomEventProc
  connectNotify*: QQuickViewconnectNotifyProc
  disconnectNotify*: QQuickViewdisconnectNotifyProc

proc QQuickViewmetaObject*(self: gen_qquickview_types.QQuickView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_virtualbase_metaObject(self.h), owned: false)

proc QQuickViewmetacast*(self: gen_qquickview_types.QQuickView, param1: cstring): pointer =
  fcQQuickView_virtualbase_metacast(self.h, param1)

proc QQuickViewmetacall*(self: gen_qquickview_types.QQuickView, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQuickViewresizeEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QResizeEvent): void =
  fcQQuickView_virtualbase_resizeEvent(self.h, param1.h)

proc QQuickViewtimerEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickView_virtualbase_timerEvent(self.h, param1.h)

proc QQuickViewkeyPressEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QKeyEvent): void =
  fcQQuickView_virtualbase_keyPressEvent(self.h, param1.h)

proc QQuickViewkeyReleaseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QKeyEvent): void =
  fcQQuickView_virtualbase_keyReleaseEvent(self.h, param1.h)

proc QQuickViewmousePressEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mousePressEvent(self.h, param1.h)

proc QQuickViewmouseReleaseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc QQuickViewmouseMoveEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QQuickViewfocusObject*(self: gen_qquickview_types.QQuickView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickView_virtualbase_focusObject(self.h), owned: false)

proc QQuickViewaccessibleRoot*(self: gen_qquickview_types.QQuickView): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickView_virtualbase_accessibleRoot(self.h), owned: false)

proc QQuickViewexposeEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QExposeEvent): void =
  fcQQuickView_virtualbase_exposeEvent(self.h, param1.h)

proc QQuickViewshowEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QShowEvent): void =
  fcQQuickView_virtualbase_showEvent(self.h, param1.h)

proc QQuickViewhideEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QHideEvent): void =
  fcQQuickView_virtualbase_hideEvent(self.h, param1.h)

proc QQuickViewcloseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QCloseEvent): void =
  fcQQuickView_virtualbase_closeEvent(self.h, param1.h)

proc QQuickViewfocusInEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickView_virtualbase_focusInEvent(self.h, param1.h)

proc QQuickViewfocusOutEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickView_virtualbase_focusOutEvent(self.h, param1.h)

proc QQuickViewevent*(self: gen_qquickview_types.QQuickView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickView_virtualbase_event(self.h, param1.h)

proc QQuickViewmouseDoubleClickEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc QQuickViewwheelEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QWheelEvent): void =
  fcQQuickView_virtualbase_wheelEvent(self.h, param1.h)

proc QQuickViewtabletEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QTabletEvent): void =
  fcQQuickView_virtualbase_tabletEvent(self.h, param1.h)

proc QQuickViewsurfaceType*(self: gen_qquickview_types.QQuickView): cint =
  cint(fcQQuickView_virtualbase_surfaceType(self.h))

proc QQuickViewformat*(self: gen_qquickview_types.QQuickView): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQQuickView_virtualbase_format(self.h), owned: true)

proc QQuickViewsize*(self: gen_qquickview_types.QQuickView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickView_virtualbase_size(self.h), owned: true)

proc QQuickViewpaintEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QPaintEvent): void =
  fcQQuickView_virtualbase_paintEvent(self.h, param1.h)

proc QQuickViewmoveEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMoveEvent): void =
  fcQQuickView_virtualbase_moveEvent(self.h, param1.h)

proc QQuickViewtouchEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QTouchEvent): void =
  fcQQuickView_virtualbase_touchEvent(self.h, param1.h)

proc QQuickViewnativeEvent*(self: gen_qquickview_types.QQuickView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQQuickView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QQuickVieweventFilter*(self: gen_qquickview_types.QQuickView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQuickViewchildEvent*(self: gen_qquickview_types.QQuickView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickView_virtualbase_childEvent(self.h, event.h)

proc QQuickViewcustomEvent*(self: gen_qquickview_types.QQuickView, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickView_virtualbase_customEvent(self.h, event.h)

proc QQuickViewconnectNotify*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickView_virtualbase_connectNotify(self.h, signal.h)

proc QQuickViewdisconnectNotify*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickView_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQuickView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQuickView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickView_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQQuickView_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQuickView_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQQuickView_vtable_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQQuickView_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQQuickView_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQQuickView_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQQuickView_vtable_callback_focusObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].focusObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_vtable_callback_accessibleRoot(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].accessibleRoot(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_vtable_callback_exposeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  vtbl[].exposeEvent(self, slotval1)

proc fcQQuickView_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQQuickView_vtable_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQQuickView_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQQuickView_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQQuickView_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQQuickView_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQuickView_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQQuickView_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQQuickView_vtable_callback_tabletEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQQuickView_vtable_callback_surfaceType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc fcQQuickView_vtable_callback_format(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_vtable_callback_size(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQQuickView_vtable_callback_moveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQQuickView_vtable_callback_touchEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc fcQQuickView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickView_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQuickView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQuickView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQuickView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](fcQQuickView_vdata(self))
  let self = QQuickView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickView* {.inheritable.} = ref object of QQuickView
  vtbl*: cQQuickViewVTable

method metaObject*(self: VirtualQQuickView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickViewmetaObject(self[])
method metacast*(self: VirtualQQuickView, param1: cstring): pointer {.base.} =
  QQuickViewmetacast(self[], param1)
method metacall*(self: VirtualQQuickView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickViewmetacall(self[], param1, param2, param3)
method resizeEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QQuickViewresizeEvent(self[], param1)
method timerEvent*(self: VirtualQQuickView, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickViewtimerEvent(self[], param1)
method keyPressEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickViewkeyPressEvent(self[], param1)
method keyReleaseEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickViewkeyReleaseEvent(self[], param1)
method mousePressEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickViewmousePressEvent(self[], param1)
method mouseReleaseEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickViewmouseReleaseEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickViewmouseMoveEvent(self[], param1)
method focusObject*(self: VirtualQQuickView): gen_qobject_types.QObject {.base.} =
  QQuickViewfocusObject(self[])
method accessibleRoot*(self: VirtualQQuickView): gen_qaccessible_types.QAccessibleInterface {.base.} =
  QQuickViewaccessibleRoot(self[])
method exposeEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QExposeEvent): void {.base.} =
  QQuickViewexposeEvent(self[], param1)
method showEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QQuickViewshowEvent(self[], param1)
method hideEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QQuickViewhideEvent(self[], param1)
method closeEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QQuickViewcloseEvent(self[], param1)
method focusInEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickViewfocusInEvent(self[], param1)
method focusOutEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickViewfocusOutEvent(self[], param1)
method event*(self: VirtualQQuickView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickViewevent(self[], param1)
method mouseDoubleClickEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickViewmouseDoubleClickEvent(self[], param1)
method wheelEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickViewwheelEvent(self[], param1)
method tabletEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QTabletEvent): void {.base.} =
  QQuickViewtabletEvent(self[], param1)
method surfaceType*(self: VirtualQQuickView): cint {.base.} =
  QQuickViewsurfaceType(self[])
method format*(self: VirtualQQuickView): gen_qsurfaceformat_types.QSurfaceFormat {.base.} =
  QQuickViewformat(self[])
method size*(self: VirtualQQuickView): gen_qsize_types.QSize {.base.} =
  QQuickViewsize(self[])
method paintEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QQuickViewpaintEvent(self[], param1)
method moveEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QMoveEvent): void {.base.} =
  QQuickViewmoveEvent(self[], param1)
method touchEvent*(self: VirtualQQuickView, param1: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickViewtouchEvent(self[], param1)
method nativeEvent*(self: VirtualQQuickView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QQuickViewnativeEvent(self[], eventType, message, resultVal)
method eventFilter*(self: VirtualQQuickView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickVieweventFilter(self[], watched, event)
method childEvent*(self: VirtualQQuickView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickViewchildEvent(self[], event)
method customEvent*(self: VirtualQQuickView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickViewcustomEvent(self[], event)
method connectNotify*(self: VirtualQQuickView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickViewconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQuickView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickViewdisconnectNotify(self[], signal)

proc fcQQuickView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQuickView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickView_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

proc fcQQuickView_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQQuickView_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQQuickView_method_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQQuickView_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQQuickView_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQQuickView_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQQuickView_method_callback_focusObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var virtualReturn = inst.focusObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_method_callback_accessibleRoot(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var virtualReturn = inst.accessibleRoot()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_method_callback_exposeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  inst.exposeEvent(slotval1)

proc fcQQuickView_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQQuickView_method_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  inst.hideEvent(slotval1)

proc fcQQuickView_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

proc fcQQuickView_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

proc fcQQuickView_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQQuickView_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQuickView_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQQuickView_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

proc fcQQuickView_method_callback_tabletEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  inst.tabletEvent(slotval1)

proc fcQQuickView_method_callback_surfaceType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var virtualReturn = inst.surfaceType()
  cint(virtualReturn)

proc fcQQuickView_method_callback_format(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var virtualReturn = inst.format()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_method_callback_size(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickView_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQQuickView_method_callback_moveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  inst.moveEvent(slotval1)

proc fcQQuickView_method_callback_touchEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  inst.touchEvent(slotval1)

proc fcQQuickView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickView_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQuickView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQuickView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQuickView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickView](fcQQuickView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc resolveInterface*(self: gen_qquickview_types.QQuickView, name: cstring, revision: cint): pointer =
  fcQQuickView_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qquickview_types.QQuickView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickview_types.QQuickView): cint =
  fcQQuickView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickview_types.QQuickView, signal: cstring): cint =
  fcQQuickView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickview_types.QQuickView,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](fcQQuickView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickView_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQQuickView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickView_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQQuickView_vtable_callback_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQQuickView_vtable_callback_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQQuickView_vtable_callback_exposeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQQuickView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQQuickView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQQuickView_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickView_vtable_callback_event
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickView_vtable_callback_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQQuickView_vtable_callback_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQQuickView_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQQuickView_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQuickView_vtable_callback_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQQuickView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQQuickView_vtable_callback_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickView_vtable_callback_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQQuickView_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickView_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickView_vtable_callback_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickview_types.QQuickView,
    engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](fcQQuickView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickView_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQQuickView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickView_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQQuickView_vtable_callback_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQQuickView_vtable_callback_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQQuickView_vtable_callback_exposeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQQuickView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQQuickView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQQuickView_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickView_vtable_callback_event
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickView_vtable_callback_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQQuickView_vtable_callback_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQQuickView_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQQuickView_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQuickView_vtable_callback_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQQuickView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQQuickView_vtable_callback_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickView_vtable_callback_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQQuickView_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickView_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickView_vtable_callback_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new2(addr(vtbl[].vtbl), addr(vtbl[]), engine.h, parent.h), owned: true)

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](fcQQuickView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickView_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQQuickView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickView_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQQuickView_vtable_callback_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQQuickView_vtable_callback_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQQuickView_vtable_callback_exposeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQQuickView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQQuickView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQQuickView_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickView_vtable_callback_event
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickView_vtable_callback_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQQuickView_vtable_callback_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQQuickView_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQQuickView_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQuickView_vtable_callback_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQQuickView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQQuickView_vtable_callback_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickView_vtable_callback_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQQuickView_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickView_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickView_vtable_callback_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new3(addr(vtbl[].vtbl), addr(vtbl[]), source.h), owned: true)

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl, renderControl: gen_qquickrendercontrol_types.QQuickRenderControl,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](fcQQuickView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickView_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQQuickView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickView_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQQuickView_vtable_callback_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQQuickView_vtable_callback_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQQuickView_vtable_callback_exposeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQQuickView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQQuickView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQQuickView_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickView_vtable_callback_event
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickView_vtable_callback_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQQuickView_vtable_callback_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQQuickView_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQQuickView_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQuickView_vtable_callback_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQQuickView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQQuickView_vtable_callback_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickView_vtable_callback_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQQuickView_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickView_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickView_vtable_callback_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new4(addr(vtbl[].vtbl), addr(vtbl[]), source.h, renderControl.h), owned: true)

proc create*(T: type gen_qquickview_types.QQuickView,
    parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](fcQQuickView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickView_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQQuickView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickView_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQQuickView_vtable_callback_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQQuickView_vtable_callback_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQQuickView_vtable_callback_exposeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQQuickView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQQuickView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQQuickView_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickView_vtable_callback_event
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickView_vtable_callback_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQQuickView_vtable_callback_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQQuickView_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQQuickView_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQuickView_vtable_callback_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQQuickView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQQuickView_vtable_callback_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickView_vtable_callback_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQQuickView_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickView_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickView_vtable_callback_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new5(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl, parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](fcQQuickView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickView_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQQuickView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickView_vtable_callback_timerEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQQuickView_vtable_callback_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQQuickView_vtable_callback_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQQuickView_vtable_callback_exposeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQQuickView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQQuickView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQQuickView_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickView_vtable_callback_event
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickView_vtable_callback_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQQuickView_vtable_callback_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQQuickView_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQQuickView_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQuickView_vtable_callback_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQQuickView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQQuickView_vtable_callback_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickView_vtable_callback_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQQuickView_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickView_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickView_vtable_callback_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new6(addr(vtbl[].vtbl), addr(vtbl[]), source.h, parent.h), owned: true)

const cQQuickView_mvtbl = cQQuickViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickView()[])](self.fcQQuickView_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQuickView_method_callback_metaObject,
  metacast: fcQQuickView_method_callback_metacast,
  metacall: fcQQuickView_method_callback_metacall,
  resizeEvent: fcQQuickView_method_callback_resizeEvent,
  timerEvent: fcQQuickView_method_callback_timerEvent,
  keyPressEvent: fcQQuickView_method_callback_keyPressEvent,
  keyReleaseEvent: fcQQuickView_method_callback_keyReleaseEvent,
  mousePressEvent: fcQQuickView_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQQuickView_method_callback_mouseReleaseEvent,
  mouseMoveEvent: fcQQuickView_method_callback_mouseMoveEvent,
  focusObject: fcQQuickView_method_callback_focusObject,
  accessibleRoot: fcQQuickView_method_callback_accessibleRoot,
  exposeEvent: fcQQuickView_method_callback_exposeEvent,
  showEvent: fcQQuickView_method_callback_showEvent,
  hideEvent: fcQQuickView_method_callback_hideEvent,
  closeEvent: fcQQuickView_method_callback_closeEvent,
  focusInEvent: fcQQuickView_method_callback_focusInEvent,
  focusOutEvent: fcQQuickView_method_callback_focusOutEvent,
  event: fcQQuickView_method_callback_event,
  mouseDoubleClickEvent: fcQQuickView_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQQuickView_method_callback_wheelEvent,
  tabletEvent: fcQQuickView_method_callback_tabletEvent,
  surfaceType: fcQQuickView_method_callback_surfaceType,
  format: fcQQuickView_method_callback_format,
  size: fcQQuickView_method_callback_size,
  paintEvent: fcQQuickView_method_callback_paintEvent,
  moveEvent: fcQQuickView_method_callback_moveEvent,
  touchEvent: fcQQuickView_method_callback_touchEvent,
  nativeEvent: fcQQuickView_method_callback_nativeEvent,
  eventFilter: fcQQuickView_method_callback_eventFilter,
  childEvent: fcQQuickView_method_callback_childEvent,
  customEvent: fcQQuickView_method_callback_customEvent,
  connectNotify: fcQQuickView_method_callback_connectNotify,
  disconnectNotify: fcQQuickView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickview_types.QQuickView,
    inst: VirtualQQuickView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickView_new(addr(cQQuickView_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickview_types.QQuickView,
    engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qwindow_types.QWindow,
    inst: VirtualQQuickView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickView_new2(addr(cQQuickView_mvtbl), addr(inst[]), engine.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl,
    inst: VirtualQQuickView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickView_new3(addr(cQQuickView_mvtbl), addr(inst[]), source.h)
  inst[].owned = true

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl, renderControl: gen_qquickrendercontrol_types.QQuickRenderControl,
    inst: VirtualQQuickView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickView_new4(addr(cQQuickView_mvtbl), addr(inst[]), source.h, renderControl.h)
  inst[].owned = true

proc create*(T: type gen_qquickview_types.QQuickView,
    parent: gen_qwindow_types.QWindow,
    inst: VirtualQQuickView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickView_new5(addr(cQQuickView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl, parent: gen_qwindow_types.QWindow,
    inst: VirtualQQuickView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickView_new6(addr(cQQuickView_mvtbl), addr(inst[]), source.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickview_types.QQuickView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_staticMetaObject())
