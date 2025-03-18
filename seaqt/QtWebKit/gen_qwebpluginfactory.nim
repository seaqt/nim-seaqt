import ./qtwebkit_pkg

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


import ./gen_qwebpluginfactory_types
export gen_qwebpluginfactory_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebPluginFactory*{.exportc: "QWebPluginFactory", incompleteStruct.} = object
type cQWebPluginFactoryMimeType*{.exportc: "QWebPluginFactory__MimeType", incompleteStruct.} = object
type cQWebPluginFactoryPlugin*{.exportc: "QWebPluginFactory__Plugin", incompleteStruct.} = object
type cQWebPluginFactoryExtensionOption*{.exportc: "QWebPluginFactory__ExtensionOption", incompleteStruct.} = object
type cQWebPluginFactoryExtensionReturn*{.exportc: "QWebPluginFactory__ExtensionReturn", incompleteStruct.} = object

proc fcQWebPluginFactory_metaObject(self: pointer): pointer {.importc: "QWebPluginFactory_metaObject".}
proc fcQWebPluginFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPluginFactory_metacast".}
proc fcQWebPluginFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPluginFactory_metacall".}
proc fcQWebPluginFactory_tr(s: cstring): struct_miqt_string {.importc: "QWebPluginFactory_tr".}
proc fcQWebPluginFactory_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebPluginFactory_trUtf8".}
proc fcQWebPluginFactory_plugins(self: pointer): struct_miqt_array {.importc: "QWebPluginFactory_plugins".}
proc fcQWebPluginFactory_refreshPlugins(self: pointer): void {.importc: "QWebPluginFactory_refreshPlugins".}
proc fcQWebPluginFactory_createX(self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.importc: "QWebPluginFactory_create".}
proc fcQWebPluginFactory_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPluginFactory_extension".}
proc fcQWebPluginFactory_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPluginFactory_supportsExtension".}
proc fcQWebPluginFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPluginFactory_tr2".}
proc fcQWebPluginFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPluginFactory_tr3".}
proc fcQWebPluginFactory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPluginFactory_trUtf82".}
proc fcQWebPluginFactory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPluginFactory_trUtf83".}
proc fcQWebPluginFactory_vtbl(self: pointer): pointer {.importc: "QWebPluginFactory_vtbl".}
proc fcQWebPluginFactory_vdata(self: pointer): pointer {.importc: "QWebPluginFactory_vdata".}

type cQWebPluginFactoryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  plugins*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  refreshPlugins*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  createX*: proc(self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebPluginFactory_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebPluginFactory_virtualbase_metaObject".}
proc fcQWebPluginFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPluginFactory_virtualbase_metacast".}
proc fcQWebPluginFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPluginFactory_virtualbase_metacall".}
proc fcQWebPluginFactory_virtualbase_refreshPlugins(self: pointer): void {.importc: "QWebPluginFactory_virtualbase_refreshPlugins".}
proc fcQWebPluginFactory_virtualbase_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPluginFactory_virtualbase_extension".}
proc fcQWebPluginFactory_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPluginFactory_virtualbase_supportsExtension".}
proc fcQWebPluginFactory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebPluginFactory_virtualbase_event".}
proc fcQWebPluginFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebPluginFactory_virtualbase_eventFilter".}
proc fcQWebPluginFactory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebPluginFactory_virtualbase_timerEvent".}
proc fcQWebPluginFactory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebPluginFactory_virtualbase_childEvent".}
proc fcQWebPluginFactory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebPluginFactory_virtualbase_customEvent".}
proc fcQWebPluginFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebPluginFactory_virtualbase_connectNotify".}
proc fcQWebPluginFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebPluginFactory_virtualbase_disconnectNotify".}
proc fcQWebPluginFactory_protectedbase_sender(self: pointer): pointer {.importc: "QWebPluginFactory_protectedbase_sender".}
proc fcQWebPluginFactory_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebPluginFactory_protectedbase_senderSignalIndex".}
proc fcQWebPluginFactory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebPluginFactory_protectedbase_receivers".}
proc fcQWebPluginFactory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebPluginFactory_protectedbase_isSignalConnected".}
proc fcQWebPluginFactory_new(vtbl, vdata: pointer): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new".}
proc fcQWebPluginFactory_new2(vtbl, vdata: pointer, parent: pointer): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new2".}
proc fcQWebPluginFactory_staticMetaObject(): pointer {.importc: "QWebPluginFactory_staticMetaObject".}
proc fcQWebPluginFactoryMimeType_operatorEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorEqual".}
proc fcQWebPluginFactoryMimeType_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorNotEqual".}
proc fcQWebPluginFactoryMimeType_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__MimeType_operatorAssign".}
proc fcQWebPluginFactoryMimeType_new(param1: pointer): ptr cQWebPluginFactoryMimeType {.importc: "QWebPluginFactory__MimeType_new".}
proc fcQWebPluginFactoryPlugin_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__Plugin_operatorAssign".}
proc fcQWebPluginFactoryPlugin_new(param1: pointer): ptr cQWebPluginFactoryPlugin {.importc: "QWebPluginFactory__Plugin_new".}

proc metaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cstring): pointer =
  fcQWebPluginFactory_metacast(self.h, param1)

