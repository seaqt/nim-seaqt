import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qiconengineplugin.cpp", cflags).}


import ./gen_qiconengineplugin_types
export gen_qiconengineplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qiconengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qiconengine_types

type cQIconEnginePlugin*{.exportc: "QIconEnginePlugin", incompleteStruct.} = object

proc fcQIconEnginePlugin_new(): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new".}
proc fcQIconEnginePlugin_new2(parent: pointer): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new2".}
proc fcQIconEnginePlugin_metaObject(self: pointer, ): pointer {.importc: "QIconEnginePlugin_metaObject".}
proc fcQIconEnginePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QIconEnginePlugin_metacast".}
proc fcQIconEnginePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIconEnginePlugin_metacall".}
proc fcQIconEnginePlugin_tr(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr".}
proc fcQIconEnginePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf8".}
proc fcQIconEnginePlugin_create(self: pointer, filename: struct_miqt_string): pointer {.importc: "QIconEnginePlugin_create".}
proc fcQIconEnginePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr2".}
proc fcQIconEnginePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_tr3".}
proc fcQIconEnginePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf82".}
proc fcQIconEnginePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf83".}
proc fQIconEnginePlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QIconEnginePlugin_virtualbase_metaObject".}
proc fcQIconEnginePlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_metaObject".}
proc fQIconEnginePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QIconEnginePlugin_virtualbase_metacast".}
proc fcQIconEnginePlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_metacast".}
proc fQIconEnginePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QIconEnginePlugin_virtualbase_metacall".}
proc fcQIconEnginePlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_metacall".}
proc fcQIconEnginePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_create".}
proc fQIconEnginePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIconEnginePlugin_virtualbase_event".}
proc fcQIconEnginePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_event".}
proc fQIconEnginePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIconEnginePlugin_virtualbase_eventFilter".}
proc fcQIconEnginePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_eventFilter".}
proc fQIconEnginePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIconEnginePlugin_virtualbase_timerEvent".}
proc fcQIconEnginePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_timerEvent".}
proc fQIconEnginePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIconEnginePlugin_virtualbase_childEvent".}
proc fcQIconEnginePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_childEvent".}
proc fQIconEnginePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIconEnginePlugin_virtualbase_customEvent".}
proc fcQIconEnginePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_customEvent".}
proc fQIconEnginePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIconEnginePlugin_virtualbase_connectNotify".}
proc fcQIconEnginePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_connectNotify".}
proc fQIconEnginePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIconEnginePlugin_virtualbase_disconnectNotify".}
proc fcQIconEnginePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_disconnectNotify".}
proc fcQIconEnginePlugin_staticMetaObject(): pointer {.importc: "QIconEnginePlugin_staticMetaObject".}
proc fcQIconEnginePlugin_delete(self: pointer) {.importc: "QIconEnginePlugin_delete".}


func init*(T: type gen_qiconengineplugin_types.QIconEnginePlugin, h: ptr cQIconEnginePlugin): gen_qiconengineplugin_types.QIconEnginePlugin =
  T(h: h)
proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin, ): gen_qiconengineplugin_types.QIconEnginePlugin =
  gen_qiconengineplugin_types.QIconEnginePlugin.init(fcQIconEnginePlugin_new())

proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin, parent: gen_qobject_types.QObject): gen_qiconengineplugin_types.QIconEnginePlugin =
  gen_qiconengineplugin_types.QIconEnginePlugin.init(fcQIconEnginePlugin_new2(parent.h))

proc metaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_metaObject(self.h))

