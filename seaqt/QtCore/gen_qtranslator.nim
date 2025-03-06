import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
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

proc fcQTranslator_metaObject(self: pointer, ): pointer {.importc: "QTranslator_metaObject".}
proc fcQTranslator_metacast(self: pointer, param1: cstring): pointer {.importc: "QTranslator_metacast".}
proc fcQTranslator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTranslator_metacall".}
proc fcQTranslator_tr(s: cstring): struct_miqt_string {.importc: "QTranslator_tr".}
proc fcQTranslator_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_translate".}
proc fcQTranslator_isEmpty(self: pointer, ): bool {.importc: "QTranslator_isEmpty".}
proc fcQTranslator_language(self: pointer, ): struct_miqt_string {.importc: "QTranslator_language".}
proc fcQTranslator_filePath(self: pointer, ): struct_miqt_string {.importc: "QTranslator_filePath".}
proc fcQTranslator_load(self: pointer, filename: struct_miqt_string): bool {.importc: "QTranslator_load".}
proc fcQTranslator_load2(self: pointer, locale: pointer, filename: struct_miqt_string): bool {.importc: "QTranslator_load2".}
proc fcQTranslator_load3(self: pointer, data: ptr uint8, len: cint): bool {.importc: "QTranslator_load3".}
proc fcQTranslator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTranslator_tr2".}
proc fcQTranslator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_tr3".}
proc fcQTranslator_load22(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string): bool {.importc: "QTranslator_load22".}
proc fcQTranslator_load32(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string, search_delimiters: struct_miqt_string): bool {.importc: "QTranslator_load32".}
proc fcQTranslator_load4(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string, search_delimiters: struct_miqt_string, suffix: struct_miqt_string): bool {.importc: "QTranslator_load4".}
proc fcQTranslator_load33(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string): bool {.importc: "QTranslator_load33".}
proc fcQTranslator_load42(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string, directory: struct_miqt_string): bool {.importc: "QTranslator_load42".}
proc fcQTranslator_load5(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string, directory: struct_miqt_string, suffix: struct_miqt_string): bool {.importc: "QTranslator_load5".}
proc fcQTranslator_load34(self: pointer, data: ptr uint8, len: cint, directory: struct_miqt_string): bool {.importc: "QTranslator_load34".}
type cQTranslatorVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQTranslatorVTable, self: ptr cQTranslator) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  translate*: proc(vtbl, self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTranslator_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTranslator_virtualbase_metaObject".}
proc fcQTranslator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTranslator_virtualbase_metacast".}
proc fcQTranslator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTranslator_virtualbase_metacall".}
proc fcQTranslator_virtualbase_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_virtualbase_translate".}
proc fcQTranslator_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QTranslator_virtualbase_isEmpty".}
proc fcQTranslator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTranslator_virtualbase_event".}
proc fcQTranslator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTranslator_virtualbase_eventFilter".}
proc fcQTranslator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTranslator_virtualbase_timerEvent".}
proc fcQTranslator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTranslator_virtualbase_childEvent".}
proc fcQTranslator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTranslator_virtualbase_customEvent".}
proc fcQTranslator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTranslator_virtualbase_connectNotify".}
proc fcQTranslator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTranslator_virtualbase_disconnectNotify".}
proc fcQTranslator_protectedbase_sender(self: pointer, ): pointer {.importc: "QTranslator_protectedbase_sender".}
proc fcQTranslator_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTranslator_protectedbase_senderSignalIndex".}
proc fcQTranslator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTranslator_protectedbase_receivers".}
proc fcQTranslator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTranslator_protectedbase_isSignalConnected".}
proc fcQTranslator_new(vtbl: pointer, ): ptr cQTranslator {.importc: "QTranslator_new".}
proc fcQTranslator_new2(vtbl: pointer, parent: pointer): ptr cQTranslator {.importc: "QTranslator_new2".}
proc fcQTranslator_staticMetaObject(): pointer {.importc: "QTranslator_staticMetaObject".}

proc metaObject*(self: gen_qtranslator_types.QTranslator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtranslator_types.QTranslator, param1: cstring): pointer =
  fcQTranslator_metacast(self.h, param1)

proc metacall*(self: gen_qtranslator_types.QTranslator, param1: cint, param2: cint, param3: pointer): cint =
  fcQTranslator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtranslator_types.QTranslator, s: cstring): string =
  let v_ms = fcQTranslator_tr(s)
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
proc QTranslatormetaObject*(self: gen_qtranslator_types.QTranslator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQTranslator_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTranslatormetacast*(self: gen_qtranslator_types.QTranslator, param1: cstring): pointer =
  fcQTranslator_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTranslator_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTranslatormetacall*(self: gen_qtranslator_types.QTranslator, param1: cint, param2: cint, param3: pointer): cint =
  fcQTranslator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTranslator_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTranslatortranslate*(self: gen_qtranslator_types.QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQTranslator_virtualbase_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQTranslator_translate(vtbl: pointer, self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = (context)
  let slotval2 = (sourceText)
  let slotval3 = (disambiguation)
  let slotval4 = n
  var virtualReturn = vtbl[].translate(self, slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QTranslatorisEmpty*(self: gen_qtranslator_types.QTranslator, ): bool =
  fcQTranslator_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQTranslator_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QTranslatorevent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QEvent): bool =
  fcQTranslator_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTranslator_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTranslatoreventFilter*(self: gen_qtranslator_types.QTranslator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTranslator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTranslator_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTranslatortimerEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTranslator_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTranslator_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTranslatorchildEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTranslator_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTranslator_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTranslatorcustomEvent*(self: gen_qtranslator_types.QTranslator, event: gen_qcoreevent_types.QEvent): void =
  fcQTranslator_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTranslator_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTranslatorconnectNotify*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTranslator_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTranslator_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTranslatordisconnectNotify*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTranslator_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTranslator_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTranslatorVTable](vtbl)
  let self = QTranslator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTranslator* {.inheritable.} = ref object of QTranslator
  vtbl*: cQTranslatorVTable
method metaObject*(self: VirtualQTranslator, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTranslatormetaObject(self[])
proc miqt_exec_method_cQTranslator_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTranslator, param1: cstring): pointer {.base.} =
  QTranslatormetacast(self[], param1)
proc miqt_exec_method_cQTranslator_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTranslator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTranslatormetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQTranslator_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method translate*(self: VirtualQTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string {.base.} =
  QTranslatortranslate(self[], context, sourceText, disambiguation, n)
proc miqt_exec_method_cQTranslator_translate(vtbl: pointer, inst: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = (context)
  let slotval2 = (sourceText)
  let slotval3 = (disambiguation)
  let slotval4 = n
  var virtualReturn = vtbl.translate(slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method isEmpty*(self: VirtualQTranslator, ): bool {.base.} =
  QTranslatorisEmpty(self[])
proc miqt_exec_method_cQTranslator_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

method event*(self: VirtualQTranslator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTranslatorevent(self[], event)
proc miqt_exec_method_cQTranslator_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTranslator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTranslatoreventFilter(self[], watched, event)
proc miqt_exec_method_cQTranslator_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTranslator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTranslatortimerEvent(self[], event)
proc miqt_exec_method_cQTranslator_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQTranslator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTranslatorchildEvent(self[], event)
proc miqt_exec_method_cQTranslator_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQTranslator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTranslatorcustomEvent(self[], event)
proc miqt_exec_method_cQTranslator_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQTranslator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTranslatorconnectNotify(self[], signal)
proc miqt_exec_method_cQTranslator_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTranslator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTranslatordisconnectNotify(self[], signal)
proc miqt_exec_method_cQTranslator_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTranslator](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qtranslator_types.QTranslator, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTranslator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtranslator_types.QTranslator, ): cint =
  fcQTranslator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtranslator_types.QTranslator, signal: cstring): cint =
  fcQTranslator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtranslator_types.QTranslator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTranslator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtranslator_types.QTranslator,
    vtbl: ref QTranslatorVTable = nil): gen_qtranslator_types.QTranslator =
  let vtbl = if vtbl == nil: new QTranslatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTranslatorVTable, _: ptr cQTranslator) {.cdecl.} =
    let vtbl = cast[ref QTranslatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTranslator_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTranslator_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTranslator_metacall
  if not isNil(vtbl[].translate):
    vtbl[].vtbl.translate = miqt_exec_callback_cQTranslator_translate
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQTranslator_isEmpty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTranslator_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTranslator_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTranslator_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTranslator_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTranslator_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTranslator_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTranslator_disconnectNotify
  gen_qtranslator_types.QTranslator(h: fcQTranslator_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtranslator_types.QTranslator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTranslatorVTable = nil): gen_qtranslator_types.QTranslator =
  let vtbl = if vtbl == nil: new QTranslatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTranslatorVTable, _: ptr cQTranslator) {.cdecl.} =
    let vtbl = cast[ref QTranslatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTranslator_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTranslator_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTranslator_metacall
  if not isNil(vtbl[].translate):
    vtbl[].vtbl.translate = miqt_exec_callback_cQTranslator_translate
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQTranslator_isEmpty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTranslator_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTranslator_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTranslator_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTranslator_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTranslator_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTranslator_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTranslator_disconnectNotify
  gen_qtranslator_types.QTranslator(h: fcQTranslator_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtranslator_types.QTranslator,
    vtbl: VirtualQTranslator) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTranslatorVTable, _: ptr cQTranslator) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTranslator()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTranslator_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTranslator_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTranslator_metacall
  vtbl[].vtbl.translate = miqt_exec_method_cQTranslator_translate
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQTranslator_isEmpty
  vtbl[].vtbl.event = miqt_exec_method_cQTranslator_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTranslator_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTranslator_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTranslator_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTranslator_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTranslator_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTranslator_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTranslator_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qtranslator_types.QTranslator,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQTranslator) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTranslatorVTable, _: ptr cQTranslator) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTranslator()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTranslator, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTranslator_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTranslator_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTranslator_metacall
  vtbl[].vtbl.translate = miqt_exec_method_cQTranslator_translate
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQTranslator_isEmpty
  vtbl[].vtbl.event = miqt_exec_method_cQTranslator_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTranslator_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTranslator_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTranslator_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTranslator_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTranslator_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTranslator_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTranslator_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtranslator_types.QTranslator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTranslator_staticMetaObject())
