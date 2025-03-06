import ./Qt6Svg_libs

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

const cflags = gorge("pkg-config --cflags Qt6Svg")  & " -fPIC"
{.compile("gen_qsvgrenderer.cpp", cflags).}


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

proc fcQSvgRenderer_metaObject(self: pointer, ): pointer {.importc: "QSvgRenderer_metaObject".}
proc fcQSvgRenderer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgRenderer_metacast".}
proc fcQSvgRenderer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgRenderer_metacall".}
proc fcQSvgRenderer_tr(s: cstring): struct_miqt_string {.importc: "QSvgRenderer_tr".}
proc fcQSvgRenderer_isValid(self: pointer, ): bool {.importc: "QSvgRenderer_isValid".}
proc fcQSvgRenderer_defaultSize(self: pointer, ): pointer {.importc: "QSvgRenderer_defaultSize".}
proc fcQSvgRenderer_viewBox(self: pointer, ): pointer {.importc: "QSvgRenderer_viewBox".}
proc fcQSvgRenderer_viewBoxF(self: pointer, ): pointer {.importc: "QSvgRenderer_viewBoxF".}
proc fcQSvgRenderer_setViewBox(self: pointer, viewbox: pointer): void {.importc: "QSvgRenderer_setViewBox".}
proc fcQSvgRenderer_setViewBoxWithViewbox(self: pointer, viewbox: pointer): void {.importc: "QSvgRenderer_setViewBoxWithViewbox".}
proc fcQSvgRenderer_aspectRatioMode(self: pointer, ): cint {.importc: "QSvgRenderer_aspectRatioMode".}
proc fcQSvgRenderer_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QSvgRenderer_setAspectRatioMode".}
proc fcQSvgRenderer_animated(self: pointer, ): bool {.importc: "QSvgRenderer_animated".}
proc fcQSvgRenderer_framesPerSecond(self: pointer, ): cint {.importc: "QSvgRenderer_framesPerSecond".}
proc fcQSvgRenderer_setFramesPerSecond(self: pointer, num: cint): void {.importc: "QSvgRenderer_setFramesPerSecond".}
proc fcQSvgRenderer_currentFrame(self: pointer, ): cint {.importc: "QSvgRenderer_currentFrame".}
proc fcQSvgRenderer_setCurrentFrame(self: pointer, currentFrame: cint): void {.importc: "QSvgRenderer_setCurrentFrame".}
proc fcQSvgRenderer_animationDuration(self: pointer, ): cint {.importc: "QSvgRenderer_animationDuration".}
proc fcQSvgRenderer_boundsOnElement(self: pointer, id: struct_miqt_string): pointer {.importc: "QSvgRenderer_boundsOnElement".}
proc fcQSvgRenderer_elementExists(self: pointer, id: struct_miqt_string): bool {.importc: "QSvgRenderer_elementExists".}
proc fcQSvgRenderer_transformForElement(self: pointer, id: struct_miqt_string): pointer {.importc: "QSvgRenderer_transformForElement".}
proc fcQSvgRenderer_load(self: pointer, filename: struct_miqt_string): bool {.importc: "QSvgRenderer_load".}
proc fcQSvgRenderer_loadWithContents(self: pointer, contents: struct_miqt_string): bool {.importc: "QSvgRenderer_loadWithContents".}
proc fcQSvgRenderer_load2(self: pointer, contents: pointer): bool {.importc: "QSvgRenderer_load2".}
proc fcQSvgRenderer_render(self: pointer, p: pointer): void {.importc: "QSvgRenderer_render".}
proc fcQSvgRenderer_render2(self: pointer, p: pointer, bounds: pointer): void {.importc: "QSvgRenderer_render2".}
proc fcQSvgRenderer_render3(self: pointer, p: pointer, elementId: struct_miqt_string): void {.importc: "QSvgRenderer_render3".}
proc fcQSvgRenderer_repaintNeeded(self: pointer, ): void {.importc: "QSvgRenderer_repaintNeeded".}
proc fcQSvgRenderer_connect_repaintNeeded(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSvgRenderer_connect_repaintNeeded".}
proc fcQSvgRenderer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgRenderer_tr2".}
proc fcQSvgRenderer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgRenderer_tr3".}
proc fcQSvgRenderer_render32(self: pointer, p: pointer, elementId: struct_miqt_string, bounds: pointer): void {.importc: "QSvgRenderer_render32".}
type cQSvgRendererVTable = object
  destructor*: proc(vtbl: ptr cQSvgRendererVTable, self: ptr cQSvgRenderer) {.cdecl, raises:[], gcsafe.}
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
proc fcQSvgRenderer_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSvgRenderer_virtualbase_metaObject".}
proc fcQSvgRenderer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgRenderer_virtualbase_metacast".}
proc fcQSvgRenderer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgRenderer_virtualbase_metacall".}
proc fcQSvgRenderer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSvgRenderer_virtualbase_event".}
proc fcQSvgRenderer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSvgRenderer_virtualbase_eventFilter".}
proc fcQSvgRenderer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSvgRenderer_virtualbase_timerEvent".}
proc fcQSvgRenderer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSvgRenderer_virtualbase_childEvent".}
proc fcQSvgRenderer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSvgRenderer_virtualbase_customEvent".}
proc fcQSvgRenderer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSvgRenderer_virtualbase_connectNotify".}
proc fcQSvgRenderer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSvgRenderer_virtualbase_disconnectNotify".}
proc fcQSvgRenderer_protectedbase_sender(self: pointer, ): pointer {.importc: "QSvgRenderer_protectedbase_sender".}
proc fcQSvgRenderer_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSvgRenderer_protectedbase_senderSignalIndex".}
proc fcQSvgRenderer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSvgRenderer_protectedbase_receivers".}
proc fcQSvgRenderer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSvgRenderer_protectedbase_isSignalConnected".}
proc fcQSvgRenderer_new(vtbl: pointer, ): ptr cQSvgRenderer {.importc: "QSvgRenderer_new".}
proc fcQSvgRenderer_new2(vtbl: pointer, filename: struct_miqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new2".}
proc fcQSvgRenderer_new3(vtbl: pointer, contents: struct_miqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new3".}
proc fcQSvgRenderer_new4(vtbl: pointer, contents: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new4".}
proc fcQSvgRenderer_new5(vtbl: pointer, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new5".}
proc fcQSvgRenderer_new6(vtbl: pointer, filename: struct_miqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new6".}
proc fcQSvgRenderer_new7(vtbl: pointer, contents: struct_miqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new7".}
proc fcQSvgRenderer_new8(vtbl: pointer, contents: pointer, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new8".}
proc fcQSvgRenderer_staticMetaObject(): pointer {.importc: "QSvgRenderer_staticMetaObject".}
proc fcQSvgRenderer_delete(self: pointer) {.importc: "QSvgRenderer_delete".}

proc metaObject*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_metaObject(self.h))

proc metacast*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cstring): pointer =
  fcQSvgRenderer_metacast(self.h, param1)

proc metacall*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgRenderer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsvgrenderer_types.QSvgRenderer, s: cstring): string =
  let v_ms = fcQSvgRenderer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qsvgrenderer_types.QSvgRenderer, ): bool =
  fcQSvgRenderer_isValid(self.h)

proc defaultSize*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgRenderer_defaultSize(self.h))

proc viewBox*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSvgRenderer_viewBox(self.h))

proc viewBoxF*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSvgRenderer_viewBoxF(self.h))

proc setViewBox*(self: gen_qsvgrenderer_types.QSvgRenderer, viewbox: gen_qrect_types.QRect): void =
  fcQSvgRenderer_setViewBox(self.h, viewbox.h)

proc setViewBox*(self: gen_qsvgrenderer_types.QSvgRenderer, viewbox: gen_qrect_types.QRectF): void =
  fcQSvgRenderer_setViewBoxWithViewbox(self.h, viewbox.h)

proc aspectRatioMode*(self: gen_qsvgrenderer_types.QSvgRenderer, ): cint =
  cint(fcQSvgRenderer_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qsvgrenderer_types.QSvgRenderer, mode: cint): void =
  fcQSvgRenderer_setAspectRatioMode(self.h, cint(mode))

proc animated*(self: gen_qsvgrenderer_types.QSvgRenderer, ): bool =
  fcQSvgRenderer_animated(self.h)

proc framesPerSecond*(self: gen_qsvgrenderer_types.QSvgRenderer, ): cint =
  fcQSvgRenderer_framesPerSecond(self.h)

proc setFramesPerSecond*(self: gen_qsvgrenderer_types.QSvgRenderer, num: cint): void =
  fcQSvgRenderer_setFramesPerSecond(self.h, num)

proc currentFrame*(self: gen_qsvgrenderer_types.QSvgRenderer, ): cint =
  fcQSvgRenderer_currentFrame(self.h)

proc setCurrentFrame*(self: gen_qsvgrenderer_types.QSvgRenderer, currentFrame: cint): void =
  fcQSvgRenderer_setCurrentFrame(self.h, currentFrame)

proc animationDuration*(self: gen_qsvgrenderer_types.QSvgRenderer, ): cint =
  fcQSvgRenderer_animationDuration(self.h)

proc boundsOnElement*(self: gen_qsvgrenderer_types.QSvgRenderer, id: string): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSvgRenderer_boundsOnElement(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc elementExists*(self: gen_qsvgrenderer_types.QSvgRenderer, id: string): bool =
  fcQSvgRenderer_elementExists(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc transformForElement*(self: gen_qsvgrenderer_types.QSvgRenderer, id: string): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQSvgRenderer_transformForElement(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc load*(self: gen_qsvgrenderer_types.QSvgRenderer, filename: string): bool =
  fcQSvgRenderer_load(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc load*(self: gen_qsvgrenderer_types.QSvgRenderer, contents: seq[byte]): bool =
  fcQSvgRenderer_loadWithContents(self.h, struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))))

proc load*(self: gen_qsvgrenderer_types.QSvgRenderer, contents: gen_qxmlstream_types.QXmlStreamReader): bool =
  fcQSvgRenderer_load2(self.h, contents.h)

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter): void =
  fcQSvgRenderer_render(self.h, p.h)

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter, bounds: gen_qrect_types.QRectF): void =
  fcQSvgRenderer_render2(self.h, p.h, bounds.h)

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter, elementId: string): void =
  fcQSvgRenderer_render3(self.h, p.h, struct_miqt_string(data: elementId, len: csize_t(len(elementId))))

