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
{.compile("gen_qquickwindow.cpp", cflags).}


type QQuickWindowCreateTextureOptionEnum* = distinct cint
template TextureHasAlphaChannel*(_: type QQuickWindowCreateTextureOptionEnum): untyped = 1
template TextureHasMipmaps*(_: type QQuickWindowCreateTextureOptionEnum): untyped = 2
template TextureOwnsGLTexture*(_: type QQuickWindowCreateTextureOptionEnum): untyped = 4
template TextureCanUseAtlas*(_: type QQuickWindowCreateTextureOptionEnum): untyped = 8
template TextureIsOpaque*(_: type QQuickWindowCreateTextureOptionEnum): untyped = 16


type QQuickWindowRenderStageEnum* = distinct cint
template BeforeSynchronizingStage*(_: type QQuickWindowRenderStageEnum): untyped = 0
template AfterSynchronizingStage*(_: type QQuickWindowRenderStageEnum): untyped = 1
template BeforeRenderingStage*(_: type QQuickWindowRenderStageEnum): untyped = 2
template AfterRenderingStage*(_: type QQuickWindowRenderStageEnum): untyped = 3
template AfterSwapStage*(_: type QQuickWindowRenderStageEnum): untyped = 4
template NoStage*(_: type QQuickWindowRenderStageEnum): untyped = 5


type QQuickWindowSceneGraphErrorEnum* = distinct cint
template ContextNotAvailable*(_: type QQuickWindowSceneGraphErrorEnum): untyped = 1


type QQuickWindowTextRenderTypeEnum* = distinct cint
template QtTextRendering*(_: type QQuickWindowTextRenderTypeEnum): untyped = 0
template NativeTextRendering*(_: type QQuickWindowTextRenderTypeEnum): untyped = 1


type QQuickWindowNativeObjectTypeEnum* = distinct cint
template NativeObjectTexture*(_: type QQuickWindowNativeObjectTypeEnum): untyped = 0


import ./gen_qquickwindow_types
export gen_qquickwindow_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrunnable_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qaccessible_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qimage_types,
  ../QtGui/gen_qsurfaceformat_types,
  ../QtGui/gen_qwindow,
  ../QtQml/gen_qqmlincubator_types,
  ./gen_qquickitem_types,
  ./gen_qquickrendercontrol_types,
  ./gen_qsgimagenode_types,
  ./gen_qsgninepatchnode_types,
  ./gen_qsgrectanglenode_types,
  ./gen_qsgrendererinterface_types,
  ./gen_qsgtexture_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrunnable_types,
  gen_qsize_types,
  gen_qaccessible_types,
  gen_qcolor_types,
  gen_qevent_types,
  gen_qimage_types,
  gen_qsurfaceformat_types,
  gen_qwindow,
  gen_qqmlincubator_types,
  gen_qquickitem_types,
  gen_qquickrendercontrol_types,
  gen_qsgimagenode_types,
  gen_qsgninepatchnode_types,
  gen_qsgrectanglenode_types,
  gen_qsgrendererinterface_types,
  gen_qsgtexture_types

type cQQuickWindow*{.exportc: "QQuickWindow", incompleteStruct.} = object
type cQQuickWindowGraphicsStateInfo*{.exportc: "QQuickWindow__GraphicsStateInfo", incompleteStruct.} = object

