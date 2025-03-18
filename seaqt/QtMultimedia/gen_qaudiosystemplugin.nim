import ./qtmultimedia_pkg

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
proc fcQAudioSystemPlugin_metaObject(self: pointer): pointer {.importc: "QAudioSystemPlugin_metaObject".}
proc fcQAudioSystemPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSystemPlugin_metacast".}
proc fcQAudioSystemPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSystemPlugin_metacall".}
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
proc fcQAudioSystemPlugin_vtbl(self: pointer): pointer {.importc: "QAudioSystemPlugin_vtbl".}
proc fcQAudioSystemPlugin_vdata(self: pointer): pointer {.importc: "QAudioSystemPlugin_vdata".}

type cQAudioSystemPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  availableDevices*: proc(self: pointer, param1: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  createInput*: proc(self: pointer, device: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createOutput*: proc(self: pointer, device: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createDeviceInfo*: proc(self: pointer, device: struct_miqt_string, mode: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioSystemPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioSystemPlugin_virtualbase_metaObject".}
proc fcQAudioSystemPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSystemPlugin_virtualbase_metacast".}
proc fcQAudioSystemPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSystemPlugin_virtualbase_metacall".}
proc fcQAudioSystemPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioSystemPlugin_virtualbase_event".}
proc fcQAudioSystemPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioSystemPlugin_virtualbase_eventFilter".}
proc fcQAudioSystemPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioSystemPlugin_virtualbase_timerEvent".}
proc fcQAudioSystemPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioSystemPlugin_virtualbase_childEvent".}
proc fcQAudioSystemPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioSystemPlugin_virtualbase_customEvent".}
proc fcQAudioSystemPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSystemPlugin_virtualbase_connectNotify".}
proc fcQAudioSystemPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSystemPlugin_virtualbase_disconnectNotify".}
proc fcQAudioSystemPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QAudioSystemPlugin_protectedbase_sender".}
proc fcQAudioSystemPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioSystemPlugin_protectedbase_senderSignalIndex".}
proc fcQAudioSystemPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioSystemPlugin_protectedbase_receivers".}
proc fcQAudioSystemPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioSystemPlugin_protectedbase_isSignalConnected".}
proc fcQAudioSystemPlugin_new(vtbl, vdata: pointer): ptr cQAudioSystemPlugin {.importc: "QAudioSystemPlugin_new".}
proc fcQAudioSystemPlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAudioSystemPlugin {.importc: "QAudioSystemPlugin_new2".}
proc fcQAudioSystemPlugin_staticMetaObject(): pointer {.importc: "QAudioSystemPlugin_staticMetaObject".}

proc availableDevices*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, param1: cint): seq[seq[byte]] =
  var v_ma = fcQAudioSystemFactoryInterface_availableDevices(self.h, cint(param1))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc createInput*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioInput =
  gen_qaudiosystem_types.QAbstractAudioInput(h: fcQAudioSystemFactoryInterface_createInput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))), owned: false)

proc createOutput*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioOutput =
  gen_qaudiosystem_types.QAbstractAudioOutput(h: fcQAudioSystemFactoryInterface_createOutput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))), owned: false)

proc createDeviceInfo*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, device: openArray[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo =
  gen_qaudiosystem_types.QAbstractAudioDeviceInfo(h: fcQAudioSystemFactoryInterface_createDeviceInfo(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))), cint(mode)), owned: false)

proc operatorAssign*(self: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface, param1: gen_qaudiosystemplugin_types.QAudioSystemFactoryInterface): void =
  fcQAudioSystemFactoryInterface_operatorAssign(self.h, param1.h)

proc metaObject*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSystemPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cstring): pointer =
  fcQAudioSystemPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSystemPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring): string =
  let v_ms = fcQAudioSystemPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring): string =
  let v_ms = fcQAudioSystemPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc availableDevices*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cint): seq[seq[byte]] =
  var v_ma = fcQAudioSystemPlugin_availableDevices(self.h, cint(param1))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc createInput*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioInput =
  gen_qaudiosystem_types.QAbstractAudioInput(h: fcQAudioSystemPlugin_createInput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))), owned: false)

