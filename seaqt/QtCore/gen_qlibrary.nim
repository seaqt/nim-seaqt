import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qlibrary.cpp", cflags).}


type QLibraryLoadHintEnum* = distinct cint
template ResolveAllSymbolsHint*(_: type QLibraryLoadHintEnum): untyped = 1
template ExportExternalSymbolsHint*(_: type QLibraryLoadHintEnum): untyped = 2
template LoadArchiveMemberHint*(_: type QLibraryLoadHintEnum): untyped = 4
template PreventUnloadHint*(_: type QLibraryLoadHintEnum): untyped = 8
template DeepBindHint*(_: type QLibraryLoadHintEnum): untyped = 16


import ./gen_qlibrary_types
export gen_qlibrary_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQLibrary*{.exportc: "QLibrary", incompleteStruct.} = object

proc fcQLibrary_new(): ptr cQLibrary {.importc: "QLibrary_new".}
proc fcQLibrary_new2(fileName: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new2".}
proc fcQLibrary_new3(fileName: struct_miqt_string, verNum: cint): ptr cQLibrary {.importc: "QLibrary_new3".}
proc fcQLibrary_new4(fileName: struct_miqt_string, version: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new4".}
proc fcQLibrary_new5(parent: pointer): ptr cQLibrary {.importc: "QLibrary_new5".}
proc fcQLibrary_new6(fileName: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new6".}
proc fcQLibrary_new7(fileName: struct_miqt_string, verNum: cint, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new7".}
proc fcQLibrary_new8(fileName: struct_miqt_string, version: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new8".}
proc fcQLibrary_metaObject(self: pointer, ): pointer {.importc: "QLibrary_metaObject".}
proc fcQLibrary_metacast(self: pointer, param1: cstring): pointer {.importc: "QLibrary_metacast".}
proc fcQLibrary_tr(s: cstring): struct_miqt_string {.importc: "QLibrary_tr".}
proc fcQLibrary_trUtf8(s: cstring): struct_miqt_string {.importc: "QLibrary_trUtf8".}
proc fcQLibrary_load(self: pointer, ): bool {.importc: "QLibrary_load".}
proc fcQLibrary_unload(self: pointer, ): bool {.importc: "QLibrary_unload".}
proc fcQLibrary_isLoaded(self: pointer, ): bool {.importc: "QLibrary_isLoaded".}
proc fcQLibrary_isLibrary(fileName: struct_miqt_string): bool {.importc: "QLibrary_isLibrary".}
proc fcQLibrary_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QLibrary_setFileName".}
proc fcQLibrary_fileName(self: pointer, ): struct_miqt_string {.importc: "QLibrary_fileName".}
proc fcQLibrary_setFileNameAndVersion(self: pointer, fileName: struct_miqt_string, verNum: cint): void {.importc: "QLibrary_setFileNameAndVersion".}
proc fcQLibrary_setFileNameAndVersion2(self: pointer, fileName: struct_miqt_string, version: struct_miqt_string): void {.importc: "QLibrary_setFileNameAndVersion2".}
proc fcQLibrary_errorString(self: pointer, ): struct_miqt_string {.importc: "QLibrary_errorString".}
proc fcQLibrary_setLoadHints(self: pointer, hints: cint): void {.importc: "QLibrary_setLoadHints".}
proc fcQLibrary_loadHints(self: pointer, ): cint {.importc: "QLibrary_loadHints".}
proc fcQLibrary_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLibrary_tr2".}
proc fcQLibrary_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLibrary_tr3".}
proc fcQLibrary_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLibrary_trUtf82".}
proc fcQLibrary_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLibrary_trUtf83".}
proc fQLibrary_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLibrary_virtualbase_event".}
proc fcQLibrary_override_virtual_event(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_event".}
proc fQLibrary_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLibrary_virtualbase_eventFilter".}
proc fcQLibrary_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_eventFilter".}
proc fQLibrary_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLibrary_virtualbase_timerEvent".}
proc fcQLibrary_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_timerEvent".}
proc fQLibrary_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLibrary_virtualbase_childEvent".}
proc fcQLibrary_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_childEvent".}
proc fQLibrary_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLibrary_virtualbase_customEvent".}
proc fcQLibrary_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_customEvent".}
proc fQLibrary_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLibrary_virtualbase_connectNotify".}
proc fcQLibrary_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_connectNotify".}
proc fQLibrary_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLibrary_virtualbase_disconnectNotify".}
proc fcQLibrary_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_disconnectNotify".}
proc fcQLibrary_delete(self: pointer) {.importc: "QLibrary_delete".}


func init*(T: type gen_qlibrary_types.QLibrary, h: ptr cQLibrary): gen_qlibrary_types.QLibrary =
  T(h: h)
proc create*(T: type gen_qlibrary_types.QLibrary, ): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new())

proc create*(T: type gen_qlibrary_types.QLibrary, fileName: string): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new2(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qlibrary_types.QLibrary, fileName: string, verNum: cint): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new3(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum))

proc create*(T: type gen_qlibrary_types.QLibrary, fileName: string, version: string): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version)))))

proc create*(T: type gen_qlibrary_types.QLibrary, parent: gen_qobject_types.QObject): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new5(parent.h))

