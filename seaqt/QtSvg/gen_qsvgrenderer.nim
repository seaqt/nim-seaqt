import ./Qt6Svg_libs

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

proc fcQSvgRenderer_new(): ptr cQSvgRenderer {.importc: "QSvgRenderer_new".}
proc fcQSvgRenderer_new2(filename: struct_miqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new2".}
proc fcQSvgRenderer_new3(contents: struct_miqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new3".}
proc fcQSvgRenderer_new4(contents: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new4".}
proc fcQSvgRenderer_new5(parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new5".}
proc fcQSvgRenderer_new6(filename: struct_miqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new6".}
proc fcQSvgRenderer_new7(contents: struct_miqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new7".}
proc fcQSvgRenderer_new8(contents: pointer, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new8".}
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
proc fcQSvgRenderer_connect_repaintNeeded(self: pointer, slot: int) {.importc: "QSvgRenderer_connect_repaintNeeded".}
proc fcQSvgRenderer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgRenderer_tr2".}
proc fcQSvgRenderer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgRenderer_tr3".}
proc fcQSvgRenderer_render32(self: pointer, p: pointer, elementId: struct_miqt_string, bounds: pointer): void {.importc: "QSvgRenderer_render32".}
proc fQSvgRenderer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSvgRenderer_virtualbase_metaObject".}
proc fcQSvgRenderer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_metaObject".}
proc fQSvgRenderer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSvgRenderer_virtualbase_metacast".}
proc fcQSvgRenderer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_metacast".}
proc fQSvgRenderer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSvgRenderer_virtualbase_metacall".}
proc fcQSvgRenderer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_metacall".}
proc fQSvgRenderer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSvgRenderer_virtualbase_event".}
proc fcQSvgRenderer_override_virtual_event(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_event".}
proc fQSvgRenderer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSvgRenderer_virtualbase_eventFilter".}
proc fcQSvgRenderer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_eventFilter".}
proc fQSvgRenderer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSvgRenderer_virtualbase_timerEvent".}
proc fcQSvgRenderer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_timerEvent".}
proc fQSvgRenderer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSvgRenderer_virtualbase_childEvent".}
proc fcQSvgRenderer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_childEvent".}
proc fQSvgRenderer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSvgRenderer_virtualbase_customEvent".}
proc fcQSvgRenderer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_customEvent".}
proc fQSvgRenderer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSvgRenderer_virtualbase_connectNotify".}
proc fcQSvgRenderer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_connectNotify".}
proc fQSvgRenderer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSvgRenderer_virtualbase_disconnectNotify".}
proc fcQSvgRenderer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_disconnectNotify".}
proc fcQSvgRenderer_staticMetaObject(): pointer {.importc: "QSvgRenderer_staticMetaObject".}
proc fcQSvgRenderer_delete(self: pointer) {.importc: "QSvgRenderer_delete".}


func init*(T: type gen_qsvgrenderer_types.QSvgRenderer, h: ptr cQSvgRenderer): gen_qsvgrenderer_types.QSvgRenderer =
  T(h: h)
proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, ): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new())

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, filename: string): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new2(struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, contents: seq[byte]): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new3(struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents)))))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, contents: gen_qxmlstream_types.QXmlStreamReader): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new4(contents.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, parent: gen_qobject_types.QObject): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new5(parent.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, filename: string, parent: gen_qobject_types.QObject): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new6(struct_miqt_string(data: filename, len: csize_t(len(filename))), parent.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, contents: seq[byte], parent: gen_qobject_types.QObject): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new7(struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))), parent.h))

proc create*(T: type gen_qsvgrenderer_types.QSvgRenderer, contents: gen_qxmlstream_types.QXmlStreamReader, parent: gen_qobject_types.QObject): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer.init(fcQSvgRenderer_new8(contents.h, parent.h))

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
proc miqt_exec_callback_QSvgRenderer_repaintNeeded(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QSvgRendererrepaintNeededSlot](cast[pointer](slot))
  nimfunc[]()