proc fcQQuickWindow_new(): ptr cQQuickWindow {.importc: "QQuickWindow_new".}
proc fcQQuickWindow_new2(renderControl: pointer): ptr cQQuickWindow {.importc: "QQuickWindow_new2".}
proc fcQQuickWindow_new3(parent: pointer): ptr cQQuickWindow {.importc: "QQuickWindow_new3".}
proc fcQQuickWindow_metaObject(self: pointer, ): pointer {.importc: "QQuickWindow_metaObject".}
proc fcQQuickWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWindow_metacast".}
proc fcQQuickWindow_tr(s: cstring): struct_miqt_string {.importc: "QQuickWindow_tr".}
proc fcQQuickWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickWindow_trUtf8".}
proc fcQQuickWindow_contentItem(self: pointer, ): pointer {.importc: "QQuickWindow_contentItem".}
proc fcQQuickWindow_activeFocusItem(self: pointer, ): pointer {.importc: "QQuickWindow_activeFocusItem".}
proc fcQQuickWindow_focusObject(self: pointer, ): pointer {.importc: "QQuickWindow_focusObject".}
proc fcQQuickWindow_mouseGrabberItem(self: pointer, ): pointer {.importc: "QQuickWindow_mouseGrabberItem".}
proc fcQQuickWindow_sendEvent(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickWindow_sendEvent".}
proc fcQQuickWindow_grabWindow(self: pointer, ): pointer {.importc: "QQuickWindow_grabWindow".}
proc fcQQuickWindow_setRenderTarget2(self: pointer, fboId: cuint, size: pointer): void {.importc: "QQuickWindow_setRenderTarget2".}
proc fcQQuickWindow_renderTargetId(self: pointer, ): cuint {.importc: "QQuickWindow_renderTargetId".}
proc fcQQuickWindow_renderTargetSize(self: pointer, ): pointer {.importc: "QQuickWindow_renderTargetSize".}
proc fcQQuickWindow_resetOpenGLState(self: pointer, ): void {.importc: "QQuickWindow_resetOpenGLState".}
proc fcQQuickWindow_graphicsStateInfo(self: pointer, ): pointer {.importc: "QQuickWindow_graphicsStateInfo".}
proc fcQQuickWindow_beginExternalCommands(self: pointer, ): void {.importc: "QQuickWindow_beginExternalCommands".}
proc fcQQuickWindow_endExternalCommands(self: pointer, ): void {.importc: "QQuickWindow_endExternalCommands".}
proc fcQQuickWindow_incubationController(self: pointer, ): pointer {.importc: "QQuickWindow_incubationController".}
proc fcQQuickWindow_accessibleRoot(self: pointer, ): pointer {.importc: "QQuickWindow_accessibleRoot".}
proc fcQQuickWindow_createTextureFromImage(self: pointer, image: pointer): pointer {.importc: "QQuickWindow_createTextureFromImage".}
proc fcQQuickWindow_createTextureFromImage2(self: pointer, image: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromImage2".}
proc fcQQuickWindow_createTextureFromId(self: pointer, id: cuint, size: pointer): pointer {.importc: "QQuickWindow_createTextureFromId".}
proc fcQQuickWindow_createTextureFromNativeObject(self: pointer, typeVal: cint, nativeObjectPtr: pointer, nativeLayout: cint, size: pointer): pointer {.importc: "QQuickWindow_createTextureFromNativeObject".}
proc fcQQuickWindow_setClearBeforeRendering(self: pointer, enabled: bool): void {.importc: "QQuickWindow_setClearBeforeRendering".}
proc fcQQuickWindow_clearBeforeRendering(self: pointer, ): bool {.importc: "QQuickWindow_clearBeforeRendering".}
proc fcQQuickWindow_setColor(self: pointer, color: pointer): void {.importc: "QQuickWindow_setColor".}
proc fcQQuickWindow_color(self: pointer, ): pointer {.importc: "QQuickWindow_color".}
proc fcQQuickWindow_hasDefaultAlphaBuffer(): bool {.importc: "QQuickWindow_hasDefaultAlphaBuffer".}
proc fcQQuickWindow_setDefaultAlphaBuffer(useAlpha: bool): void {.importc: "QQuickWindow_setDefaultAlphaBuffer".}
proc fcQQuickWindow_setPersistentOpenGLContext(self: pointer, persistent: bool): void {.importc: "QQuickWindow_setPersistentOpenGLContext".}
proc fcQQuickWindow_isPersistentOpenGLContext(self: pointer, ): bool {.importc: "QQuickWindow_isPersistentOpenGLContext".}
proc fcQQuickWindow_setPersistentSceneGraph(self: pointer, persistent: bool): void {.importc: "QQuickWindow_setPersistentSceneGraph".}
proc fcQQuickWindow_isPersistentSceneGraph(self: pointer, ): bool {.importc: "QQuickWindow_isPersistentSceneGraph".}
proc fcQQuickWindow_isSceneGraphInitialized(self: pointer, ): bool {.importc: "QQuickWindow_isSceneGraphInitialized".}
proc fcQQuickWindow_scheduleRenderJob(self: pointer, job: pointer, schedule: cint): void {.importc: "QQuickWindow_scheduleRenderJob".}
proc fcQQuickWindow_effectiveDevicePixelRatio(self: pointer, ): float64 {.importc: "QQuickWindow_effectiveDevicePixelRatio".}
proc fcQQuickWindow_rendererInterface(self: pointer, ): pointer {.importc: "QQuickWindow_rendererInterface".}
proc fcQQuickWindow_setSceneGraphBackend(api: cint): void {.importc: "QQuickWindow_setSceneGraphBackend".}
proc fcQQuickWindow_setSceneGraphBackendWithBackend(backend: struct_miqt_string): void {.importc: "QQuickWindow_setSceneGraphBackendWithBackend".}
proc fcQQuickWindow_sceneGraphBackend(): struct_miqt_string {.importc: "QQuickWindow_sceneGraphBackend".}
proc fcQQuickWindow_createRectangleNode(self: pointer, ): pointer {.importc: "QQuickWindow_createRectangleNode".}
proc fcQQuickWindow_createImageNode(self: pointer, ): pointer {.importc: "QQuickWindow_createImageNode".}
proc fcQQuickWindow_createNinePatchNode(self: pointer, ): pointer {.importc: "QQuickWindow_createNinePatchNode".}
proc fcQQuickWindow_textRenderType(): cint {.importc: "QQuickWindow_textRenderType".}
proc fcQQuickWindow_setTextRenderType(renderType: cint): void {.importc: "QQuickWindow_setTextRenderType".}
proc fcQQuickWindow_frameSwapped(self: pointer, ): void {.importc: "QQuickWindow_frameSwapped".}
proc fcQQuickWindow_connect_frameSwapped(self: pointer, slot: int) {.importc: "QQuickWindow_connect_frameSwapped".}
proc fcQQuickWindow_sceneGraphInitialized(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphInitialized".}
proc fcQQuickWindow_connect_sceneGraphInitialized(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphInitialized".}
proc fcQQuickWindow_sceneGraphInvalidated(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphInvalidated".}
proc fcQQuickWindow_connect_sceneGraphInvalidated(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphInvalidated".}
proc fcQQuickWindow_beforeSynchronizing(self: pointer, ): void {.importc: "QQuickWindow_beforeSynchronizing".}
proc fcQQuickWindow_connect_beforeSynchronizing(self: pointer, slot: int) {.importc: "QQuickWindow_connect_beforeSynchronizing".}
proc fcQQuickWindow_afterSynchronizing(self: pointer, ): void {.importc: "QQuickWindow_afterSynchronizing".}
proc fcQQuickWindow_connect_afterSynchronizing(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterSynchronizing".}
proc fcQQuickWindow_beforeRendering(self: pointer, ): void {.importc: "QQuickWindow_beforeRendering".}
proc fcQQuickWindow_connect_beforeRendering(self: pointer, slot: int) {.importc: "QQuickWindow_connect_beforeRendering".}
proc fcQQuickWindow_afterRendering(self: pointer, ): void {.importc: "QQuickWindow_afterRendering".}
proc fcQQuickWindow_connect_afterRendering(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterRendering".}
proc fcQQuickWindow_afterAnimating(self: pointer, ): void {.importc: "QQuickWindow_afterAnimating".}
proc fcQQuickWindow_connect_afterAnimating(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterAnimating".}
proc fcQQuickWindow_sceneGraphAboutToStop(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphAboutToStop".}
proc fcQQuickWindow_connect_sceneGraphAboutToStop(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphAboutToStop".}
proc fcQQuickWindow_colorChanged(self: pointer, param1: pointer): void {.importc: "QQuickWindow_colorChanged".}
proc fcQQuickWindow_connect_colorChanged(self: pointer, slot: int) {.importc: "QQuickWindow_connect_colorChanged".}
proc fcQQuickWindow_activeFocusItemChanged(self: pointer, ): void {.importc: "QQuickWindow_activeFocusItemChanged".}
proc fcQQuickWindow_connect_activeFocusItemChanged(self: pointer, slot: int) {.importc: "QQuickWindow_connect_activeFocusItemChanged".}
proc fcQQuickWindow_sceneGraphError(self: pointer, error: cint, message: struct_miqt_string): void {.importc: "QQuickWindow_sceneGraphError".}
proc fcQQuickWindow_connect_sceneGraphError(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphError".}
proc fcQQuickWindow_beforeRenderPassRecording(self: pointer, ): void {.importc: "QQuickWindow_beforeRenderPassRecording".}
proc fcQQuickWindow_connect_beforeRenderPassRecording(self: pointer, slot: int) {.importc: "QQuickWindow_connect_beforeRenderPassRecording".}
proc fcQQuickWindow_afterRenderPassRecording(self: pointer, ): void {.importc: "QQuickWindow_afterRenderPassRecording".}
proc fcQQuickWindow_connect_afterRenderPassRecording(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterRenderPassRecording".}
proc fcQQuickWindow_update(self: pointer, ): void {.importc: "QQuickWindow_update".}
proc fcQQuickWindow_releaseResources(self: pointer, ): void {.importc: "QQuickWindow_releaseResources".}
proc fcQQuickWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWindow_tr2".}
proc fcQQuickWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWindow_tr3".}
proc fcQQuickWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWindow_trUtf82".}
proc fcQQuickWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWindow_trUtf83".}
proc fcQQuickWindow_createTextureFromId3(self: pointer, id: cuint, size: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromId3".}
proc fcQQuickWindow_createTextureFromNativeObject5(self: pointer, typeVal: cint, nativeObjectPtr: pointer, nativeLayout: cint, size: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromNativeObject5".}
proc fQQuickWindow_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_focusObject".}
proc fcQQuickWindow_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_focusObject".}
proc fQQuickWindow_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_accessibleRoot".}
proc fcQQuickWindow_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_accessibleRoot".}
proc fQQuickWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_exposeEvent".}
proc fcQQuickWindow_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_exposeEvent".}
proc fQQuickWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_resizeEvent".}
proc fcQQuickWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_resizeEvent".}
proc fQQuickWindow_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_showEvent".}
proc fcQQuickWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_showEvent".}
proc fQQuickWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_hideEvent".}
proc fcQQuickWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_hideEvent".}
proc fQQuickWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_focusInEvent".}
proc fcQQuickWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_focusInEvent".}
proc fQQuickWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_focusOutEvent".}
proc fcQQuickWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_focusOutEvent".}
proc fQQuickWindow_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickWindow_virtualbase_event".}
proc fcQQuickWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_event".}
proc fQQuickWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_keyPressEvent".}
proc fcQQuickWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_keyPressEvent".}
proc fQQuickWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_keyReleaseEvent".}
proc fcQQuickWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_keyReleaseEvent".}
proc fQQuickWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mousePressEvent".}
proc fcQQuickWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mousePressEvent".}
proc fQQuickWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mouseReleaseEvent".}
proc fcQQuickWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mouseReleaseEvent".}
proc fQQuickWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mouseDoubleClickEvent".}
proc fQQuickWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mouseMoveEvent".}
proc fcQQuickWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mouseMoveEvent".}
proc fQQuickWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_wheelEvent".}
proc fcQQuickWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_wheelEvent".}
proc fQQuickWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_tabletEvent".}
proc fcQQuickWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_tabletEvent".}
proc fQQuickWindow_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QQuickWindow_virtualbase_surfaceType".}
proc fcQQuickWindow_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_surfaceType".}
proc fQQuickWindow_virtualbase_format(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_format".}
proc fcQQuickWindow_override_virtual_format(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_format".}
proc fQQuickWindow_virtualbase_size(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_size".}
proc fcQQuickWindow_override_virtual_size(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_size".}
proc fQQuickWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_moveEvent".}
proc fcQQuickWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_moveEvent".}
proc fQQuickWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_touchEvent".}
proc fcQQuickWindow_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_touchEvent".}
proc fQQuickWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QQuickWindow_virtualbase_nativeEvent".}
proc fcQQuickWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_nativeEvent".}
proc fQQuickWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickWindow_virtualbase_eventFilter".}
proc fcQQuickWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_eventFilter".}
proc fQQuickWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickWindow_virtualbase_timerEvent".}
proc fcQQuickWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_timerEvent".}
proc fQQuickWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickWindow_virtualbase_childEvent".}
proc fcQQuickWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_childEvent".}
proc fQQuickWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickWindow_virtualbase_customEvent".}
proc fcQQuickWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_customEvent".}
proc fQQuickWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWindow_virtualbase_connectNotify".}
proc fcQQuickWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_connectNotify".}
proc fQQuickWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWindow_virtualbase_disconnectNotify".}
proc fcQQuickWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_disconnectNotify".}
proc fcQQuickWindow_delete(self: pointer) {.importc: "QQuickWindow_delete".}
proc fcQQuickWindowGraphicsStateInfo_delete(self: pointer) {.importc: "QQuickWindow__GraphicsStateInfo_delete".}


func init*(T: type gen_qquickwindow_types.QQuickWindow, h: ptr cQQuickWindow): gen_qquickwindow_types.QQuickWindow =
  T(h: h)
proc create*(T: type gen_qquickwindow_types.QQuickWindow, ): gen_qquickwindow_types.QQuickWindow =
  gen_qquickwindow_types.QQuickWindow.init(fcQQuickWindow_new())

proc create*(T: type gen_qquickwindow_types.QQuickWindow, renderControl: gen_qquickrendercontrol_types.QQuickRenderControl): gen_qquickwindow_types.QQuickWindow =
  gen_qquickwindow_types.QQuickWindow.init(fcQQuickWindow_new2(renderControl.h))

proc create*(T: type gen_qquickwindow_types.QQuickWindow, parent: gen_qwindow_types.QWindow): gen_qquickwindow_types.QQuickWindow =
  gen_qquickwindow_types.QQuickWindow.init(fcQQuickWindow_new3(parent.h))

proc metaObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWindow_metaObject(self.h))

proc metacast*(self: gen_qquickwindow_types.QQuickWindow, param1: cstring): pointer =
  fcQQuickWindow_metacast(self.h, param1)

proc tr*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring): string =
  let v_ms = fcQQuickWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring): string =
  let v_ms = fcQQuickWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc contentItem*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickWindow_contentItem(self.h))

proc activeFocusItem*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickWindow_activeFocusItem(self.h))

proc focusObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWindow_focusObject(self.h))

proc mouseGrabberItem*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickWindow_mouseGrabberItem(self.h))

proc sendEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWindow_sendEvent(self.h, param1.h, param2.h)

proc grabWindow*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickWindow_grabWindow(self.h))

proc setRenderTarget*(self: gen_qquickwindow_types.QQuickWindow, fboId: cuint, size: gen_qsize_types.QSize): void =
  fcQQuickWindow_setRenderTarget2(self.h, fboId, size.h)

proc renderTargetId*(self: gen_qquickwindow_types.QQuickWindow, ): cuint =
  fcQQuickWindow_renderTargetId(self.h)

proc renderTargetSize*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickWindow_renderTargetSize(self.h))

proc resetOpenGLState*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_resetOpenGLState(self.h)

proc graphicsStateInfo*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickwindow_types.QQuickWindowGraphicsStateInfo =
  gen_qquickwindow_types.QQuickWindowGraphicsStateInfo(h: fcQQuickWindow_graphicsStateInfo(self.h))

proc beginExternalCommands*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beginExternalCommands(self.h)

proc endExternalCommands*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_endExternalCommands(self.h)

proc incubationController*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qqmlincubator_types.QQmlIncubationController =
  gen_qqmlincubator_types.QQmlIncubationController(h: fcQQuickWindow_incubationController(self.h))

proc accessibleRoot*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickWindow_accessibleRoot(self.h))

proc createTextureFromImage*(self: gen_qquickwindow_types.QQuickWindow, image: gen_qimage_types.QImage): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromImage(self.h, image.h))

proc createTextureFromImage*(self: gen_qquickwindow_types.QQuickWindow, image: gen_qimage_types.QImage, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromImage2(self.h, image.h, cint(options)))

proc createTextureFromId*(self: gen_qquickwindow_types.QQuickWindow, id: cuint, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromId(self.h, id, size.h))

proc createTextureFromNativeObject*(self: gen_qquickwindow_types.QQuickWindow, typeVal: cint, nativeObjectPtr: pointer, nativeLayout: cint, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromNativeObject(self.h, cint(typeVal), nativeObjectPtr, nativeLayout, size.h))

proc setClearBeforeRendering*(self: gen_qquickwindow_types.QQuickWindow, enabled: bool): void =
  fcQQuickWindow_setClearBeforeRendering(self.h, enabled)

proc clearBeforeRendering*(self: gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_clearBeforeRendering(self.h)

proc setColor*(self: gen_qquickwindow_types.QQuickWindow, color: gen_qcolor_types.QColor): void =
  fcQQuickWindow_setColor(self.h, color.h)

proc color*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQQuickWindow_color(self.h))

proc hasDefaultAlphaBuffer*(_: type gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_hasDefaultAlphaBuffer()

proc setDefaultAlphaBuffer*(_: type gen_qquickwindow_types.QQuickWindow, useAlpha: bool): void =
  fcQQuickWindow_setDefaultAlphaBuffer(useAlpha)

proc setPersistentOpenGLContext*(self: gen_qquickwindow_types.QQuickWindow, persistent: bool): void =
  fcQQuickWindow_setPersistentOpenGLContext(self.h, persistent)

proc isPersistentOpenGLContext*(self: gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_isPersistentOpenGLContext(self.h)

proc setPersistentSceneGraph*(self: gen_qquickwindow_types.QQuickWindow, persistent: bool): void =
  fcQQuickWindow_setPersistentSceneGraph(self.h, persistent)

proc isPersistentSceneGraph*(self: gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_isPersistentSceneGraph(self.h)

proc isSceneGraphInitialized*(self: gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_isSceneGraphInitialized(self.h)

proc scheduleRenderJob*(self: gen_qquickwindow_types.QQuickWindow, job: gen_qrunnable_types.QRunnable, schedule: cint): void =
  fcQQuickWindow_scheduleRenderJob(self.h, job.h, cint(schedule))

proc effectiveDevicePixelRatio*(self: gen_qquickwindow_types.QQuickWindow, ): float64 =
  fcQQuickWindow_effectiveDevicePixelRatio(self.h)

proc rendererInterface*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgrendererinterface_types.QSGRendererInterface =
  gen_qsgrendererinterface_types.QSGRendererInterface(h: fcQQuickWindow_rendererInterface(self.h))

proc setSceneGraphBackend*(_: type gen_qquickwindow_types.QQuickWindow, api: cint): void =
  fcQQuickWindow_setSceneGraphBackend(cint(api))

proc setSceneGraphBackend*(_: type gen_qquickwindow_types.QQuickWindow, backend: string): void =
  fcQQuickWindow_setSceneGraphBackendWithBackend(struct_miqt_string(data: backend, len: csize_t(len(backend))))

proc sceneGraphBackend*(_: type gen_qquickwindow_types.QQuickWindow, ): string =
  let v_ms = fcQQuickWindow_sceneGraphBackend()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createRectangleNode*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgrectanglenode_types.QSGRectangleNode =
  gen_qsgrectanglenode_types.QSGRectangleNode(h: fcQQuickWindow_createRectangleNode(self.h))

proc createImageNode*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgimagenode_types.QSGImageNode =
  gen_qsgimagenode_types.QSGImageNode(h: fcQQuickWindow_createImageNode(self.h))

proc createNinePatchNode*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgninepatchnode_types.QSGNinePatchNode =
  gen_qsgninepatchnode_types.QSGNinePatchNode(h: fcQQuickWindow_createNinePatchNode(self.h))

proc textRenderType*(_: type gen_qquickwindow_types.QQuickWindow, ): cint =
  cint(fcQQuickWindow_textRenderType())

proc setTextRenderType*(_: type gen_qquickwindow_types.QQuickWindow, renderType: cint): void =
  fcQQuickWindow_setTextRenderType(cint(renderType))

proc frameSwapped*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_frameSwapped(self.h)

type QQuickWindowframeSwappedSlot* = proc()
proc miqt_exec_callback_QQuickWindow_frameSwapped(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowframeSwappedSlot](cast[pointer](slot))
  nimfunc[]()

proc onframeSwapped*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowframeSwappedSlot) =
  var tmp = new QQuickWindowframeSwappedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_frameSwapped(self.h, cast[int](addr tmp[]))

proc sceneGraphInitialized*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_sceneGraphInitialized(self.h)

type QQuickWindowsceneGraphInitializedSlot* = proc()
proc miqt_exec_callback_QQuickWindow_sceneGraphInitialized(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphInitializedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsceneGraphInitialized*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphInitializedSlot) =
  var tmp = new QQuickWindowsceneGraphInitializedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphInitialized(self.h, cast[int](addr tmp[]))

proc sceneGraphInvalidated*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_sceneGraphInvalidated(self.h)

type QQuickWindowsceneGraphInvalidatedSlot* = proc()
proc miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphInvalidatedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsceneGraphInvalidated*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphInvalidatedSlot) =
  var tmp = new QQuickWindowsceneGraphInvalidatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphInvalidated(self.h, cast[int](addr tmp[]))

proc beforeSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeSynchronizing(self.h)

type QQuickWindowbeforeSynchronizingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_beforeSynchronizing(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowbeforeSynchronizingSlot](cast[pointer](slot))
  nimfunc[]()

proc onbeforeSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeSynchronizingSlot) =
  var tmp = new QQuickWindowbeforeSynchronizingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeSynchronizing(self.h, cast[int](addr tmp[]))

proc afterSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterSynchronizing(self.h)

type QQuickWindowafterSynchronizingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_afterSynchronizing(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowafterSynchronizingSlot](cast[pointer](slot))
  nimfunc[]()

proc onafterSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterSynchronizingSlot) =
  var tmp = new QQuickWindowafterSynchronizingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterSynchronizing(self.h, cast[int](addr tmp[]))

proc beforeRendering*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeRendering(self.h)

type QQuickWindowbeforeRenderingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_beforeRendering(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowbeforeRenderingSlot](cast[pointer](slot))
  nimfunc[]()

proc onbeforeRendering*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeRenderingSlot) =
  var tmp = new QQuickWindowbeforeRenderingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeRendering(self.h, cast[int](addr tmp[]))

proc afterRendering*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterRendering(self.h)

type QQuickWindowafterRenderingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_afterRendering(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowafterRenderingSlot](cast[pointer](slot))
  nimfunc[]()

proc onafterRendering*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterRenderingSlot) =
  var tmp = new QQuickWindowafterRenderingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterRendering(self.h, cast[int](addr tmp[]))

proc afterAnimating*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterAnimating(self.h)

type QQuickWindowafterAnimatingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_afterAnimating(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowafterAnimatingSlot](cast[pointer](slot))
  nimfunc[]()

proc onafterAnimating*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterAnimatingSlot) =
  var tmp = new QQuickWindowafterAnimatingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterAnimating(self.h, cast[int](addr tmp[]))

proc sceneGraphAboutToStop*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_sceneGraphAboutToStop(self.h)

type QQuickWindowsceneGraphAboutToStopSlot* = proc()
proc miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphAboutToStopSlot](cast[pointer](slot))
  nimfunc[]()

proc onsceneGraphAboutToStop*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphAboutToStopSlot) =
  var tmp = new QQuickWindowsceneGraphAboutToStopSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphAboutToStop(self.h, cast[int](addr tmp[]))

proc colorChanged*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qcolor_types.QColor): void =
  fcQQuickWindow_colorChanged(self.h, param1.h)

type QQuickWindowcolorChangedSlot* = proc(param1: gen_qcolor_types.QColor)
proc miqt_exec_callback_QQuickWindow_colorChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: param1)

  nimfunc[](slotval1)

proc oncolorChanged*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowcolorChangedSlot) =
  var tmp = new QQuickWindowcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_colorChanged(self.h, cast[int](addr tmp[]))

