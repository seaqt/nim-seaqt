import ./qtsvg_pkg

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


{.compile("gen_qsvgrenderer.cpp", QtSvgCFlags).}


import ./gen_qsvgrenderer_types
export gen_qsvgrenderer_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qxmlstream_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qtransform_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qxmlstream_types,
  gen_qpainter_types,
  gen_qtransform_types

type cQSvgRenderer*{.exportc: "QSvgRenderer", incompleteStruct.} = object

proc fcQSvgRenderer_metaObject(self: pointer): pointer {.importc: "QSvgRenderer_metaObject".}
proc fcQSvgRenderer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgRenderer_metacast".}
proc fcQSvgRenderer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgRenderer_metacall".}
proc fcQSvgRenderer_trS(s: cstring): struct_seaqt_string {.importc: "QSvgRenderer_tr_s".}
proc fcQSvgRenderer_isValid(self: pointer): bool {.importc: "QSvgRenderer_isValid".}
proc fcQSvgRenderer_defaultSize(self: pointer): pointer {.importc: "QSvgRenderer_defaultSize".}
proc fcQSvgRenderer_viewBox(self: pointer): pointer {.importc: "QSvgRenderer_viewBox".}
proc fcQSvgRenderer_viewBoxF(self: pointer): pointer {.importc: "QSvgRenderer_viewBoxF".}
proc fcQSvgRenderer_setViewBox_QRect(self: pointer, viewbox: pointer): void {.importc: "QSvgRenderer_setViewBox_QRect".}
proc fcQSvgRenderer_setViewBox_QRectF(self: pointer, viewbox: pointer): void {.importc: "QSvgRenderer_setViewBox_QRectF".}
proc fcQSvgRenderer_aspectRatioMode(self: pointer): cint {.importc: "QSvgRenderer_aspectRatioMode".}
proc fcQSvgRenderer_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QSvgRenderer_setAspectRatioMode".}
proc fcQSvgRenderer_options(self: pointer): cint {.importc: "QSvgRenderer_options".}
proc fcQSvgRenderer_setOptions(self: pointer, flags: cint): void {.importc: "QSvgRenderer_setOptions".}
proc fcQSvgRenderer_animated(self: pointer): bool {.importc: "QSvgRenderer_animated".}
proc fcQSvgRenderer_framesPerSecond(self: pointer): cint {.importc: "QSvgRenderer_framesPerSecond".}
proc fcQSvgRenderer_setFramesPerSecond(self: pointer, num: cint): void {.importc: "QSvgRenderer_setFramesPerSecond".}
proc fcQSvgRenderer_currentFrame(self: pointer): cint {.importc: "QSvgRenderer_currentFrame".}
proc fcQSvgRenderer_setCurrentFrame(self: pointer, currentFrame: cint): void {.importc: "QSvgRenderer_setCurrentFrame".}
proc fcQSvgRenderer_animationDuration(self: pointer): cint {.importc: "QSvgRenderer_animationDuration".}
proc fcQSvgRenderer_isAnimationEnabled(self: pointer): bool {.importc: "QSvgRenderer_isAnimationEnabled".}
proc fcQSvgRenderer_setAnimationEnabled(self: pointer, enable: bool): void {.importc: "QSvgRenderer_setAnimationEnabled".}
proc fcQSvgRenderer_boundsOnElement(self: pointer, id: struct_seaqt_string): pointer {.importc: "QSvgRenderer_boundsOnElement".}
proc fcQSvgRenderer_elementExists(self: pointer, id: struct_seaqt_string): bool {.importc: "QSvgRenderer_elementExists".}
proc fcQSvgRenderer_transformForElement(self: pointer, id: struct_seaqt_string): pointer {.importc: "QSvgRenderer_transformForElement".}
proc fcQSvgRenderer_setDefaultOptions(flags: cint): void {.importc: "QSvgRenderer_setDefaultOptions".}
proc fcQSvgRenderer_load_QString(self: pointer, filename: struct_seaqt_string): bool {.importc: "QSvgRenderer_load_QString".}
proc fcQSvgRenderer_load_QByteArray(self: pointer, contents: struct_seaqt_string): bool {.importc: "QSvgRenderer_load_QByteArray".}
proc fcQSvgRenderer_load_QXmlStreamReader(self: pointer, contents: pointer): bool {.importc: "QSvgRenderer_load_QXmlStreamReader".}
proc fcQSvgRenderer_renderP(self: pointer, p: pointer): void {.importc: "QSvgRenderer_render_p".}
proc fcQSvgRenderer_renderPBounds(self: pointer, p: pointer, bounds: pointer): void {.importc: "QSvgRenderer_render_p_bounds".}
proc fcQSvgRenderer_renderPElementId(self: pointer, p: pointer, elementId: struct_seaqt_string): void {.importc: "QSvgRenderer_render_p_elementId".}
proc fcQSvgRenderer_repaintNeeded(self: pointer): void {.importc: "QSvgRenderer_repaintNeeded".}
proc fcQSvgRenderer_connect_repaintNeeded(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSvgRenderer_connect_repaintNeeded".}
proc fcQSvgRenderer_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSvgRenderer_tr_s_c".}
proc fcQSvgRenderer_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSvgRenderer_tr_s_c_n".}
proc fcQSvgRenderer_renderPElementIdBounds(self: pointer, p: pointer, elementId: struct_seaqt_string, bounds: pointer): void {.importc: "QSvgRenderer_render_p_elementId_bounds".}
proc fcQSvgRenderer_vdata(self: pointer): ptr pointer {.importc: "QSvgRenderer_vdata".}
proc fvdata_cQSvgRenderer(self: pointer): pointer {.importc: "vdata_QSvgRenderer".}

type cQSvgRendererVTable {.pure.} = object
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
proc fcQSvgRenderer_virtualbase_metaObject(self: pointer): pointer {.importc: "QSvgRenderer_virtualbase_metaObject".}
proc fcQSvgRenderer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgRenderer_virtualbase_metacast".}
proc fcQSvgRenderer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgRenderer_virtualbase_metacall".}
proc fcQSvgRenderer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSvgRenderer_virtualbase_event".}
proc fcQSvgRenderer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSvgRenderer_virtualbase_eventFilter".}
proc fcQSvgRenderer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSvgRenderer_virtualbase_timerEvent".}
proc fcQSvgRenderer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSvgRenderer_virtualbase_childEvent".}
proc fcQSvgRenderer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSvgRenderer_virtualbase_customEvent".}
proc fcQSvgRenderer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSvgRenderer_virtualbase_connectNotify".}
proc fcQSvgRenderer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSvgRenderer_virtualbase_disconnectNotify".}
proc fcQSvgRenderer_protectedbase_sender(self: pointer): pointer {.importc: "QSvgRenderer_protectedbase_sender".}
proc fcQSvgRenderer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSvgRenderer_protectedbase_senderSignalIndex".}
proc fcQSvgRenderer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSvgRenderer_protectedbase_receivers".}
proc fcQSvgRenderer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSvgRenderer_protectedbase_isSignalConnected".}
proc fcQSvgRenderer_new(vtbl: pointer, vdata: csize_t): ptr cQSvgRenderer {.importc: "QSvgRenderer_new".}
proc fcQSvgRenderer_new2(vtbl: pointer, vdata: csize_t, filename: struct_seaqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QString".}
proc fcQSvgRenderer_new3(vtbl: pointer, vdata: csize_t, contents: struct_seaqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QByteArray".}
proc fcQSvgRenderer_new4(vtbl: pointer, vdata: csize_t, contents: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QXmlStreamReader".}
proc fcQSvgRenderer_new5(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QObject".}
proc fcQSvgRenderer_new6(vtbl: pointer, vdata: csize_t, filename: struct_seaqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QString_QObject".}
proc fcQSvgRenderer_new7(vtbl: pointer, vdata: csize_t, contents: struct_seaqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QByteArray_QObject".}
proc fcQSvgRenderer_new8(vtbl: pointer, vdata: csize_t, contents: pointer, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new_QXmlStreamReader_QObject".}
proc fcQSvgRenderer_staticMetaObject(): pointer {.importc: "QSvgRenderer_staticMetaObject".}

proc metaObject*(self: gen_qsvgrenderer_types.QSvgRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cstring): pointer =
  fcQSvgRenderer_metacast(self.h, param1)

proc metacall*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgRenderer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsvgrenderer_types.QSvgRenderer, s: cstring): string =
  let v_ms = fcQSvgRenderer_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qsvgrenderer_types.QSvgRenderer): bool =
  fcQSvgRenderer_isValid(self.h)

proc defaultSize*(self: gen_qsvgrenderer_types.QSvgRenderer): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgRenderer_defaultSize(self.h), owned: true)

proc viewBox*(self: gen_qsvgrenderer_types.QSvgRenderer): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSvgRenderer_viewBox(self.h), owned: true)

proc viewBoxF*(self: gen_qsvgrenderer_types.QSvgRenderer): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSvgRenderer_viewBoxF(self.h), owned: true)

proc setViewBox*(self: gen_qsvgrenderer_types.QSvgRenderer, viewbox: gen_qrect_types.QRect): void =
  fcQSvgRenderer_setViewBox_QRect(self.h, viewbox.h)

proc setViewBox*(self: gen_qsvgrenderer_types.QSvgRenderer, viewbox: gen_qrect_types.QRectF): void =
  fcQSvgRenderer_setViewBox_QRectF(self.h, viewbox.h)

proc aspectRatioMode*(self: gen_qsvgrenderer_types.QSvgRenderer): cint =
  cint(fcQSvgRenderer_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qsvgrenderer_types.QSvgRenderer, mode: cint): void =
  fcQSvgRenderer_setAspectRatioMode(self.h, cint(mode))

proc options*(self: gen_qsvgrenderer_types.QSvgRenderer): cint =
  cint(fcQSvgRenderer_options(self.h))

proc setOptions*(self: gen_qsvgrenderer_types.QSvgRenderer, flags: cint): void =
  fcQSvgRenderer_setOptions(self.h, cint(flags))

proc animated*(self: gen_qsvgrenderer_types.QSvgRenderer): bool =
  fcQSvgRenderer_animated(self.h)

proc framesPerSecond*(self: gen_qsvgrenderer_types.QSvgRenderer): cint =
  fcQSvgRenderer_framesPerSecond(self.h)

proc setFramesPerSecond*(self: gen_qsvgrenderer_types.QSvgRenderer, num: cint): void =
  fcQSvgRenderer_setFramesPerSecond(self.h, num)

proc currentFrame*(self: gen_qsvgrenderer_types.QSvgRenderer): cint =
  fcQSvgRenderer_currentFrame(self.h)

proc setCurrentFrame*(self: gen_qsvgrenderer_types.QSvgRenderer, currentFrame: cint): void =
  fcQSvgRenderer_setCurrentFrame(self.h, currentFrame)

proc animationDuration*(self: gen_qsvgrenderer_types.QSvgRenderer): cint =
  fcQSvgRenderer_animationDuration(self.h)

proc isAnimationEnabled*(self: gen_qsvgrenderer_types.QSvgRenderer): bool =
  fcQSvgRenderer_isAnimationEnabled(self.h)

proc setAnimationEnabled*(self: gen_qsvgrenderer_types.QSvgRenderer, enable: bool): void =
  fcQSvgRenderer_setAnimationEnabled(self.h, enable)

proc boundsOnElement*(self: gen_qsvgrenderer_types.QSvgRenderer, id: openArray[char]): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSvgRenderer_boundsOnElement(self.h, struct_seaqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id)))), owned: true)

