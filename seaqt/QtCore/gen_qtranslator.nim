import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qtranslator.cpp", QtCoreCFlags).}


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

proc fcQTranslator_metaObject(self: pointer): pointer {.importc: "QTranslator_metaObject".}
proc fcQTranslator_metacast(self: pointer, param1: cstring): pointer {.importc: "QTranslator_metacast".}
proc fcQTranslator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTranslator_metacall".}
proc fcQTranslator_tr(s: cstring): struct_miqt_string {.importc: "QTranslator_tr".}
proc fcQTranslator_trUtf8(s: cstring): struct_miqt_string {.importc: "QTranslator_trUtf8".}
proc fcQTranslator_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_translate".}
proc fcQTranslator_isEmpty(self: pointer): bool {.importc: "QTranslator_isEmpty".}
proc fcQTranslator_language(self: pointer): struct_miqt_string {.importc: "QTranslator_language".}
proc fcQTranslator_filePath(self: pointer): struct_miqt_string {.importc: "QTranslator_filePath".}
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
proc fcQTranslator_vtbl(self: pointer): pointer {.importc: "QTranslator_vtbl".}
proc fcQTranslator_vdata(self: pointer): pointer {.importc: "QTranslator_vdata".}

type cQTranslatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  translate*: proc(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTranslator_virtualbase_metaObject(self: pointer): pointer {.importc: "QTranslator_virtualbase_metaObject".}
proc fcQTranslator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTranslator_virtualbase_metacast".}
proc fcQTranslator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTranslator_virtualbase_metacall".}
proc fcQTranslator_virtualbase_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_virtualbase_translate".}
proc fcQTranslator_virtualbase_isEmpty(self: pointer): bool {.importc: "QTranslator_virtualbase_isEmpty".}
proc fcQTranslator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTranslator_virtualbase_event".}
proc fcQTranslator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTranslator_virtualbase_eventFilter".}
proc fcQTranslator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTranslator_virtualbase_timerEvent".}
proc fcQTranslator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTranslator_virtualbase_childEvent".}
proc fcQTranslator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTranslator_virtualbase_customEvent".}
proc fcQTranslator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTranslator_virtualbase_connectNotify".}
proc fcQTranslator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTranslator_virtualbase_disconnectNotify".}
proc fcQTranslator_protectedbase_sender(self: pointer): pointer {.importc: "QTranslator_protectedbase_sender".}
proc fcQTranslator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTranslator_protectedbase_senderSignalIndex".}
proc fcQTranslator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTranslator_protectedbase_receivers".}
proc fcQTranslator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTranslator_protectedbase_isSignalConnected".}
proc fcQTranslator_new(vtbl, vdata: pointer): ptr cQTranslator {.importc: "QTranslator_new".}
proc fcQTranslator_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTranslator {.importc: "QTranslator_new2".}
proc fcQTranslator_staticMetaObject(): pointer {.importc: "QTranslator_staticMetaObject".}

proc metaObject*(self: gen_qtranslator_types.QTranslator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtranslator_types.QTranslator, param1: cstring): pointer =
  fcQTranslator_metacast(self.h, param1)

proc metacall*(self: gen_qtranslator_types.QTranslator, param1: cint, param2: cint, param3: pointer): cint =
  fcQTranslator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring): string =
  let v_ms = fcQTranslator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtranslator_types.QTranslator, s: cstring): string =
  let v_ms = fcQTranslator_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc translate*(self: gen_qtranslator_types.QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQTranslator_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isEmpty*(self: gen_qtranslator_types.QTranslator): bool =
  fcQTranslator_isEmpty(self.h)

proc language*(self: gen_qtranslator_types.QTranslator): string =
  let v_ms = fcQTranslator_language(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qtranslator_types.QTranslator): string =
  let v_ms = fcQTranslator_filePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qtranslator_types.QTranslator, filename: openArray[char]): bool =
  fcQTranslator_load(self.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: openArray[char]): bool =
  fcQTranslator_load2(self.h, locale.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc load*(self: gen_qtranslator_types.QTranslator, data: ptr uint8, len: cint): bool =
  fcQTranslator_load3(self.h, data, len)

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring): string =
  let v_ms = fcQTranslator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTranslator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring): string =
  let v_ms = fcQTranslator_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtranslator_types.QTranslator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTranslator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qtranslator_types.QTranslator, filename: openArray[char], directory: openArray[char]): bool =
  fcQTranslator_load22(self.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))))