proc activeFocusItemChanged*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_activeFocusItemChanged(self.h)

type QQuickWindowactiveFocusItemChangedSlot* = proc()
proc miqt_exec_callback_QQuickWindow_activeFocusItemChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowactiveFocusItemChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onactiveFocusItemChanged*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowactiveFocusItemChangedSlot) =
  var tmp = new QQuickWindowactiveFocusItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_activeFocusItemChanged(self.h, cast[int](addr tmp[]))

proc sceneGraphError*(self: gen_qquickwindow_types.QQuickWindow, error: cint, message: string): void =
  fcQQuickWindow_sceneGraphError(self.h, cint(error), struct_miqt_string(data: message, len: csize_t(len(message))))

type QQuickWindowsceneGraphErrorSlot* = proc(error: cint, message: string)
proc miqt_exec_callback_QQuickWindow_sceneGraphError(slot: int, error: cint, message: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval2 = vmessagex_ret

  nimfunc[](slotval1, slotval2)

proc onsceneGraphError*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphErrorSlot) =
  var tmp = new QQuickWindowsceneGraphErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphError(self.h, cast[int](addr tmp[]))

proc beforeRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeRenderPassRecording(self.h)

type QQuickWindowbeforeRenderPassRecordingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowbeforeRenderPassRecordingSlot](cast[pointer](slot))
  nimfunc[]()

