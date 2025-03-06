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
{.compile("gen_qtranslator.cpp", cflags).}


import ./gen_qtranslator_types
export gen_qtranslator_types

import
  ./gen_qcoreevent_types,
  ./gen_qlocale_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQTranslator*{.exportc: "QTranslator", incompleteStruct.} = object

proc fcQTranslator_new(): ptr cQTranslator {.importc: "QTranslator_new".}
proc fcQTranslator_new2(parent: pointer): ptr cQTranslator {.importc: "QTranslator_new2".}
proc fcQTranslator_metaObject(self: pointer, ): pointer {.importc: "QTranslator_metaObject".}
proc fcQTranslator_metacast(self: pointer, param1: cstring): pointer {.importc: "QTranslator_metacast".}
proc fcQTranslator_tr(s: cstring): struct_miqt_string {.importc: "QTranslator_tr".}
proc fcQTranslator_trUtf8(s: cstring): struct_miqt_string {.importc: "QTranslator_trUtf8".}
proc fcQTranslator_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_translate".}
proc fcQTranslator_isEmpty(self: pointer, ): bool {.importc: "QTranslator_isEmpty".}
proc fcQTranslator_language(self: pointer, ): struct_miqt_string {.importc: "QTranslator_language".}
proc fcQTranslator_filePath(self: pointer, ): struct_miqt_string {.importc: "QTranslator_filePath".}
proc fcQTranslator_load(self: pointer, filename: struct_miqt_string): bool {.importc: "QTranslator_load".}
proc fcQTranslator_load2(self: pointer, locale: pointer, filename: struct_miqt_string): bool {.importc: "QTranslator_load2".}
proc fcQTranslator_load3(self: pointer, data: ptr uint8, len: cint): bool {.importc: "QTranslator_load3".}
proc fcQTranslator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTranslator_tr2".}
proc fcQTranslator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_tr3".}
proc fcQTranslator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTranslator_trUtf82".}
proc fcQTranslator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_trUtf83".}
proc fcQTranslator_load22(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string): bool {.importc: "QTranslator_load22".}
proc fcQTranslator_load32(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string, search_delimiters: struct_miqt_string): bool {.importc: "QTranslator_load32".}
proc fcQTranslator_load4(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string, search_delimiters: struct_miqt_string, suffix: struct_miqt_string): bool {.importc: "QTranslator_load4".}
proc fcQTranslator_load33(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string): bool {.importc: "QTranslator_load33".}
proc fcQTranslator_load42(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string, directory: struct_miqt_string): bool {.importc: "QTranslator_load42".}
proc fcQTranslator_load5(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string, directory: struct_miqt_string, suffix: struct_miqt_string): bool {.importc: "QTranslator_load5".}
proc fcQTranslator_load34(self: pointer, data: ptr uint8, len: cint, directory: struct_miqt_string): bool {.importc: "QTranslator_load34".}
proc fQTranslator_virtualbase_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string{.importc: "QTranslator_virtualbase_translate".}
proc fcQTranslator_override_virtual_translate(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_translate".}
proc fQTranslator_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QTranslator_virtualbase_isEmpty".}
proc fcQTranslator_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_isEmpty".}
proc fQTranslator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTranslator_virtualbase_event".}
proc fcQTranslator_override_virtual_event(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_event".}
proc fQTranslator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTranslator_virtualbase_eventFilter".}
proc fcQTranslator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_eventFilter".}
proc fQTranslator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTranslator_virtualbase_timerEvent".}
proc fcQTranslator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_timerEvent".}
proc fQTranslator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTranslator_virtualbase_childEvent".}
proc fcQTranslator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_childEvent".}
proc fQTranslator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTranslator_virtualbase_customEvent".}
proc fcQTranslator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_customEvent".}
proc fQTranslator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTranslator_virtualbase_connectNotify".}
proc fcQTranslator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_connectNotify".}
proc fQTranslator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTranslator_virtualbase_disconnectNotify".}
proc fcQTranslator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_disconnectNotify".}
proc fcQTranslator_delete(self: pointer) {.importc: "QTranslator_delete".}


func init*(T: type gen_qtranslator_types.QTranslator, h: ptr cQTranslator): gen_qtranslator_types.QTranslator =
  T(h: h)
proc create*(T: type gen_qtranslator_types.QTranslator, ): gen_qtranslator_types.QTranslator =
  gen_qtranslator_types.QTranslator.init(fcQTranslator_new())

proc create*(T: type gen_qtranslator_types.QTranslator, parent: gen_qobject_types.QObject): gen_qtranslator_types.QTranslator =
  gen_qtranslator_types.QTranslator.init(fcQTranslator_new2(parent.h))

proc metaObject*(self: gen_qtranslator_types.QTranslator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_metaObject(self.h))

proc metacast*(self: gen_qtranslator_types.QTranslator, param1: cstring): pointer =
  fcQTranslator_metacast(self.h, param1)

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring): string =
  let v_ms = fcQTranslator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtranslator_types.QTranslator, s: cstring): string =
  let v_ms = fcQTranslator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc translate*(self: gen_qtranslator_types.QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQTranslator_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isEmpty*(self: gen_qtranslator_types.QTranslator, ): bool =
  fcQTranslator_isEmpty(self.h)

proc language*(self: gen_qtranslator_types.QTranslator, ): string =
  let v_ms = fcQTranslator_language(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qtranslator_types.QTranslator, ): string =
  let v_ms = fcQTranslator_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qtranslator_types.QTranslator, filename: string): bool =
  fcQTranslator_load(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: string): bool =
  fcQTranslator_load2(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc load*(self: gen_qtranslator_types.QTranslator, data: ptr uint8, len: cint): bool =
  fcQTranslator_load3(self.h, data, len)

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring): string =
  let v_ms = fcQTranslator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTranslator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring): string =
  let v_ms = fcQTranslator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTranslator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qtranslator_types.QTranslator, filename: string, directory: string): bool =
  fcQTranslator_load22(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc load*(self: gen_qtranslator_types.QTranslator, filename: string, directory: string, search_delimiters: string): bool =
  fcQTranslator_load32(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: search_delimiters, len: csize_t(len(search_delimiters))))

