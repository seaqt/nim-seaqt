import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
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

proc fcQQuickView_new(): ptr cQQuickView {.importc: "QQuickView_new".}
proc fcQQuickView_new2(engine: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new2".}
proc fcQQuickView_new3(source: pointer): ptr cQQuickView {.importc: "QQuickView_new3".}
proc fcQQuickView_new4(source: pointer, renderControl: pointer): ptr cQQuickView {.importc: "QQuickView_new4".}
proc fcQQuickView_new5(parent: pointer): ptr cQQuickView {.importc: "QQuickView_new5".}
proc fcQQuickView_new6(source: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new6".}
proc fcQQuickView_metaObject(self: pointer, ): pointer {.importc: "QQuickView_metaObject".}
proc fcQQuickView_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickView_metacast".}
proc fcQQuickView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickView_metacall".}
proc fcQQuickView_tr(s: cstring): struct_miqt_string {.importc: "QQuickView_tr".}
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
proc fcQQuickView_connect_statusChanged(self: pointer, slot: int) {.importc: "QQuickView_connect_statusChanged".}
proc fcQQuickView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickView_tr2".}
proc fcQQuickView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickView_tr3".}
proc fQQuickView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_metaObject".}
proc fcQQuickView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_metaObject".}
proc fQQuickView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickView_virtualbase_metacast".}
proc fcQQuickView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_metacast".}
proc fQQuickView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickView_virtualbase_metacall".}
proc fcQQuickView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_metacall".}
proc fQQuickView_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_resizeEvent".}
proc fcQQuickView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_resizeEvent".}
proc fQQuickView_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_timerEvent".}
proc fcQQuickView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_timerEvent".}
proc fQQuickView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_keyPressEvent".}
proc fcQQuickView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_keyPressEvent".}
proc fQQuickView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_keyReleaseEvent".}
proc fcQQuickView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_keyReleaseEvent".}
proc fQQuickView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mousePressEvent".}
proc fcQQuickView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mousePressEvent".}
proc fQQuickView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mouseReleaseEvent".}
proc fcQQuickView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mouseReleaseEvent".}
proc fQQuickView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mouseMoveEvent".}
proc fcQQuickView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mouseMoveEvent".}
proc fQQuickView_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_focusObject".}
proc fcQQuickView_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_focusObject".}
proc fQQuickView_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_accessibleRoot".}
proc fcQQuickView_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_accessibleRoot".}
proc fQQuickView_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_exposeEvent".}
proc fcQQuickView_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_exposeEvent".}
proc fQQuickView_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_showEvent".}
proc fcQQuickView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_showEvent".}
proc fQQuickView_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_hideEvent".}
proc fcQQuickView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_hideEvent".}
proc fQQuickView_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_closeEvent".}
proc fcQQuickView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_closeEvent".}
proc fQQuickView_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_focusInEvent".}
proc fcQQuickView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_focusInEvent".}
proc fQQuickView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_focusOutEvent".}
proc fcQQuickView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_focusOutEvent".}
proc fQQuickView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickView_virtualbase_event".}
proc fcQQuickView_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_event".}
proc fQQuickView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mouseDoubleClickEvent".}
proc fQQuickView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_wheelEvent".}
proc fcQQuickView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_wheelEvent".}
proc fQQuickView_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_tabletEvent".}
proc fcQQuickView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_tabletEvent".}
proc fQQuickView_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QQuickView_virtualbase_surfaceType".}
proc fcQQuickView_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_surfaceType".}
proc fQQuickView_virtualbase_format(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_format".}
proc fcQQuickView_override_virtual_format(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_format".}
proc fQQuickView_virtualbase_size(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_size".}
proc fcQQuickView_override_virtual_size(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_size".}
proc fQQuickView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_paintEvent".}
proc fcQQuickView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_paintEvent".}
proc fQQuickView_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_moveEvent".}
proc fcQQuickView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_moveEvent".}
proc fQQuickView_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_touchEvent".}
proc fcQQuickView_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_touchEvent".}
proc fQQuickView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QQuickView_virtualbase_nativeEvent".}
proc fcQQuickView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_nativeEvent".}
proc fQQuickView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickView_virtualbase_eventFilter".}
proc fcQQuickView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_eventFilter".}
proc fQQuickView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickView_virtualbase_childEvent".}
proc fcQQuickView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_childEvent".}
proc fQQuickView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickView_virtualbase_customEvent".}
proc fcQQuickView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_customEvent".}
proc fQQuickView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickView_virtualbase_connectNotify".}
proc fcQQuickView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_connectNotify".}
proc fQQuickView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickView_virtualbase_disconnectNotify".}
proc fcQQuickView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_disconnectNotify".}
proc fcQQuickView_staticMetaObject(): pointer {.importc: "QQuickView_staticMetaObject".}
proc fcQQuickView_delete(self: pointer) {.importc: "QQuickView_delete".}


func init*(T: type gen_qquickview_types.QQuickView, h: ptr cQQuickView): gen_qquickview_types.QQuickView =
  T(h: h)
proc create*(T: type gen_qquickview_types.QQuickView, ): gen_qquickview_types.QQuickView =
  gen_qquickview_types.QQuickView.init(fcQQuickView_new())

proc create*(T: type gen_qquickview_types.QQuickView, engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qwindow_types.QWindow): gen_qquickview_types.QQuickView =
  gen_qquickview_types.QQuickView.init(fcQQuickView_new2(engine.h, parent.h))

proc create*(T: type gen_qquickview_types.QQuickView, source: gen_qurl_types.QUrl): gen_qquickview_types.QQuickView =
  gen_qquickview_types.QQuickView.init(fcQQuickView_new3(source.h))

proc create*(T: type gen_qquickview_types.QQuickView, source: gen_qurl_types.QUrl, renderControl: gen_qquickrendercontrol_types.QQuickRenderControl): gen_qquickview_types.QQuickView =
  gen_qquickview_types.QQuickView.init(fcQQuickView_new4(source.h, renderControl.h))

proc create*(T: type gen_qquickview_types.QQuickView, parent: gen_qwindow_types.QWindow): gen_qquickview_types.QQuickView =
  gen_qquickview_types.QQuickView.init(fcQQuickView_new5(parent.h))

proc create*(T: type gen_qquickview_types.QQuickView, source: gen_qurl_types.QUrl, parent: gen_qwindow_types.QWindow): gen_qquickview_types.QQuickView =
  gen_qquickview_types.QQuickView.init(fcQQuickView_new6(source.h, parent.h))

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
proc miqt_exec_callback_QQuickView_statusChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QQuickViewstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onstatusChanged*(self: gen_qquickview_types.QQuickView, slot: QQuickViewstatusChangedSlot) =
  var tmp = new QQuickViewstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_connect_statusChanged(self.h, cast[int](addr tmp[]))

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

proc QQuickViewmetaObject*(self: gen_qquickview_types.QQuickView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQuickView_virtualbase_metaObject(self.h))

type QQuickViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_metaObject(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_metaObject ".} =
  var nimfunc = cast[ptr QQuickViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickViewmetacast*(self: gen_qquickview_types.QQuickView, param1: cstring): pointer =
  fQQuickView_virtualbase_metacast(self.h, param1)

type QQuickViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmetacastProc) =
  # TODO check subclass
  var tmp = new QQuickViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_metacast(self: ptr cQQuickView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickView_metacast ".} =
  var nimfunc = cast[ptr QQuickViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickViewmetacall*(self: gen_qquickview_types.QQuickView, param1: cint, param2: cint, param3: pointer): cint =
  fQQuickView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmetacallProc) =
  # TODO check subclass
  var tmp = new QQuickViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_metacall(self: ptr cQQuickView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickView_metacall ".} =
  var nimfunc = cast[ptr QQuickViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickViewresizeEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QResizeEvent): void =
  fQQuickView_virtualbase_resizeEvent(self.h, param1.h)

type QQuickViewresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_resizeEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_resizeEvent ".} =
  var nimfunc = cast[ptr QQuickViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewtimerEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickView_virtualbase_timerEvent(self.h, param1.h)

type QQuickViewtimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_timerEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_timerEvent ".} =
  var nimfunc = cast[ptr QQuickViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewkeyPressEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QKeyEvent): void =
  fQQuickView_virtualbase_keyPressEvent(self.h, param1.h)

type QQuickViewkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_keyPressEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_keyPressEvent ".} =
  var nimfunc = cast[ptr QQuickViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewkeyReleaseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QKeyEvent): void =
  fQQuickView_virtualbase_keyReleaseEvent(self.h, param1.h)

type QQuickViewkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_keyReleaseEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewmousePressEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickView_virtualbase_mousePressEvent(self.h, param1.h)

type QQuickViewmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mousePressEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mousePressEvent ".} =
  var nimfunc = cast[ptr QQuickViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewmouseReleaseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickView_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QQuickViewmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mouseReleaseEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewmouseMoveEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickView_virtualbase_mouseMoveEvent(self.h, param1.h)

type QQuickViewmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mouseMoveEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QQuickViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewfocusObject*(self: gen_qquickview_types.QQuickView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fQQuickView_virtualbase_focusObject(self.h))

type QQuickViewfocusObjectProc* = proc(): gen_qobject_types.QObject
proc onfocusObject*(self: gen_qquickview_types.QQuickView, slot: QQuickViewfocusObjectProc) =
  # TODO check subclass
  var tmp = new QQuickViewfocusObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_focusObject(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_focusObject ".} =
  var nimfunc = cast[ptr QQuickViewfocusObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickViewaccessibleRoot*(self: gen_qquickview_types.QQuickView, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fQQuickView_virtualbase_accessibleRoot(self.h))

type QQuickViewaccessibleRootProc* = proc(): gen_qaccessible_types.QAccessibleInterface
proc onaccessibleRoot*(self: gen_qquickview_types.QQuickView, slot: QQuickViewaccessibleRootProc) =
  # TODO check subclass
  var tmp = new QQuickViewaccessibleRootProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_accessibleRoot(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_accessibleRoot ".} =
  var nimfunc = cast[ptr QQuickViewaccessibleRootProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickViewexposeEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QExposeEvent): void =
  fQQuickView_virtualbase_exposeEvent(self.h, param1.h)

type QQuickViewexposeEventProc* = proc(param1: gen_qevent_types.QExposeEvent): void
proc onexposeEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewexposeEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewexposeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_exposeEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_exposeEvent ".} =
  var nimfunc = cast[ptr QQuickViewexposeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewshowEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QShowEvent): void =
  fQQuickView_virtualbase_showEvent(self.h, param1.h)

type QQuickViewshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewshowEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_showEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_showEvent ".} =
  var nimfunc = cast[ptr QQuickViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewhideEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QHideEvent): void =
  fQQuickView_virtualbase_hideEvent(self.h, param1.h)

type QQuickViewhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewhideEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_hideEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_hideEvent ".} =
  var nimfunc = cast[ptr QQuickViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewcloseEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QCloseEvent): void =
  fQQuickView_virtualbase_closeEvent(self.h, param1.h)

type QQuickViewcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_closeEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_closeEvent ".} =
  var nimfunc = cast[ptr QQuickViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewfocusInEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickView_virtualbase_focusInEvent(self.h, param1.h)

type QQuickViewfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_focusInEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_focusInEvent ".} =
  var nimfunc = cast[ptr QQuickViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewfocusOutEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickView_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickViewfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_focusOutEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_focusOutEvent ".} =
  var nimfunc = cast[ptr QQuickViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewevent*(self: gen_qquickview_types.QQuickView, param1: gen_qcoreevent_types.QEvent): bool =
  fQQuickView_virtualbase_event(self.h, param1.h)

type QQuickVieweventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickview_types.QQuickView, slot: QQuickVieweventProc) =
  # TODO check subclass
  var tmp = new QQuickVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_event(self: ptr cQQuickView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickView_event ".} =
  var nimfunc = cast[ptr QQuickVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickViewmouseDoubleClickEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QQuickViewmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mouseDoubleClickEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QQuickViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewwheelEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QWheelEvent): void =
  fQQuickView_virtualbase_wheelEvent(self.h, param1.h)

type QQuickViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_wheelEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_wheelEvent ".} =
  var nimfunc = cast[ptr QQuickViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewtabletEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QTabletEvent): void =
  fQQuickView_virtualbase_tabletEvent(self.h, param1.h)

type QQuickViewtabletEventProc* = proc(param1: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_tabletEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_tabletEvent ".} =
  var nimfunc = cast[ptr QQuickViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewsurfaceType*(self: gen_qquickview_types.QQuickView, ): cint =
  cint(fQQuickView_virtualbase_surfaceType(self.h))

type QQuickViewsurfaceTypeProc* = proc(): cint
proc onsurfaceType*(self: gen_qquickview_types.QQuickView, slot: QQuickViewsurfaceTypeProc) =
  # TODO check subclass
  var tmp = new QQuickViewsurfaceTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_surfaceType(self: ptr cQQuickView, slot: int): cint {.exportc: "miqt_exec_callback_QQuickView_surfaceType ".} =
  var nimfunc = cast[ptr QQuickViewsurfaceTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickViewformat*(self: gen_qquickview_types.QQuickView, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fQQuickView_virtualbase_format(self.h))

type QQuickViewformatProc* = proc(): gen_qsurfaceformat_types.QSurfaceFormat
proc onformat*(self: gen_qquickview_types.QQuickView, slot: QQuickViewformatProc) =
  # TODO check subclass
  var tmp = new QQuickViewformatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_format(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_format ".} =
  var nimfunc = cast[ptr QQuickViewformatProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickViewsize*(self: gen_qquickview_types.QQuickView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQQuickView_virtualbase_size(self.h))

type QQuickViewsizeProc* = proc(): gen_qsize_types.QSize
proc onsize*(self: gen_qquickview_types.QQuickView, slot: QQuickViewsizeProc) =
  # TODO check subclass
  var tmp = new QQuickViewsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_size(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_size ".} =
  var nimfunc = cast[ptr QQuickViewsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickViewpaintEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QPaintEvent): void =
  fQQuickView_virtualbase_paintEvent(self.h, param1.h)

type QQuickViewpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_paintEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_paintEvent ".} =
  var nimfunc = cast[ptr QQuickViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewmoveEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QMoveEvent): void =
  fQQuickView_virtualbase_moveEvent(self.h, param1.h)

type QQuickViewmoveEventProc* = proc(param1: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_moveEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_moveEvent ".} =
  var nimfunc = cast[ptr QQuickViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewtouchEvent*(self: gen_qquickview_types.QQuickView, param1: gen_qevent_types.QTouchEvent): void =
  fQQuickView_virtualbase_touchEvent(self.h, param1.h)

type QQuickViewtouchEventProc* = proc(param1: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewtouchEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewtouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_touchEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_touchEvent ".} =
  var nimfunc = cast[ptr QQuickViewtouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickViewnativeEvent*(self: gen_qquickview_types.QQuickView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQQuickView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QQuickViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_nativeEvent(self: ptr cQQuickView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QQuickView_nativeEvent ".} =
  var nimfunc = cast[ptr QQuickViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickVieweventFilter*(self: gen_qquickview_types.QQuickView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickVieweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickview_types.QQuickView, slot: QQuickVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_eventFilter(self: ptr cQQuickView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickView_eventFilter ".} =
  var nimfunc = cast[ptr QQuickVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickViewchildEvent*(self: gen_qquickview_types.QQuickView, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickView_virtualbase_childEvent(self.h, event.h)

type QQuickViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_childEvent(self: ptr cQQuickView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickView_childEvent ".} =
  var nimfunc = cast[ptr QQuickViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickViewcustomEvent*(self: gen_qquickview_types.QQuickView, event: gen_qcoreevent_types.QEvent): void =
  fQQuickView_virtualbase_customEvent(self.h, event.h)

type QQuickViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickview_types.QQuickView, slot: QQuickViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_customEvent(self: ptr cQQuickView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickView_customEvent ".} =
  var nimfunc = cast[ptr QQuickViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickViewconnectNotify*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickView_virtualbase_connectNotify(self.h, signal.h)

type QQuickViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickview_types.QQuickView, slot: QQuickViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_connectNotify(self: ptr cQQuickView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickView_connectNotify ".} =
  var nimfunc = cast[ptr QQuickViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickViewdisconnectNotify*(self: gen_qquickview_types.QQuickView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickView_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickview_types.QQuickView, slot: QQuickViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_disconnectNotify(self: ptr cQQuickView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickView_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickview_types.QQuickView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickView_staticMetaObject())
proc delete*(self: gen_qquickview_types.QQuickView) =
  fcQQuickView_delete(self.h)