proc create*(T: type gen_qlibrary_types.QLibrary, fileName: string, parent: gen_qobject_types.QObject): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new6(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h))

proc create*(T: type gen_qlibrary_types.QLibrary, fileName: string, verNum: cint, parent: gen_qobject_types.QObject): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new7(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum, parent.h))

proc create*(T: type gen_qlibrary_types.QLibrary, fileName: string, version: string, parent: gen_qobject_types.QObject): gen_qlibrary_types.QLibrary =
  gen_qlibrary_types.QLibrary.init(fcQLibrary_new8(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))), parent.h))

proc metaObject*(self: gen_qlibrary_types.QLibrary, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_metaObject(self.h))

proc metacast*(self: gen_qlibrary_types.QLibrary, param1: cstring): pointer =
  fcQLibrary_metacast(self.h, param1)

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring): string =
  let v_ms = fcQLibrary_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlibrary_types.QLibrary, s: cstring): string =
  let v_ms = fcQLibrary_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qlibrary_types.QLibrary, ): bool =
  fcQLibrary_load(self.h)

proc unload*(self: gen_qlibrary_types.QLibrary, ): bool =
  fcQLibrary_unload(self.h)

proc isLoaded*(self: gen_qlibrary_types.QLibrary, ): bool =
  fcQLibrary_isLoaded(self.h)

proc isLibrary*(_: type gen_qlibrary_types.QLibrary, fileName: string): bool =
  fcQLibrary_isLibrary(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setFileName*(self: gen_qlibrary_types.QLibrary, fileName: string): void =
  fcQLibrary_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: gen_qlibrary_types.QLibrary, ): string =
  let v_ms = fcQLibrary_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileNameAndVersion*(self: gen_qlibrary_types.QLibrary, fileName: string, verNum: cint): void =
  fcQLibrary_setFileNameAndVersion(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum)

proc setFileNameAndVersion*(self: gen_qlibrary_types.QLibrary, fileName: string, version: string): void =
  fcQLibrary_setFileNameAndVersion2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))))

proc errorString*(self: gen_qlibrary_types.QLibrary, ): string =
  let v_ms = fcQLibrary_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLoadHints*(self: gen_qlibrary_types.QLibrary, hints: cint): void =
  fcQLibrary_setLoadHints(self.h, cint(hints))

proc loadHints*(self: gen_qlibrary_types.QLibrary, ): cint =
  cint(fcQLibrary_loadHints(self.h))

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring): string =
  let v_ms = fcQLibrary_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLibrary_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring): string =
  let v_ms = fcQLibrary_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLibrary_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QLibraryevent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QEvent): bool =
  fQLibrary_virtualbase_event(self.h, event.h)

type QLibraryeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlibrary_types.QLibrary, slot: QLibraryeventProc) =
  # TODO check subclass
  var tmp = new QLibraryeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_event(self: ptr cQLibrary, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLibrary_event ".} =
  var nimfunc = cast[ptr QLibraryeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLibraryeventFilter*(self: gen_qlibrary_types.QLibrary, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLibrary_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLibraryeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlibrary_types.QLibrary, slot: QLibraryeventFilterProc) =
  # TODO check subclass
  var tmp = new QLibraryeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_eventFilter(self: ptr cQLibrary, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLibrary_eventFilter ".} =
  var nimfunc = cast[ptr QLibraryeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLibrarytimerEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QTimerEvent): void =
  fQLibrary_virtualbase_timerEvent(self.h, event.h)

type QLibrarytimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlibrary_types.QLibrary, slot: QLibrarytimerEventProc) =
  # TODO check subclass
  var tmp = new QLibrarytimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_timerEvent(self: ptr cQLibrary, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLibrary_timerEvent ".} =
  var nimfunc = cast[ptr QLibrarytimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QLibrarychildEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QChildEvent): void =
  fQLibrary_virtualbase_childEvent(self.h, event.h)

type QLibrarychildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlibrary_types.QLibrary, slot: QLibrarychildEventProc) =
  # TODO check subclass
  var tmp = new QLibrarychildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_childEvent(self: ptr cQLibrary, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLibrary_childEvent ".} =
  var nimfunc = cast[ptr QLibrarychildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QLibrarycustomEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QEvent): void =
  fQLibrary_virtualbase_customEvent(self.h, event.h)

type QLibrarycustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlibrary_types.QLibrary, slot: QLibrarycustomEventProc) =
  # TODO check subclass
  var tmp = new QLibrarycustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_customEvent(self: ptr cQLibrary, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLibrary_customEvent ".} =
  var nimfunc = cast[ptr QLibrarycustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLibraryconnectNotify*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLibrary_virtualbase_connectNotify(self.h, signal.h)

type QLibraryconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlibrary_types.QLibrary, slot: QLibraryconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLibraryconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_connectNotify(self: ptr cQLibrary, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLibrary_connectNotify ".} =
  var nimfunc = cast[ptr QLibraryconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLibrarydisconnectNotify*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLibrary_virtualbase_disconnectNotify(self.h, signal.h)

type QLibrarydisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlibrary_types.QLibrary, slot: QLibrarydisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLibrarydisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_disconnectNotify(self: ptr cQLibrary, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLibrary_disconnectNotify ".} =
  var nimfunc = cast[ptr QLibrarydisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qlibrary_types.QLibrary) =
  fcQLibrary_delete(self.h)