proc load*(self: gen_qtranslator_types.QTranslator, filename: string, directory: string, search_delimiters: string, suffix: string): bool =
  fcQTranslator_load4(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: search_delimiters, len: csize_t(len(search_delimiters))), struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: string, prefix: string): bool =
  fcQTranslator_load33(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: string, prefix: string, directory: string): bool =
  fcQTranslator_load42(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))), struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: string, prefix: string, directory: string, suffix: string): bool =
  fcQTranslator_load5(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc load*(self: gen_qtranslator_types.QTranslator, data: ptr uint8, len: cint, directory: string): bool =
  fcQTranslator_load34(self.h, data, len, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc QTranslatortranslate*(self: gen_qtranslator_types.QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fQTranslator_virtualbase_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTranslatortranslateProc* = proc(context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string
proc ontranslate*(self: gen_qtranslator_types.QTranslator, slot: QTranslatortranslateProc) =
  # TODO check subclass
  var tmp = new QTranslatortranslateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_translate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_translate(self: ptr cQTranslator, slot: int, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QTranslator_translate ".} =
  var nimfunc = cast[ptr QTranslatortranslateProc](cast[pointer](slot))
  let slotval1 = (context)

  let slotval2 = (sourceText)

  let slotval3 = (disambiguation)

  let slotval4 = n


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QTranslatorisEmpty*(self: gen_qtranslator_types.QTranslator, ): bool =
  fQTranslator_virtualbase_isEmpty(self.h)

type QTranslatorisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qtranslator_types.QTranslator, slot: QTranslatorisEmptyProc) =
  # TODO check subclass
  var tmp = new QTranslatorisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_isEmpty(self: ptr cQTranslator, slot: int): bool {.exportc: "miqt_exec_callback_QTranslator_isEmpty ".} =
  var nimfunc = cast[ptr QTranslatorisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTranslatorevent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QEvent): bool =
  fQTranslator_virtualbase_event(self.h, event.h)

type QTranslatoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtranslator_types.QTranslator, slot: QTranslatoreventProc) =
  # TODO check subclass
  var tmp = new QTranslatoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_event(self: ptr cQTranslator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTranslator_event ".} =
  var nimfunc = cast[ptr QTranslatoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTranslatoreventFilter*(self: gen_qtranslator_types.QTranslator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTranslator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTranslatoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtranslator_types.QTranslator, slot: QTranslatoreventFilterProc) =
  # TODO check subclass
  var tmp = new QTranslatoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_eventFilter(self: ptr cQTranslator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTranslator_eventFilter ".} =
  var nimfunc = cast[ptr QTranslatoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTranslatortimerEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTranslator_virtualbase_timerEvent(self.h, event.h)

type QTranslatortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtranslator_types.QTranslator, slot: QTranslatortimerEventProc) =
  # TODO check subclass
  var tmp = new QTranslatortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_timerEvent(self: ptr cQTranslator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTranslator_timerEvent ".} =
  var nimfunc = cast[ptr QTranslatortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTranslatorchildEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QChildEvent): void =
  fQTranslator_virtualbase_childEvent(self.h, event.h)

type QTranslatorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtranslator_types.QTranslator, slot: QTranslatorchildEventProc) =
  # TODO check subclass
  var tmp = new QTranslatorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_childEvent(self: ptr cQTranslator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTranslator_childEvent ".} =
  var nimfunc = cast[ptr QTranslatorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTranslatorcustomEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QEvent): void =
  fQTranslator_virtualbase_customEvent(self.h, event.h)

type QTranslatorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtranslator_types.QTranslator, slot: QTranslatorcustomEventProc) =
  # TODO check subclass
  var tmp = new QTranslatorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_customEvent(self: ptr cQTranslator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTranslator_customEvent ".} =
  var nimfunc = cast[ptr QTranslatorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTranslatorconnectNotify*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTranslator_virtualbase_connectNotify(self.h, signal.h)

type QTranslatorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtranslator_types.QTranslator, slot: QTranslatorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTranslatorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_connectNotify(self: ptr cQTranslator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTranslator_connectNotify ".} =
  var nimfunc = cast[ptr QTranslatorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTranslatordisconnectNotify*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTranslator_virtualbase_disconnectNotify(self.h, signal.h)

type QTranslatordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtranslator_types.QTranslator, slot: QTranslatordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTranslatordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_disconnectNotify(self: ptr cQTranslator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTranslator_disconnectNotify ".} =
  var nimfunc = cast[ptr QTranslatordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtranslator_types.QTranslator) =
  fcQTranslator_delete(self.h)
