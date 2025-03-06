import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgengine.cpp", cflags).}


type QSGEngineCreateTextureOptionEnum* = distinct cint
template TextureHasAlphaChannel*(_: type QSGEngineCreateTextureOptionEnum): untyped = 1
template TextureOwnsGLTexture*(_: type QSGEngineCreateTextureOptionEnum): untyped = 4
template TextureCanUseAtlas*(_: type QSGEngineCreateTextureOptionEnum): untyped = 8
template TextureIsOpaque*(_: type QSGEngineCreateTextureOptionEnum): untyped = 16


import ./gen_qsgengine_types
export gen_qsgengine_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qimage_types,
  ./gen_qsgabstractrenderer_types,
  ./gen_qsgimagenode_types,
  ./gen_qsgninepatchnode_types,
  ./gen_qsgrectanglenode_types,
  ./gen_qsgrendererinterface_types,
  ./gen_qsgtexture_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qimage_types,
  gen_qsgabstractrenderer_types,
  gen_qsgimagenode_types,
  gen_qsgninepatchnode_types,
  gen_qsgrectanglenode_types,
  gen_qsgrendererinterface_types,
  gen_qsgtexture_types

type cQSGEngine*{.exportc: "QSGEngine", incompleteStruct.} = object

proc fcQSGEngine_metaObject(self: pointer, ): pointer {.importc: "QSGEngine_metaObject".}
proc fcQSGEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGEngine_metacast".}
proc fcQSGEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGEngine_metacall".}
proc fcQSGEngine_tr(s: cstring): struct_miqt_string {.importc: "QSGEngine_tr".}
proc fcQSGEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGEngine_trUtf8".}
proc fcQSGEngine_invalidate(self: pointer, ): void {.importc: "QSGEngine_invalidate".}
proc fcQSGEngine_createRenderer(self: pointer, ): pointer {.importc: "QSGEngine_createRenderer".}
proc fcQSGEngine_createTextureFromImage(self: pointer, image: pointer): pointer {.importc: "QSGEngine_createTextureFromImage".}
proc fcQSGEngine_createTextureFromId(self: pointer, id: cuint, size: pointer): pointer {.importc: "QSGEngine_createTextureFromId".}
proc fcQSGEngine_rendererInterface(self: pointer, ): pointer {.importc: "QSGEngine_rendererInterface".}
proc fcQSGEngine_createRectangleNode(self: pointer, ): pointer {.importc: "QSGEngine_createRectangleNode".}
proc fcQSGEngine_createImageNode(self: pointer, ): pointer {.importc: "QSGEngine_createImageNode".}
proc fcQSGEngine_createNinePatchNode(self: pointer, ): pointer {.importc: "QSGEngine_createNinePatchNode".}
proc fcQSGEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGEngine_tr2".}
proc fcQSGEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGEngine_tr3".}
proc fcQSGEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGEngine_trUtf82".}
proc fcQSGEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGEngine_trUtf83".}
proc fcQSGEngine_createTextureFromImage2(self: pointer, image: pointer, options: cint): pointer {.importc: "QSGEngine_createTextureFromImage2".}
proc fcQSGEngine_createTextureFromId3(self: pointer, id: cuint, size: pointer, options: cint): pointer {.importc: "QSGEngine_createTextureFromId3".}
type cQSGEngineVTable = object
  destructor*: proc(vtbl: ptr cQSGEngineVTable, self: ptr cQSGEngine) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGEngine_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSGEngine_virtualbase_metaObject".}
proc fcQSGEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGEngine_virtualbase_metacast".}
proc fcQSGEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGEngine_virtualbase_metacall".}
proc fcQSGEngine_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSGEngine_virtualbase_event".}
proc fcQSGEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSGEngine_virtualbase_eventFilter".}
proc fcQSGEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSGEngine_virtualbase_timerEvent".}
proc fcQSGEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSGEngine_virtualbase_childEvent".}
proc fcQSGEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSGEngine_virtualbase_customEvent".}
proc fcQSGEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSGEngine_virtualbase_connectNotify".}
proc fcQSGEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSGEngine_virtualbase_disconnectNotify".}
proc fcQSGEngine_protectedbase_sender(self: pointer, ): pointer {.importc: "QSGEngine_protectedbase_sender".}
proc fcQSGEngine_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSGEngine_protectedbase_senderSignalIndex".}
proc fcQSGEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSGEngine_protectedbase_receivers".}
proc fcQSGEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSGEngine_protectedbase_isSignalConnected".}
proc fcQSGEngine_new(vtbl: pointer, ): ptr cQSGEngine {.importc: "QSGEngine_new".}
proc fcQSGEngine_new2(vtbl: pointer, parent: pointer): ptr cQSGEngine {.importc: "QSGEngine_new2".}
proc fcQSGEngine_staticMetaObject(): pointer {.importc: "QSGEngine_staticMetaObject".}
proc fcQSGEngine_delete(self: pointer) {.importc: "QSGEngine_delete".}

proc metaObject*(self: gen_qsgengine_types.QSGEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_metaObject(self.h))

proc metacast*(self: gen_qsgengine_types.QSGEngine, param1: cstring): pointer =
  fcQSGEngine_metacast(self.h, param1)

proc metacall*(self: gen_qsgengine_types.QSGEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgengine_types.QSGEngine, s: cstring): string =
  let v_ms = fcQSGEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgengine_types.QSGEngine, s: cstring): string =
  let v_ms = fcQSGEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc invalidate*(self: gen_qsgengine_types.QSGEngine, ): void =
  fcQSGEngine_invalidate(self.h)

