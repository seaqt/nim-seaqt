import ./Qt6Quick_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
  ./gen_qquickgraphicsconfiguration_types,
  ./gen_qquickgraphicsdevice_types,
  ./gen_qquickitem_types,
  ./gen_qquickrendercontrol_types,
  ./gen_qquickrendertarget_types,
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
  gen_qquickgraphicsconfiguration_types,
  gen_qquickgraphicsdevice_types,
  gen_qquickitem_types,
  gen_qquickrendercontrol_types,
  gen_qquickrendertarget_types,
  gen_qsgimagenode_types,
  gen_qsgninepatchnode_types,
  gen_qsgrectanglenode_types,
  gen_qsgrendererinterface_types,
  gen_qsgtexture_types

type cQQuickWindow*{.exportc: "QQuickWindow", incompleteStruct.} = object
type cQQuickWindowGraphicsStateInfo*{.exportc: "QQuickWindow__GraphicsStateInfo", incompleteStruct.} = object

proc fcQQuickWindow_metaObject(self: pointer, ): pointer {.importc: "QQuickWindow_metaObject".}
proc fcQQuickWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWindow_metacast".}
proc fcQQuickWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWindow_metacall".}
proc fcQQuickWindow_tr(s: cstring): struct_miqt_string {.importc: "QQuickWindow_tr".}
proc fcQQuickWindow_contentItem(self: pointer, ): pointer {.importc: "QQuickWindow_contentItem".}
proc fcQQuickWindow_activeFocusItem(self: pointer, ): pointer {.importc: "QQuickWindow_activeFocusItem".}
proc fcQQuickWindow_focusObject(self: pointer, ): pointer {.importc: "QQuickWindow_focusObject".}
proc fcQQuickWindow_mouseGrabberItem(self: pointer, ): pointer {.importc: "QQuickWindow_mouseGrabberItem".}
proc fcQQuickWindow_grabWindow(self: pointer, ): pointer {.importc: "QQuickWindow_grabWindow".}
proc fcQQuickWindow_setRenderTarget(self: pointer, target: pointer): void {.importc: "QQuickWindow_setRenderTarget".}
proc fcQQuickWindow_renderTarget(self: pointer, ): pointer {.importc: "QQuickWindow_renderTarget".}
proc fcQQuickWindow_graphicsStateInfo(self: pointer, ): pointer {.importc: "QQuickWindow_graphicsStateInfo".}
proc fcQQuickWindow_beginExternalCommands(self: pointer, ): void {.importc: "QQuickWindow_beginExternalCommands".}
proc fcQQuickWindow_endExternalCommands(self: pointer, ): void {.importc: "QQuickWindow_endExternalCommands".}
proc fcQQuickWindow_incubationController(self: pointer, ): pointer {.importc: "QQuickWindow_incubationController".}
proc fcQQuickWindow_accessibleRoot(self: pointer, ): pointer {.importc: "QQuickWindow_accessibleRoot".}
proc fcQQuickWindow_createTextureFromImage(self: pointer, image: pointer): pointer {.importc: "QQuickWindow_createTextureFromImage".}
proc fcQQuickWindow_createTextureFromImage2(self: pointer, image: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromImage2".}
proc fcQQuickWindow_setColor(self: pointer, color: pointer): void {.importc: "QQuickWindow_setColor".}
proc fcQQuickWindow_color(self: pointer, ): pointer {.importc: "QQuickWindow_color".}
proc fcQQuickWindow_hasDefaultAlphaBuffer(): bool {.importc: "QQuickWindow_hasDefaultAlphaBuffer".}
proc fcQQuickWindow_setDefaultAlphaBuffer(useAlpha: bool): void {.importc: "QQuickWindow_setDefaultAlphaBuffer".}
proc fcQQuickWindow_setPersistentGraphics(self: pointer, persistent: bool): void {.importc: "QQuickWindow_setPersistentGraphics".}
proc fcQQuickWindow_isPersistentGraphics(self: pointer, ): bool {.importc: "QQuickWindow_isPersistentGraphics".}
proc fcQQuickWindow_setPersistentSceneGraph(self: pointer, persistent: bool): void {.importc: "QQuickWindow_setPersistentSceneGraph".}
proc fcQQuickWindow_isPersistentSceneGraph(self: pointer, ): bool {.importc: "QQuickWindow_isPersistentSceneGraph".}
proc fcQQuickWindow_isSceneGraphInitialized(self: pointer, ): bool {.importc: "QQuickWindow_isSceneGraphInitialized".}
proc fcQQuickWindow_scheduleRenderJob(self: pointer, job: pointer, schedule: cint): void {.importc: "QQuickWindow_scheduleRenderJob".}
proc fcQQuickWindow_effectiveDevicePixelRatio(self: pointer, ): float64 {.importc: "QQuickWindow_effectiveDevicePixelRatio".}
proc fcQQuickWindow_rendererInterface(self: pointer, ): pointer {.importc: "QQuickWindow_rendererInterface".}
proc fcQQuickWindow_setGraphicsApi(api: cint): void {.importc: "QQuickWindow_setGraphicsApi".}
proc fcQQuickWindow_graphicsApi(): cint {.importc: "QQuickWindow_graphicsApi".}
proc fcQQuickWindow_setSceneGraphBackend(backend: struct_miqt_string): void {.importc: "QQuickWindow_setSceneGraphBackend".}
proc fcQQuickWindow_sceneGraphBackend(): struct_miqt_string {.importc: "QQuickWindow_sceneGraphBackend".}
proc fcQQuickWindow_setGraphicsDevice(self: pointer, device: pointer): void {.importc: "QQuickWindow_setGraphicsDevice".}
proc fcQQuickWindow_graphicsDevice(self: pointer, ): pointer {.importc: "QQuickWindow_graphicsDevice".}
proc fcQQuickWindow_setGraphicsConfiguration(self: pointer, config: pointer): void {.importc: "QQuickWindow_setGraphicsConfiguration".}
proc fcQQuickWindow_graphicsConfiguration(self: pointer, ): pointer {.importc: "QQuickWindow_graphicsConfiguration".}
proc fcQQuickWindow_createRectangleNode(self: pointer, ): pointer {.importc: "QQuickWindow_createRectangleNode".}
proc fcQQuickWindow_createImageNode(self: pointer, ): pointer {.importc: "QQuickWindow_createImageNode".}
proc fcQQuickWindow_createNinePatchNode(self: pointer, ): pointer {.importc: "QQuickWindow_createNinePatchNode".}
proc fcQQuickWindow_textRenderType(): cint {.importc: "QQuickWindow_textRenderType".}
proc fcQQuickWindow_setTextRenderType(renderType: cint): void {.importc: "QQuickWindow_setTextRenderType".}
proc fcQQuickWindow_frameSwapped(self: pointer, ): void {.importc: "QQuickWindow_frameSwapped".}
proc fcQQuickWindow_connect_frameSwapped(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_frameSwapped".}
proc fcQQuickWindow_sceneGraphInitialized(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphInitialized".}
proc fcQQuickWindow_connect_sceneGraphInitialized(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_sceneGraphInitialized".}
proc fcQQuickWindow_sceneGraphInvalidated(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphInvalidated".}
proc fcQQuickWindow_connect_sceneGraphInvalidated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_sceneGraphInvalidated".}
proc fcQQuickWindow_beforeSynchronizing(self: pointer, ): void {.importc: "QQuickWindow_beforeSynchronizing".}
proc fcQQuickWindow_connect_beforeSynchronizing(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_beforeSynchronizing".}
proc fcQQuickWindow_afterSynchronizing(self: pointer, ): void {.importc: "QQuickWindow_afterSynchronizing".}
proc fcQQuickWindow_connect_afterSynchronizing(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_afterSynchronizing".}
proc fcQQuickWindow_beforeRendering(self: pointer, ): void {.importc: "QQuickWindow_beforeRendering".}
proc fcQQuickWindow_connect_beforeRendering(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_beforeRendering".}
proc fcQQuickWindow_afterRendering(self: pointer, ): void {.importc: "QQuickWindow_afterRendering".}
proc fcQQuickWindow_connect_afterRendering(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_afterRendering".}
proc fcQQuickWindow_afterAnimating(self: pointer, ): void {.importc: "QQuickWindow_afterAnimating".}
proc fcQQuickWindow_connect_afterAnimating(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_afterAnimating".}
proc fcQQuickWindow_sceneGraphAboutToStop(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphAboutToStop".}
proc fcQQuickWindow_connect_sceneGraphAboutToStop(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_sceneGraphAboutToStop".}
proc fcQQuickWindow_colorChanged(self: pointer, param1: pointer): void {.importc: "QQuickWindow_colorChanged".}
proc fcQQuickWindow_connect_colorChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_colorChanged".}
proc fcQQuickWindow_activeFocusItemChanged(self: pointer, ): void {.importc: "QQuickWindow_activeFocusItemChanged".}
proc fcQQuickWindow_connect_activeFocusItemChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_activeFocusItemChanged".}
proc fcQQuickWindow_sceneGraphError(self: pointer, error: cint, message: struct_miqt_string): void {.importc: "QQuickWindow_sceneGraphError".}
proc fcQQuickWindow_connect_sceneGraphError(self: pointer, slot: int, callback: proc (slot: int, error: cint, message: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_sceneGraphError".}
proc fcQQuickWindow_beforeRenderPassRecording(self: pointer, ): void {.importc: "QQuickWindow_beforeRenderPassRecording".}
proc fcQQuickWindow_connect_beforeRenderPassRecording(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_beforeRenderPassRecording".}
proc fcQQuickWindow_afterRenderPassRecording(self: pointer, ): void {.importc: "QQuickWindow_afterRenderPassRecording".}
proc fcQQuickWindow_connect_afterRenderPassRecording(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_afterRenderPassRecording".}
proc fcQQuickWindow_paletteChanged(self: pointer, ): void {.importc: "QQuickWindow_paletteChanged".}
proc fcQQuickWindow_connect_paletteChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_paletteChanged".}
proc fcQQuickWindow_paletteCreated(self: pointer, ): void {.importc: "QQuickWindow_paletteCreated".}
proc fcQQuickWindow_connect_paletteCreated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_paletteCreated".}
proc fcQQuickWindow_beforeFrameBegin(self: pointer, ): void {.importc: "QQuickWindow_beforeFrameBegin".}
proc fcQQuickWindow_connect_beforeFrameBegin(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_beforeFrameBegin".}
proc fcQQuickWindow_afterFrameEnd(self: pointer, ): void {.importc: "QQuickWindow_afterFrameEnd".}
proc fcQQuickWindow_connect_afterFrameEnd(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWindow_connect_afterFrameEnd".}
proc fcQQuickWindow_update(self: pointer, ): void {.importc: "QQuickWindow_update".}
proc fcQQuickWindow_releaseResources(self: pointer, ): void {.importc: "QQuickWindow_releaseResources".}
proc fcQQuickWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWindow_tr2".}
proc fcQQuickWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWindow_tr3".}
type cQQuickWindowVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQuickWindowVTable, self: ptr cQQuickWindow) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  focusObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  accessibleRoot*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  exposeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickWindow_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickWindow_virtualbase_metaObject".}
proc fcQQuickWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWindow_virtualbase_metacast".}
proc fcQQuickWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWindow_virtualbase_metacall".}
proc fcQQuickWindow_virtualbase_focusObject(self: pointer, ): pointer {.importc: "QQuickWindow_virtualbase_focusObject".}
proc fcQQuickWindow_virtualbase_accessibleRoot(self: pointer, ): pointer {.importc: "QQuickWindow_virtualbase_accessibleRoot".}
proc fcQQuickWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_exposeEvent".}
proc fcQQuickWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_resizeEvent".}
proc fcQQuickWindow_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_showEvent".}
proc fcQQuickWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_hideEvent".}
proc fcQQuickWindow_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_closeEvent".}
proc fcQQuickWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_focusInEvent".}
proc fcQQuickWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_focusOutEvent".}
proc fcQQuickWindow_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickWindow_virtualbase_event".}
proc fcQQuickWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_keyPressEvent".}
proc fcQQuickWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_keyReleaseEvent".}
proc fcQQuickWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_mousePressEvent".}
proc fcQQuickWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_mouseReleaseEvent".}
proc fcQQuickWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_mouseMoveEvent".}
proc fcQQuickWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_wheelEvent".}
proc fcQQuickWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_tabletEvent".}
proc fcQQuickWindow_virtualbase_surfaceType(self: pointer, ): cint {.importc: "QQuickWindow_virtualbase_surfaceType".}
proc fcQQuickWindow_virtualbase_format(self: pointer, ): pointer {.importc: "QQuickWindow_virtualbase_format".}
proc fcQQuickWindow_virtualbase_size(self: pointer, ): pointer {.importc: "QQuickWindow_virtualbase_size".}
proc fcQQuickWindow_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_paintEvent".}
proc fcQQuickWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_moveEvent".}
proc fcQQuickWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void {.importc: "QQuickWindow_virtualbase_touchEvent".}
proc fcQQuickWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QQuickWindow_virtualbase_nativeEvent".}
proc fcQQuickWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickWindow_virtualbase_eventFilter".}
proc fcQQuickWindow_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickWindow_virtualbase_timerEvent".}
proc fcQQuickWindow_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickWindow_virtualbase_childEvent".}
proc fcQQuickWindow_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickWindow_virtualbase_customEvent".}
proc fcQQuickWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWindow_virtualbase_connectNotify".}
proc fcQQuickWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWindow_virtualbase_disconnectNotify".}
proc fcQQuickWindow_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QQuickWindow_protectedbase_resolveInterface".}
proc fcQQuickWindow_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickWindow_protectedbase_sender".}
proc fcQQuickWindow_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickWindow_protectedbase_senderSignalIndex".}
proc fcQQuickWindow_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickWindow_protectedbase_receivers".}
proc fcQQuickWindow_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickWindow_protectedbase_isSignalConnected".}
proc fcQQuickWindow_new(vtbl: pointer, ): ptr cQQuickWindow {.importc: "QQuickWindow_new".}
proc fcQQuickWindow_new2(vtbl: pointer, renderControl: pointer): ptr cQQuickWindow {.importc: "QQuickWindow_new2".}
proc fcQQuickWindow_new3(vtbl: pointer, parent: pointer): ptr cQQuickWindow {.importc: "QQuickWindow_new3".}
proc fcQQuickWindow_staticMetaObject(): pointer {.importc: "QQuickWindow_staticMetaObject".}

proc metaObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWindow_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickwindow_types.QQuickWindow, param1: cstring): pointer =
  fcQQuickWindow_metacast(self.h, param1)

proc metacall*(self: gen_qquickwindow_types.QQuickWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickwindow_types.QQuickWindow, s: cstring): string =
  let v_ms = fcQQuickWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc contentItem*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickWindow_contentItem(self.h), owned: false)

proc activeFocusItem*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickWindow_activeFocusItem(self.h), owned: false)

proc focusObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWindow_focusObject(self.h), owned: false)

proc mouseGrabberItem*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickWindow_mouseGrabberItem(self.h), owned: false)

proc grabWindow*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickWindow_grabWindow(self.h), owned: true)

proc setRenderTarget*(self: gen_qquickwindow_types.QQuickWindow, target: gen_qquickrendertarget_types.QQuickRenderTarget): void =
  fcQQuickWindow_setRenderTarget(self.h, target.h)

proc renderTarget*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickWindow_renderTarget(self.h), owned: true)

proc graphicsStateInfo*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickwindow_types.QQuickWindowGraphicsStateInfo =
  gen_qquickwindow_types.QQuickWindowGraphicsStateInfo(h: fcQQuickWindow_graphicsStateInfo(self.h), owned: false)

proc beginExternalCommands*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beginExternalCommands(self.h)

proc endExternalCommands*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_endExternalCommands(self.h)

proc incubationController*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qqmlincubator_types.QQmlIncubationController =
  gen_qqmlincubator_types.QQmlIncubationController(h: fcQQuickWindow_incubationController(self.h), owned: false)

proc accessibleRoot*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickWindow_accessibleRoot(self.h), owned: false)

proc createTextureFromImage*(self: gen_qquickwindow_types.QQuickWindow, image: gen_qimage_types.QImage): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromImage(self.h, image.h), owned: false)

proc createTextureFromImage*(self: gen_qquickwindow_types.QQuickWindow, image: gen_qimage_types.QImage, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQQuickWindow_createTextureFromImage2(self.h, image.h, cint(options)), owned: false)

proc setColor*(self: gen_qquickwindow_types.QQuickWindow, color: gen_qcolor_types.QColor): void =
  fcQQuickWindow_setColor(self.h, color.h)

proc color*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQQuickWindow_color(self.h), owned: true)

proc hasDefaultAlphaBuffer*(_: type gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_hasDefaultAlphaBuffer()

proc setDefaultAlphaBuffer*(_: type gen_qquickwindow_types.QQuickWindow, useAlpha: bool): void =
  fcQQuickWindow_setDefaultAlphaBuffer(useAlpha)

proc setPersistentGraphics*(self: gen_qquickwindow_types.QQuickWindow, persistent: bool): void =
  fcQQuickWindow_setPersistentGraphics(self.h, persistent)

proc isPersistentGraphics*(self: gen_qquickwindow_types.QQuickWindow, ): bool =
  fcQQuickWindow_isPersistentGraphics(self.h)

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
  gen_qsgrendererinterface_types.QSGRendererInterface(h: fcQQuickWindow_rendererInterface(self.h), owned: false)

proc setGraphicsApi*(_: type gen_qquickwindow_types.QQuickWindow, api: cint): void =
  fcQQuickWindow_setGraphicsApi(cint(api))

proc graphicsApi*(_: type gen_qquickwindow_types.QQuickWindow, ): cint =
  cint(fcQQuickWindow_graphicsApi())

proc setSceneGraphBackend*(_: type gen_qquickwindow_types.QQuickWindow, backend: string): void =
  fcQQuickWindow_setSceneGraphBackend(struct_miqt_string(data: backend, len: csize_t(len(backend))))

proc sceneGraphBackend*(_: type gen_qquickwindow_types.QQuickWindow, ): string =
  let v_ms = fcQQuickWindow_sceneGraphBackend()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setGraphicsDevice*(self: gen_qquickwindow_types.QQuickWindow, device: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): void =
  fcQQuickWindow_setGraphicsDevice(self.h, device.h)

proc graphicsDevice*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickWindow_graphicsDevice(self.h), owned: true)

proc setGraphicsConfiguration*(self: gen_qquickwindow_types.QQuickWindow, config: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): void =
  fcQQuickWindow_setGraphicsConfiguration(self.h, config.h)

proc graphicsConfiguration*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickWindow_graphicsConfiguration(self.h), owned: true)

proc createRectangleNode*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgrectanglenode_types.QSGRectangleNode =
  gen_qsgrectanglenode_types.QSGRectangleNode(h: fcQQuickWindow_createRectangleNode(self.h), owned: false)

proc createImageNode*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgimagenode_types.QSGImageNode =
  gen_qsgimagenode_types.QSGImageNode(h: fcQQuickWindow_createImageNode(self.h), owned: false)

proc createNinePatchNode*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsgninepatchnode_types.QSGNinePatchNode =
  gen_qsgninepatchnode_types.QSGNinePatchNode(h: fcQQuickWindow_createNinePatchNode(self.h), owned: false)

proc textRenderType*(_: type gen_qquickwindow_types.QQuickWindow, ): cint =
  cint(fcQQuickWindow_textRenderType())

proc setTextRenderType*(_: type gen_qquickwindow_types.QQuickWindow, renderType: cint): void =
  fcQQuickWindow_setTextRenderType(cint(renderType))

proc frameSwapped*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_frameSwapped(self.h)

type QQuickWindowframeSwappedSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_frameSwapped(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowframeSwappedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_frameSwapped_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowframeSwappedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onframeSwapped*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowframeSwappedSlot) =
  var tmp = new QQuickWindowframeSwappedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_frameSwapped(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_frameSwapped, miqt_exec_callback_cQQuickWindow_frameSwapped_release)

proc sceneGraphInitialized*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_sceneGraphInitialized(self.h)

type QQuickWindowsceneGraphInitializedSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_sceneGraphInitialized(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphInitializedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_sceneGraphInitialized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowsceneGraphInitializedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsceneGraphInitialized*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphInitializedSlot) =
  var tmp = new QQuickWindowsceneGraphInitializedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphInitialized(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_sceneGraphInitialized, miqt_exec_callback_cQQuickWindow_sceneGraphInitialized_release)

proc sceneGraphInvalidated*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_sceneGraphInvalidated(self.h)

type QQuickWindowsceneGraphInvalidatedSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_sceneGraphInvalidated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphInvalidatedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_sceneGraphInvalidated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowsceneGraphInvalidatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsceneGraphInvalidated*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphInvalidatedSlot) =
  var tmp = new QQuickWindowsceneGraphInvalidatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphInvalidated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_sceneGraphInvalidated, miqt_exec_callback_cQQuickWindow_sceneGraphInvalidated_release)

proc beforeSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeSynchronizing(self.h)

type QQuickWindowbeforeSynchronizingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_beforeSynchronizing(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowbeforeSynchronizingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_beforeSynchronizing_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowbeforeSynchronizingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbeforeSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeSynchronizingSlot) =
  var tmp = new QQuickWindowbeforeSynchronizingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeSynchronizing(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_beforeSynchronizing, miqt_exec_callback_cQQuickWindow_beforeSynchronizing_release)

proc afterSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterSynchronizing(self.h)

type QQuickWindowafterSynchronizingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_afterSynchronizing(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowafterSynchronizingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_afterSynchronizing_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowafterSynchronizingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onafterSynchronizing*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterSynchronizingSlot) =
  var tmp = new QQuickWindowafterSynchronizingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterSynchronizing(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_afterSynchronizing, miqt_exec_callback_cQQuickWindow_afterSynchronizing_release)

proc beforeRendering*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeRendering(self.h)

type QQuickWindowbeforeRenderingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_beforeRendering(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowbeforeRenderingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_beforeRendering_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowbeforeRenderingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbeforeRendering*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeRenderingSlot) =
  var tmp = new QQuickWindowbeforeRenderingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeRendering(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_beforeRendering, miqt_exec_callback_cQQuickWindow_beforeRendering_release)

proc afterRendering*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterRendering(self.h)

type QQuickWindowafterRenderingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_afterRendering(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowafterRenderingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_afterRendering_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowafterRenderingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onafterRendering*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterRenderingSlot) =
  var tmp = new QQuickWindowafterRenderingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterRendering(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_afterRendering, miqt_exec_callback_cQQuickWindow_afterRendering_release)

proc afterAnimating*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterAnimating(self.h)

type QQuickWindowafterAnimatingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_afterAnimating(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowafterAnimatingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_afterAnimating_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowafterAnimatingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onafterAnimating*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterAnimatingSlot) =
  var tmp = new QQuickWindowafterAnimatingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterAnimating(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_afterAnimating, miqt_exec_callback_cQQuickWindow_afterAnimating_release)

proc sceneGraphAboutToStop*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_sceneGraphAboutToStop(self.h)

type QQuickWindowsceneGraphAboutToStopSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_sceneGraphAboutToStop(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphAboutToStopSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_sceneGraphAboutToStop_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowsceneGraphAboutToStopSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsceneGraphAboutToStop*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphAboutToStopSlot) =
  var tmp = new QQuickWindowsceneGraphAboutToStopSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphAboutToStop(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_sceneGraphAboutToStop, miqt_exec_callback_cQQuickWindow_sceneGraphAboutToStop_release)

proc colorChanged*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qcolor_types.QColor): void =
  fcQQuickWindow_colorChanged(self.h, param1.h)

type QQuickWindowcolorChangedSlot* = proc(param1: gen_qcolor_types.QColor)
proc miqt_exec_callback_cQQuickWindow_colorChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: param1, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWindow_colorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowcolorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorChanged*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowcolorChangedSlot) =
  var tmp = new QQuickWindowcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_colorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_colorChanged, miqt_exec_callback_cQQuickWindow_colorChanged_release)

proc activeFocusItemChanged*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_activeFocusItemChanged(self.h)

type QQuickWindowactiveFocusItemChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_activeFocusItemChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowactiveFocusItemChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_activeFocusItemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowactiveFocusItemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveFocusItemChanged*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowactiveFocusItemChangedSlot) =
  var tmp = new QQuickWindowactiveFocusItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_activeFocusItemChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_activeFocusItemChanged, miqt_exec_callback_cQQuickWindow_activeFocusItemChanged_release)

