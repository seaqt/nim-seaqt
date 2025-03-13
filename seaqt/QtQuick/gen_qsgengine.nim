import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
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

proc fcQSGEngine_metaObject(self: pointer): pointer {.importc: "QSGEngine_metaObject".}
proc fcQSGEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGEngine_metacast".}
proc fcQSGEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGEngine_metacall".}
proc fcQSGEngine_tr(s: cstring): struct_miqt_string {.importc: "QSGEngine_tr".}
proc fcQSGEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGEngine_trUtf8".}
proc fcQSGEngine_invalidate(self: pointer): void {.importc: "QSGEngine_invalidate".}
proc fcQSGEngine_createRenderer(self: pointer): pointer {.importc: "QSGEngine_createRenderer".}
proc fcQSGEngine_createTextureFromImage(self: pointer, image: pointer): pointer {.importc: "QSGEngine_createTextureFromImage".}
proc fcQSGEngine_createTextureFromId(self: pointer, id: cuint, size: pointer): pointer {.importc: "QSGEngine_createTextureFromId".}
proc fcQSGEngine_rendererInterface(self: pointer): pointer {.importc: "QSGEngine_rendererInterface".}
proc fcQSGEngine_createRectangleNode(self: pointer): pointer {.importc: "QSGEngine_createRectangleNode".}
proc fcQSGEngine_createImageNode(self: pointer): pointer {.importc: "QSGEngine_createImageNode".}
proc fcQSGEngine_createNinePatchNode(self: pointer): pointer {.importc: "QSGEngine_createNinePatchNode".}
proc fcQSGEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGEngine_tr2".}
proc fcQSGEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGEngine_tr3".}
proc fcQSGEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGEngine_trUtf82".}
proc fcQSGEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGEngine_trUtf83".}
proc fcQSGEngine_createTextureFromImage2(self: pointer, image: pointer, options: cint): pointer {.importc: "QSGEngine_createTextureFromImage2".}
proc fcQSGEngine_createTextureFromId3(self: pointer, id: cuint, size: pointer, options: cint): pointer {.importc: "QSGEngine_createTextureFromId3".}
proc fcQSGEngine_vtbl(self: pointer): pointer {.importc: "QSGEngine_vtbl".}
proc fcQSGEngine_vdata(self: pointer): pointer {.importc: "QSGEngine_vdata".}
type cQSGEngineVTable {.pure.} = object
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
proc fcQSGEngine_virtualbase_metaObject(self: pointer): pointer {.importc: "QSGEngine_virtualbase_metaObject".}
proc fcQSGEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGEngine_virtualbase_metacast".}
proc fcQSGEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGEngine_virtualbase_metacall".}
proc fcQSGEngine_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSGEngine_virtualbase_event".}
proc fcQSGEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSGEngine_virtualbase_eventFilter".}
proc fcQSGEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSGEngine_virtualbase_timerEvent".}
proc fcQSGEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSGEngine_virtualbase_childEvent".}
proc fcQSGEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSGEngine_virtualbase_customEvent".}
proc fcQSGEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSGEngine_virtualbase_connectNotify".}
proc fcQSGEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSGEngine_virtualbase_disconnectNotify".}
proc fcQSGEngine_protectedbase_sender(self: pointer): pointer {.importc: "QSGEngine_protectedbase_sender".}
proc fcQSGEngine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSGEngine_protectedbase_senderSignalIndex".}
proc fcQSGEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSGEngine_protectedbase_receivers".}
proc fcQSGEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSGEngine_protectedbase_isSignalConnected".}
proc fcQSGEngine_new(vtbl, vdata: pointer): ptr cQSGEngine {.importc: "QSGEngine_new".}
proc fcQSGEngine_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSGEngine {.importc: "QSGEngine_new2".}
proc fcQSGEngine_staticMetaObject(): pointer {.importc: "QSGEngine_staticMetaObject".}

proc metaObject*(self: gen_qsgengine_types.QSGEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsgengine_types.QSGEngine, param1: cstring): pointer =
  fcQSGEngine_metacast(self.h, param1)

proc metacall*(self: gen_qsgengine_types.QSGEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsgengine_types.QSGEngine, s: cstring): string =
  let v_ms = fcQSGEngine_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgengine_types.QSGEngine, s: cstring): string =
  let v_ms = fcQSGEngine_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc invalidate*(self: gen_qsgengine_types.QSGEngine): void =
  fcQSGEngine_invalidate(self.h)

proc createRenderer*(self: gen_qsgengine_types.QSGEngine): gen_qsgabstractrenderer_types.QSGAbstractRenderer =
  gen_qsgabstractrenderer_types.QSGAbstractRenderer(h: fcQSGEngine_createRenderer(self.h), owned: false)

proc createTextureFromImage*(self: gen_qsgengine_types.QSGEngine, image: gen_qimage_types.QImage): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromImage(self.h, image.h), owned: false)

proc createTextureFromId*(self: gen_qsgengine_types.QSGEngine, id: cuint, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromId(self.h, id, size.h), owned: false)

proc rendererInterface*(self: gen_qsgengine_types.QSGEngine): gen_qsgrendererinterface_types.QSGRendererInterface =
  gen_qsgrendererinterface_types.QSGRendererInterface(h: fcQSGEngine_rendererInterface(self.h), owned: false)

proc createRectangleNode*(self: gen_qsgengine_types.QSGEngine): gen_qsgrectanglenode_types.QSGRectangleNode =
  gen_qsgrectanglenode_types.QSGRectangleNode(h: fcQSGEngine_createRectangleNode(self.h), owned: false)