proc metacall*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebPluginFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring): string =
  let v_ms = fcQWebPluginFactory_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring): string =
  let v_ms = fcQWebPluginFactory_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc plugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin] =
  var v_ma = fcQWebPluginFactory_plugins(self.h)
  var vx_ret = newSeq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebpluginfactory_types.QWebPluginFactoryPlugin(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc refreshPlugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory): void =
  fcQWebPluginFactory_refreshPlugins(self.h)

proc createX*(self: gen_qwebpluginfactory_types.QWebPluginFactory, mimeType: openArray[char], param2: gen_qurl_types.QUrl, argumentNames: openArray[string], argumentValues: openArray[string]): gen_qobject_types.QObject =
  var argumentNames_CArray = newSeq[struct_miqt_string](len(argumentNames))
  for i in 0..<len(argumentNames):
    argumentNames_CArray[i] = struct_miqt_string(data: if len(argumentNames[i]) > 0: addr argumentNames[i][0] else: nil, len: csize_t(len(argumentNames[i])))

  var argumentValues_CArray = newSeq[struct_miqt_string](len(argumentValues))
  for i in 0..<len(argumentValues):
    argumentValues_CArray[i] = struct_miqt_string(data: if len(argumentValues[i]) > 0: addr argumentValues[i][0] else: nil, len: csize_t(len(argumentValues[i])))

  gen_qobject_types.QObject(h: fcQWebPluginFactory_createX(self.h, struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))), param2.h, struct_miqt_array(len: csize_t(len(argumentNames)), data: if len(argumentNames) == 0: nil else: addr(argumentNames_CArray[0])), struct_miqt_array(len: csize_t(len(argumentValues)), data: if len(argumentValues) == 0: nil else: addr(argumentValues_CArray[0]))), owned: false)

proc extension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool =
  fcQWebPluginFactory_extension(self.h, cint(extension), option.h, output.h)

proc supportsExtension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint): bool =
  fcQWebPluginFactory_supportsExtension(self.h, cint(extension))

