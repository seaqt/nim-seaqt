import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qabstractvideofilter.cpp", cflags).}


type QVideoFilterRunnableRunFlagEnum* = distinct cint
template LastInChain*(_: type QVideoFilterRunnableRunFlagEnum): untyped = 1


import ./gen_qabstractvideofilter_types
export gen_qabstractvideofilter_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qvideoframe_types,
  ./gen_qvideosurfaceformat_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvideoframe_types,
  gen_qvideosurfaceformat_types

type cQVideoFilterRunnable*{.exportc: "QVideoFilterRunnable", incompleteStruct.} = object
type cQAbstractVideoFilter*{.exportc: "QAbstractVideoFilter", incompleteStruct.} = object

proc fcQVideoFilterRunnable_run(self: pointer, input: pointer, surfaceFormat: pointer, flags: cint): pointer {.importc: "QVideoFilterRunnable_run".}
proc fcQVideoFilterRunnable_operatorAssign(self: pointer, param1: pointer): void {.importc: "QVideoFilterRunnable_operatorAssign".}
proc fcQVideoFilterRunnable_delete(self: pointer) {.importc: "QVideoFilterRunnable_delete".}
proc fcQAbstractVideoFilter_new(): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new".}
proc fcQAbstractVideoFilter_new2(parent: pointer): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new2".}
proc fcQAbstractVideoFilter_metaObject(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_metaObject".}
proc fcQAbstractVideoFilter_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoFilter_metacast".}
proc fcQAbstractVideoFilter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoFilter_metacall".}
proc fcQAbstractVideoFilter_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr".}
proc fcQAbstractVideoFilter_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf8".}
proc fcQAbstractVideoFilter_isActive(self: pointer, ): bool {.importc: "QAbstractVideoFilter_isActive".}
proc fcQAbstractVideoFilter_setActive(self: pointer, v: bool): void {.importc: "QAbstractVideoFilter_setActive".}
proc fcQAbstractVideoFilter_createFilterRunnable(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_createFilterRunnable".}
proc fcQAbstractVideoFilter_activeChanged(self: pointer, ): void {.importc: "QAbstractVideoFilter_activeChanged".}
proc fcQAbstractVideoFilter_connect_activeChanged(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_connect_activeChanged".}
proc fcQAbstractVideoFilter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr2".}
proc fcQAbstractVideoFilter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_tr3".}
proc fcQAbstractVideoFilter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf82".}
proc fcQAbstractVideoFilter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf83".}
proc fQAbstractVideoFilter_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractVideoFilter_virtualbase_metaObject".}
proc fcQAbstractVideoFilter_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_metaObject".}
proc fQAbstractVideoFilter_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractVideoFilter_virtualbase_metacast".}
proc fcQAbstractVideoFilter_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_metacast".}
proc fQAbstractVideoFilter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractVideoFilter_virtualbase_metacall".}
proc fcQAbstractVideoFilter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_metacall".}
proc fcQAbstractVideoFilter_override_virtual_createFilterRunnable(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_createFilterRunnable".}
proc fQAbstractVideoFilter_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractVideoFilter_virtualbase_event".}
proc fcQAbstractVideoFilter_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_event".}
proc fQAbstractVideoFilter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractVideoFilter_virtualbase_eventFilter".}
proc fcQAbstractVideoFilter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_eventFilter".}
proc fQAbstractVideoFilter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_timerEvent".}
proc fcQAbstractVideoFilter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_timerEvent".}
proc fQAbstractVideoFilter_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_childEvent".}
proc fcQAbstractVideoFilter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_childEvent".}
proc fQAbstractVideoFilter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_customEvent".}
proc fcQAbstractVideoFilter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_customEvent".}
proc fQAbstractVideoFilter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_connectNotify".}
proc fcQAbstractVideoFilter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_connectNotify".}
proc fQAbstractVideoFilter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_disconnectNotify".}
proc fcQAbstractVideoFilter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_disconnectNotify".}
proc fcQAbstractVideoFilter_staticMetaObject(): pointer {.importc: "QAbstractVideoFilter_staticMetaObject".}
proc fcQAbstractVideoFilter_delete(self: pointer) {.importc: "QAbstractVideoFilter_delete".}


func init*(T: type gen_qabstractvideofilter_types.QVideoFilterRunnable, h: ptr cQVideoFilterRunnable): gen_qabstractvideofilter_types.QVideoFilterRunnable =
  T(h: h)
proc run*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable, input: gen_qvideoframe_types.QVideoFrame, surfaceFormat: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, flags: cint): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFilterRunnable_run(self.h, input.h, surfaceFormat.h, cint(flags)))

proc operatorAssign*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable, param1: gen_qabstractvideofilter_types.QVideoFilterRunnable): void =
  fcQVideoFilterRunnable_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable) =
  fcQVideoFilterRunnable_delete(self.h)