proc elementExists*(self: gen_qsvgrenderer_types.QSvgRenderer, id: openArray[char]): bool =
  fcQSvgRenderer_elementExists(self.h, struct_seaqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))))

proc transformForElement*(self: gen_qsvgrenderer_types.QSvgRenderer, id: openArray[char]): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQSvgRenderer_transformForElement(self.h, struct_seaqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id)))), owned: true)

proc setDefaultOptions*(_: type gen_qsvgrenderer_types.QSvgRenderer, flags: cint): void =
  fcQSvgRenderer_setDefaultOptions(cint(flags))

proc load*(self: gen_qsvgrenderer_types.QSvgRenderer, filename: openArray[char]): bool =
  fcQSvgRenderer_load_QString(self.h, struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc load*(self: gen_qsvgrenderer_types.QSvgRenderer, contents: openArray[byte]): bool =
  fcQSvgRenderer_load_QByteArray(self.h, struct_seaqt_string(data: if len(contents) > 0: addr contents[0] else: nil, len: csize_t(len(contents))))

proc load*(self: gen_qsvgrenderer_types.QSvgRenderer, contents: gen_qxmlstream_types.QXmlStreamReader): bool =
  fcQSvgRenderer_load_QXmlStreamReader(self.h, contents.h)

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter): void =
  fcQSvgRenderer_renderP(self.h, p.h)

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter, bounds: gen_qrect_types.QRectF): void =
  fcQSvgRenderer_renderPBounds(self.h, p.h, bounds.h)

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter, elementId: openArray[char]): void =
  fcQSvgRenderer_renderPElementId(self.h, p.h, struct_seaqt_string(data: if len(elementId) > 0: addr elementId[0] else: nil, len: csize_t(len(elementId))))

