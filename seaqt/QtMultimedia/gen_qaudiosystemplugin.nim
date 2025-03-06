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
{.compile("gen_qaudiosystemplugin.cpp", cflags).}


import ./gen_qaudiosystemplugin_types
export gen_qaudiosystemplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiosystem_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiosystem_types

type cQAudioSystemFactoryInterface*{.exportc: "QAudioSystemFactoryInterface", incompleteStruct.} = object
type cQAudioSystemPlugin*{.exportc: "QAudioSystemPlugin", incompleteStruct.} = object

proc fcQAudioSystemFactoryInterface_availableDevices(self: pointer, param1: cint): struct_miqt_array {.importc: "QAudioSystemFactoryInterface_availableDevices".}
proc fcQAudioSystemFactoryInterface_createInput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemFactoryInterface_createInput".}
proc fcQAudioSystemFactoryInterface_createOutput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemFactoryInterface_createOutput".}
proc fcQAudioSystemFactoryInterface_createDeviceInfo(self: pointer, device: struct_miqt_string, mode: cint): pointer {.importc: "QAudioSystemFactoryInterface_createDeviceInfo".}
proc fcQAudioSystemFactoryInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAudioSystemFactoryInterface_operatorAssign".}
proc fcQAudioSystemFactoryInterface_delete(self: pointer) {.importc: "QAudioSystemFactoryInterface_delete".}
proc fcQAudioSystemPlugin_new(): ptr cQAudioSystemPlugin {.importc: "QAudioSystemPlugin_new".}
proc fcQAudioSystemPlugin_new2(parent: pointer): ptr cQAudioSystemPlugin {.importc: "QAudioSystemPlugin_new2".}
proc fcQAudioSystemPlugin_metaObject(self: pointer, ): pointer {.importc: "QAudioSystemPlugin_metaObject".}
proc fcQAudioSystemPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSystemPlugin_metacast".}
proc fcQAudioSystemPlugin_tr(s: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_tr".}
proc fcQAudioSystemPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_trUtf8".}
proc fcQAudioSystemPlugin_availableDevices(self: pointer, param1: cint): struct_miqt_array {.importc: "QAudioSystemPlugin_availableDevices".}
proc fcQAudioSystemPlugin_createInput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemPlugin_createInput".}
proc fcQAudioSystemPlugin_createOutput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemPlugin_createOutput".}
proc fcQAudioSystemPlugin_createDeviceInfo(self: pointer, device: struct_miqt_string, mode: cint): pointer {.importc: "QAudioSystemPlugin_createDeviceInfo".}
proc fcQAudioSystemPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_tr2".}
proc fcQAudioSystemPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSystemPlugin_tr3".}
proc fcQAudioSystemPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_trUtf82".}
proc fcQAudioSystemPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSystemPlugin_trUtf83".}
proc fcQAudioSystemPlugin_override_virtual_availableDevices(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_availableDevices".}
proc fcQAudioSystemPlugin_override_virtual_createInput(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_createInput".}
proc fcQAudioSystemPlugin_override_virtual_createOutput(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_createOutput".}
proc fcQAudioSystemPlugin_override_virtual_createDeviceInfo(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_createDeviceInfo".}
proc fQAudioSystemPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioSystemPlugin_virtualbase_event".}
proc fcQAudioSystemPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_event".}
proc fQAudioSystemPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioSystemPlugin_virtualbase_eventFilter".}
proc fcQAudioSystemPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_eventFilter".}
proc fQAudioSystemPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_timerEvent".}
proc fcQAudioSystemPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_timerEvent".}
proc fQAudioSystemPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_childEvent".}
proc fcQAudioSystemPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_childEvent".}
proc fQAudioSystemPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_customEvent".}
proc fcQAudioSystemPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_customEvent".}
proc fQAudioSystemPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_connectNotify".}
proc fcQAudioSystemPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_connectNotify".}
proc fQAudioSystemPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_disconnectNotify".}
proc fcQAudioSystemPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_disconnectNotify".}
proc fcQAudioSystemPlugin_delete(self: pointer) {.importc: "QAudioSystemPlugin_delete".}


func init*(T: type gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, h: ptr cQAudioSystemFactoryInterface): gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface =
  T(h: h)
proc availableDevices*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, param1: cint): seq[seq[byte]] =
  var v_ma = fcQAudioSystemFactoryInterface_availableDevices(self.h, cint(param1))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc createInput*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, device: seq[byte]): gen_qaudiosystem_types.QAbstractAudioInput =
  gen_qaudiosystem_types.QAbstractAudioInput(h: fcQAudioSystemFactoryInterface_createInput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createOutput*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, device: seq[byte]): gen_qaudiosystem_types.QAbstractAudioOutput =
  gen_qaudiosystem_types.QAbstractAudioOutput(h: fcQAudioSystemFactoryInterface_createOutput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createDeviceInfo*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, device: seq[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo =
  gen_qaudiosystem_types.QAbstractAudioDeviceInfo(h: fcQAudioSystemFactoryInterface_createDeviceInfo(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))), cint(mode)))

proc operatorAssign*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, param1: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface): void =
  fcQAudioSystemFactoryInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface) =
  fcQAudioSystemFactoryInterface_delete(self.h)

func init*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, h: ptr cQAudioSystemPlugin): gen_qaudiosystemplugin_types.QAudioSystemPlugin =
  T(h: h)
