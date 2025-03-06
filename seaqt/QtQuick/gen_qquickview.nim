import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qquickview.cpp", cflags).}


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

proc fcQQuickView_metaObject(self: pointer, ): pointer {.importc: "QQuickView_metaObject".}
proc fcQQuickView_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickView_metacast".}
proc fcQQuickView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickView_metacall".}
proc fcQQuickView_tr(s: cstring): struct_miqt_string {.importc: "QQuickView_tr".}
proc fcQQuickView_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickView_trUtf8".}
proc fcQQuickView_source(self: pointer, ): pointer {.importc: "QQuickView_source".}
proc fcQQuickView_engine(self: pointer, ): pointer {.importc: "QQuickView_engine".}
proc fcQQuickView_rootContext(self: pointer, ): pointer {.importc: "QQuickView_rootContext".}
proc fcQQuickView_rootObject(self: pointer, ): pointer {.importc: "QQuickView_rootObject".}
proc fcQQuickView_resizeMode(self: pointer, ): cint {.importc: "QQuickView_resizeMode".}
proc fcQQuickView_setResizeMode(self: pointer, resizeMode: cint): void {.importc: "QQuickView_setResizeMode".}
proc fcQQuickView_status(self: pointer, ): cint {.importc: "QQuickView_status".}
proc fcQQuickView_errors(self: pointer, ): struct_miqt_array {.importc: "QQuickView_errors".}
proc fcQQuickView_sizeHint(self: pointer, ): pointer {.importc: "QQuickView_sizeHint".}
proc fcQQuickView_initialSize(self: pointer, ): pointer {.importc: "QQuickView_initialSize".}
proc fcQQuickView_setSource(self: pointer, source: pointer): void {.importc: "QQuickView_setSource".}
proc fcQQuickView_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQuickView_setInitialProperties".}
proc fcQQuickView_setContent(self: pointer, url: pointer, component: pointer, item: pointer): void {.importc: "QQuickView_setContent".}
proc fcQQuickView_statusChanged(self: pointer, param1: cint): void {.importc: "QQuickView_statusChanged".}
proc fcQQuickView_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickView_connect_statusChanged".}
proc fcQQuickView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickView_tr2".}
proc fcQQuickView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickView_tr3".}
proc fcQQuickView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickView_trUtf82".}
proc fcQQuickView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickView_trUtf83".}
type cQQuickViewVTable = object
  destructor*: proc(vtbl: ptr cQQuickViewVTable, self: ptr cQQuickView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  accessibleRoot*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  exposeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickView_virtualbase_metaObject".}
proc fcQQuickView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickView_virtualbase_metacast".}
proc fcQQuickView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickView_virtualbase_metacall".}
proc fcQQuickView_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_resizeEvent".}
proc fcQQuickView_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_timerEvent".}
proc fcQQuickView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_keyPressEvent".}
proc fcQQuickView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_keyReleaseEvent".}
proc fcQQuickView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mousePressEvent".}
proc fcQQuickView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mouseReleaseEvent".}
proc fcQQuickView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mouseMoveEvent".}
proc fcQQuickView_virtualbase_focusObject(self: pointer, ): pointer {.importc: "QQuickView_virtualbase_focusObject".}
proc fcQQuickView_virtualbase_accessibleRoot(self: pointer, ): pointer {.importc: "QQuickView_virtualbase_accessibleRoot".}
proc fcQQuickView_virtualbase_exposeEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_exposeEvent".}
proc fcQQuickView_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_showEvent".}
proc fcQQuickView_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_hideEvent".}
proc fcQQuickView_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_focusInEvent".}
proc fcQQuickView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_focusOutEvent".}
proc fcQQuickView_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickView_virtualbase_event".}
proc fcQQuickView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_wheelEvent".}
proc fcQQuickView_virtualbase_tabletEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_tabletEvent".}
proc fcQQuickView_virtualbase_surfaceType(self: pointer, ): cint {.importc: "QQuickView_virtualbase_surfaceType".}
proc fcQQuickView_virtualbase_format(self: pointer, ): pointer {.importc: "QQuickView_virtualbase_format".}
proc fcQQuickView_virtualbase_size(self: pointer, ): pointer {.importc: "QQuickView_virtualbase_size".}
proc fcQQuickView_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_moveEvent".}
proc fcQQuickView_virtualbase_touchEvent(self: pointer, param1: pointer): void {.importc: "QQuickView_virtualbase_touchEvent".}
proc fcQQuickView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QQuickView_virtualbase_nativeEvent".}
proc fcQQuickView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickView_virtualbase_eventFilter".}
proc fcQQuickView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickView_virtualbase_childEvent".}
proc fcQQuickView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickView_virtualbase_customEvent".}
proc fcQQuickView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickView_virtualbase_connectNotify".}
proc fcQQuickView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickView_virtualbase_disconnectNotify".}
proc fcQQuickView_new(vtbl: pointer, ): ptr cQQuickView {.importc: "QQuickView_new".}
proc fcQQuickView_new2(vtbl: pointer, engine: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new2".}
proc fcQQuickView_new3(vtbl: pointer, source: pointer): ptr cQQuickView {.importc: "QQuickView_new3".}
proc fcQQuickView_new4(vtbl: pointer, source: pointer, renderControl: pointer): ptr cQQuickView {.importc: "QQuickView_new4".}
proc fcQQuickView_new5(vtbl: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new5".}
proc fcQQuickView_new6(vtbl: pointer, source: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new6".}
proc fcQQuickView_staticMetaObject(): pointer {.importc: "QQuickView_staticMetaObject".}
proc fcQQuickView_delete(self: pointer) {.importc: "QQuickView_delete".}

proc metaObject*(self: gen_qquickview_types.QQuickView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_metaObject(self.h))

proc metacast*(self: gen_qquickview_types.QQuickView, param1: cstring): pointer =
  fcQQuickView_metacast(self.h, param1)

proc metacall*(self: gen_qquickview_types.QQuickView, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickview_types.QQuickView, s: cstring): string =
  let v_ms = fcQQuickView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickview_types.QQuickView, s: cstring): string =
  let v_ms = fcQQuickView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc source*(self: gen_qquickview_types.QQuickView, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQuickView_source(self.h))

proc engine*(self: gen_qquickview_types.QQuickView, ): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQuickView_engine(self.h))

proc rootContext*(self: gen_qquickview_types.QQuickView, ): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQuickView_rootContext(self.h))

proc rootObject*(self: gen_qquickview_types.QQuickView, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickView_rootObject(self.h))

proc resizeMode*(self: gen_qquickview_types.QQuickView, ): cint =
  cint(fcQQuickView_resizeMode(self.h))

proc setResizeMode*(self: gen_qquickview_types.QQuickView, resizeMode: cint): void =
  fcQQuickView_setResizeMode(self.h, cint(resizeMode))

proc status*(self: gen_qquickview_types.QQuickView, ): cint =
  cint(fcQQuickView_status(self.h))

proc errors*(self: gen_qquickview_types.QQuickView, ): seq[gen_qqmlerror_types.QQmlError] =
  var v_ma = fcQQuickView_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror_types.QQmlError(h: v_outCast[i])
  vx_ret

proc sizeHint*(self: gen_qquickview_types.QQuickView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickView_sizeHint(self.h))

proc initialSize*(self: gen_qquickview_types.QQuickView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickView_initialSize(self.h))

proc setSource*(self: gen_qquickview_types.QQuickView, source: gen_qurl_types.QUrl): void =
  fcQQuickView_setSource(self.h, source.h)

proc setInitialProperties*(self: gen_qquickview_types.QQuickView, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQuickView_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc setContent*(self: gen_qquickview_types.QQuickView, url: gen_qurl_types.QUrl, component: gen_qqmlcomponent_types.QQmlComponent, item: gen_qobject_types.QObject): void =
  fcQQuickView_setContent(self.h, url.h, component.h, item.h)

proc statusChanged*(self: gen_qquickview_types.QQuickView, param1: cint): void =
  fcQQuickView_statusChanged(self.h, cint(param1))

type QQuickViewstatusChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQQuickView_statusChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQuickViewstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickView_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickViewstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qquickview_types.QQuickView, slot: QQuickViewstatusChangedSlot) =
  var tmp = new QQuickViewstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_connect_statusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickView_statusChanged, miqt_exec_callback_cQQuickView_statusChanged_release)