func init*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter, h: ptr cQAbstractVideoFilter): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  T(h: h)
proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  gen_qabstractvideofilter_types.QAbstractVideoFilter.init(fcQAbstractVideoFilter_new())

proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter, parent: gen_qobject_types.QObject): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  gen_qabstractvideofilter_types.QAbstractVideoFilter.init(fcQAbstractVideoFilter_new2(parent.h))

proc metaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_metaObject(self.h))

proc metacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cstring): pointer =
  fcQAbstractVideoFilter_metacast(self.h, param1)

proc metacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoFilter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring): string =
  let v_ms = fcQAbstractVideoFilter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring): string =
  let v_ms = fcQAbstractVideoFilter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): bool =
  fcQAbstractVideoFilter_isActive(self.h)

proc setActive*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, v: bool): void =
  fcQAbstractVideoFilter_setActive(self.h, v)

proc createFilterRunnable*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qabstractvideofilter_types.QVideoFilterRunnable =
  gen_qabstractvideofilter_types.QVideoFilterRunnable(h: fcQAbstractVideoFilter_createFilterRunnable(self.h))

proc activeChanged*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): void =
  fcQAbstractVideoFilter_activeChanged(self.h)

type QAbstractVideoFilteractiveChangedSlot* = proc()
proc miqt_exec_callback_QAbstractVideoFilter_activeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractVideoFilteractiveChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onactiveChanged*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFilteractiveChangedSlot) =
  var tmp = new QAbstractVideoFilteractiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_connect_activeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoFilter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoFilter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoFilter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoFilter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAbstractVideoFiltermetaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractVideoFilter_virtualbase_metaObject(self.h))

type QAbstractVideoFiltermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltermetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_metaObject(self: ptr cQAbstractVideoFilter, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoFilter_metaObject ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractVideoFiltermetacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cstring): pointer =
  fQAbstractVideoFilter_virtualbase_metacast(self.h, param1)

type QAbstractVideoFiltermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltermetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_metacast(self: ptr cQAbstractVideoFilter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractVideoFilter_metacast ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoFiltermetacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractVideoFilter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractVideoFiltermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltermetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_metacall(self: ptr cQAbstractVideoFilter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractVideoFilter_metacall ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractVideoFiltercreateFilterRunnableProc* = proc(): gen_qabstractvideofilter_types.QVideoFilterRunnable
proc oncreateFilterRunnable*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltercreateFilterRunnableProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltercreateFilterRunnableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_createFilterRunnable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_createFilterRunnable(self: ptr cQAbstractVideoFilter, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoFilter_createFilterRunnable ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltercreateFilterRunnableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractVideoFilterevent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractVideoFilter_virtualbase_event(self.h, event.h)

type QAbstractVideoFiltereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltereventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_event(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoFilter_event ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoFiltereventFilter*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractVideoFilter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractVideoFiltereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltereventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_eventFilter(self: ptr cQAbstractVideoFilter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoFilter_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractVideoFiltertimerEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractVideoFilter_virtualbase_timerEvent(self.h, event.h)

type QAbstractVideoFiltertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltertimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_timerEvent(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractVideoFilterchildEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractVideoFilter_virtualbase_childEvent(self.h, event.h)

type QAbstractVideoFilterchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFilterchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFilterchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_childEvent(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_childEvent ".} =
  var nimfunc = cast[ptr QAbstractVideoFilterchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractVideoFiltercustomEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractVideoFilter_virtualbase_customEvent(self.h, event.h)

type QAbstractVideoFiltercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFiltercustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFiltercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_customEvent(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_customEvent ".} =
  var nimfunc = cast[ptr QAbstractVideoFiltercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractVideoFilterconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractVideoFilter_virtualbase_connectNotify(self.h, signal.h)

type QAbstractVideoFilterconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFilterconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFilterconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_connectNotify(self: ptr cQAbstractVideoFilter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractVideoFilterconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractVideoFilterdisconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractVideoFilter_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractVideoFilterdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFilterdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoFilterdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_disconnectNotify(self: ptr cQAbstractVideoFilter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractVideoFilterdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_staticMetaObject())
proc delete*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter) =
  fcQAbstractVideoFilter_delete(self.h)