proc create*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, ): gen_qaudiosystemplugin_types.QAudioSystemPlugin =
  gen_qaudiosystemplugin_types.QAudioSystemPlugin.init(fcQAudioSystemPlugin_new())

proc create*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, parent: gen_qobject_types.QObject): gen_qaudiosystemplugin_types.QAudioSystemPlugin =
  gen_qaudiosystemplugin_types.QAudioSystemPlugin.init(fcQAudioSystemPlugin_new2(parent.h))

proc metaObject*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSystemPlugin_metaObject(self.h))

proc metacast*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cstring): pointer =
  fcQAudioSystemPlugin_metacast(self.h, param1)

proc tr*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring): string =
  let v_ms = fcQAudioSystemPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring): string =
  let v_ms = fcQAudioSystemPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableDevices*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cint): seq[seq[byte]] =
  var v_ma = fcQAudioSystemPlugin_availableDevices(self.h, cint(param1))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc createInput*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, device: seq[byte]): gen_qaudiosystem_types.QAbstractAudioInput =
  gen_qaudiosystem_types.QAbstractAudioInput(h: fcQAudioSystemPlugin_createInput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createOutput*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, device: seq[byte]): gen_qaudiosystem_types.QAbstractAudioOutput =
  gen_qaudiosystem_types.QAbstractAudioOutput(h: fcQAudioSystemPlugin_createOutput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createDeviceInfo*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, device: seq[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo =
  gen_qaudiosystem_types.QAbstractAudioDeviceInfo(h: fcQAudioSystemPlugin_createDeviceInfo(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))), cint(mode)))

proc tr*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSystemPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSystemPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSystemPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSystemPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAudioSystemPluginavailableDevicesProc* = proc(param1: cint): seq[seq[byte]]
proc onavailableDevices*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPluginavailableDevicesProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPluginavailableDevicesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_availableDevices(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_availableDevices(self: ptr cQAudioSystemPlugin, slot: int, param1: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAudioSystemPlugin_availableDevices ".} =
  var nimfunc = cast[ptr QAudioSystemPluginavailableDevicesProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: cast[cstring](if len(virtualReturn[i]) == 0: nil else: unsafeAddr virtualReturn[i][0]), len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
type QAudioSystemPlugincreateInputProc* = proc(device: seq[byte]): gen_qaudiosystem_types.QAbstractAudioInput
proc oncreateInput*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugincreateInputProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugincreateInputProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_createInput(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_createInput(self: ptr cQAudioSystemPlugin, slot: int, device: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QAudioSystemPlugin_createInput ".} =
  var nimfunc = cast[ptr QAudioSystemPlugincreateInputProc](cast[pointer](slot))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArrayByte(vdevice_bytearray.data, 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAudioSystemPlugincreateOutputProc* = proc(device: seq[byte]): gen_qaudiosystem_types.QAbstractAudioOutput
proc oncreateOutput*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugincreateOutputProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugincreateOutputProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_createOutput(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_createOutput(self: ptr cQAudioSystemPlugin, slot: int, device: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QAudioSystemPlugin_createOutput ".} =
  var nimfunc = cast[ptr QAudioSystemPlugincreateOutputProc](cast[pointer](slot))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArrayByte(vdevice_bytearray.data, 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAudioSystemPlugincreateDeviceInfoProc* = proc(device: seq[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo
proc oncreateDeviceInfo*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugincreateDeviceInfoProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugincreateDeviceInfoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_createDeviceInfo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_createDeviceInfo(self: ptr cQAudioSystemPlugin, slot: int, device: struct_miqt_string, mode: cint): pointer {.exportc: "miqt_exec_callback_QAudioSystemPlugin_createDeviceInfo ".} =
  var nimfunc = cast[ptr QAudioSystemPlugincreateDeviceInfoProc](cast[pointer](slot))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArrayByte(vdevice_bytearray.data, 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAudioSystemPluginevent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioSystemPlugin_virtualbase_event(self.h, event.h)

type QAudioSystemPlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugineventProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_event(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSystemPlugin_event ".} =
  var nimfunc = cast[ptr QAudioSystemPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioSystemPlugineventFilter*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioSystemPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioSystemPlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_eventFilter(self: ptr cQAudioSystemPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSystemPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QAudioSystemPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioSystemPlugintimerEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioSystemPlugin_virtualbase_timerEvent(self.h, event.h)

type QAudioSystemPlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_timerEvent(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QAudioSystemPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSystemPluginchildEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioSystemPlugin_virtualbase_childEvent(self.h, event.h)

type QAudioSystemPluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_childEvent(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_childEvent ".} =
  var nimfunc = cast[ptr QAudioSystemPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSystemPlugincustomEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): void =
  fQAudioSystemPlugin_virtualbase_customEvent(self.h, event.h)

type QAudioSystemPlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_customEvent(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_customEvent ".} =
  var nimfunc = cast[ptr QAudioSystemPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSystemPluginconnectNotify*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioSystemPlugin_virtualbase_connectNotify(self.h, signal.h)

type QAudioSystemPluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_connectNotify(self: ptr cQAudioSystemPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QAudioSystemPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioSystemPlugindisconnectNotify*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioSystemPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioSystemPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, slot: QAudioSystemPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioSystemPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_disconnectNotify(self: ptr cQAudioSystemPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioSystemPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin) =
  fcQAudioSystemPlugin_delete(self.h)