proc tr*(_: type gen_qquickview_types.QQuickView, s: cstring, c: cstring): string =
  let v_ms = fcQQuickView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickview_types.QQuickView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickview_types.QQuickView, s: cstring, c: cstring): string =
  let v_ms = fcQQuickView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickview_types.QQuickView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QQuickViewfocusInEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickViewfocusOutEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickVieweventProc* = proc(self: QQuickView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickViewmouseDoubleClickEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickViewwheelEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickViewtabletEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QQuickViewsurfaceTypeProc* = proc(self: QQuickView): cint {.raises: [], gcsafe.}
type QQuickViewformatProc* = proc(self: QQuickView): gen_qsurfaceformat_types.QSurfaceFormat {.raises: [], gcsafe.}
type QQuickViewsizeProc* = proc(self: QQuickView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QQuickViewmoveEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QQuickViewtouchEventProc* = proc(self: QQuickView, param1: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickViewnativeEventProc* = proc(self: QQuickView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QQuickVieweventFilterProc* = proc(self: QQuickView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickViewchildEventProc* = proc(self: QQuickView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickViewcustomEventProc* = proc(self: QQuickView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickViewconnectNotifyProc* = proc(self: QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickViewdisconnectNotifyProc* = proc(self: QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickViewVTable* = object
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
  focusInEvent*: QQuickViewfocusInEventProc
  focusOutEvent*: QQuickViewfocusOutEventProc
  event*: QQuickVieweventProc
  mouseDoubleClickEvent*: QQuickViewmouseDoubleClickEventProc
  wheelEvent*: QQuickViewwheelEventProc
  tabletEvent*: QQuickViewtabletEventProc
  surfaceType*: QQuickViewsurfaceTypeProc
  format*: QQuickViewformatProc
  size*: QQuickViewsizeProc
  moveEvent*: QQuickViewmoveEventProc
  touchEvent*: QQuickViewtouchEventProc
  nativeEvent*: QQuickViewnativeEventProc
  eventFilter*: QQuickVieweventFilterProc
  childEvent*: QQuickViewchildEventProc
  customEvent*: QQuickViewcustomEventProc
  connectNotify*: QQuickViewconnectNotifyProc
  disconnectNotify*: QQuickViewdisconnectNotifyProc
proc QQuickViewmetaObject*(self: gen_qquickview_types.QQuickView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickViewmetacast*(self: gen_qquickview_types.QQuickView, param1: cstring): pointer =
  fcQQuickView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickViewmetacall*(self: gen_qquickview_types.QQuickView, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickViewresizeEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QResizeEvent): void =
  fcQQuickView_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QQuickViewtimerEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickView_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)
  vtbl[].timerEvent(self, slotval1)

proc QQuickViewkeyPressEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QKeyEvent): void =
  fcQQuickView_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickViewkeyReleaseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QKeyEvent): void =
  fcQQuickView_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickViewmousePressEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickViewmouseReleaseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickViewmouseMoveEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickViewfocusObject*(self: gen_qquickview_types.QQuickView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickView_virtualbase_focusObject(self.h))

proc miqt_exec_callback_cQQuickView_focusObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].focusObject(self)
  virtualReturn.h

proc QQuickViewaccessibleRoot*(self: gen_qquickview_types.QQuickView, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickView_virtualbase_accessibleRoot(self.h))

proc miqt_exec_callback_cQQuickView_accessibleRoot(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].accessibleRoot(self)
  virtualReturn.h

proc QQuickViewexposeEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QExposeEvent): void =
  fcQQuickView_virtualbase_exposeEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_exposeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1)
  vtbl[].exposeEvent(self, slotval1)

proc QQuickViewshowEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QShowEvent): void =
  fcQQuickView_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QQuickViewhideEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QHideEvent): void =
  fcQQuickView_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)
  vtbl[].hideEvent(self, slotval1)

proc QQuickViewfocusInEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickView_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickViewfocusOutEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickView_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickViewevent*(self: gen_qquickview_types.QQuickView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickView_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickViewmouseDoubleClickEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickViewwheelEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QWheelEvent): void =
  fcQQuickView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickViewtabletEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QTabletEvent): void =
  fcQQuickView_virtualbase_tabletEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_tabletEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1)
  vtbl[].tabletEvent(self, slotval1)