proc createOutput*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioOutput =
  gen_qaudiosystem_types.QAbstractAudioOutput(h: fcQAudioSystemPlugin_createOutput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))), owned: false)

proc createDeviceInfo*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, device: openArray[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo =
  gen_qaudiosystem_types.QAbstractAudioDeviceInfo(h: fcQAudioSystemPlugin_createDeviceInfo(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))), cint(mode)), owned: false)

proc tr*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSystemPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSystemPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSystemPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSystemPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioSystemPluginmetaObjectProc* = proc(self: QAudioSystemPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioSystemPluginmetacastProc* = proc(self: QAudioSystemPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioSystemPluginmetacallProc* = proc(self: QAudioSystemPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioSystemPluginavailableDevicesProc* = proc(self: QAudioSystemPlugin, param1: cint): seq[seq[byte]] {.raises: [], gcsafe.}
type QAudioSystemPlugincreateInputProc* = proc(self: QAudioSystemPlugin, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioInput {.raises: [], gcsafe.}
type QAudioSystemPlugincreateOutputProc* = proc(self: QAudioSystemPlugin, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioOutput {.raises: [], gcsafe.}
type QAudioSystemPlugincreateDeviceInfoProc* = proc(self: QAudioSystemPlugin, device: openArray[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo {.raises: [], gcsafe.}
type QAudioSystemPlugineventProc* = proc(self: QAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSystemPlugineventFilterProc* = proc(self: QAudioSystemPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSystemPlugintimerEventProc* = proc(self: QAudioSystemPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioSystemPluginchildEventProc* = proc(self: QAudioSystemPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioSystemPlugincustomEventProc* = proc(self: QAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioSystemPluginconnectNotifyProc* = proc(self: QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioSystemPlugindisconnectNotifyProc* = proc(self: QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioSystemPluginVTable* {.inheritable, pure.} = object
  vtbl: cQAudioSystemPluginVTable
  metaObject*: QAudioSystemPluginmetaObjectProc
  metacast*: QAudioSystemPluginmetacastProc
  metacall*: QAudioSystemPluginmetacallProc
  availableDevices*: QAudioSystemPluginavailableDevicesProc
  createInput*: QAudioSystemPlugincreateInputProc
  createOutput*: QAudioSystemPlugincreateOutputProc
  createDeviceInfo*: QAudioSystemPlugincreateDeviceInfoProc
  event*: QAudioSystemPlugineventProc
  eventFilter*: QAudioSystemPlugineventFilterProc
  timerEvent*: QAudioSystemPlugintimerEventProc
  childEvent*: QAudioSystemPluginchildEventProc
  customEvent*: QAudioSystemPlugincustomEventProc
  connectNotify*: QAudioSystemPluginconnectNotifyProc
  disconnectNotify*: QAudioSystemPlugindisconnectNotifyProc

proc QAudioSystemPluginmetaObject*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSystemPlugin_virtualbase_metaObject(self.h), owned: false)

proc QAudioSystemPluginmetacast*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cstring): pointer =
  fcQAudioSystemPlugin_virtualbase_metacast(self.h, param1)

proc QAudioSystemPluginmetacall*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSystemPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioSystemPluginevent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSystemPlugin_virtualbase_event(self.h, event.h)

proc QAudioSystemPlugineventFilter*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSystemPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioSystemPlugintimerEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioSystemPlugin_virtualbase_timerEvent(self.h, event.h)

proc QAudioSystemPluginchildEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioSystemPlugin_virtualbase_childEvent(self.h, event.h)

proc QAudioSystemPlugincustomEvent*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioSystemPlugin_virtualbase_customEvent(self.h, event.h)

proc QAudioSystemPluginconnectNotify*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSystemPlugin_virtualbase_connectNotify(self.h, signal.h)

proc QAudioSystemPlugindisconnectNotify*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSystemPlugin_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioSystemPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioSystemPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioSystemPlugin_vtable_callback_availableDevices(self: pointer, param1: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].availableDevices(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQAudioSystemPlugin_vtable_callback_createInput(self: pointer, device: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdevice_bytearray.data), 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret
  var virtualReturn = vtbl[].createInput(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_vtable_callback_createOutput(self: pointer, device: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdevice_bytearray.data), 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret
  var virtualReturn = vtbl[].createOutput(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_vtable_callback_createDeviceInfo(self: pointer, device: struct_miqt_string, mode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdevice_bytearray.data), 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].createDeviceInfo(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioSystemPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioSystemPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioSystemPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioSystemPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioSystemPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioSystemPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
  let self = QAudioSystemPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioSystemPlugin* {.inheritable.} = ref object of QAudioSystemPlugin
  vtbl*: cQAudioSystemPluginVTable

method metaObject*(self: VirtualQAudioSystemPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioSystemPluginmetaObject(self[])
method metacast*(self: VirtualQAudioSystemPlugin, param1: cstring): pointer {.base.} =
  QAudioSystemPluginmetacast(self[], param1)
method metacall*(self: VirtualQAudioSystemPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioSystemPluginmetacall(self[], param1, param2, param3)
method availableDevices*(self: VirtualQAudioSystemPlugin, param1: cint): seq[seq[byte]] {.base.} =
  raiseAssert("missing implementation of QAudioSystemPlugin.availableDevices")
method createInput*(self: VirtualQAudioSystemPlugin, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioInput {.base.} =
  raiseAssert("missing implementation of QAudioSystemPlugin.createInput")
method createOutput*(self: VirtualQAudioSystemPlugin, device: openArray[byte]): gen_qaudiosystem_types.QAbstractAudioOutput {.base.} =
  raiseAssert("missing implementation of QAudioSystemPlugin.createOutput")
method createDeviceInfo*(self: VirtualQAudioSystemPlugin, device: openArray[byte], mode: cint): gen_qaudiosystem_types.QAbstractAudioDeviceInfo {.base.} =
  raiseAssert("missing implementation of QAudioSystemPlugin.createDeviceInfo")
method event*(self: VirtualQAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioSystemPluginevent(self[], event)
method eventFilter*(self: VirtualQAudioSystemPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioSystemPlugineventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioSystemPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioSystemPlugintimerEvent(self[], event)
method childEvent*(self: VirtualQAudioSystemPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioSystemPluginchildEvent(self[], event)
method customEvent*(self: VirtualQAudioSystemPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioSystemPlugincustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioSystemPluginconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioSystemPlugindisconnectNotify(self[], signal)

proc fcQAudioSystemPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioSystemPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioSystemPlugin_method_callback_availableDevices(self: pointer, param1: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.availableDevices(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQAudioSystemPlugin_method_callback_createInput(self: pointer, device: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdevice_bytearray.data), 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret
  var virtualReturn = inst.createInput(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_method_callback_createOutput(self: pointer, device: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdevice_bytearray.data), 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret
  var virtualReturn = inst.createOutput(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_method_callback_createDeviceInfo(self: pointer, device: struct_miqt_string, mode: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdevice_bytearray.data), 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret
  let slotval2 = cint(mode)
  var virtualReturn = inst.createDeviceInfo(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSystemPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioSystemPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioSystemPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioSystemPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioSystemPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioSystemPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioSystemPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSystemPlugin](fcQAudioSystemPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioSystemPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin): cint =
  fcQAudioSystemPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, signal: cstring): cint =
  fcQAudioSystemPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiosystemplugin_types.QAudioSystemPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioSystemPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin,
    vtbl: ref QAudioSystemPluginVTable = nil): gen_qaudiosystemplugin_types.QAudioSystemPlugin =
  let vtbl = if vtbl == nil: new QAudioSystemPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSystemPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSystemPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSystemPlugin_vtable_callback_metacall
  if not isNil(vtbl[].availableDevices):
    vtbl[].vtbl.availableDevices = fcQAudioSystemPlugin_vtable_callback_availableDevices
  if not isNil(vtbl[].createInput):
    vtbl[].vtbl.createInput = fcQAudioSystemPlugin_vtable_callback_createInput
  if not isNil(vtbl[].createOutput):
    vtbl[].vtbl.createOutput = fcQAudioSystemPlugin_vtable_callback_createOutput
  if not isNil(vtbl[].createDeviceInfo):
    vtbl[].vtbl.createDeviceInfo = fcQAudioSystemPlugin_vtable_callback_createDeviceInfo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSystemPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSystemPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSystemPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSystemPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSystemPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSystemPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSystemPlugin_vtable_callback_disconnectNotify
  gen_qaudiosystemplugin_types.QAudioSystemPlugin(h: fcQAudioSystemPlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSystemPluginVTable = nil): gen_qaudiosystemplugin_types.QAudioSystemPlugin =
  let vtbl = if vtbl == nil: new QAudioSystemPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSystemPluginVTable](fcQAudioSystemPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSystemPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSystemPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSystemPlugin_vtable_callback_metacall
  if not isNil(vtbl[].availableDevices):
    vtbl[].vtbl.availableDevices = fcQAudioSystemPlugin_vtable_callback_availableDevices
  if not isNil(vtbl[].createInput):
    vtbl[].vtbl.createInput = fcQAudioSystemPlugin_vtable_callback_createInput
  if not isNil(vtbl[].createOutput):
    vtbl[].vtbl.createOutput = fcQAudioSystemPlugin_vtable_callback_createOutput
  if not isNil(vtbl[].createDeviceInfo):
    vtbl[].vtbl.createDeviceInfo = fcQAudioSystemPlugin_vtable_callback_createDeviceInfo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSystemPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSystemPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSystemPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSystemPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSystemPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSystemPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSystemPlugin_vtable_callback_disconnectNotify
  gen_qaudiosystemplugin_types.QAudioSystemPlugin(h: fcQAudioSystemPlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAudioSystemPlugin_mvtbl = cQAudioSystemPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioSystemPlugin()[])](self.fcQAudioSystemPlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioSystemPlugin_method_callback_metaObject,
  metacast: fcQAudioSystemPlugin_method_callback_metacast,
  metacall: fcQAudioSystemPlugin_method_callback_metacall,
  availableDevices: fcQAudioSystemPlugin_method_callback_availableDevices,
  createInput: fcQAudioSystemPlugin_method_callback_createInput,
  createOutput: fcQAudioSystemPlugin_method_callback_createOutput,
  createDeviceInfo: fcQAudioSystemPlugin_method_callback_createDeviceInfo,
  event: fcQAudioSystemPlugin_method_callback_event,
  eventFilter: fcQAudioSystemPlugin_method_callback_eventFilter,
  timerEvent: fcQAudioSystemPlugin_method_callback_timerEvent,
  childEvent: fcQAudioSystemPlugin_method_callback_childEvent,
  customEvent: fcQAudioSystemPlugin_method_callback_customEvent,
  connectNotify: fcQAudioSystemPlugin_method_callback_connectNotify,
  disconnectNotify: fcQAudioSystemPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin,
    inst: VirtualQAudioSystemPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSystemPlugin_new(addr(cQAudioSystemPlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudiosystemplugin_types.QAudioSystemPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioSystemPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSystemPlugin_new2(addr(cQAudioSystemPlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiosystemplugin_types.QAudioSystemPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSystemPlugin_staticMetaObject())