proc createImageNode*(self: gen_qsgengine_types.QSGEngine): gen_qsgimagenode_types.QSGImageNode =
  gen_qsgimagenode_types.QSGImageNode(h: fcQSGEngine_createImageNode(self.h), owned: false)

proc createNinePatchNode*(self: gen_qsgengine_types.QSGEngine): gen_qsgninepatchnode_types.QSGNinePatchNode =
  gen_qsgninepatchnode_types.QSGNinePatchNode(h: fcQSGEngine_createNinePatchNode(self.h), owned: false)

proc tr*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring): string =
  let v_ms = fcQSGEngine_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring): string =
  let v_ms = fcQSGEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsgengine_types.QSGEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSGEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createTextureFromImage*(self: gen_qsgengine_types.QSGEngine, image: gen_qimage_types.QImage, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromImage2(self.h, image.h, cint(options)), owned: false)

proc createTextureFromId*(self: gen_qsgengine_types.QSGEngine, id: cuint, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGEngine_createTextureFromId3(self.h, id, size.h, cint(options)), owned: false)

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
type QSGEngineVTable* {.inheritable, pure.} = object
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
proc QSGEnginemetaObject*(self: gen_qsgengine_types.QSGEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_virtualbase_metaObject(self.h), owned: false)

proc cQSGEngine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGEnginemetacast*(self: gen_qsgengine_types.QSGEngine, param1: cstring): pointer =
  fcQSGEngine_virtualbase_metacast(self.h, param1)

proc cQSGEngine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSGEnginemetacall*(self: gen_qsgengine_types.QSGEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQSGEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSGEngine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSGEngineevent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGEngine_virtualbase_event(self.h, event.h)

proc cQSGEngine_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSGEngineeventFilter*(self: gen_qsgengine_types.QSGEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSGEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSGEngine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSGEnginetimerEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSGEngine_virtualbase_timerEvent(self.h, event.h)

proc cQSGEngine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSGEnginechildEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSGEngine_virtualbase_childEvent(self.h, event.h)

proc cQSGEngine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSGEnginecustomEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQSGEngine_virtualbase_customEvent(self.h, event.h)

proc cQSGEngine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSGEngineconnectNotify*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGEngine_virtualbase_connectNotify(self.h, signal.h)

proc cQSGEngine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSGEnginedisconnectNotify*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSGEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSGEngine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGEngineVTable](fcQSGEngine_vdata(self))
  let self = QSGEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSGEngine* {.inheritable.} = ref object of QSGEngine
  vtbl*: cQSGEngineVTable
method metaObject*(self: VirtualQSGEngine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSGEnginemetaObject(self[])
proc cQSGEngine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSGEngine, param1: cstring): pointer {.base.} =
  QSGEnginemetacast(self[], param1)
proc cQSGEngine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSGEngine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSGEnginemetacall(self[], param1, param2, param3)
proc cQSGEngine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQSGEngine, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSGEngineevent(self[], event)
proc cQSGEngine_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSGEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSGEngineeventFilter(self[], watched, event)
proc cQSGEngine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSGEngine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSGEnginetimerEvent(self[], event)
proc cQSGEngine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSGEngine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSGEnginechildEvent(self[], event)
proc cQSGEngine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSGEngine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSGEnginecustomEvent(self[], event)
proc cQSGEngine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSGEngineconnectNotify(self[], signal)
proc cQSGEngine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSGEnginedisconnectNotify(self[], signal)
proc cQSGEngine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGEngine](fcQSGEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qsgengine_types.QSGEngine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSGEngine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsgengine_types.QSGEngine): cint =
  fcQSGEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsgengine_types.QSGEngine, signal: cstring): cint =
  fcQSGEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSGEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsgengine_types.QSGEngine,
    vtbl: ref QSGEngineVTable = nil): gen_qsgengine_types.QSGEngine =
  let vtbl = if vtbl == nil: new QSGEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGEngineVTable](fcQSGEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSGEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSGEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSGEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSGEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSGEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSGEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSGEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSGEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSGEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSGEngine_vtable_callback_disconnectNotify
  gen_qsgengine_types.QSGEngine(h: fcQSGEngine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsgengine_types.QSGEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSGEngineVTable = nil): gen_qsgengine_types.QSGEngine =
  let vtbl = if vtbl == nil: new QSGEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGEngineVTable](fcQSGEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSGEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSGEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSGEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSGEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSGEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSGEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSGEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSGEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSGEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSGEngine_vtable_callback_disconnectNotify
  gen_qsgengine_types.QSGEngine(h: fcQSGEngine_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSGEngine_mvtbl = cQSGEngineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGEngine()[])](self.fcQSGEngine_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSGEngine_method_callback_metaObject,
  metacast: cQSGEngine_method_callback_metacast,
  metacall: cQSGEngine_method_callback_metacall,
  event: cQSGEngine_method_callback_event,
  eventFilter: cQSGEngine_method_callback_eventFilter,
  timerEvent: cQSGEngine_method_callback_timerEvent,
  childEvent: cQSGEngine_method_callback_childEvent,
  customEvent: cQSGEngine_method_callback_customEvent,
  connectNotify: cQSGEngine_method_callback_connectNotify,
  disconnectNotify: cQSGEngine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsgengine_types.QSGEngine,
    inst: VirtualQSGEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGEngine_new(addr(cQSGEngine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsgengine_types.QSGEngine,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSGEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGEngine_new2(addr(cQSGEngine_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsgengine_types.QSGEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_staticMetaObject())