proc tr*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring): string =
  let v_ms = fcQWebPluginFactory_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebPluginFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring): string =
  let v_ms = fcQWebPluginFactory_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebPluginFactory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWebPluginFactorymetaObjectProc* = proc(self: QWebPluginFactory): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebPluginFactorymetacastProc* = proc(self: QWebPluginFactory, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebPluginFactorymetacallProc* = proc(self: QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebPluginFactorypluginsProc* = proc(self: QWebPluginFactory): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin] {.raises: [], gcsafe.}
type QWebPluginFactoryrefreshPluginsProc* = proc(self: QWebPluginFactory): void {.raises: [], gcsafe.}
type QWebPluginFactorycreateXProc* = proc(self: QWebPluginFactory, mimeType: openArray[char], param2: gen_qurl_types.QUrl, argumentNames: openArray[string], argumentValues: openArray[string]): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QWebPluginFactoryextensionProc* = proc(self: QWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool {.raises: [], gcsafe.}
type QWebPluginFactorysupportsExtensionProc* = proc(self: QWebPluginFactory, extension: cint): bool {.raises: [], gcsafe.}
type QWebPluginFactoryeventProc* = proc(self: QWebPluginFactory, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebPluginFactoryeventFilterProc* = proc(self: QWebPluginFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebPluginFactorytimerEventProc* = proc(self: QWebPluginFactory, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebPluginFactorychildEventProc* = proc(self: QWebPluginFactory, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebPluginFactorycustomEventProc* = proc(self: QWebPluginFactory, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebPluginFactoryconnectNotifyProc* = proc(self: QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebPluginFactorydisconnectNotifyProc* = proc(self: QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QWebPluginFactoryVTable* {.inheritable, pure.} = object
  vtbl: cQWebPluginFactoryVTable
  metaObject*: QWebPluginFactorymetaObjectProc
  metacast*: QWebPluginFactorymetacastProc
  metacall*: QWebPluginFactorymetacallProc
  plugins*: QWebPluginFactorypluginsProc
  refreshPlugins*: QWebPluginFactoryrefreshPluginsProc
  createX*: QWebPluginFactorycreateXProc
  extension*: QWebPluginFactoryextensionProc
  supportsExtension*: QWebPluginFactorysupportsExtensionProc
  event*: QWebPluginFactoryeventProc
  eventFilter*: QWebPluginFactoryeventFilterProc
  timerEvent*: QWebPluginFactorytimerEventProc
  childEvent*: QWebPluginFactorychildEventProc
  customEvent*: QWebPluginFactorycustomEventProc
  connectNotify*: QWebPluginFactoryconnectNotifyProc
  disconnectNotify*: QWebPluginFactorydisconnectNotifyProc

proc QWebPluginFactorymetaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_virtualbase_metaObject(self.h), owned: false)

proc QWebPluginFactorymetacast*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cstring): pointer =
  fcQWebPluginFactory_virtualbase_metacast(self.h, param1)

proc QWebPluginFactorymetacall*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebPluginFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QWebPluginFactoryrefreshPlugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory): void =
  fcQWebPluginFactory_virtualbase_refreshPlugins(self.h)

proc QWebPluginFactoryextension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool =
  fcQWebPluginFactory_virtualbase_extension(self.h, cint(extension), option.h, output.h)

proc QWebPluginFactorysupportsExtension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint): bool =
  fcQWebPluginFactory_virtualbase_supportsExtension(self.h, cint(extension))

proc QWebPluginFactoryevent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebPluginFactory_virtualbase_event(self.h, event.h)

proc QWebPluginFactoryeventFilter*(self: gen_qwebpluginfactory_types.QWebPluginFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebPluginFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QWebPluginFactorytimerEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebPluginFactory_virtualbase_timerEvent(self.h, event.h)

proc QWebPluginFactorychildEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebPluginFactory_virtualbase_childEvent(self.h, event.h)

proc QWebPluginFactorycustomEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QEvent): void =
  fcQWebPluginFactory_virtualbase_customEvent(self.h, event.h)

proc QWebPluginFactoryconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebPluginFactory_virtualbase_connectNotify(self.h, signal.h)

proc QWebPluginFactorydisconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebPluginFactory_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQWebPluginFactory_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWebPluginFactory_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQWebPluginFactory_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebPluginFactory_vtable_callback_plugins(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  var virtualReturn = vtbl[].plugins(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQWebPluginFactory_vtable_callback_refreshPlugins(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  vtbl[].refreshPlugins(self)

proc fcQWebPluginFactory_vtable_callback_createX(self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let vmimeType_ms = mimeType
  let vmimeTypex_ret = string.fromBytes(vmimeType_ms)
  c_free(vmimeType_ms.data)
  let slotval1 = vmimeTypex_ret
  let slotval2 = gen_qurl_types.QUrl(h: param2, owned: false)
  var vargumentNames_ma = argumentNames
  var vargumentNamesx_ret = newSeq[string](int(vargumentNames_ma.len))
  let vargumentNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentNames_ma.data)
  for i in 0 ..< vargumentNames_ma.len:
    let vargumentNames_lv_ms = vargumentNames_outCast[i]
    let vargumentNames_lvx_ret = string.fromBytes(vargumentNames_lv_ms)
    c_free(vargumentNames_lv_ms.data)
    vargumentNamesx_ret[i] = vargumentNames_lvx_ret
  c_free(vargumentNames_ma.data)
  let slotval3 = vargumentNamesx_ret
  var vargumentValues_ma = argumentValues
  var vargumentValuesx_ret = newSeq[string](int(vargumentValues_ma.len))
  let vargumentValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentValues_ma.data)
  for i in 0 ..< vargumentValues_ma.len:
    let vargumentValues_lv_ms = vargumentValues_outCast[i]
    let vargumentValues_lvx_ret = string.fromBytes(vargumentValues_lv_ms)
    c_free(vargumentValues_lv_ms.data)
    vargumentValuesx_ret[i] = vargumentValues_lvx_ret
  c_free(vargumentValues_ma.data)
  let slotval4 = vargumentValuesx_ret
  var virtualReturn = vtbl[].createX(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWebPluginFactory_vtable_callback_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption(h: option, owned: false)
  let slotval3 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn(h: output, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebPluginFactory_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc fcQWebPluginFactory_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQWebPluginFactory_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQWebPluginFactory_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQWebPluginFactory_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQWebPluginFactory_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQWebPluginFactory_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQWebPluginFactory_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebPluginFactory* {.inheritable.} = ref object of QWebPluginFactory
  vtbl*: cQWebPluginFactoryVTable

method metaObject*(self: VirtualQWebPluginFactory): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebPluginFactorymetaObject(self[])
method metacast*(self: VirtualQWebPluginFactory, param1: cstring): pointer {.base.} =
  QWebPluginFactorymetacast(self[], param1)
method metacall*(self: VirtualQWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebPluginFactorymetacall(self[], param1, param2, param3)
method plugins*(self: VirtualQWebPluginFactory): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin] {.base.} =
  raiseAssert("missing implementation of QWebPluginFactory.plugins")
method refreshPlugins*(self: VirtualQWebPluginFactory): void {.base.} =
  QWebPluginFactoryrefreshPlugins(self[])
method createX*(self: VirtualQWebPluginFactory, mimeType: openArray[char], param2: gen_qurl_types.QUrl, argumentNames: openArray[string], argumentValues: openArray[string]): gen_qobject_types.QObject {.base.} =
  raiseAssert("missing implementation of QWebPluginFactory.createX")
method extension*(self: VirtualQWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool {.base.} =
  QWebPluginFactoryextension(self[], extension, option, output)
method supportsExtension*(self: VirtualQWebPluginFactory, extension: cint): bool {.base.} =
  QWebPluginFactorysupportsExtension(self[], extension)
method event*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebPluginFactoryevent(self[], event)
method eventFilter*(self: VirtualQWebPluginFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebPluginFactoryeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebPluginFactorytimerEvent(self[], event)
method childEvent*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebPluginFactorychildEvent(self[], event)
method customEvent*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebPluginFactorycustomEvent(self[], event)
method connectNotify*(self: VirtualQWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebPluginFactoryconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebPluginFactorydisconnectNotify(self[], signal)

proc fcQWebPluginFactory_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWebPluginFactory_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQWebPluginFactory_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebPluginFactory_method_callback_plugins(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  var virtualReturn = inst.plugins()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQWebPluginFactory_method_callback_refreshPlugins(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  inst.refreshPlugins()

proc fcQWebPluginFactory_method_callback_createX(self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let vmimeType_ms = mimeType
  let vmimeTypex_ret = string.fromBytes(vmimeType_ms)
  c_free(vmimeType_ms.data)
  let slotval1 = vmimeTypex_ret
  let slotval2 = gen_qurl_types.QUrl(h: param2, owned: false)
  var vargumentNames_ma = argumentNames
  var vargumentNamesx_ret = newSeq[string](int(vargumentNames_ma.len))
  let vargumentNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentNames_ma.data)
  for i in 0 ..< vargumentNames_ma.len:
    let vargumentNames_lv_ms = vargumentNames_outCast[i]
    let vargumentNames_lvx_ret = string.fromBytes(vargumentNames_lv_ms)
    c_free(vargumentNames_lv_ms.data)
    vargumentNamesx_ret[i] = vargumentNames_lvx_ret
  c_free(vargumentNames_ma.data)
  let slotval3 = vargumentNamesx_ret
  var vargumentValues_ma = argumentValues
  var vargumentValuesx_ret = newSeq[string](int(vargumentValues_ma.len))
  let vargumentValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentValues_ma.data)
  for i in 0 ..< vargumentValues_ma.len:
    let vargumentValues_lv_ms = vargumentValues_outCast[i]
    let vargumentValues_lvx_ret = string.fromBytes(vargumentValues_lv_ms)
    c_free(vargumentValues_lv_ms.data)
    vargumentValuesx_ret[i] = vargumentValues_lvx_ret
  c_free(vargumentValues_ma.data)
  let slotval4 = vargumentValuesx_ret
  var virtualReturn = inst.createX(slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWebPluginFactory_method_callback_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = cint(extension)
  let slotval2 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption(h: option, owned: false)
  let slotval3 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn(h: output, owned: false)
  var virtualReturn = inst.extension(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebPluginFactory_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

proc fcQWebPluginFactory_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQWebPluginFactory_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQWebPluginFactory_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQWebPluginFactory_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQWebPluginFactory_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQWebPluginFactory_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQWebPluginFactory_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebPluginFactory](fcQWebPluginFactory_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qwebpluginfactory_types.QWebPluginFactory): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebPluginFactory_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebpluginfactory_types.QWebPluginFactory): cint =
  fcQWebPluginFactory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: cstring): cint =
  fcQWebPluginFactory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebPluginFactory_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    vtbl: ref QWebPluginFactoryVTable = nil): gen_qwebpluginfactory_types.QWebPluginFactory =
  let vtbl = if vtbl == nil: new QWebPluginFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebPluginFactory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebPluginFactory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebPluginFactory_vtable_callback_metacall
  if not isNil(vtbl[].plugins):
    vtbl[].vtbl.plugins = fcQWebPluginFactory_vtable_callback_plugins
  if not isNil(vtbl[].refreshPlugins):
    vtbl[].vtbl.refreshPlugins = fcQWebPluginFactory_vtable_callback_refreshPlugins
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQWebPluginFactory_vtable_callback_createX
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQWebPluginFactory_vtable_callback_extension
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQWebPluginFactory_vtable_callback_supportsExtension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebPluginFactory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebPluginFactory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebPluginFactory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebPluginFactory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebPluginFactory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebPluginFactory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebPluginFactory_vtable_callback_disconnectNotify
  gen_qwebpluginfactory_types.QWebPluginFactory(h: fcQWebPluginFactory_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebPluginFactoryVTable = nil): gen_qwebpluginfactory_types.QWebPluginFactory =
  let vtbl = if vtbl == nil: new QWebPluginFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebPluginFactoryVTable](fcQWebPluginFactory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebPluginFactory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebPluginFactory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebPluginFactory_vtable_callback_metacall
  if not isNil(vtbl[].plugins):
    vtbl[].vtbl.plugins = fcQWebPluginFactory_vtable_callback_plugins
  if not isNil(vtbl[].refreshPlugins):
    vtbl[].vtbl.refreshPlugins = fcQWebPluginFactory_vtable_callback_refreshPlugins
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQWebPluginFactory_vtable_callback_createX
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQWebPluginFactory_vtable_callback_extension
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQWebPluginFactory_vtable_callback_supportsExtension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebPluginFactory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebPluginFactory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebPluginFactory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebPluginFactory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebPluginFactory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebPluginFactory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebPluginFactory_vtable_callback_disconnectNotify
  gen_qwebpluginfactory_types.QWebPluginFactory(h: fcQWebPluginFactory_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQWebPluginFactory_mvtbl = cQWebPluginFactoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebPluginFactory()[])](self.fcQWebPluginFactory_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQWebPluginFactory_method_callback_metaObject,
  metacast: fcQWebPluginFactory_method_callback_metacast,
  metacall: fcQWebPluginFactory_method_callback_metacall,
  plugins: fcQWebPluginFactory_method_callback_plugins,
  refreshPlugins: fcQWebPluginFactory_method_callback_refreshPlugins,
  createX: fcQWebPluginFactory_method_callback_createX,
  extension: fcQWebPluginFactory_method_callback_extension,
  supportsExtension: fcQWebPluginFactory_method_callback_supportsExtension,
  event: fcQWebPluginFactory_method_callback_event,
  eventFilter: fcQWebPluginFactory_method_callback_eventFilter,
  timerEvent: fcQWebPluginFactory_method_callback_timerEvent,
  childEvent: fcQWebPluginFactory_method_callback_childEvent,
  customEvent: fcQWebPluginFactory_method_callback_customEvent,
  connectNotify: fcQWebPluginFactory_method_callback_connectNotify,
  disconnectNotify: fcQWebPluginFactory_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    inst: VirtualQWebPluginFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebPluginFactory_new(addr(cQWebPluginFactory_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWebPluginFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebPluginFactory_new2(addr(cQWebPluginFactory_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebpluginfactory_types.QWebPluginFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_staticMetaObject())
proc operatorEqual*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, other: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): bool =
  fcQWebPluginFactoryMimeType_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, other: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): bool =
  fcQWebPluginFactoryMimeType_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, param1: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): void =
  fcQWebPluginFactoryMimeType_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryMimeType,
    param1: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): gen_qwebpluginfactory_types.QWebPluginFactoryMimeType =
  gen_qwebpluginfactory_types.QWebPluginFactoryMimeType(h: fcQWebPluginFactoryMimeType_new(param1.h), owned: true)

proc operatorAssign*(self: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin, param1: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin): void =
  fcQWebPluginFactoryPlugin_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryPlugin,
    param1: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin): gen_qwebpluginfactory_types.QWebPluginFactoryPlugin =
  gen_qwebpluginfactory_types.QWebPluginFactoryPlugin(h: fcQWebPluginFactoryPlugin_new(param1.h), owned: true)