proc QQuickViewsurfaceType*(self: gen_qquickview_types.QQuickView, ): cint =
  cint(fcQQuickView_virtualbase_surfaceType(self.h))

proc miqt_exec_callback_cQQuickView_surfaceType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc QQuickViewformat*(self: gen_qquickview_types.QQuickView, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQQuickView_virtualbase_format(self.h))

proc miqt_exec_callback_cQQuickView_format(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.h

proc QQuickViewsize*(self: gen_qquickview_types.QQuickView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickView_virtualbase_size(self.h))

proc miqt_exec_callback_cQQuickView_size(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.h

proc QQuickViewmoveEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMoveEvent): void =
  fcQQuickView_virtualbase_moveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_moveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)
  vtbl[].moveEvent(self, slotval1)

proc QQuickViewtouchEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QTouchEvent): void =
  fcQQuickView_virtualbase_touchEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickView_touchEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1)
  vtbl[].touchEvent(self, slotval1)

proc QQuickViewnativeEvent*(self: gen_qquickview_types.QQuickView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQQuickView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQQuickView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickVieweventFilter*(self: gen_qquickview_types.QQuickView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickView_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickViewchildEvent*(self: gen_qquickview_types.QQuickView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickViewcustomEvent*(self: gen_qquickview_types.QQuickView, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickViewconnectNotify*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickViewdisconnectNotify*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickViewVTable](vtbl)
  let self = QQuickView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qquickview_types.QQuickView,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickViewVTable, _: ptr cQQuickView) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickView_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickView_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickView_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickView_mouseMoveEvent
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickView_focusObject
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickView_accessibleRoot
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickView_exposeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickView_hideEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickView_focusOutEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickView_event
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickView_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickView_wheelEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickView_tabletEvent
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickView_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickView_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickView_size
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickView_moveEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickView_touchEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickView_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickView_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickView_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickview_types.QQuickView,
    engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickViewVTable, _: ptr cQQuickView) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickView_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickView_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickView_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickView_mouseMoveEvent
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickView_focusObject
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickView_accessibleRoot
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickView_exposeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickView_hideEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickView_focusOutEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickView_event
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickView_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickView_wheelEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickView_tabletEvent
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickView_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickView_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickView_size
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickView_moveEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickView_touchEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickView_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickView_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickView_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new2(addr(vtbl[]), engine.h, parent.h))

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickViewVTable, _: ptr cQQuickView) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickView_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickView_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickView_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickView_mouseMoveEvent
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickView_focusObject
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickView_accessibleRoot
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickView_exposeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickView_hideEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickView_focusOutEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickView_event
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickView_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickView_wheelEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickView_tabletEvent
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickView_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickView_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickView_size
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickView_moveEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickView_touchEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickView_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickView_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickView_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new3(addr(vtbl[]), source.h))

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl, renderControl: gen_qquickrendercontrol_types.QQuickRenderControl,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickViewVTable, _: ptr cQQuickView) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickView_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickView_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickView_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickView_mouseMoveEvent
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickView_focusObject
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickView_accessibleRoot
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickView_exposeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickView_hideEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickView_focusOutEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickView_event
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickView_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickView_wheelEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickView_tabletEvent
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickView_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickView_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickView_size
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickView_moveEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickView_touchEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickView_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickView_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickView_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new4(addr(vtbl[]), source.h, renderControl.h))