proc sceneGraphError*(self: gen_qquickwindow_types.QQuickWindow, error: cint, message: string): void =
  fcQQuickWindow_sceneGraphError(self.h, cint(error), struct_miqt_string(data: message, len: csize_t(len(message))))

type QQuickWindowsceneGraphErrorSlot* = proc(error: cint, message: string)
proc miqt_exec_callback_cQQuickWindow_sceneGraphError(slot: int, error: cint, message: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowsceneGraphErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval2 = vmessagex_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQQuickWindow_sceneGraphError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowsceneGraphErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsceneGraphError*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowsceneGraphErrorSlot) =
  var tmp = new QQuickWindowsceneGraphErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_sceneGraphError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_sceneGraphError, miqt_exec_callback_cQQuickWindow_sceneGraphError_release)

proc beforeRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeRenderPassRecording(self.h)

type QQuickWindowbeforeRenderPassRecordingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_beforeRenderPassRecording(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowbeforeRenderPassRecordingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_beforeRenderPassRecording_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowbeforeRenderPassRecordingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbeforeRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeRenderPassRecordingSlot) =
  var tmp = new QQuickWindowbeforeRenderPassRecordingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeRenderPassRecording(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_beforeRenderPassRecording, miqt_exec_callback_cQQuickWindow_beforeRenderPassRecording_release)