proc metacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cstring): pointer =
  fcQIconEnginePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQIconEnginePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring): string =
  let v_ms = fcQIconEnginePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring): string =
  let v_ms = fcQIconEnginePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qiconengineplugin_types.QIconEnginePlugin, filename: string): gen_qiconengine_types.QIconEngine =
  gen_qiconengine_types.QIconEngine(h: fcQIconEnginePlugin_create(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQIconEnginePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIconEnginePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQIconEnginePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIconEnginePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QIconEnginePluginmetaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQIconEnginePlugin_virtualbase_metaObject(self.h))

type QIconEnginePluginmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QIconEnginePluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_metaObject(self: ptr cQIconEnginePlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QIconEnginePlugin_metaObject ".} =
  var nimfunc = cast[ptr QIconEnginePluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QIconEnginePluginmetacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cstring): pointer =
  fQIconEnginePlugin_virtualbase_metacast(self.h, param1)

type QIconEnginePluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePluginmetacastProc) =
  # TODO check subclass
  var tmp = new QIconEnginePluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_metacast(self: ptr cQIconEnginePlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QIconEnginePlugin_metacast ".} =
  var nimfunc = cast[ptr QIconEnginePluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIconEnginePluginmetacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fQIconEnginePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QIconEnginePluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePluginmetacallProc) =
  # TODO check subclass
  var tmp = new QIconEnginePluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_metacall(self: ptr cQIconEnginePlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QIconEnginePlugin_metacall ".} =
  var nimfunc = cast[ptr QIconEnginePluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QIconEnginePlugincreateProc* = proc(filename: string): gen_qiconengine_types.QIconEngine
proc oncreate*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePlugincreateProc) =
  # TODO check subclass
  var tmp = new QIconEnginePlugincreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_create(self: ptr cQIconEnginePlugin, slot: int, filename: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QIconEnginePlugin_create ".} =
  var nimfunc = cast[ptr QIconEnginePlugincreateProc](cast[pointer](slot))
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval1 = vfilenamex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QIconEnginePluginevent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQIconEnginePlugin_virtualbase_event(self.h, event.h)

type QIconEnginePlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePlugineventProc) =
  # TODO check subclass
  var tmp = new QIconEnginePlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_event(self: ptr cQIconEnginePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIconEnginePlugin_event ".} =
  var nimfunc = cast[ptr QIconEnginePlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIconEnginePlugineventFilter*(self: gen_qiconengineplugin_types.QIconEnginePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQIconEnginePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIconEnginePlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QIconEnginePlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_eventFilter(self: ptr cQIconEnginePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIconEnginePlugin_eventFilter ".} =
  var nimfunc = cast[ptr QIconEnginePlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIconEnginePlugintimerEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQIconEnginePlugin_virtualbase_timerEvent(self.h, event.h)

type QIconEnginePlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QIconEnginePlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_timerEvent(self: ptr cQIconEnginePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_timerEvent ".} =
  var nimfunc = cast[ptr QIconEnginePlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QIconEnginePluginchildEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQIconEnginePlugin_virtualbase_childEvent(self.h, event.h)

type QIconEnginePluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePluginchildEventProc) =
  # TODO check subclass
  var tmp = new QIconEnginePluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_childEvent(self: ptr cQIconEnginePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_childEvent ".} =
  var nimfunc = cast[ptr QIconEnginePluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QIconEnginePlugincustomEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): void =
  fQIconEnginePlugin_virtualbase_customEvent(self.h, event.h)

type QIconEnginePlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QIconEnginePlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_customEvent(self: ptr cQIconEnginePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_customEvent ".} =
  var nimfunc = cast[ptr QIconEnginePlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QIconEnginePluginconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIconEnginePlugin_virtualbase_connectNotify(self.h, signal.h)

type QIconEnginePluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIconEnginePluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_connectNotify(self: ptr cQIconEnginePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_connectNotify ".} =
  var nimfunc = cast[ptr QIconEnginePluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QIconEnginePlugindisconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIconEnginePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QIconEnginePlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, slot: QIconEnginePlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIconEnginePlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_disconnectNotify(self: ptr cQIconEnginePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QIconEnginePlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qiconengineplugin_types.QIconEnginePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_staticMetaObject())
proc delete*(self: gen_qiconengineplugin_types.QIconEnginePlugin) =
  fcQIconEnginePlugin_delete(self.h)