proc load*(self: gen_qtranslator_types.QTranslator, filename: openArray[char], directory: openArray[char], search_delimiters: openArray[char]): bool =
  fcQTranslator_load32(self.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))), struct_miqt_string(data: if len(search_delimiters) > 0: addr search_delimiters[0] else: nil, len: csize_t(len(search_delimiters))))

proc load*(self: gen_qtranslator_types.QTranslator, filename: openArray[char], directory: openArray[char], search_delimiters: openArray[char], suffix: openArray[char]): bool =
  fcQTranslator_load4(self.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))), struct_miqt_string(data: if len(search_delimiters) > 0: addr search_delimiters[0] else: nil, len: csize_t(len(search_delimiters))), struct_miqt_string(data: if len(suffix) > 0: addr suffix[0] else: nil, len: csize_t(len(suffix))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: openArray[char], prefix: openArray[char]): bool =
  fcQTranslator_load33(self.h, locale.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: openArray[char], prefix: openArray[char], directory: openArray[char]): bool =
  fcQTranslator_load42(self.h, locale.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))))

proc load*(self: gen_qtranslator_types.QTranslator, locale: gen_qlocale_types.QLocale, filename: openArray[char], prefix: openArray[char], directory: openArray[char], suffix: openArray[char]): bool =
  fcQTranslator_load5(self.h, locale.h, struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))), struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))), struct_miqt_string(data: if len(suffix) > 0: addr suffix[0] else: nil, len: csize_t(len(suffix))))

proc load*(self: gen_qtranslator_types.QTranslator, data: ptr uint8, len: cint, directory: openArray[char]): bool =
  fcQTranslator_load34(self.h, data, len, struct_miqt_string(data: if len(directory) > 0: addr directory[0] else: nil, len: csize_t(len(directory))))

