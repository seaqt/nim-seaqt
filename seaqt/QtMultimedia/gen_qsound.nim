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
{.compile("gen_qsound.cpp", cflags).}


type QSoundLoopEnum* = distinct cint
template Infinite*(_: type QSoundLoopEnum): untyped = -1


import ./gen_qsound_types
export gen_qsound_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQSound*{.exportc: "QSound", incompleteStruct.} = object

proc fcQSound_new(filename: struct_miqt_string): ptr cQSound {.importc: "QSound_new".}
proc fcQSound_new2(filename: struct_miqt_string, parent: pointer): ptr cQSound {.importc: "QSound_new2".}
proc fcQSound_metaObject(self: pointer, ): pointer {.importc: "QSound_metaObject".}
proc fcQSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QSound_metacast".}
proc fcQSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSound_metacall".}
proc fcQSound_tr(s: cstring): struct_miqt_string {.importc: "QSound_tr".}
proc fcQSound_trUtf8(s: cstring): struct_miqt_string {.importc: "QSound_trUtf8".}
proc fcQSound_play(filename: struct_miqt_string): void {.importc: "QSound_play".}
proc fcQSound_loops(self: pointer, ): cint {.importc: "QSound_loops".}
proc fcQSound_loopsRemaining(self: pointer, ): cint {.importc: "QSound_loopsRemaining".}
proc fcQSound_setLoops(self: pointer, loops: cint): void {.importc: "QSound_setLoops".}
proc fcQSound_fileName(self: pointer, ): struct_miqt_string {.importc: "QSound_fileName".}
proc fcQSound_isFinished(self: pointer, ): bool {.importc: "QSound_isFinished".}
proc fcQSound_play2(self: pointer, ): void {.importc: "QSound_play2".}
proc fcQSound_stop(self: pointer, ): void {.importc: "QSound_stop".}
proc fcQSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_tr2".}
proc fcQSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_tr3".}
proc fcQSound_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_trUtf82".}
proc fcQSound_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_trUtf83".}
proc fQSound_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSound_virtualbase_metaObject".}
proc fcQSound_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSound_override_virtual_metaObject".}
proc fQSound_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSound_virtualbase_metacast".}
proc fcQSound_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSound_override_virtual_metacast".}
proc fQSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSound_virtualbase_metacall".}
proc fcQSound_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSound_override_virtual_metacall".}
proc fQSound_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSound_virtualbase_event".}
proc fcQSound_override_virtual_event(self: pointer, slot: int) {.importc: "QSound_override_virtual_event".}
proc fQSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSound_virtualbase_eventFilter".}
proc fcQSound_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSound_override_virtual_eventFilter".}
proc fQSound_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSound_virtualbase_timerEvent".}
proc fcQSound_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSound_override_virtual_timerEvent".}
proc fQSound_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSound_virtualbase_childEvent".}
proc fcQSound_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSound_override_virtual_childEvent".}
proc fQSound_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSound_virtualbase_customEvent".}
proc fcQSound_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSound_override_virtual_customEvent".}
proc fQSound_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSound_virtualbase_connectNotify".}
proc fcQSound_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSound_override_virtual_connectNotify".}
proc fQSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSound_virtualbase_disconnectNotify".}
proc fcQSound_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSound_override_virtual_disconnectNotify".}
proc fcQSound_staticMetaObject(): pointer {.importc: "QSound_staticMetaObject".}
proc fcQSound_delete(self: pointer) {.importc: "QSound_delete".}


func init*(T: type gen_qsound_types.QSound, h: ptr cQSound): gen_qsound_types.QSound =
  T(h: h)
