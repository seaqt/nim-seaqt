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
type cQVideoSinkVTable = object
  destructor*: proc(vtbl: ptr cQVideoSinkVTable, self: ptr cQVideoSink) {.cdecl, raises:[], gcsafe.}
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
proc fcQVideoSink_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QVideoSink_virtualbase_metaObject".}
proc fcQVideoSink_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoSink_virtualbase_metacast".}
proc fcQVideoSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoSink_virtualbase_metacall".}
proc fcQVideoSink_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoSink_virtualbase_event".}
proc fcQVideoSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoSink_virtualbase_eventFilter".}
proc fcQVideoSink_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoSink_virtualbase_timerEvent".}
proc fcQVideoSink_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoSink_virtualbase_childEvent".}
proc fcQVideoSink_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoSink_virtualbase_customEvent".}
proc fcQVideoSink_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoSink_virtualbase_connectNotify".}
proc fcQVideoSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoSink_virtualbase_disconnectNotify".}
proc fcQVideoSink_new(vtbl: pointer, ): ptr cQVideoSink {.importc: "QVideoSink_new".}
proc fcQVideoSink_new2(vtbl: pointer, parent: pointer): ptr cQVideoSink {.importc: "QVideoSink_new2".}
proc fcQVideoSink_staticMetaObject(): pointer {.importc: "QVideoSink_staticMetaObject".}
proc fcQVideoSink_delete(self: pointer) {.importc: "QVideoSink_delete".}

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
proc miqt_exec_callback_cQVideoSink_videoFrameChanged(slot: int, frame: pointer) {.exportc: "miqt_exec_callback_QVideoSink_videoFrameChanged".} =
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
proc miqt_exec_callback_cQVideoSink_subtitleTextChanged(slot: int, subtitleText: struct_miqt_string) {.exportc: "miqt_exec_callback_QVideoSink_subtitleTextChanged".} =
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
proc miqt_exec_callback_cQVideoSink_videoSizeChanged(slot: int) {.exportc: "miqt_exec_callback_QVideoSink_videoSizeChanged".} =
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

type QVideoSinkmetaObjectProc* = proc(self: QVideoSink): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVideoSinkmetacastProc* = proc(self: QVideoSink, param1: cstring): pointer {.raises: [], gcsafe.}
type QVideoSinkmetacallProc* = proc(self: QVideoSink, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVideoSinkeventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoSinkeventFilterProc* = proc(self: QVideoSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoSinktimerEventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVideoSinkchildEventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVideoSinkcustomEventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoSinkconnectNotifyProc* = proc(self: QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoSinkdisconnectNotifyProc* = proc(self: QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoSinkVTable* = object
  vtbl: cQVideoSinkVTable
  metaObject*: QVideoSinkmetaObjectProc
  metacast*: QVideoSinkmetacastProc
  metacall*: QVideoSinkmetacallProc
  event*: QVideoSinkeventProc
  eventFilter*: QVideoSinkeventFilterProc
  timerEvent*: QVideoSinktimerEventProc
  childEvent*: QVideoSinkchildEventProc
  customEvent*: QVideoSinkcustomEventProc
  connectNotify*: QVideoSinkconnectNotifyProc
  disconnectNotify*: QVideoSinkdisconnectNotifyProc
proc QVideoSinkmetaObject*(self: gen_qvideosink_types.QVideoSink, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQVideoSink_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QVideoSinkmetacast*(self: gen_qvideosink_types.QVideoSink, param1: cstring): pointer =
  fcQVideoSink_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQVideoSink_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoSinkmetacall*(self: gen_qvideosink_types.QVideoSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQVideoSink_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoSinkevent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoSink_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVideoSink_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoSinkeventFilter*(self: gen_qvideosink_types.QVideoSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoSink_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVideoSink_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoSinktimerEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoSink_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoSink_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QVideoSinkchildEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoSink_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoSink_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QVideoSinkcustomEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoSink_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoSink_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QVideoSinkconnectNotify*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoSink_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoSink_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QVideoSinkdisconnectNotify*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoSink_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoSink_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](vtbl)
  let self = QVideoSink(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qvideosink_types.QVideoSink,
    vtbl: ref QVideoSinkVTable = nil): gen_qvideosink_types.QVideoSink =
  let vtbl = if vtbl == nil: new QVideoSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVideoSinkVTable, _: ptr cQVideoSink) {.cdecl.} =
    let vtbl = cast[ref QVideoSinkVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoSink_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoSink_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoSink_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoSink_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoSink_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoSink_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoSink_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoSink_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoSink_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoSink_disconnectNotify
  gen_qvideosink_types.QVideoSink(h: fcQVideoSink_new(addr(vtbl[]), ))

proc create*(T: type gen_qvideosink_types.QVideoSink,
    parent: gen_qobject_types.QObject,
    vtbl: ref QVideoSinkVTable = nil): gen_qvideosink_types.QVideoSink =
  let vtbl = if vtbl == nil: new QVideoSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVideoSinkVTable, _: ptr cQVideoSink) {.cdecl.} =
    let vtbl = cast[ref QVideoSinkVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoSink_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoSink_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoSink_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoSink_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoSink_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoSink_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoSink_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoSink_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoSink_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoSink_disconnectNotify
  gen_qvideosink_types.QVideoSink(h: fcQVideoSink_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qvideosink_types.QVideoSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_staticMetaObject())
proc delete*(self: gen_qvideosink_types.QVideoSink) =
  fcQVideoSink_delete(self.h)