proc createRenderer*(self: gen_qsgengine_types.QSGEngine, ): gen_qsgabstractrenderer_types.QSGAbstractRenderer =
  gen_qsgabstractrenderer_types.QSGAbstractRenderer(h: fcQSGEngine_createRenderer(self.h))

proc createTextureFromImage*(self: gen_qsgengine_types.QSGEngine, image: gen_qimage_types.QImage): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromImage(self.h, image.h))

proc createTextureFromId*(self: gen_qsgengine_types.QSGEngine, id: cuint, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromId(self.h, id, size.h))

proc rendererInterface*(self: gen_qsgengine_types.QSGEngine, ): gen_qsgrendererinterface_types.QSGRendererInterface =
  gen_qsgrendererinterface_types.QSGRendererInterface(h: fcQSGEngine_rendererInterface(self.h))

proc createRectangleNode*(self: gen_qsgengine_types.QSGEngine, ): gen_qsgrectanglenode_types.QSGRectangleNode =
  gen_qsgrectanglenode_types.QSGRectangleNode(h: fcQSGEngine_createRectangleNode(self.h))

proc createImageNode*(self: gen_qsgengine_types.QSGEngine, ): gen_qsgimagenode_types.QSGImageNode =
  gen_qsgimagenode_types.QSGImageNode(h: fcQSGEngine_createImageNode(self.h))

proc createNinePatchNode*(self: gen_qsgengine_types.QSGEngine, ): gen_qsgninepatchnode_types.QSGNinePatchNode =
  gen_qsgninepatchnode_types.QSGNinePatchNode(h: fcQSGEngine_createNinePatchNode(self.h))

proc tr*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring): string =
  let v_ms = fcQSGEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring): string =
  let v_ms = fcQSGEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTextureFromImage*(self: gen_qsgengine_types.QSGEngine, image: gen_qimage_types.QImage, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromImage2(self.h, image.h, cint(options)))

proc createTextureFromId*(self: gen_qsgengine_types.QSGEngine, id: cuint, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromId3(self.h, id, size.h, cint(options)))

type QSGEnginemetaObjectProc* = proc(self: QSGEngine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSGEnginemetacastProc* = proc(self: QSGEngine, param1: cstring): pointer {.raises: [], gcsafe.}
type QSGEnginemetacallProc* = proc(self: QSGEngine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSGEngineeventProc* = proc(self: QSGEngine, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSGEngineeventFilterProc* = proc(self: QSGEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSGEnginetimerEventProc* = proc(self: QSGEngine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSGEnginechildEventProc* = proc(self: QSGEngine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSGEnginecustomEventProc* = proc(self: QSGEngine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSGEngineconnectNotifyProc* = proc(self: QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSGEnginedisconnectNotifyProc* = proc(self: QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSGEngineVTable* = object
  vtbl: cQSGEngineVTable
  metaObject*: QSGEnginemetaObjectProc
  metacast*: QSGEnginemetacastProc
  metacall*: QSGEnginemetacallProc
  event*: QSGEngineeventProc
  eventFilter*: QSGEngineeventFilterProc
  timerEvent*: QSGEnginetimerEventProc
  childEvent*: QSGEnginechildEventProc
  customEvent*: QSGEnginecustomEventProc
  connectNotify*: QSGEngineconnectNotifyProc
  disconnectNotify*: QSGEnginedisconnectNotifyProc
proc QSGEnginemetaObject*(self: gen_qsgengine_types.QSGEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSGEngine_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSGEnginemetacast*(self: gen_qsgengine_types.QSGEngine, param1: cstring): pointer =
  fcQSGEngine_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSGEngine_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSGEnginemetacall*(self: gen_qsgengine_types.QSGEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSGEngine_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSGEngineevent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGEngine_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSGEngine_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSGEngineeventFilter*(self: gen_qsgengine_types.QSGEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSGEngine_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSGEnginetimerEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSGEngine_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSGEngine_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSGEnginechildEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSGEngine_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSGEngine_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSGEnginecustomEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQSGEngine_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSGEngine_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSGEngineconnectNotify*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGEngine_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSGEngine_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSGEnginedisconnectNotify*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSGEngine_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](vtbl)
  let self = QSGEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsgengine_types.QSGEngine, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSGEngine_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsgengine_types.QSGEngine, ): cint =
  fcQSGEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsgengine_types.QSGEngine, signal: cstring): cint =
  fcQSGEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSGEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsgengine_types.QSGEngine,
    vtbl: ref QSGEngineVTable = nil): gen_qsgengine_types.QSGEngine =
  let vtbl = if vtbl == nil: new QSGEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGEngineVTable, _: ptr cQSGEngine) {.cdecl.} =
    let vtbl = cast[ref QSGEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSGEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSGEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSGEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSGEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSGEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSGEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSGEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSGEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSGEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSGEngine_disconnectNotify
  gen_qsgengine_types.QSGEngine(h: fcQSGEngine_new(addr(vtbl[]), ))

proc create*(T: type gen_qsgengine_types.QSGEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSGEngineVTable = nil): gen_qsgengine_types.QSGEngine =
  let vtbl = if vtbl == nil: new QSGEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGEngineVTable, _: ptr cQSGEngine) {.cdecl.} =
    let vtbl = cast[ref QSGEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSGEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSGEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSGEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSGEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSGEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSGEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSGEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSGEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSGEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSGEngine_disconnectNotify
  gen_qsgengine_types.QSGEngine(h: fcQSGEngine_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsgengine_types.QSGEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_staticMetaObject())
proc delete*(self: gen_qsgengine_types.QSGEngine) =
  fcQSGEngine_delete(self.h)