proc afterRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterRenderPassRecording(self.h)

type QQuickWindowafterRenderPassRecordingSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_afterRenderPassRecording(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowafterRenderPassRecordingSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_afterRenderPassRecording_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowafterRenderPassRecordingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onafterRenderPassRecording*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterRenderPassRecordingSlot) =
  var tmp = new QQuickWindowafterRenderPassRecordingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterRenderPassRecording(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_afterRenderPassRecording, miqt_exec_callback_cQQuickWindow_afterRenderPassRecording_release)

proc paletteChanged*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_paletteChanged(self.h)

type QQuickWindowpaletteChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_paletteChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowpaletteChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_paletteChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowpaletteChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpaletteChanged*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowpaletteChangedSlot) =
  var tmp = new QQuickWindowpaletteChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_paletteChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_paletteChanged, miqt_exec_callback_cQQuickWindow_paletteChanged_release)

proc paletteCreated*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_paletteCreated(self.h)

type QQuickWindowpaletteCreatedSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_paletteCreated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowpaletteCreatedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_paletteCreated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowpaletteCreatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpaletteCreated*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowpaletteCreatedSlot) =
  var tmp = new QQuickWindowpaletteCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_paletteCreated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_paletteCreated, miqt_exec_callback_cQQuickWindow_paletteCreated_release)

