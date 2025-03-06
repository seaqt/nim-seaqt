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
{.compile("gen_qaccessibleplugin.cpp", cflags).}


import ./gen_qaccessibleplugin_types
export gen_qaccessibleplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaccessible_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaccessible_types

type cQAccessiblePlugin*{.exportc: "QAccessiblePlugin", incompleteStruct.} = object

proc fcQAccessiblePlugin_new(): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new".}
proc fcQAccessiblePlugin_new2(parent: pointer): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new2".}
proc fcQAccessiblePlugin_metaObject(self: pointer, ): pointer {.importc: "QAccessiblePlugin_metaObject".}
proc fcQAccessiblePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessiblePlugin_metacast".}
proc fcQAccessiblePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr".}
proc fcQAccessiblePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_trUtf8".}
proc fcQAccessiblePlugin_create(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.importc: "QAccessiblePlugin_create".}
proc fcQAccessiblePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr2".}
proc fcQAccessiblePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessiblePlugin_tr3".}
proc fcQAccessiblePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_trUtf82".}
proc fcQAccessiblePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessiblePlugin_trUtf83".}
proc fcQAccessiblePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_create".}
proc fQAccessiblePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAccessiblePlugin_virtualbase_event".}
proc fcQAccessiblePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_event".}
proc fQAccessiblePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAccessiblePlugin_virtualbase_eventFilter".}
proc fcQAccessiblePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_eventFilter".}
proc fQAccessiblePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAccessiblePlugin_virtualbase_timerEvent".}
proc fcQAccessiblePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_timerEvent".}
proc fQAccessiblePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAccessiblePlugin_virtualbase_childEvent".}
proc fcQAccessiblePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_childEvent".}
proc fQAccessiblePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAccessiblePlugin_virtualbase_customEvent".}
proc fcQAccessiblePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_customEvent".}
proc fQAccessiblePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAccessiblePlugin_virtualbase_connectNotify".}
proc fcQAccessiblePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_connectNotify".}
proc fQAccessiblePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAccessiblePlugin_virtualbase_disconnectNotify".}
proc fcQAccessiblePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_disconnectNotify".}
proc fcQAccessiblePlugin_delete(self: pointer) {.importc: "QAccessiblePlugin_delete".}


func init*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin, h: ptr cQAccessiblePlugin): gen_qaccessibleplugin_types.QAccessiblePlugin =
  T(h: h)
proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin, ): gen_qaccessibleplugin_types.QAccessiblePlugin =
  gen_qaccessibleplugin_types.QAccessiblePlugin.init(fcQAccessiblePlugin_new())

proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin, parent: gen_qobject_types.QObject): gen_qaccessibleplugin_types.QAccessiblePlugin =
  gen_qaccessibleplugin_types.QAccessiblePlugin.init(fcQAccessiblePlugin_new2(parent.h))

proc metaObject*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_metaObject(self.h))

proc metacast*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cstring): pointer =
  fcQAccessiblePlugin_metacast(self.h, param1)

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring): string =
  let v_ms = fcQAccessiblePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring): string =
  let v_ms = fcQAccessiblePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, key: string, objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessiblePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), objectVal.h))

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessiblePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessiblePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessiblePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessiblePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAccessiblePlugincreateProc* = proc(key: string, objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface
proc oncreate*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePlugincreateProc) =
  # TODO check subclass
  var tmp = new QAccessiblePlugincreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_create(self: ptr cQAccessiblePlugin, slot: int, key: struct_miqt_string, objectVal: pointer): pointer {.exportc: "miqt_exec_callback_QAccessiblePlugin_create ".} =
  var nimfunc = cast[ptr QAccessiblePlugincreateProc](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qobject_types.QObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAccessiblePluginevent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQAccessiblePlugin_virtualbase_event(self.h, event.h)

type QAccessiblePlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePlugineventProc) =
  # TODO check subclass
  var tmp = new QAccessiblePlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_event(self: ptr cQAccessiblePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessiblePlugin_event ".} =
  var nimfunc = cast[ptr QAccessiblePlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAccessiblePlugineventFilter*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAccessiblePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAccessiblePlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QAccessiblePlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_eventFilter(self: ptr cQAccessiblePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessiblePlugin_eventFilter ".} =
  var nimfunc = cast[ptr QAccessiblePlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAccessiblePlugintimerEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAccessiblePlugin_virtualbase_timerEvent(self.h, event.h)

type QAccessiblePlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QAccessiblePlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_timerEvent(self: ptr cQAccessiblePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_timerEvent ".} =
  var nimfunc = cast[ptr QAccessiblePlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAccessiblePluginchildEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQAccessiblePlugin_virtualbase_childEvent(self.h, event.h)

type QAccessiblePluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePluginchildEventProc) =
  # TODO check subclass
  var tmp = new QAccessiblePluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_childEvent(self: ptr cQAccessiblePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_childEvent ".} =
  var nimfunc = cast[ptr QAccessiblePluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAccessiblePlugincustomEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): void =
  fQAccessiblePlugin_virtualbase_customEvent(self.h, event.h)

type QAccessiblePlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QAccessiblePlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_customEvent(self: ptr cQAccessiblePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_customEvent ".} =
  var nimfunc = cast[ptr QAccessiblePlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAccessiblePluginconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAccessiblePlugin_virtualbase_connectNotify(self.h, signal.h)

type QAccessiblePluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAccessiblePluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_connectNotify(self: ptr cQAccessiblePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_connectNotify ".} =
  var nimfunc = cast[ptr QAccessiblePluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAccessiblePlugindisconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAccessiblePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QAccessiblePlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, slot: QAccessiblePlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAccessiblePlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_disconnectNotify(self: ptr cQAccessiblePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QAccessiblePlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaccessibleplugin_types.QAccessiblePlugin) =
  fcQAccessiblePlugin_delete(self.h)