proc create*(T: type gen_qsound_types.QSound, filename: string): gen_qsound_types.QSound =
  gen_qsound_types.QSound.init(fcQSound_new(struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc create*(T: type gen_qsound_types.QSound, filename: string, parent: gen_qobject_types.QObject): gen_qsound_types.QSound =
  gen_qsound_types.QSound.init(fcQSound_new2(struct_miqt_string(data: filename, len: csize_t(len(filename))), parent.h))

proc metaObject*(self: gen_qsound_types.QSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_metaObject(self.h))

proc metacast*(self: gen_qsound_types.QSound, param1: cstring): pointer =
  fcQSound_metacast(self.h, param1)

proc metacall*(self: gen_qsound_types.QSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsound_types.QSound, s: cstring): string =
  let v_ms = fcQSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring): string =
  let v_ms = fcQSound_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc play*(_: type gen_qsound_types.QSound, filename: string): void =
  fcQSound_play(struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loops*(self: gen_qsound_types.QSound, ): cint =
  fcQSound_loops(self.h)

proc loopsRemaining*(self: gen_qsound_types.QSound, ): cint =
  fcQSound_loopsRemaining(self.h)

proc setLoops*(self: gen_qsound_types.QSound, loops: cint): void =
  fcQSound_setLoops(self.h, loops)

proc fileName*(self: gen_qsound_types.QSound, ): string =
  let v_ms = fcQSound_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: gen_qsound_types.QSound, ): bool =
  fcQSound_isFinished(self.h)

proc play*(self: gen_qsound_types.QSound, ): void =
  fcQSound_play2(self.h)

proc stop*(self: gen_qsound_types.QSound, ): void =
  fcQSound_stop(self.h)

proc tr*(_: type gen_qsound_types.QSound, s: cstring, c: cstring): string =
  let v_ms = fcQSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsound_types.QSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring, c: cstring): string =
  let v_ms = fcQSound_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSound_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSoundmetaObject*(self: gen_qsound_types.QSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSound_virtualbase_metaObject(self.h))

type QSoundmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsound_types.QSound, slot: QSoundmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSoundmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_metaObject(self: ptr cQSound, slot: int): pointer {.exportc: "miqt_exec_callback_QSound_metaObject ".} =
  var nimfunc = cast[ptr QSoundmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSoundmetacast*(self: gen_qsound_types.QSound, param1: cstring): pointer =
  fQSound_virtualbase_metacast(self.h, param1)

type QSoundmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsound_types.QSound, slot: QSoundmetacastProc) =
  # TODO check subclass
  var tmp = new QSoundmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_metacast(self: ptr cQSound, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSound_metacast ".} =
  var nimfunc = cast[ptr QSoundmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSoundmetacall*(self: gen_qsound_types.QSound, param1: cint, param2: cint, param3: pointer): cint =
  fQSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSoundmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsound_types.QSound, slot: QSoundmetacallProc) =
  # TODO check subclass
  var tmp = new QSoundmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_metacall(self: ptr cQSound, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSound_metacall ".} =
  var nimfunc = cast[ptr QSoundmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSoundevent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QEvent): bool =
  fQSound_virtualbase_event(self.h, event.h)

type QSoundeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsound_types.QSound, slot: QSoundeventProc) =
  # TODO check subclass
  var tmp = new QSoundeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_event(self: ptr cQSound, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSound_event ".} =
  var nimfunc = cast[ptr QSoundeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSoundeventFilter*(self: gen_qsound_types.QSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSound_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSoundeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsound_types.QSound, slot: QSoundeventFilterProc) =
  # TODO check subclass
  var tmp = new QSoundeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_eventFilter(self: ptr cQSound, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSound_eventFilter ".} =
  var nimfunc = cast[ptr QSoundeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSoundtimerEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSound_virtualbase_timerEvent(self.h, event.h)

type QSoundtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsound_types.QSound, slot: QSoundtimerEventProc) =
  # TODO check subclass
  var tmp = new QSoundtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_timerEvent(self: ptr cQSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSound_timerEvent ".} =
  var nimfunc = cast[ptr QSoundtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSoundchildEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QChildEvent): void =
  fQSound_virtualbase_childEvent(self.h, event.h)

type QSoundchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsound_types.QSound, slot: QSoundchildEventProc) =
  # TODO check subclass
  var tmp = new QSoundchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_childEvent(self: ptr cQSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSound_childEvent ".} =
  var nimfunc = cast[ptr QSoundchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSoundcustomEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QEvent): void =
  fQSound_virtualbase_customEvent(self.h, event.h)

type QSoundcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsound_types.QSound, slot: QSoundcustomEventProc) =
  # TODO check subclass
  var tmp = new QSoundcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_customEvent(self: ptr cQSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSound_customEvent ".} =
  var nimfunc = cast[ptr QSoundcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSoundconnectNotify*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSound_virtualbase_connectNotify(self.h, signal.h)

type QSoundconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsound_types.QSound, slot: QSoundconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSoundconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_connectNotify(self: ptr cQSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSound_connectNotify ".} =
  var nimfunc = cast[ptr QSoundconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSounddisconnectNotify*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSound_virtualbase_disconnectNotify(self.h, signal.h)

type QSounddisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsound_types.QSound, slot: QSounddisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSounddisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_disconnectNotify(self: ptr cQSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSound_disconnectNotify ".} =
  var nimfunc = cast[ptr QSounddisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsound_types.QSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_staticMetaObject())
proc delete*(self: gen_qsound_types.QSound) =
  fcQSound_delete(self.h)