proc beforeFrameBegin*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_beforeFrameBegin(self.h)

type QQuickWindowbeforeFrameBeginSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_beforeFrameBegin(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowbeforeFrameBeginSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_beforeFrameBegin_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowbeforeFrameBeginSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbeforeFrameBegin*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowbeforeFrameBeginSlot) =
  var tmp = new QQuickWindowbeforeFrameBeginSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_beforeFrameBegin(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_beforeFrameBegin, miqt_exec_callback_cQQuickWindow_beforeFrameBegin_release)

proc afterFrameEnd*(self: gen_qquickwindow_types.QQuickWindow, ): void =
  fcQQuickWindow_afterFrameEnd(self.h)

type QQuickWindowafterFrameEndSlot* = proc()
proc miqt_exec_callback_cQQuickWindow_afterFrameEnd(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWindowafterFrameEndSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWindow_afterFrameEnd_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWindowafterFrameEndSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onafterFrameEnd*(self: gen_qquickwindow_types.QQuickWindow, slot: QQuickWindowafterFrameEndSlot) =
  var tmp = new QQuickWindowafterFrameEndSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_connect_afterFrameEnd(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWindow_afterFrameEnd, miqt_exec_callback_cQQuickWindow_afterFrameEnd_release)

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

type QQuickWindowmetaObjectProc* = proc(self: QQuickWindow): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickWindowmetacastProc* = proc(self: QQuickWindow, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickWindowmetacallProc* = proc(self: QQuickWindow, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickWindowfocusObjectProc* = proc(self: QQuickWindow): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QQuickWindowaccessibleRootProc* = proc(self: QQuickWindow): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QQuickWindowexposeEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QExposeEvent): void {.raises: [], gcsafe.}
type QQuickWindowresizeEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QQuickWindowshowEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QQuickWindowhideEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QQuickWindowcloseEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QQuickWindowfocusInEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickWindowfocusOutEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickWindoweventProc* = proc(self: QQuickWindow, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickWindowkeyPressEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickWindowkeyReleaseEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickWindowmousePressEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickWindowmouseReleaseEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickWindowmouseDoubleClickEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickWindowmouseMoveEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickWindowwheelEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickWindowtabletEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QQuickWindowsurfaceTypeProc* = proc(self: QQuickWindow): cint {.raises: [], gcsafe.}
type QQuickWindowformatProc* = proc(self: QQuickWindow): gen_qsurfaceformat_types.QSurfaceFormat {.raises: [], gcsafe.}
type QQuickWindowsizeProc* = proc(self: QQuickWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QQuickWindowpaintEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QQuickWindowmoveEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QQuickWindowtouchEventProc* = proc(self: QQuickWindow, param1: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickWindownativeEventProc* = proc(self: QQuickWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QQuickWindoweventFilterProc* = proc(self: QQuickWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickWindowtimerEventProc* = proc(self: QQuickWindow, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickWindowchildEventProc* = proc(self: QQuickWindow, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickWindowcustomEventProc* = proc(self: QQuickWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickWindowconnectNotifyProc* = proc(self: QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickWindowdisconnectNotifyProc* = proc(self: QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickWindowVTable* {.inheritable, pure.} = object
  vtbl: cQQuickWindowVTable
  metaObject*: QQuickWindowmetaObjectProc
  metacast*: QQuickWindowmetacastProc
  metacall*: QQuickWindowmetacallProc
  focusObject*: QQuickWindowfocusObjectProc
  accessibleRoot*: QQuickWindowaccessibleRootProc
  exposeEvent*: QQuickWindowexposeEventProc
  resizeEvent*: QQuickWindowresizeEventProc
  showEvent*: QQuickWindowshowEventProc
  hideEvent*: QQuickWindowhideEventProc
  closeEvent*: QQuickWindowcloseEventProc
  focusInEvent*: QQuickWindowfocusInEventProc
  focusOutEvent*: QQuickWindowfocusOutEventProc
  event*: QQuickWindoweventProc
  keyPressEvent*: QQuickWindowkeyPressEventProc
  keyReleaseEvent*: QQuickWindowkeyReleaseEventProc
  mousePressEvent*: QQuickWindowmousePressEventProc
  mouseReleaseEvent*: QQuickWindowmouseReleaseEventProc
  mouseDoubleClickEvent*: QQuickWindowmouseDoubleClickEventProc
  mouseMoveEvent*: QQuickWindowmouseMoveEventProc
  wheelEvent*: QQuickWindowwheelEventProc
  tabletEvent*: QQuickWindowtabletEventProc
  surfaceType*: QQuickWindowsurfaceTypeProc
  format*: QQuickWindowformatProc
  size*: QQuickWindowsizeProc
  paintEvent*: QQuickWindowpaintEventProc
  moveEvent*: QQuickWindowmoveEventProc
  touchEvent*: QQuickWindowtouchEventProc
  nativeEvent*: QQuickWindownativeEventProc
  eventFilter*: QQuickWindoweventFilterProc
  timerEvent*: QQuickWindowtimerEventProc
  childEvent*: QQuickWindowchildEventProc
  customEvent*: QQuickWindowcustomEventProc
  connectNotify*: QQuickWindowconnectNotifyProc
  disconnectNotify*: QQuickWindowdisconnectNotifyProc
proc QQuickWindowmetaObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWindow_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickWindow_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickWindowmetacast*(self: gen_qquickwindow_types.QQuickWindow, param1: cstring): pointer =
  fcQQuickWindow_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickWindow_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickWindowmetacall*(self: gen_qquickwindow_types.QQuickWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickWindow_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickWindowfocusObject*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWindow_virtualbase_focusObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickWindow_focusObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var virtualReturn = vtbl[].focusObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickWindowaccessibleRoot*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickWindow_virtualbase_accessibleRoot(self.h), owned: false)

proc miqt_exec_callback_cQQuickWindow_accessibleRoot(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var virtualReturn = vtbl[].accessibleRoot(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickWindowexposeEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QExposeEvent): void =
  fcQQuickWindow_virtualbase_exposeEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_exposeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  vtbl[].exposeEvent(self, slotval1)

proc QQuickWindowresizeEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QResizeEvent): void =
  fcQQuickWindow_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QQuickWindowshowEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QShowEvent): void =
  fcQQuickWindow_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QQuickWindowhideEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QHideEvent): void =
  fcQQuickWindow_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QQuickWindowcloseEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QCloseEvent): void =
  fcQQuickWindow_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QQuickWindowfocusInEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickWindow_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickWindowfocusOutEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickWindow_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickWindowevent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWindow_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickWindowkeyPressEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQQuickWindow_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickWindowkeyReleaseEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQQuickWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickWindowmousePressEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickWindow_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickWindowmouseReleaseEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickWindowmouseDoubleClickEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickWindowmouseMoveEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQQuickWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickWindowwheelEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QWheelEvent): void =
  fcQQuickWindow_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickWindowtabletEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QTabletEvent): void =
  fcQQuickWindow_virtualbase_tabletEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_tabletEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QQuickWindowsurfaceType*(self: gen_qquickwindow_types.QQuickWindow, ): cint =
  cint(fcQQuickWindow_virtualbase_surfaceType(self.h))

proc miqt_exec_callback_cQQuickWindow_surfaceType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc QQuickWindowformat*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQQuickWindow_virtualbase_format(self.h), owned: true)

proc miqt_exec_callback_cQQuickWindow_format(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickWindowsize*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickWindow_virtualbase_size(self.h), owned: true)

proc miqt_exec_callback_cQQuickWindow_size(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickWindowpaintEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QPaintEvent): void =
  fcQQuickWindow_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QQuickWindowmoveEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QMoveEvent): void =
  fcQQuickWindow_virtualbase_moveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_moveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QQuickWindowtouchEvent*(self: gen_qquickwindow_types.QQuickWindow, param1: gen_qevent_types.QTouchEvent): void =
  fcQQuickWindow_virtualbase_touchEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickWindow_touchEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc QQuickWindownativeEvent*(self: gen_qquickwindow_types.QQuickWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQQuickWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQQuickWindow_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickWindoweventFilter*(self: gen_qquickwindow_types.QQuickWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickWindow_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickWindowtimerEvent*(self: gen_qquickwindow_types.QQuickWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickWindow_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWindow_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickWindowchildEvent*(self: gen_qquickwindow_types.QQuickWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickWindow_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWindow_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickWindowcustomEvent*(self: gen_qquickwindow_types.QQuickWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickWindow_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWindow_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickWindowconnectNotify*(self: gen_qquickwindow_types.QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWindow_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickWindow_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickWindowdisconnectNotify*(self: gen_qquickwindow_types.QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWindow_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickWindow_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWindowVTable](vtbl)
  let self = QQuickWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickWindow* {.inheritable.} = ref object of QQuickWindow
  vtbl*: cQQuickWindowVTable
method metaObject*(self: VirtualQQuickWindow, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickWindowmetaObject(self[])
proc miqt_exec_method_cQQuickWindow_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickWindow, param1: cstring): pointer {.base.} =
  QQuickWindowmetacast(self[], param1)
proc miqt_exec_method_cQQuickWindow_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickWindow, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickWindowmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQuickWindow_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method focusObject*(self: VirtualQQuickWindow, ): gen_qobject_types.QObject {.base.} =
  QQuickWindowfocusObject(self[])
proc miqt_exec_method_cQQuickWindow_focusObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var virtualReturn = vtbl.focusObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method accessibleRoot*(self: VirtualQQuickWindow, ): gen_qaccessible_types.QAccessibleInterface {.base.} =
  QQuickWindowaccessibleRoot(self[])
proc miqt_exec_method_cQQuickWindow_accessibleRoot(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var virtualReturn = vtbl.accessibleRoot()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method exposeEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QExposeEvent): void {.base.} =
  QQuickWindowexposeEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_exposeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  vtbl.exposeEvent(slotval1)

method resizeEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QQuickWindowresizeEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_resizeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl.resizeEvent(slotval1)

method showEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QQuickWindowshowEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_showEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QQuickWindowhideEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_hideEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl.hideEvent(slotval1)

method closeEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QQuickWindowcloseEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_closeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl.closeEvent(slotval1)

method focusInEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickWindowfocusInEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_focusInEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickWindowfocusOutEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_focusOutEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusOutEvent(slotval1)

method event*(self: VirtualQQuickWindow, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickWindowevent(self[], param1)
proc miqt_exec_method_cQQuickWindow_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickWindowkeyPressEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickWindowkeyReleaseEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_keyReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickWindowmousePressEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_mousePressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickWindowmouseReleaseEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_mouseReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickWindowmouseDoubleClickEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickWindowmouseMoveEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_mouseMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickWindowwheelEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_wheelEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl.wheelEvent(slotval1)

method tabletEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QTabletEvent): void {.base.} =
  QQuickWindowtabletEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_tabletEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  vtbl.tabletEvent(slotval1)

method surfaceType*(self: VirtualQQuickWindow, ): cint {.base.} =
  QQuickWindowsurfaceType(self[])
proc miqt_exec_method_cQQuickWindow_surfaceType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var virtualReturn = vtbl.surfaceType()
  cint(virtualReturn)

method format*(self: VirtualQQuickWindow, ): gen_qsurfaceformat_types.QSurfaceFormat {.base.} =
  QQuickWindowformat(self[])
proc miqt_exec_method_cQQuickWindow_format(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var virtualReturn = vtbl.format()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method size*(self: VirtualQQuickWindow, ): gen_qsize_types.QSize {.base.} =
  QQuickWindowsize(self[])
proc miqt_exec_method_cQQuickWindow_size(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var virtualReturn = vtbl.size()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method paintEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QQuickWindowpaintEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method moveEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QMoveEvent): void {.base.} =
  QQuickWindowmoveEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_moveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl.moveEvent(slotval1)

method touchEvent*(self: VirtualQQuickWindow, param1: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickWindowtouchEvent(self[], param1)
proc miqt_exec_method_cQQuickWindow_touchEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  vtbl.touchEvent(slotval1)

method nativeEvent*(self: VirtualQQuickWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QQuickWindownativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQQuickWindow_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method eventFilter*(self: VirtualQQuickWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickWindoweventFilter(self[], watched, event)
proc miqt_exec_method_cQQuickWindow_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickWindow, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickWindowtimerEvent(self[], event)
proc miqt_exec_method_cQQuickWindow_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickWindow, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickWindowchildEvent(self[], event)
proc miqt_exec_method_cQQuickWindow_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQuickWindow, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickWindowcustomEvent(self[], event)
proc miqt_exec_method_cQQuickWindow_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickWindowconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickWindow_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickWindowdisconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickWindow_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc resolveInterface*(self: gen_qquickwindow_types.QQuickWindow, name: cstring, revision: cint): pointer =
  fcQQuickWindow_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qquickwindow_types.QQuickWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWindow_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickwindow_types.QQuickWindow, ): cint =
  fcQQuickWindow_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickwindow_types.QQuickWindow, signal: cstring): cint =
  fcQQuickWindow_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickwindow_types.QQuickWindow, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickWindow_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickwindow_types.QQuickWindow,
    vtbl: ref QQuickWindowVTable = nil): gen_qquickwindow_types.QQuickWindow =
  let vtbl = if vtbl == nil: new QQuickWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickWindowVTable, _: ptr cQQuickWindow) {.cdecl.} =
    let vtbl = cast[ref QQuickWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWindow_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWindow_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWindow_metacall
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickWindow_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickWindow_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickWindow_exposeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickWindow_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickWindow_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickWindow_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQQuickWindow_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickWindow_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickWindow_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWindow_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickWindow_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickWindow_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickWindow_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickWindow_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickWindow_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickWindow_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickWindow_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickWindow_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickWindow_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickWindow_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickWindow_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQQuickWindow_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickWindow_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickWindow_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickWindow_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWindow_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWindow_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWindow_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWindow_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWindow_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWindow_disconnectNotify
  gen_qquickwindow_types.QQuickWindow(h: fcQQuickWindow_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qquickwindow_types.QQuickWindow,
    renderControl: gen_qquickrendercontrol_types.QQuickRenderControl,
    vtbl: ref QQuickWindowVTable = nil): gen_qquickwindow_types.QQuickWindow =
  let vtbl = if vtbl == nil: new QQuickWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickWindowVTable, _: ptr cQQuickWindow) {.cdecl.} =
    let vtbl = cast[ref QQuickWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWindow_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWindow_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWindow_metacall
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickWindow_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickWindow_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickWindow_exposeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickWindow_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickWindow_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickWindow_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQQuickWindow_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickWindow_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickWindow_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWindow_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickWindow_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickWindow_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickWindow_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickWindow_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickWindow_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickWindow_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickWindow_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickWindow_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickWindow_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickWindow_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickWindow_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQQuickWindow_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickWindow_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickWindow_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickWindow_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWindow_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWindow_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWindow_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWindow_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWindow_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWindow_disconnectNotify
  gen_qquickwindow_types.QQuickWindow(h: fcQQuickWindow_new2(addr(vtbl[].vtbl), renderControl.h), owned: true)

proc create*(T: type gen_qquickwindow_types.QQuickWindow,
    parent: gen_qwindow_types.QWindow,
    vtbl: ref QQuickWindowVTable = nil): gen_qquickwindow_types.QQuickWindow =
  let vtbl = if vtbl == nil: new QQuickWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickWindowVTable, _: ptr cQQuickWindow) {.cdecl.} =
    let vtbl = cast[ref QQuickWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWindow_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWindow_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWindow_metacall
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQQuickWindow_focusObject
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQQuickWindow_accessibleRoot
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQQuickWindow_exposeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQQuickWindow_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQQuickWindow_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQQuickWindow_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQQuickWindow_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickWindow_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickWindow_focusOutEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWindow_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickWindow_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickWindow_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickWindow_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickWindow_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickWindow_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickWindow_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickWindow_wheelEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQQuickWindow_tabletEvent
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQQuickWindow_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQQuickWindow_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQQuickWindow_size
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQQuickWindow_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQQuickWindow_moveEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickWindow_touchEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQQuickWindow_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWindow_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWindow_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWindow_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWindow_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWindow_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWindow_disconnectNotify
  gen_qquickwindow_types.QQuickWindow(h: fcQQuickWindow_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qquickwindow_types.QQuickWindow,
    vtbl: VirtualQQuickWindow) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickWindowVTable, _: ptr cQQuickWindow) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickWindow()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickWindow_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickWindow_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickWindow_metacall
  vtbl[].vtbl.focusObject = miqt_exec_method_cQQuickWindow_focusObject
  vtbl[].vtbl.accessibleRoot = miqt_exec_method_cQQuickWindow_accessibleRoot
  vtbl[].vtbl.exposeEvent = miqt_exec_method_cQQuickWindow_exposeEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQQuickWindow_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQQuickWindow_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQQuickWindow_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQQuickWindow_closeEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQQuickWindow_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQQuickWindow_focusOutEvent
  vtbl[].vtbl.event = miqt_exec_method_cQQuickWindow_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQQuickWindow_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQQuickWindow_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQQuickWindow_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQQuickWindow_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQQuickWindow_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQQuickWindow_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQQuickWindow_wheelEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQQuickWindow_tabletEvent
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQQuickWindow_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQQuickWindow_format
  vtbl[].vtbl.size = miqt_exec_method_cQQuickWindow_size
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQQuickWindow_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQQuickWindow_moveEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQQuickWindow_touchEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQQuickWindow_nativeEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickWindow_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickWindow_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickWindow_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickWindow_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickWindow_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickWindow_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickWindow_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qquickwindow_types.QQuickWindow,
    renderControl: gen_qquickrendercontrol_types.QQuickRenderControl,
    vtbl: VirtualQQuickWindow) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickWindowVTable, _: ptr cQQuickWindow) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickWindow()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickWindow_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickWindow_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickWindow_metacall
  vtbl[].vtbl.focusObject = miqt_exec_method_cQQuickWindow_focusObject
  vtbl[].vtbl.accessibleRoot = miqt_exec_method_cQQuickWindow_accessibleRoot
  vtbl[].vtbl.exposeEvent = miqt_exec_method_cQQuickWindow_exposeEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQQuickWindow_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQQuickWindow_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQQuickWindow_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQQuickWindow_closeEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQQuickWindow_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQQuickWindow_focusOutEvent
  vtbl[].vtbl.event = miqt_exec_method_cQQuickWindow_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQQuickWindow_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQQuickWindow_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQQuickWindow_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQQuickWindow_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQQuickWindow_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQQuickWindow_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQQuickWindow_wheelEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQQuickWindow_tabletEvent
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQQuickWindow_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQQuickWindow_format
  vtbl[].vtbl.size = miqt_exec_method_cQQuickWindow_size
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQQuickWindow_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQQuickWindow_moveEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQQuickWindow_touchEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQQuickWindow_nativeEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickWindow_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickWindow_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickWindow_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickWindow_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickWindow_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickWindow_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickWindow_new2(addr(vtbl[].vtbl), renderControl.h)
  vtbl[].owned = true

proc create*(T: type gen_qquickwindow_types.QQuickWindow,
    parent: gen_qwindow_types.QWindow,
    vtbl: VirtualQQuickWindow) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickWindowVTable, _: ptr cQQuickWindow) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickWindow()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickWindow, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickWindow_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickWindow_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickWindow_metacall
  vtbl[].vtbl.focusObject = miqt_exec_method_cQQuickWindow_focusObject
  vtbl[].vtbl.accessibleRoot = miqt_exec_method_cQQuickWindow_accessibleRoot
  vtbl[].vtbl.exposeEvent = miqt_exec_method_cQQuickWindow_exposeEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQQuickWindow_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQQuickWindow_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQQuickWindow_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQQuickWindow_closeEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQQuickWindow_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQQuickWindow_focusOutEvent
  vtbl[].vtbl.event = miqt_exec_method_cQQuickWindow_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQQuickWindow_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQQuickWindow_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQQuickWindow_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQQuickWindow_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQQuickWindow_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQQuickWindow_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQQuickWindow_wheelEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQQuickWindow_tabletEvent
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQQuickWindow_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQQuickWindow_format
  vtbl[].vtbl.size = miqt_exec_method_cQQuickWindow_size
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQQuickWindow_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQQuickWindow_moveEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQQuickWindow_touchEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQQuickWindow_nativeEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickWindow_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickWindow_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickWindow_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickWindow_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickWindow_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickWindow_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickWindow_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qquickwindow_types.QQuickWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWindow_staticMetaObject())