proc repaintNeeded*(self: gen_qsvgrenderer_types.QSvgRenderer, ): void =
  fcQSvgRenderer_repaintNeeded(self.h)

type QSvgRendererrepaintNeededSlot* = proc()
proc miqt_exec_callback_cQSvgRenderer_repaintNeeded(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSvgRendererrepaintNeededSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSvgRenderer_repaintNeeded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSvgRendererrepaintNeededSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrepaintNeeded*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRendererrepaintNeededSlot) =
  var tmp = new QSvgRendererrepaintNeededSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_connect_repaintNeeded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSvgRenderer_repaintNeeded, miqt_exec_callback_cQSvgRenderer_repaintNeeded_release)

proc tr*(_: type gen_qsvgrenderer_types.QSvgRenderer, s: cstring, c: cstring): string =
  let v_ms = fcQSvgRenderer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsvgrenderer_types.QSvgRenderer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgRenderer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render*(self: gen_qsvgrenderer_types.QSvgRenderer, p: gen_qpainter_types.QPainter, elementId: string, bounds: gen_qrect_types.QRectF): void =
  fcQSvgRenderer_render32(self.h, p.h, struct_miqt_string(data: elementId, len: csize_t(len(elementId))), bounds.h)

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
type QSvgRendererVTable* = object
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
proc QSvgRenderermetaObject*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSvgRenderer_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSvgRenderermetacast*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cstring): pointer =
  fcQSvgRenderer_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSvgRenderer_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSvgRenderermetacall*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgRenderer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSvgRenderer_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSvgRendererevent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgRenderer_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSvgRenderer_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSvgRenderereventFilter*(self: gen_qsvgrenderer_types.QSvgRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgRenderer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSvgRenderer_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSvgRenderertimerEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSvgRenderer_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgRenderer_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSvgRendererchildEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSvgRenderer_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgRenderer_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSvgRenderercustomEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgRenderer_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgRenderer_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSvgRendererconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgRenderer_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSvgRenderer_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSvgRendererdisconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgRenderer_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSvgRenderer_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgRendererVTable](vtbl)
  let self = QSvgRenderer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSvgRenderer_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsvgrenderer_types.QSvgRenderer, ): cint =
  fcQSvgRenderer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: cstring): cint =
  fcQSvgRenderer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSvgRenderer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new(addr(vtbl[]), ))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    filename: string,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new2(addr(vtbl[]), struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: seq[byte],
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new3(addr(vtbl[]), struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents)))))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: gen_qxmlstream_types.QXmlStreamReader,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new4(addr(vtbl[]), contents.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new5(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    filename: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new6(addr(vtbl[]), struct_miqt_string(data: filename, len: csize_t(len(filename))), parent.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: seq[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new7(addr(vtbl[]), struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))), parent.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer,
    contents: gen_qxmlstream_types.QXmlStreamReader, parent: gen_qobject_types.QObject,
    vtbl: ref QSvgRendererVTable = nil): gen_qsvgrenderer_types.QSvgRenderer =
  let vtbl = if vtbl == nil: new QSvgRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgRendererVTable, _: ptr cQSvgRenderer) {.cdecl.} =
    let vtbl = cast[ref QSvgRendererVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgRenderer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgRenderer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgRenderer_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgRenderer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgRenderer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgRenderer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgRenderer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgRenderer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgRenderer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgRenderer_disconnectNotify
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgRenderer_new8(addr(vtbl[]), contents.h, parent.h))

proc staticMetaObject*(_: type gen_qsvgrenderer_types.QSvgRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_staticMetaObject())
proc delete*(self: gen_qsvgrenderer_types.QSvgRenderer) =
  fcQSvgRenderer_delete(self.h)