proc onbeforeRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeRenderPassRecordingSlot) =
  var tmp = new QQuickWindowbeforeRenderPassRecordingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeRenderPassRecording(self.h, cast[int](addr tmp[]))

proc afterRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterRenderPassRecording(self.h)

type QQuickWindowafterRenderPassRecordingSlot* = proc()
proc miqt_exec_callback_QQuickWindow_afterRenderPassRecording(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWindowafterRenderPassRecordingSlot](cast[pointer](slot))
  nimfunc[]()

proc onafterRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterRenderPassRecordingSlot) =
  var tmp = new QQuickWindowafterRenderPassRecordingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterRenderPassRecording(self.h, cast[int](addr tmp[]))

proc update*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_update(self.h)

proc releaseResources*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_releaseResources(self.h)

proc tr*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTextureFromId*(self: gen_qquickwindow_types.QQuickWindow, id: cuint, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromId3(self.h, id, size.h, cint(options)))

proc createTextureFromNativeObject*(self: gen_qquickwindow_types.QQuickWindow, typeVal: cint, nativeObjectPtr: pointer, nativeLayout: cint, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromNativeObject5(self.h, cint(typeVal), nativeObjectPtr, nativeLayout, size.h, cint(options)))

proc QQuickWindowfocusObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fQQuickWindow_virtualbase_focusObject(self.h))