type QTranslatormetaObjectProc* = proc(self: QTranslator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTranslatormetacastProc* = proc(self: QTranslator, param1: cstring): pointer {.raises: [], gcsafe.}
type QTranslatormetacallProc* = proc(self: QTranslator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTranslatortranslateProc* = proc(self: QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string {.raises: [], gcsafe.}
type QTranslatorisEmptyProc* = proc(self: QTranslator): bool {.raises: [], gcsafe.}
type QTranslatoreventProc* = proc(self: QTranslator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTranslatoreventFilterProc* = proc(self: QTranslator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTranslatortimerEventProc* = proc(self: QTranslator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTranslatorchildEventProc* = proc(self: QTranslator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTranslatorcustomEventProc* = proc(self: QTranslator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTranslatorconnectNotifyProc* = proc(self: QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTranslatordisconnectNotifyProc* = proc(self: QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTranslatorVTable* {.inheritable, pure.} = object
  vtbl: cQTranslatorVTable
  metaObject*: QTranslatormetaObjectProc
  metacast*: QTranslatormetacastProc
  metacall*: QTranslatormetacallProc
  translate*: QTranslatortranslateProc
  isEmpty*: QTranslatorisEmptyProc
  event*: QTranslatoreventProc
  eventFilter*: QTranslatoreventFilterProc
  timerEvent*: QTranslatortimerEventProc
  childEvent*: QTranslatorchildEventProc
  customEvent*: QTranslatorcustomEventProc
  connectNotify*: QTranslatorconnectNotifyProc
  disconnectNotify*: QTranslatordisconnectNotifyProc

proc QTranslatormetaObject*(self: gen_qtranslator_types.QTranslator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_virtualbase_metaObject(self.h), owned: false)

proc QTranslatormetacast*(self: gen_qtranslator_types.QTranslator, param1: cstring): pointer =
  fcQTranslator_virtualbase_metacast(self.h, param1)

proc QTranslatormetacall*(self: gen_qtranslator_types.QTranslator, param1: cint, param2: cint, param3: pointer): cint =
  fcQTranslator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTranslatortranslate*(self: gen_qtranslator_types.QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQTranslator_virtualbase_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QTranslatorisEmpty*(self: gen_qtranslator_types.QTranslator): bool =
  fcQTranslator_virtualbase_isEmpty(self.h)

proc QTranslatorevent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QEvent): bool =
  fcQTranslator_virtualbase_event(self.h, event.h)

proc QTranslatoreventFilter*(self: gen_qtranslator_types.QTranslator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTranslator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTranslatortimerEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTranslator_virtualbase_timerEvent(self.h, event.h)

proc QTranslatorchildEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTranslator_virtualbase_childEvent(self.h, event.h)

proc QTranslatorcustomEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QEvent): void =
  fcQTranslator_virtualbase_customEvent(self.h, event.h)

proc QTranslatorconnectNotify*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTranslator_virtualbase_connectNotify(self.h, signal.h)

proc QTranslatordisconnectNotify*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTranslator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTranslator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTranslator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTranslator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTranslator_vtable_callback_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = (context)
  let slotval2 = (sourceText)
  let slotval3 = (disambiguation)
  let slotval4 = n
  var virtualReturn = vtbl[].translate(self, slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQTranslator_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQTranslator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTranslator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTranslator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTranslator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTranslator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTranslator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTranslator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](fcQTranslator_vdata(self))
  let self = QTranslator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTranslator* {.inheritable.} = ref object of QTranslator
  vtbl*: cQTranslatorVTable

method metaObject*(self: VirtualQTranslator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTranslatormetaObject(self[])
method metacast*(self: VirtualQTranslator, param1: cstring): pointer {.base.} =
  QTranslatormetacast(self[], param1)
method metacall*(self: VirtualQTranslator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTranslatormetacall(self[], param1, param2, param3)
method translate*(self: VirtualQTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string {.base.} =
  QTranslatortranslate(self[], context, sourceText, disambiguation, n)
method isEmpty*(self: VirtualQTranslator): bool {.base.} =
  QTranslatorisEmpty(self[])
method event*(self: VirtualQTranslator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTranslatorevent(self[], event)
method eventFilter*(self: VirtualQTranslator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTranslatoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQTranslator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTranslatortimerEvent(self[], event)
method childEvent*(self: VirtualQTranslator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTranslatorchildEvent(self[], event)
method customEvent*(self: VirtualQTranslator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTranslatorcustomEvent(self[], event)
method connectNotify*(self: VirtualQTranslator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTranslatorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTranslator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTranslatordisconnectNotify(self[], signal)

proc fcQTranslator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTranslator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTranslator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTranslator_method_callback_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = (context)
  let slotval2 = (sourceText)
  let slotval3 = (disambiguation)
  let slotval4 = n
  var virtualReturn = inst.translate(slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQTranslator_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQTranslator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTranslator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTranslator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTranslator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTranslator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTranslator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTranslator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTranslator](fcQTranslator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qtranslator_types.QTranslator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTranslator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtranslator_types.QTranslator): cint =
  fcQTranslator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtranslator_types.QTranslator, signal: cstring): cint =
  fcQTranslator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTranslator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtranslator_types.QTranslator,
    vtbl: ref QTranslatorVTable = nil): gen_qtranslator_types.QTranslator =
  let vtbl = if vtbl == nil: new QTranslatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTranslatorVTable](fcQTranslator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTranslator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTranslator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTranslator_vtable_callback_metacall
  if not isNil(vtbl[].translate):
    vtbl[].vtbl.translate = fcQTranslator_vtable_callback_translate
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQTranslator_vtable_callback_isEmpty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTranslator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTranslator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTranslator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTranslator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTranslator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTranslator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTranslator_vtable_callback_disconnectNotify
  gen_qtranslator_types.QTranslator(h: fcQTranslator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtranslator_types.QTranslator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTranslatorVTable = nil): gen_qtranslator_types.QTranslator =
  let vtbl = if vtbl == nil: new QTranslatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTranslatorVTable](fcQTranslator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTranslator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTranslator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTranslator_vtable_callback_metacall
  if not isNil(vtbl[].translate):
    vtbl[].vtbl.translate = fcQTranslator_vtable_callback_translate
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQTranslator_vtable_callback_isEmpty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTranslator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTranslator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTranslator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTranslator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTranslator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTranslator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTranslator_vtable_callback_disconnectNotify
  gen_qtranslator_types.QTranslator(h: fcQTranslator_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTranslator_mvtbl = cQTranslatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTranslator()[])](self.fcQTranslator_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTranslator_method_callback_metaObject,
  metacast: fcQTranslator_method_callback_metacast,
  metacall: fcQTranslator_method_callback_metacall,
  translate: fcQTranslator_method_callback_translate,
  isEmpty: fcQTranslator_method_callback_isEmpty,
  event: fcQTranslator_method_callback_event,
  eventFilter: fcQTranslator_method_callback_eventFilter,
  timerEvent: fcQTranslator_method_callback_timerEvent,
  childEvent: fcQTranslator_method_callback_childEvent,
  customEvent: fcQTranslator_method_callback_customEvent,
  connectNotify: fcQTranslator_method_callback_connectNotify,
  disconnectNotify: fcQTranslator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtranslator_types.QTranslator,
    inst: VirtualQTranslator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTranslator_new(addr(cQTranslator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtranslator_types.QTranslator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTranslator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTranslator_new2(addr(cQTranslator_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtranslator_types.QTranslator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_staticMetaObject())