proc repaintNeeded*(self: gen_qsvgrenderer_types.QSvgRenderer): void =
  fcQSvgRenderer_repaintNeeded(self.h)

type QSvgRendererrepaintNeededSlot* = proc()
proc fcQSvgRenderer_slot_callback_repaintNeeded(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSvgRendererrepaintNeededSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSvgRenderer_slot_callback_repaintNeeded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSvgRendererrepaintNeededSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRepaintNeeded*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRendererrepaintNeededSlot) =
  var tmp = new QSvgRendererrepaintNeededSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_connect_repaintNeeded(self.h, cast[int](addr tmp[]), fcQSvgRenderer_slot_callback_repaintNeeded, fcQSvgRenderer_slot_callback_repaintNeeded_release)

proc tr*(_: type gen_qsvgrenderer_types.QSvgRenderer, s: cstring, c: cstring): string =
  let v_ms = fcQSvgRenderer_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsvgrenderer_types.QSvgRenderer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgRenderer_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter, elementId: openArray[char], bounds: gen_qrect_types.QRectF): void =
  fcQSvgRenderer_renderPElementIdBounds(self.h, p.h, struct_seaqt_string(data: if len(elementId) > 0: addr elementId[0] else: nil, len: csize_t(len(elementId))), bounds.h)