type QQuickWindowfocusObjectProc* = proc(): gen_qobject_types.QObject
proc onfocusObject*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowfocusObjectProc) =
  # TODO check subclass
  var tmp = new QQuickWindowfocusObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_focusObject(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_focusObject ".} =
  var nimfunc = cast[ptr QQuickWindowfocusObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickWindowaccessibleRoot*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fQQuickWindow_virtualbase_accessibleRoot(self.h))

type QQuickWindowaccessibleRootProc* = proc(): gen_qaccessible_types.QAccessibleInterface
proc onaccessibleRoot*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowaccessibleRootProc) =
  # TODO check subclass
  var tmp = new QQuickWindowaccessibleRootProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_accessibleRoot(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_accessibleRoot ".} =
  var nimfunc = cast[ptr QQuickWindowaccessibleRootProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickWindowexposeEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QExposeEvent): void =
  fQQuickWindow_virtualbase_exposeEvent(self.h, param1.h)

type QQuickWindowexposeEventProc* = proc(param1: gen_qevent_types.QExposeEvent): void
proc onexposeEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowexposeEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowexposeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_exposeEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_exposeEvent ".} =
  var nimfunc = cast[ptr QQuickWindowexposeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowresizeEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QResizeEvent): void =
  fQQuickWindow_virtualbase_resizeEvent(self.h, param1.h)

type QQuickWindowresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowresizeEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_resizeEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_resizeEvent ".} =
  var nimfunc = cast[ptr QQuickWindowresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowshowEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QShowEvent): void =
  fQQuickWindow_virtualbase_showEvent(self.h, param1.h)

type QQuickWindowshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowshowEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_showEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_showEvent ".} =
  var nimfunc = cast[ptr QQuickWindowshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowhideEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QHideEvent): void =
  fQQuickWindow_virtualbase_hideEvent(self.h, param1.h)

type QQuickWindowhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowhideEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_hideEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_hideEvent ".} =
  var nimfunc = cast[ptr QQuickWindowhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowfocusInEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickWindow_virtualbase_focusInEvent(self.h, param1.h)

type QQuickWindowfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowfocusInEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_focusInEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_focusInEvent ".} =
  var nimfunc = cast[ptr QQuickWindowfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowfocusOutEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickWindow_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickWindowfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_focusOutEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_focusOutEvent ".} =
  var nimfunc = cast[ptr QQuickWindowfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowevent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qcoreevent_types.QEvent): bool =
  fQQuickWindow_virtualbase_event(self.h, param1.h)

type QQuickWindoweventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindoweventProc) =
  # TODO check subclass
  var tmp = new QQuickWindoweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_event(self: ptr cQQuickWindow, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickWindow_event ".} =
  var nimfunc = cast[ptr QQuickWindoweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickWindowkeyPressEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QKeyEvent): void =
  fQQuickWindow_virtualbase_keyPressEvent(self.h, param1.h)

type QQuickWindowkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_keyPressEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_keyPressEvent ".} =
  var nimfunc = cast[ptr QQuickWindowkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowkeyReleaseEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QKeyEvent): void =
  fQQuickWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

type QQuickWindowkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_keyReleaseEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickWindowkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowmousePressEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickWindow_virtualbase_mousePressEvent(self.h, param1.h)

type QQuickWindowmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowmousePressEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mousePressEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mousePressEvent ".} =
  var nimfunc = cast[ptr QQuickWindowmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowmouseReleaseEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QQuickWindowmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mouseReleaseEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickWindowmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowmouseDoubleClickEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QQuickWindowmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QQuickWindowmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowmouseMoveEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQQuickWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

type QQuickWindowmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mouseMoveEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QQuickWindowmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowwheelEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QWheelEvent): void =
  fQQuickWindow_virtualbase_wheelEvent(self.h, param1.h)

type QQuickWindowwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowwheelEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_wheelEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_wheelEvent ".} =
  var nimfunc = cast[ptr QQuickWindowwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowtabletEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QTabletEvent): void =
  fQQuickWindow_virtualbase_tabletEvent(self.h, param1.h)

type QQuickWindowtabletEventProc* = proc(param1: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowtabletEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_tabletEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_tabletEvent ".} =
  var nimfunc = cast[ptr QQuickWindowtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowsurfaceType*(self: gen_qquickwindow_types.QQuickWindow, ): cint =
  cint(fQQuickWindow_virtualbase_surfaceType(self.h))

type QQuickWindowsurfaceTypeProc* = proc(): cint
proc onsurfaceType*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsurfaceTypeProc) =
  # TODO check subclass
  var tmp = new QQuickWindowsurfaceTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_surfaceType(self: ptr cQQuickWindow, slot: int): cint {.exportc: "miqt_exec_callback_QQuickWindow_surfaceType ".} =
  var nimfunc = cast[ptr QQuickWindowsurfaceTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickWindowformat*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fQQuickWindow_virtualbase_format(self.h))

type QQuickWindowformatProc* = proc(): gen_qsurfaceformat_types.QSurfaceFormat
proc onformat*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowformatProc) =
  # TODO check subclass
  var tmp = new QQuickWindowformatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_format(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_format ".} =
  var nimfunc = cast[ptr QQuickWindowformatProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickWindowsize*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQQuickWindow_virtualbase_size(self.h))

type QQuickWindowsizeProc* = proc(): gen_qsize_types.QSize
proc onsize*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsizeProc) =
  # TODO check subclass
  var tmp = new QQuickWindowsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_size(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_size ".} =
  var nimfunc = cast[ptr QQuickWindowsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickWindowmoveEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMoveEvent): void =
  fQQuickWindow_virtualbase_moveEvent(self.h, param1.h)

type QQuickWindowmoveEventProc* = proc(param1: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowmoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_moveEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_moveEvent ".} =
  var nimfunc = cast[ptr QQuickWindowmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindowtouchEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QTouchEvent): void =
  fQQuickWindow_virtualbase_touchEvent(self.h, param1.h)

type QQuickWindowtouchEventProc* = proc(param1: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowtouchEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowtouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_touchEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_touchEvent ".} =
  var nimfunc = cast[ptr QQuickWindowtouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickWindownativeEvent*(self: gen_qquickwindow_types.QQuickWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQQuickWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QQuickWindownativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindownativeEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindownativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_nativeEvent(self: ptr cQQuickWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QQuickWindow_nativeEvent ".} =
  var nimfunc = cast[ptr QQuickWindownativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickWindoweventFilter*(self: gen_qquickwindow_types.QQuickWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickWindoweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindoweventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickWindoweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_eventFilter(self: ptr cQQuickWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickWindow_eventFilter ".} =
  var nimfunc = cast[ptr QQuickWindoweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickWindowtimerEvent*(self: gen_qquickwindow_types.QQuickWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickWindow_virtualbase_timerEvent(self.h, event.h)

type QQuickWindowtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowtimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_timerEvent(self: ptr cQQuickWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_timerEvent ".} =
  var nimfunc = cast[ptr QQuickWindowtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWindowchildEvent*(self: gen_qquickwindow_types.QQuickWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickWindow_virtualbase_childEvent(self.h, event.h)

type QQuickWindowchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_childEvent(self: ptr cQQuickWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_childEvent ".} =
  var nimfunc = cast[ptr QQuickWindowchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWindowcustomEvent*(self: gen_qquickwindow_types.QQuickWindow, event: gen_qcoreevent_types.QEvent): void =
  fQQuickWindow_virtualbase_customEvent(self.h, event.h)

type QQuickWindowcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickWindowcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_customEvent(self: ptr cQQuickWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_customEvent ".} =
  var nimfunc = cast[ptr QQuickWindowcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWindowconnectNotify*(self: gen_qquickwindow_types.QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickWindow_virtualbase_connectNotify(self.h, signal.h)

type QQuickWindowconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickWindowconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_connectNotify(self: ptr cQQuickWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_connectNotify ".} =
  var nimfunc = cast[ptr QQuickWindowconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickWindowdisconnectNotify*(self: gen_qquickwindow_types.QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickWindowdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickWindowdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_disconnectNotify(self: ptr cQQuickWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickWindowdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickwindow_types.QQuickWindow) =
  fcQQuickWindow_delete(self.h)

func init*(T: type gen_qquickwindow_types.QQuickWindowGraphicsStateInfo, h: ptr cQQuickWindowGraphicsStateInfo): gen_qquickwindow_types.QQuickWindowGraphicsStateInfo =
  T(h: h)
proc delete*(self: gen_qquickwindow_types.QQuickWindowGraphicsStateInfo) =
  fcQQuickWindowGraphicsStateInfo_delete(self.h)
