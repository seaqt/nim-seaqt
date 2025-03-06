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
{.compile("gen_qgenericplugin.cpp", cflags).}


import ./gen_qgenericplugin_types
export gen_qgenericplugin_types

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

type cQGenericPlugin*{.exportc: "QGenericPlugin", incompleteStruct.} = object

proc fcQGenericPlugin_new(): ptr cQGenericPlugin {.importc: "QGenericPlugin_new".}
proc fcQGenericPlugin_new2(parent: pointer): ptr cQGenericPlugin {.importc: "QGenericPlugin_new2".}
proc fcQGenericPlugin_metaObject(self: pointer, ): pointer {.importc: "QGenericPlugin_metaObject".}
proc fcQGenericPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QGenericPlugin_metacast".}
proc fcQGenericPlugin_tr(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr".}
proc fcQGenericPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_trUtf8".}
proc fcQGenericPlugin_create(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.importc: "QGenericPlugin_create".}
proc fcQGenericPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr2".}
proc fcQGenericPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_tr3".}
proc fcQGenericPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_trUtf82".}
proc fcQGenericPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_trUtf83".}
proc fcQGenericPlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_create".}
proc fQGenericPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGenericPlugin_virtualbase_event".}
proc fcQGenericPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_event".}
proc fQGenericPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGenericPlugin_virtualbase_eventFilter".}
proc fcQGenericPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_eventFilter".}
proc fQGenericPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGenericPlugin_virtualbase_timerEvent".}
proc fcQGenericPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_timerEvent".}
proc fQGenericPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGenericPlugin_virtualbase_childEvent".}
proc fcQGenericPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_childEvent".}
proc fQGenericPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGenericPlugin_virtualbase_customEvent".}
proc fcQGenericPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_customEvent".}
proc fQGenericPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGenericPlugin_virtualbase_connectNotify".}
proc fcQGenericPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_connectNotify".}
proc fQGenericPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGenericPlugin_virtualbase_disconnectNotify".}
proc fcQGenericPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_disconnectNotify".}
proc fcQGenericPlugin_delete(self: pointer) {.importc: "QGenericPlugin_delete".}


func init*(T: type gen_qgenericplugin_types.QGenericPlugin, h: ptr cQGenericPlugin): gen_qgenericplugin_types.QGenericPlugin =
  T(h: h)
proc create*(T: type gen_qgenericplugin_types.QGenericPlugin, ): gen_qgenericplugin_types.QGenericPlugin =
  gen_qgenericplugin_types.QGenericPlugin.init(fcQGenericPlugin_new())

proc create*(T: type gen_qgenericplugin_types.QGenericPlugin, parent: gen_qobject_types.QObject): gen_qgenericplugin_types.QGenericPlugin =
  gen_qgenericplugin_types.QGenericPlugin.init(fcQGenericPlugin_new2(parent.h))

proc metaObject*(self: gen_qgenericplugin_types.QGenericPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_metaObject(self.h))

proc metacast*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cstring): pointer =
  fcQGenericPlugin_metacast(self.h, param1)

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring): string =
  let v_ms = fcQGenericPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring): string =
  let v_ms = fcQGenericPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qgenericplugin_types.QGenericPlugin, name: string, spec: string): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGenericPlugin_create(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: spec, len: csize_t(len(spec)))))

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQGenericPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGenericPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQGenericPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGenericPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGenericPlugincreateProc* = proc(name: string, spec: string): gen_qobject_types.QObject
proc oncreate*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPlugincreateProc) =
  # TODO check subclass
  var tmp = new QGenericPlugincreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_create(self: ptr cQGenericPlugin, slot: int, name: struct_miqt_string, spec: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QGenericPlugin_create ".} =
  var nimfunc = cast[ptr QGenericPlugincreateProc](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  let vspec_ms = spec
  let vspecx_ret = string.fromBytes(toOpenArrayByte(vspec_ms.data, 0, int(vspec_ms.len)-1))
  c_free(vspec_ms.data)
  let slotval2 = vspecx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGenericPluginevent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQGenericPlugin_virtualbase_event(self.h, event.h)

type QGenericPlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPlugineventProc) =
  # TODO check subclass
  var tmp = new QGenericPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_event(self: ptr cQGenericPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGenericPlugin_event ".} =
  var nimfunc = cast[ptr QGenericPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGenericPlugineventFilter*(self: gen_qgenericplugin_types.QGenericPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGenericPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGenericPlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QGenericPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_eventFilter(self: ptr cQGenericPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGenericPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QGenericPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGenericPlugintimerEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGenericPlugin_virtualbase_timerEvent(self.h, event.h)

type QGenericPlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QGenericPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_timerEvent(self: ptr cQGenericPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QGenericPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGenericPluginchildEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQGenericPlugin_virtualbase_childEvent(self.h, event.h)

type QGenericPluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QGenericPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_childEvent(self: ptr cQGenericPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_childEvent ".} =
  var nimfunc = cast[ptr QGenericPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGenericPlugincustomEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QEvent): void =
  fQGenericPlugin_virtualbase_customEvent(self.h, event.h)

type QGenericPlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QGenericPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_customEvent(self: ptr cQGenericPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_customEvent ".} =
  var nimfunc = cast[ptr QGenericPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGenericPluginconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGenericPlugin_virtualbase_connectNotify(self.h, signal.h)

type QGenericPluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGenericPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_connectNotify(self: ptr cQGenericPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QGenericPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGenericPlugindisconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGenericPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QGenericPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, slot: QGenericPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGenericPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_disconnectNotify(self: ptr cQGenericPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QGenericPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgenericplugin_types.QGenericPlugin) =
  fcQGenericPlugin_delete(self.h)