type QSvgRenderermetaObjectProc* = proc(self: QSvgRenderer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSvgRenderermetacastProc* = proc(self: QSvgRenderer, param1: cstring): pointer {.raises: [], gcsafe.}
type QSvgRenderermetacallProc* = proc(self: QSvgRenderer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSvgRenderereventProc* = proc(self: QSvgRenderer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSvgRenderereventFilterProc* = proc(self: QSvgRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSvgRenderertimerEventProc* = proc(self: QSvgRenderer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSvgRendererchildEventProc* = proc(self: QSvgRenderer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSvgRenderercustomEventProc* = proc(self: QSvgRenderer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSvgRendererconnectNotifyProc* = proc(self: QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSvgRendererdisconnectNotifyProc* = proc(self: QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSvgRendererVTable* {.inheritable, pure.} = object
  vtbl: cQSvgRendererVTable
  metaObject*: QSvgRenderermetaObjectProc
  metacast*: QSvgRenderermetacastProc
  metacall*: QSvgRenderermetacallProc
  event*: QSvgRenderereventProc
  eventFilter*: QSvgRenderereventFilterProc
  timerEvent*: QSvgRenderertimerEventProc
  childEvent*: QSvgRendererchildEventProc
  customEvent*: QSvgRenderercustomEventProc
  connectNotify*: QSvgRendererconnectNotifyProc
  disconnectNotify*: QSvgRendererdisconnectNotifyProc

proc QSvgRenderermetaObject*(self: gen_qsvgrenderer_types.QSvgRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_virtualbase_metaObject(self.h), owned: false)

proc QSvgRenderermetacast*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cstring): pointer =
  fcQSvgRenderer_virtualbase_metacast(self.h, param1)

proc QSvgRenderermetacall*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgRenderer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSvgRendererevent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgRenderer_virtualbase_event(self.h, event.h)

proc QSvgRenderereventFilter*(self: gen_qsvgrenderer_types.QSvgRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgRenderer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSvgRenderertimerEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSvgRenderer_virtualbase_timerEvent(self.h, event.h)

proc QSvgRendererchildEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSvgRenderer_virtualbase_childEvent(self.h, event.h)

proc QSvgRenderercustomEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgRenderer_virtualbase_customEvent(self.h, event.h)

proc QSvgRendererconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgRenderer_virtualbase_connectNotify(self.h, signal.h)

proc QSvgRendererdisconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgRenderer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSvgRenderer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgRenderer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSvgRenderer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSvgRenderer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSvgRenderer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSvgRenderer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSvgRenderer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSvgRenderer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSvgRenderer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSvgRenderer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSvgRenderer* {.inheritable.} = ref object of QSvgRenderer
  vtbl*: cQSvgRendererVTable

method metaObject*(self: VirtualQSvgRenderer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSvgRenderermetaObject(self[])
method metacast*(self: VirtualQSvgRenderer, param1: cstring): pointer {.base.} =
  QSvgRenderermetacast(self[], param1)
method metacall*(self: VirtualQSvgRenderer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSvgRenderermetacall(self[], param1, param2, param3)
method event*(self: VirtualQSvgRenderer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSvgRendererevent(self[], event)
method eventFilter*(self: VirtualQSvgRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSvgRenderereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSvgRenderer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSvgRenderertimerEvent(self[], event)
method childEvent*(self: VirtualQSvgRenderer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSvgRendererchildEvent(self[], event)
method customEvent*(self: VirtualQSvgRenderer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSvgRenderercustomEvent(self[], event)
method connectNotify*(self: VirtualQSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSvgRendererconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSvgRendererdisconnectNotify(self[], signal)

proc fcQSvgRenderer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgRenderer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSvgRenderer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSvgRenderer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSvgRenderer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSvgRenderer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSvgRenderer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSvgRenderer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSvgRenderer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSvgRenderer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgRenderer](fcQSvgRenderer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qsvgrenderer_types.QSvgRenderer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSvgRenderer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsvgrenderer_types.QSvgRenderer): cint =
  fcQSvgRenderer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: cstring): cint =
  fcQSvgRenderer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSvgRenderer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    filename: openArray[char],
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename)))), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: openArray[byte],
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(contents) > 0: addr contents[0] else: nil, len: csize_t(len(contents)))), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: gen_qxmlstream_types.QXmlStreamReader,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), contents.h), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new5(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    filename: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new6(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), parent.h), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: openArray[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new7(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(contents) > 0: addr contents[0] else: nil, len: csize_t(len(contents))), parent.h), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: gen_qxmlstream_types.QXmlStreamReader, parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](fcQSvgRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new8(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), contents.h, parent.h), owned: true)
  fcQSvgRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSvgRenderer_mvtbl = cQSvgRendererVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSvgRenderer()[])](self.fcQSvgRenderer_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSvgRenderer_method_callback_metaObject,
  metacast: fcQSvgRenderer_method_callback_metacast,
  metacall: fcQSvgRenderer_method_callback_metacall,
  event: fcQSvgRenderer_method_callback_event,
  eventFilter: fcQSvgRenderer_method_callback_eventFilter,
  timerEvent: fcQSvgRenderer_method_callback_timerEvent,
  childEvent: fcQSvgRenderer_method_callback_childEvent,
  customEvent: fcQSvgRenderer_method_callback_customEvent,
  connectNotify: fcQSvgRenderer_method_callback_connectNotify,
  disconnectNotify: fcQSvgRenderer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)))
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    filename: openArray[char],
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new2(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: openArray[byte],
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new3(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(contents) > 0: addr contents[0] else: nil, len: csize_t(len(contents))))
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: gen_qxmlstream_types.QXmlStreamReader,
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new4(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), contents.h)
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new5(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    filename: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new6(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), parent.h)
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: openArray[byte], parent: gen_qobject_types.QObject,
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new7(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(contents) > 0: addr contents[0] else: nil, len: csize_t(len(contents))), parent.h)
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: gen_qxmlstream_types.QXmlStreamReader, parent: gen_qobject_types.QObject,
    inst: VirtualQSvgRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgRenderer_new8(addr(cQSvgRenderer_mvtbl), csize_t(sizeof(pointer)), contents.h, parent.h)
  fcQSvgRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsvgrenderer_types.QSvgRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_staticMetaObject())