proc create*(T: type gen_qquickview_types.QQuickView,
    parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickViewVTable, _: ptr cQQuickView) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickView_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickView_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickView_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickView_mouseMoveEvent
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickView_focusObject
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickView_accessibleRoot
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickView_exposeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickView_hideEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickView_focusOutEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickView_event
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickView_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickView_wheelEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickView_tabletEvent
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickView_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickView_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickView_size
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickView_moveEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickView_touchEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickView_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickView_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickView_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new5(addr(vtbl[]), parent.h))

proc create*(T: type gen_qquickview_types.QQuickView,
    source: gen_qurl_types.QUrl, parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickViewVTable = nil): gen_qquickview_types.QQuickView =
  let vtbl = if vtbl == nil: new QQuickViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickViewVTable, _: ptr cQQuickView) {.cdecl.} =
    let vtbl = cast[ref QQuickViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickView_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickView_timerEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickView_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickView_mouseMoveEvent
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickView_focusObject
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickView_accessibleRoot
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickView_exposeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickView_hideEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickView_focusOutEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickView_event
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickView_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickView_wheelEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickView_tabletEvent
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickView_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickView_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickView_size
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickView_moveEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickView_touchEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickView_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickView_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickView_disconnectNotify
  gen_qquickview_types.QQuickView(h: fcQQuickView_new6(addr(vtbl[]), source.h, parent.h))

proc staticMetaObject*(_: type gen_qquickview_types.QQuickView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_staticMetaObject())
proc delete*(self: gen_qquickview_types.QQuickView) =
  fcQQuickView_delete(self.h)
