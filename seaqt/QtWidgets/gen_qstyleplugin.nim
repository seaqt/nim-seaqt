import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qstyleplugin.cpp", cflags).}


import ./gen_qstyleplugin_types
export gen_qstyleplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qstyle_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qstyle_types

type cQStylePlugin*{.exportc: "QStylePlugin", incompleteStruct.} = object

proc fcQStylePlugin_new(): ptr cQStylePlugin {.importc: "QStylePlugin_new".}
proc fcQStylePlugin_new2(parent: pointer): ptr cQStylePlugin {.importc: "QStylePlugin_new2".}
proc fcQStylePlugin_metaObject(self: pointer, ): pointer {.importc: "QStylePlugin_metaObject".}
proc fcQStylePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QStylePlugin_metacast".}
proc fcQStylePlugin_tr(s: cstring): struct_miqt_string {.importc: "QStylePlugin_tr".}
proc fcQStylePlugin_create(self: pointer, key: struct_miqt_string): pointer {.importc: "QStylePlugin_create".}
proc fcQStylePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStylePlugin_tr2".}
proc fcQStylePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStylePlugin_tr3".}
proc fcQStylePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_create".}
proc fQStylePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStylePlugin_virtualbase_event".}
proc fcQStylePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_event".}
proc fQStylePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStylePlugin_virtualbase_eventFilter".}
proc fcQStylePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_eventFilter".}
proc fQStylePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStylePlugin_virtualbase_timerEvent".}
proc fcQStylePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_timerEvent".}
proc fQStylePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStylePlugin_virtualbase_childEvent".}
proc fcQStylePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_childEvent".}
proc fQStylePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStylePlugin_virtualbase_customEvent".}
proc fcQStylePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_customEvent".}
proc fQStylePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStylePlugin_virtualbase_connectNotify".}
proc fcQStylePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_connectNotify".}
proc fQStylePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStylePlugin_virtualbase_disconnectNotify".}
proc fcQStylePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_disconnectNotify".}
proc fcQStylePlugin_delete(self: pointer) {.importc: "QStylePlugin_delete".}


func init*(T: type gen_qstyleplugin_types.QStylePlugin, h: ptr cQStylePlugin): gen_qstyleplugin_types.QStylePlugin =
  T(h: h)
proc create*(T: type gen_qstyleplugin_types.QStylePlugin, ): gen_qstyleplugin_types.QStylePlugin =
  gen_qstyleplugin_types.QStylePlugin.init(fcQStylePlugin_new())

proc create*(T: type gen_qstyleplugin_types.QStylePlugin, parent: gen_qobject_types.QObject): gen_qstyleplugin_types.QStylePlugin =
  gen_qstyleplugin_types.QStylePlugin.init(fcQStylePlugin_new2(parent.h))

proc metaObject*(self: gen_qstyleplugin_types.QStylePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStylePlugin_metaObject(self.h))

proc metacast*(self: gen_qstyleplugin_types.QStylePlugin, param1: cstring): pointer =
  fcQStylePlugin_metacast(self.h, param1)

proc tr*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring): string =
  let v_ms = fcQStylePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qstyleplugin_types.QStylePlugin, key: string): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQStylePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc tr*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQStylePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStylePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStylePlugincreateProc* = proc(key: string): gen_qstyle_types.QStyle
proc oncreate*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePlugincreateProc) =
  # TODO check subclass
  var tmp = new QStylePlugincreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_create(self: ptr cQStylePlugin, slot: int, key: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QStylePlugin_create ".} =
  var nimfunc = cast[ptr QStylePlugincreateProc](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStylePluginevent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQStylePlugin_virtualbase_event(self.h, event.h)

type QStylePlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePlugineventProc) =
  # TODO check subclass
  var tmp = new QStylePlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_event(self: ptr cQStylePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStylePlugin_event ".} =
  var nimfunc = cast[ptr QStylePlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStylePlugineventFilter*(self: gen_qstyleplugin_types.QStylePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStylePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStylePlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QStylePlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_eventFilter(self: ptr cQStylePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStylePlugin_eventFilter ".} =
  var nimfunc = cast[ptr QStylePlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStylePlugintimerEvent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStylePlugin_virtualbase_timerEvent(self.h, event.h)

type QStylePlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QStylePlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_timerEvent(self: ptr cQStylePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_timerEvent ".} =
  var nimfunc = cast[ptr QStylePlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStylePluginchildEvent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQStylePlugin_virtualbase_childEvent(self.h, event.h)

type QStylePluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePluginchildEventProc) =
  # TODO check subclass
  var tmp = new QStylePluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_childEvent(self: ptr cQStylePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_childEvent ".} =
  var nimfunc = cast[ptr QStylePluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStylePlugincustomEvent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QEvent): void =
  fQStylePlugin_virtualbase_customEvent(self.h, event.h)

type QStylePlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QStylePlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_customEvent(self: ptr cQStylePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_customEvent ".} =
  var nimfunc = cast[ptr QStylePlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStylePluginconnectNotify*(self: gen_qstyleplugin_types.QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStylePlugin_virtualbase_connectNotify(self.h, signal.h)

type QStylePluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStylePluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_connectNotify(self: ptr cQStylePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_connectNotify ".} =
  var nimfunc = cast[ptr QStylePluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStylePlugindisconnectNotify*(self: gen_qstyleplugin_types.QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStylePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QStylePlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstyleplugin_types.QStylePlugin, slot: QStylePlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStylePlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_disconnectNotify(self: ptr cQStylePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QStylePlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qstyleplugin_types.QStylePlugin) =
  fcQStylePlugin_delete(self.h)
