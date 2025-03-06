import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qvideosink.cpp", cflags).}


import ./gen_qvideosink_types
export gen_qvideosink_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qvideoframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvideoframe_types

type cQVideoSink*{.exportc: "QVideoSink", incompleteStruct.} = object

proc fcQVideoSink_new(): ptr cQVideoSink {.importc: "QVideoSink_new".}
proc fcQVideoSink_new2(parent: pointer): ptr cQVideoSink {.importc: "QVideoSink_new2".}
proc fcQVideoSink_metaObject(self: pointer, ): pointer {.importc: "QVideoSink_metaObject".}
proc fcQVideoSink_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoSink_metacast".}
proc fcQVideoSink_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoSink_metacall".}
proc fcQVideoSink_tr(s: cstring): struct_miqt_string {.importc: "QVideoSink_tr".}
proc fcQVideoSink_videoSize(self: pointer, ): pointer {.importc: "QVideoSink_videoSize".}
proc fcQVideoSink_subtitleText(self: pointer, ): struct_miqt_string {.importc: "QVideoSink_subtitleText".}
proc fcQVideoSink_setSubtitleText(self: pointer, subtitle: struct_miqt_string): void {.importc: "QVideoSink_setSubtitleText".}
proc fcQVideoSink_setVideoFrame(self: pointer, frame: pointer): void {.importc: "QVideoSink_setVideoFrame".}
proc fcQVideoSink_videoFrame(self: pointer, ): pointer {.importc: "QVideoSink_videoFrame".}
proc fcQVideoSink_videoFrameChanged(self: pointer, frame: pointer): void {.importc: "QVideoSink_videoFrameChanged".}
proc fcQVideoSink_connect_videoFrameChanged(self: pointer, slot: int) {.importc: "QVideoSink_connect_videoFrameChanged".}
proc fcQVideoSink_subtitleTextChanged(self: pointer, subtitleText: struct_miqt_string): void {.importc: "QVideoSink_subtitleTextChanged".}
proc fcQVideoSink_connect_subtitleTextChanged(self: pointer, slot: int) {.importc: "QVideoSink_connect_subtitleTextChanged".}
proc fcQVideoSink_videoSizeChanged(self: pointer, ): void {.importc: "QVideoSink_videoSizeChanged".}
proc fcQVideoSink_connect_videoSizeChanged(self: pointer, slot: int) {.importc: "QVideoSink_connect_videoSizeChanged".}
proc fcQVideoSink_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoSink_tr2".}
proc fcQVideoSink_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoSink_tr3".}
proc fQVideoSink_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QVideoSink_virtualbase_metaObject".}
proc fcQVideoSink_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_metaObject".}
proc fQVideoSink_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QVideoSink_virtualbase_metacast".}
proc fcQVideoSink_override_virtual_metacast(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_metacast".}
proc fQVideoSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVideoSink_virtualbase_metacall".}
proc fcQVideoSink_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_metacall".}
proc fQVideoSink_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVideoSink_virtualbase_event".}
proc fcQVideoSink_override_virtual_event(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_event".}
proc fQVideoSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVideoSink_virtualbase_eventFilter".}
proc fcQVideoSink_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_eventFilter".}
proc fQVideoSink_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVideoSink_virtualbase_timerEvent".}
proc fcQVideoSink_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_timerEvent".}
proc fQVideoSink_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVideoSink_virtualbase_childEvent".}
proc fcQVideoSink_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_childEvent".}
proc fQVideoSink_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVideoSink_virtualbase_customEvent".}
proc fcQVideoSink_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_customEvent".}
proc fQVideoSink_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVideoSink_virtualbase_connectNotify".}
proc fcQVideoSink_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_connectNotify".}
proc fQVideoSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVideoSink_virtualbase_disconnectNotify".}
proc fcQVideoSink_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_disconnectNotify".}
proc fcQVideoSink_staticMetaObject(): pointer {.importc: "QVideoSink_staticMetaObject".}
proc fcQVideoSink_delete(self: pointer) {.importc: "QVideoSink_delete".}


func init*(T: type gen_qvideosink_types.QVideoSink, h: ptr cQVideoSink): gen_qvideosink_types.QVideoSink =
  T(h: h)
proc create*(T: type gen_qvideosink_types.QVideoSink, ): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink.init(fcQVideoSink_new())

proc create*(T: type gen_qvideosink_types.QVideoSink, parent: gen_qobject_types.QObject): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink.init(fcQVideoSink_new2(parent.h))

proc metaObject*(self: gen_qvideosink_types.QVideoSink, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_metaObject(self.h))

proc metacast*(self: gen_qvideosink_types.QVideoSink, param1: cstring): pointer =
  fcQVideoSink_metacast(self.h, param1)

proc metacall*(self: gen_qvideosink_types.QVideoSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoSink_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideosink_types.QVideoSink, s: cstring): string =
  let v_ms = fcQVideoSink_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoSize*(self: gen_qvideosink_types.QVideoSink, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoSink_videoSize(self.h))

proc subtitleText*(self: gen_qvideosink_types.QVideoSink, ): string =
  let v_ms = fcQVideoSink_subtitleText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSubtitleText*(self: gen_qvideosink_types.QVideoSink, subtitle: string): void =
  fcQVideoSink_setSubtitleText(self.h, struct_miqt_string(data: subtitle, len: csize_t(len(subtitle))))

proc setVideoFrame*(self: gen_qvideosink_types.QVideoSink, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoSink_setVideoFrame(self.h, frame.h)

proc videoFrame*(self: gen_qvideosink_types.QVideoSink, ): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoSink_videoFrame(self.h))

proc videoFrameChanged*(self: gen_qvideosink_types.QVideoSink, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoSink_videoFrameChanged(self.h, frame.h)

type QVideoSinkvideoFrameChangedSlot* = proc(frame: gen_qvideoframe_types.QVideoFrame)
proc miqt_exec_callback_QVideoSink_videoFrameChanged(slot: int, frame: pointer) {.exportc.} =
  let nimfunc = cast[ptr QVideoSinkvideoFrameChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame)

  nimfunc[](slotval1)

proc onvideoFrameChanged*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkvideoFrameChangedSlot) =
  var tmp = new QVideoSinkvideoFrameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_connect_videoFrameChanged(self.h, cast[int](addr tmp[]))

proc subtitleTextChanged*(self: gen_qvideosink_types.QVideoSink, subtitleText: string): void =
  fcQVideoSink_subtitleTextChanged(self.h, struct_miqt_string(data: subtitleText, len: csize_t(len(subtitleText))))

type QVideoSinksubtitleTextChangedSlot* = proc(subtitleText: string)
proc miqt_exec_callback_QVideoSink_subtitleTextChanged(slot: int, subtitleText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QVideoSinksubtitleTextChangedSlot](cast[pointer](slot))
  let vsubtitleText_ms = subtitleText
  let vsubtitleTextx_ret = string.fromBytes(toOpenArrayByte(vsubtitleText_ms.data, 0, int(vsubtitleText_ms.len)-1))
  c_free(vsubtitleText_ms.data)
  let slotval1 = vsubtitleTextx_ret

  nimfunc[](slotval1)

proc onsubtitleTextChanged*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinksubtitleTextChangedSlot) =
  var tmp = new QVideoSinksubtitleTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_connect_subtitleTextChanged(self.h, cast[int](addr tmp[]))

proc videoSizeChanged*(self: gen_qvideosink_types.QVideoSink, ): void =
  fcQVideoSink_videoSizeChanged(self.h)

type QVideoSinkvideoSizeChangedSlot* = proc()
proc miqt_exec_callback_QVideoSink_videoSizeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QVideoSinkvideoSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvideoSizeChanged*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkvideoSizeChangedSlot) =
  var tmp = new QVideoSinkvideoSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_connect_videoSizeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvideosink_types.QVideoSink, s: cstring, c: cstring): string =
  let v_ms = fcQVideoSink_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideosink_types.QVideoSink, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoSink_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QVideoSinkmetaObject*(self: gen_qvideosink_types.QVideoSink, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQVideoSink_virtualbase_metaObject(self.h))

type QVideoSinkmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkmetaObjectProc) =
  # TODO check subclass
  var tmp = new QVideoSinkmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_metaObject(self: ptr cQVideoSink, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoSink_metaObject ".} =
  var nimfunc = cast[ptr QVideoSinkmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoSinkmetacast*(self: gen_qvideosink_types.QVideoSink, param1: cstring): pointer =
  fQVideoSink_virtualbase_metacast(self.h, param1)

type QVideoSinkmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkmetacastProc) =
  # TODO check subclass
  var tmp = new QVideoSinkmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_metacast(self: ptr cQVideoSink, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QVideoSink_metacast ".} =
  var nimfunc = cast[ptr QVideoSinkmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoSinkmetacall*(self: gen_qvideosink_types.QVideoSink, param1: cint, param2: cint, param3: pointer): cint =
  fQVideoSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVideoSinkmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkmetacallProc) =
  # TODO check subclass
  var tmp = new QVideoSinkmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_metacall(self: ptr cQVideoSink, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVideoSink_metacall ".} =
  var nimfunc = cast[ptr QVideoSinkmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QVideoSinkevent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QEvent): bool =
  fQVideoSink_virtualbase_event(self.h, event.h)

type QVideoSinkeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkeventProc) =
  # TODO check subclass
  var tmp = new QVideoSinkeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_event(self: ptr cQVideoSink, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoSink_event ".} =
  var nimfunc = cast[ptr QVideoSinkeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoSinkeventFilter*(self: gen_qvideosink_types.QVideoSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQVideoSink_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoSinkeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkeventFilterProc) =
  # TODO check subclass
  var tmp = new QVideoSinkeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_eventFilter(self: ptr cQVideoSink, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoSink_eventFilter ".} =
  var nimfunc = cast[ptr QVideoSinkeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QVideoSinktimerEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QTimerEvent): void =
  fQVideoSink_virtualbase_timerEvent(self.h, event.h)

type QVideoSinktimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinktimerEventProc) =
  # TODO check subclass
  var tmp = new QVideoSinktimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_timerEvent(self: ptr cQVideoSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_timerEvent ".} =
  var nimfunc = cast[ptr QVideoSinktimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QVideoSinkchildEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QChildEvent): void =
  fQVideoSink_virtualbase_childEvent(self.h, event.h)

type QVideoSinkchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkchildEventProc) =
  # TODO check subclass
  var tmp = new QVideoSinkchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_childEvent(self: ptr cQVideoSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_childEvent ".} =
  var nimfunc = cast[ptr QVideoSinkchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QVideoSinkcustomEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QEvent): void =
  fQVideoSink_virtualbase_customEvent(self.h, event.h)

type QVideoSinkcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkcustomEventProc) =
  # TODO check subclass
  var tmp = new QVideoSinkcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_customEvent(self: ptr cQVideoSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_customEvent ".} =
  var nimfunc = cast[ptr QVideoSinkcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVideoSinkconnectNotify*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVideoSink_virtualbase_connectNotify(self.h, signal.h)

type QVideoSinkconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoSinkconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_connectNotify(self: ptr cQVideoSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_connectNotify ".} =
  var nimfunc = cast[ptr QVideoSinkconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVideoSinkdisconnectNotify*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVideoSink_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoSinkdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoSinkdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_disconnectNotify(self: ptr cQVideoSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_disconnectNotify ".} =
  var nimfunc = cast[ptr QVideoSinkdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qvideosink_types.QVideoSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_staticMetaObject())
proc delete*(self: gen_qvideosink_types.QVideoSink) =
  fcQVideoSink_delete(self.h)