proc onrepaintNeeded*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRendererrepaintNeededSlot) =
  var tmp = new QSvgRendererrepaintNeededSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_connect_repaintNeeded(self.h, cast[int](addr tmp[]))

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

proc QSvgRenderermetaObject*(self: gen_qsvgrenderer_types.QSvgRenderer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSvgRenderer_virtualbase_metaObject(self.h))

type QSvgRenderermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderermetaObjectProc) =
  # TODO check subclass
  var tmp = new QSvgRenderermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_metaObject(self: ptr cQSvgRenderer, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgRenderer_metaObject ".} =
  var nimfunc = cast[ptr QSvgRenderermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgRenderermetacast*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cstring): pointer =
  fQSvgRenderer_virtualbase_metacast(self.h, param1)

type QSvgRenderermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderermetacastProc) =
  # TODO check subclass
  var tmp = new QSvgRenderermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_metacast(self: ptr cQSvgRenderer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSvgRenderer_metacast ".} =
  var nimfunc = cast[ptr QSvgRenderermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgRenderermetacall*(self: gen_qsvgrenderer_types.QSvgRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fQSvgRenderer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSvgRenderermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderermetacallProc) =
  # TODO check subclass
  var tmp = new QSvgRenderermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_metacall(self: ptr cQSvgRenderer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSvgRenderer_metacall ".} =
  var nimfunc = cast[ptr QSvgRenderermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSvgRendererevent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QEvent): bool =
  fQSvgRenderer_virtualbase_event(self.h, event.h)

type QSvgRenderereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderereventProc) =
  # TODO check subclass
  var tmp = new QSvgRenderereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_event(self: ptr cQSvgRenderer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgRenderer_event ".} =
  var nimfunc = cast[ptr QSvgRenderereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgRenderereventFilter*(self: gen_qsvgrenderer_types.QSvgRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSvgRenderer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSvgRenderereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderereventFilterProc) =
  # TODO check subclass
  var tmp = new QSvgRenderereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_eventFilter(self: ptr cQSvgRenderer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgRenderer_eventFilter ".} =
  var nimfunc = cast[ptr QSvgRenderereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSvgRenderertimerEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSvgRenderer_virtualbase_timerEvent(self.h, event.h)

type QSvgRenderertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderertimerEventProc) =
  # TODO check subclass
  var tmp = new QSvgRenderertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_timerEvent(self: ptr cQSvgRenderer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_timerEvent ".} =
  var nimfunc = cast[ptr QSvgRenderertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSvgRendererchildEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QChildEvent): void =
  fQSvgRenderer_virtualbase_childEvent(self.h, event.h)

type QSvgRendererchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRendererchildEventProc) =
  # TODO check subclass
  var tmp = new QSvgRendererchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_childEvent(self: ptr cQSvgRenderer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_childEvent ".} =
  var nimfunc = cast[ptr QSvgRendererchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSvgRenderercustomEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, event: gen_qcoreevent_types.QEvent): void =
  fQSvgRenderer_virtualbase_customEvent(self.h, event.h)

type QSvgRenderercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRenderercustomEventProc) =
  # TODO check subclass
  var tmp = new QSvgRenderercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_customEvent(self: ptr cQSvgRenderer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_customEvent ".} =
  var nimfunc = cast[ptr QSvgRenderercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSvgRendererconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSvgRenderer_virtualbase_connectNotify(self.h, signal.h)

type QSvgRendererconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRendererconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSvgRendererconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_connectNotify(self: ptr cQSvgRenderer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_connectNotify ".} =
  var nimfunc = cast[ptr QSvgRendererconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSvgRendererdisconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSvgRenderer_virtualbase_disconnectNotify(self.h, signal.h)

type QSvgRendererdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsvgrenderer_types.QSvgRenderer, slot: QSvgRendererdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSvgRendererdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_disconnectNotify(self: ptr cQSvgRenderer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_disconnectNotify ".} =
  var nimfunc = cast[ptr QSvgRendererdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsvgrenderer_types.QSvgRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgRenderer_staticMetaObject())
proc delete*(self: gen_qsvgrenderer_types.QSvgRenderer) =
  fcQSvgRenderer_delete(self.h)
