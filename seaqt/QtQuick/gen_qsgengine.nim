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

proc fcQSGEngine_new(): ptr cQSGEngine {.importc: "QSGEngine_new".}
proc fcQSGEngine_new2(parent: pointer): ptr cQSGEngine {.importc: "QSGEngine_new2".}
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
proc fQSGEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSGEngine_virtualbase_metaObject".}
proc fcQSGEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_metaObject".}
proc fQSGEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSGEngine_virtualbase_metacast".}
proc fcQSGEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_metacast".}
proc fQSGEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSGEngine_virtualbase_metacall".}
proc fcQSGEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_metacall".}
proc fQSGEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSGEngine_virtualbase_event".}
proc fcQSGEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_event".}
proc fQSGEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSGEngine_virtualbase_eventFilter".}
proc fcQSGEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_eventFilter".}
proc fQSGEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSGEngine_virtualbase_timerEvent".}
proc fcQSGEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_timerEvent".}
proc fQSGEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSGEngine_virtualbase_childEvent".}
proc fcQSGEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_childEvent".}
proc fQSGEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSGEngine_virtualbase_customEvent".}
proc fcQSGEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_customEvent".}
proc fQSGEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSGEngine_virtualbase_connectNotify".}
proc fcQSGEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_connectNotify".}
proc fQSGEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSGEngine_virtualbase_disconnectNotify".}
proc fcQSGEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_disconnectNotify".}
proc fcQSGEngine_staticMetaObject(): pointer {.importc: "QSGEngine_staticMetaObject".}
proc fcQSGEngine_delete(self: pointer) {.importc: "QSGEngine_delete".}


func init*(T: type gen_qsgengine_types.QSGEngine, h: ptr cQSGEngine): gen_qsgengine_types.QSGEngine =
  T(h: h)
proc create*(T: type gen_qsgengine_types.QSGEngine, ): gen_qsgengine_types.QSGEngine =
  gen_qsgengine_types.QSGEngine.init(fcQSGEngine_new())

proc create*(T: type gen_qsgengine_types.QSGEngine, parent: gen_qobject_types.QObject): gen_qsgengine_types.QSGEngine =
  gen_qsgengine_types.QSGEngine.init(fcQSGEngine_new2(parent.h))

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

proc QSGEnginemetaObject*(self: gen_qsgengine_types.QSGEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSGEngine_virtualbase_metaObject(self.h))

type QSGEnginemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginemetaObjectProc) =
  # TODO check subclass
  var tmp = new QSGEnginemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_metaObject(self: ptr cQSGEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QSGEngine_metaObject ".} =
  var nimfunc = cast[ptr QSGEnginemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGEnginemetacast*(self: gen_qsgengine_types.QSGEngine, param1: cstring): pointer =
  fQSGEngine_virtualbase_metacast(self.h, param1)

type QSGEnginemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginemetacastProc) =
  # TODO check subclass
  var tmp = new QSGEnginemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_metacast(self: ptr cQSGEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSGEngine_metacast ".} =
  var nimfunc = cast[ptr QSGEnginemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGEnginemetacall*(self: gen_qsgengine_types.QSGEngine, param1: cint, param2: cint, param3: pointer): cint =
  fQSGEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSGEnginemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginemetacallProc) =
  # TODO check subclass
  var tmp = new QSGEnginemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_metacall(self: ptr cQSGEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSGEngine_metacall ".} =
  var nimfunc = cast[ptr QSGEnginemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSGEngineevent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QEvent): bool =
  fQSGEngine_virtualbase_event(self.h, event.h)

type QSGEngineeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsgengine_types.QSGEngine, slot: QSGEngineeventProc) =
  # TODO check subclass
  var tmp = new QSGEngineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_event(self: ptr cQSGEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSGEngine_event ".} =
  var nimfunc = cast[ptr QSGEngineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGEngineeventFilter*(self: gen_qsgengine_types.QSGEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSGEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSGEngineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsgengine_types.QSGEngine, slot: QSGEngineeventFilterProc) =
  # TODO check subclass
  var tmp = new QSGEngineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_eventFilter(self: ptr cQSGEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSGEngine_eventFilter ".} =
  var nimfunc = cast[ptr QSGEngineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSGEnginetimerEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSGEngine_virtualbase_timerEvent(self.h, event.h)

type QSGEnginetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginetimerEventProc) =
  # TODO check subclass
  var tmp = new QSGEnginetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_timerEvent(self: ptr cQSGEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_timerEvent ".} =
  var nimfunc = cast[ptr QSGEnginetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSGEnginechildEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fQSGEngine_virtualbase_childEvent(self.h, event.h)

type QSGEnginechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginechildEventProc) =
  # TODO check subclass
  var tmp = new QSGEnginechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_childEvent(self: ptr cQSGEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_childEvent ".} =
  var nimfunc = cast[ptr QSGEnginechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSGEnginecustomEvent*(self: gen_qsgengine_types.QSGEngine, event: gen_qcoreevent_types.QEvent): void =
  fQSGEngine_virtualbase_customEvent(self.h, event.h)

type QSGEnginecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginecustomEventProc) =
  # TODO check subclass
  var tmp = new QSGEnginecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_customEvent(self: ptr cQSGEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_customEvent ".} =
  var nimfunc = cast[ptr QSGEnginecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSGEngineconnectNotify*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSGEngine_virtualbase_connectNotify(self.h, signal.h)

type QSGEngineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsgengine_types.QSGEngine, slot: QSGEngineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSGEngineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_connectNotify(self: ptr cQSGEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_connectNotify ".} =
  var nimfunc = cast[ptr QSGEngineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSGEnginedisconnectNotify*(self: gen_qsgengine_types.QSGEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSGEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QSGEnginedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsgengine_types.QSGEngine, slot: QSGEnginedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSGEnginedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_disconnectNotify(self: ptr cQSGEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_disconnectNotify ".} =
  var nimfunc = cast[ptr QSGEnginedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsgengine_types.QSGEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSGEngine_staticMetaObject())
proc delete*(self: gen_qsgengine_types.QSGEngine) =
  fcQSGEngine_delete(self.h)
