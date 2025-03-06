import ./Qt5WebKit_libs

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

proc fcQWebPluginFactory_metaObject(self: pointer, ): pointer {.importc: "QWebPluginFactory_metaObject".}
proc fcQWebPluginFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPluginFactory_metacast".}
proc fcQWebPluginFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPluginFactory_metacall".}
proc fcQWebPluginFactory_tr(s: cstring): struct_miqt_string {.importc: "QWebPluginFactory_tr".}
proc fcQWebPluginFactory_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebPluginFactory_trUtf8".}
proc fcQWebPluginFactory_plugins(self: pointer, ): struct_miqt_array {.importc: "QWebPluginFactory_plugins".}
proc fcQWebPluginFactory_refreshPlugins(self: pointer, ): void {.importc: "QWebPluginFactory_refreshPlugins".}
proc fcQWebPluginFactory_create(self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.importc: "QWebPluginFactory_create".}
proc fcQWebPluginFactory_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPluginFactory_extension".}
proc fcQWebPluginFactory_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPluginFactory_supportsExtension".}
proc fcQWebPluginFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPluginFactory_tr2".}
proc fcQWebPluginFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPluginFactory_tr3".}
proc fcQWebPluginFactory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPluginFactory_trUtf82".}
proc fcQWebPluginFactory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPluginFactory_trUtf83".}
type cQWebPluginFactoryVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQWebPluginFactoryVTable, self: ptr cQWebPluginFactory) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  plugins*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  refreshPlugins*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  create*: proc(vtbl, self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebPluginFactory_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebPluginFactory_virtualbase_metaObject".}
proc fcQWebPluginFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPluginFactory_virtualbase_metacast".}
proc fcQWebPluginFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPluginFactory_virtualbase_metacall".}
proc fcQWebPluginFactory_virtualbase_refreshPlugins(self: pointer, ): void {.importc: "QWebPluginFactory_virtualbase_refreshPlugins".}
proc fcQWebPluginFactory_virtualbase_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPluginFactory_virtualbase_extension".}
proc fcQWebPluginFactory_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPluginFactory_virtualbase_supportsExtension".}
proc fcQWebPluginFactory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebPluginFactory_virtualbase_event".}
proc fcQWebPluginFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebPluginFactory_virtualbase_eventFilter".}
proc fcQWebPluginFactory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebPluginFactory_virtualbase_timerEvent".}
proc fcQWebPluginFactory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebPluginFactory_virtualbase_childEvent".}
proc fcQWebPluginFactory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebPluginFactory_virtualbase_customEvent".}
proc fcQWebPluginFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebPluginFactory_virtualbase_connectNotify".}
proc fcQWebPluginFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebPluginFactory_virtualbase_disconnectNotify".}
proc fcQWebPluginFactory_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebPluginFactory_protectedbase_sender".}
proc fcQWebPluginFactory_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebPluginFactory_protectedbase_senderSignalIndex".}
proc fcQWebPluginFactory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebPluginFactory_protectedbase_receivers".}
proc fcQWebPluginFactory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebPluginFactory_protectedbase_isSignalConnected".}
proc fcQWebPluginFactory_new(vtbl: pointer, ): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new".}
proc fcQWebPluginFactory_new2(vtbl: pointer, parent: pointer): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new2".}
proc fcQWebPluginFactory_staticMetaObject(): pointer {.importc: "QWebPluginFactory_staticMetaObject".}
proc fcQWebPluginFactoryMimeType_operatorEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorEqual".}
proc fcQWebPluginFactoryMimeType_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorNotEqual".}
proc fcQWebPluginFactoryMimeType_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__MimeType_operatorAssign".}
proc fcQWebPluginFactoryMimeType_new(param1: pointer): ptr cQWebPluginFactoryMimeType {.importc: "QWebPluginFactory__MimeType_new".}
proc fcQWebPluginFactoryPlugin_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__Plugin_operatorAssign".}
proc fcQWebPluginFactoryPlugin_new(param1: pointer): ptr cQWebPluginFactoryPlugin {.importc: "QWebPluginFactory__Plugin_new".}

proc metaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cstring): pointer =
  fcQWebPluginFactory_metacast(self.h, param1)

proc metacall*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebPluginFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring): string =
  let v_ms = fcQWebPluginFactory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring): string =
  let v_ms = fcQWebPluginFactory_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc plugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin] =
  var v_ma = fcQWebPluginFactory_plugins(self.h)
  var vx_ret = newSeq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebpluginfactory_types.QWebPluginFactoryPlugin(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc refreshPlugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): void =
  fcQWebPluginFactory_refreshPlugins(self.h)

proc create*(self: gen_qwebpluginfactory_types.QWebPluginFactory, mimeType: string, param2: gen_qurl_types.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject_types.QObject =
  var argumentNames_CArray = newSeq[struct_miqt_string](len(argumentNames))
  for i in 0..<len(argumentNames):
    argumentNames_CArray[i] = struct_miqt_string(data: argumentNames[i], len: csize_t(len(argumentNames[i])))

  var argumentValues_CArray = newSeq[struct_miqt_string](len(argumentValues))
  for i in 0..<len(argumentValues):
    argumentValues_CArray[i] = struct_miqt_string(data: argumentValues[i], len: csize_t(len(argumentValues[i])))

  gen_qobject_types.QObject(h: fcQWebPluginFactory_create(self.h, struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), param2.h, struct_miqt_array(len: csize_t(len(argumentNames)), data: if len(argumentNames) == 0: nil else: addr(argumentNames_CArray[0])), struct_miqt_array(len: csize_t(len(argumentValues)), data: if len(argumentValues) == 0: nil else: addr(argumentValues_CArray[0]))), owned: false)

proc extension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool =
  fcQWebPluginFactory_extension(self.h, cint(extension), option.h, output.h)

proc supportsExtension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint): bool =
  fcQWebPluginFactory_supportsExtension(self.h, cint(extension))

proc tr*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring): string =
  let v_ms = fcQWebPluginFactory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebPluginFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring): string =
  let v_ms = fcQWebPluginFactory_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpluginfactory_types.QWebPluginFactory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebPluginFactory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebPluginFactorymetaObjectProc* = proc(self: QWebPluginFactory): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebPluginFactorymetacastProc* = proc(self: QWebPluginFactory, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebPluginFactorymetacallProc* = proc(self: QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebPluginFactorypluginsProc* = proc(self: QWebPluginFactory): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin] {.raises: [], gcsafe.}
type QWebPluginFactoryrefreshPluginsProc* = proc(self: QWebPluginFactory): void {.raises: [], gcsafe.}
type QWebPluginFactorycreateProc* = proc(self: QWebPluginFactory, mimeType: string, param2: gen_qurl_types.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject_types.QObject {.raises: [], gcsafe.}
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
  create*: QWebPluginFactorycreateProc
  extension*: QWebPluginFactoryextensionProc
  supportsExtension*: QWebPluginFactorysupportsExtensionProc
  event*: QWebPluginFactoryeventProc
  eventFilter*: QWebPluginFactoryeventFilterProc
  timerEvent*: QWebPluginFactorytimerEventProc
  childEvent*: QWebPluginFactorychildEventProc
  customEvent*: QWebPluginFactorycustomEventProc
  connectNotify*: QWebPluginFactoryconnectNotifyProc
  disconnectNotify*: QWebPluginFactorydisconnectNotifyProc
proc QWebPluginFactorymetaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQWebPluginFactory_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebPluginFactorymetacast*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cstring): pointer =
  fcQWebPluginFactory_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebPluginFactory_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebPluginFactorymetacall*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebPluginFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebPluginFactory_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQWebPluginFactory_plugins(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  var virtualReturn = vtbl[].plugins(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QWebPluginFactoryrefreshPlugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): void =
  fcQWebPluginFactory_virtualbase_refreshPlugins(self.h)

proc miqt_exec_callback_cQWebPluginFactory_refreshPlugins(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  vtbl[].refreshPlugins(self)

proc miqt_exec_callback_cQWebPluginFactory_create(vtbl: pointer, self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let vmimeType_ms = mimeType
  let vmimeTypex_ret = string.fromBytes(toOpenArrayByte(vmimeType_ms.data, 0, int(vmimeType_ms.len)-1))
  c_free(vmimeType_ms.data)
  let slotval1 = vmimeTypex_ret
  let slotval2 = gen_qurl_types.QUrl(h: param2, owned: false)
  var vargumentNames_ma = argumentNames
  var vargumentNamesx_ret = newSeq[string](int(vargumentNames_ma.len))
  let vargumentNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentNames_ma.data)
  for i in 0 ..< vargumentNames_ma.len:
    let vargumentNames_lv_ms = vargumentNames_outCast[i]
    let vargumentNames_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentNames_lv_ms.data, 0, int(vargumentNames_lv_ms.len)-1))
    c_free(vargumentNames_lv_ms.data)
    vargumentNamesx_ret[i] = vargumentNames_lvx_ret
  c_free(vargumentNames_ma.data)
  let slotval3 = vargumentNamesx_ret
  var vargumentValues_ma = argumentValues
  var vargumentValuesx_ret = newSeq[string](int(vargumentValues_ma.len))
  let vargumentValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentValues_ma.data)
  for i in 0 ..< vargumentValues_ma.len:
    let vargumentValues_lv_ms = vargumentValues_outCast[i]
    let vargumentValues_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentValues_lv_ms.data, 0, int(vargumentValues_lv_ms.len)-1))
    c_free(vargumentValues_lv_ms.data)
    vargumentValuesx_ret[i] = vargumentValues_lvx_ret
  c_free(vargumentValues_ma.data)
  let slotval4 = vargumentValuesx_ret
  var virtualReturn = vtbl[].create(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebPluginFactoryextension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool =
  fcQWebPluginFactory_virtualbase_extension(self.h, cint(extension), option.h, output.h)

proc miqt_exec_callback_cQWebPluginFactory_extension(vtbl: pointer, self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption(h: option, owned: false)
  let slotval3 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn(h: output, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebPluginFactorysupportsExtension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint): bool =
  fcQWebPluginFactory_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQWebPluginFactory_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QWebPluginFactoryevent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebPluginFactory_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWebPluginFactory_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebPluginFactoryeventFilter*(self: gen_qwebpluginfactory_types.QWebPluginFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebPluginFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebPluginFactory_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebPluginFactorytimerEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebPluginFactory_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebPluginFactory_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebPluginFactorychildEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebPluginFactory_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebPluginFactory_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebPluginFactorycustomEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QEvent): void =
  fcQWebPluginFactory_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebPluginFactory_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebPluginFactoryconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebPluginFactory_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebPluginFactory_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebPluginFactorydisconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebPluginFactory_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebPluginFactory_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPluginFactoryVTable](vtbl)
  let self = QWebPluginFactory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebPluginFactory* {.inheritable.} = ref object of QWebPluginFactory
  vtbl*: cQWebPluginFactoryVTable
method metaObject*(self: VirtualQWebPluginFactory, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebPluginFactorymetaObject(self[])
proc miqt_exec_method_cQWebPluginFactory_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebPluginFactory, param1: cstring): pointer {.base.} =
  QWebPluginFactorymetacast(self[], param1)
proc miqt_exec_method_cQWebPluginFactory_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebPluginFactorymetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQWebPluginFactory_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method plugins*(self: VirtualQWebPluginFactory, ): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin] {.base.} =
  raiseAssert("missing implementation of QWebPluginFactory_virtualbase_plugins")
proc miqt_exec_method_cQWebPluginFactory_plugins(vtbl: pointer, inst: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  var virtualReturn = vtbl.plugins()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method refreshPlugins*(self: VirtualQWebPluginFactory, ): void {.base.} =
  QWebPluginFactoryrefreshPlugins(self[])
proc miqt_exec_method_cQWebPluginFactory_refreshPlugins(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  vtbl.refreshPlugins()

method create*(self: VirtualQWebPluginFactory, mimeType: string, param2: gen_qurl_types.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject_types.QObject {.base.} =
  raiseAssert("missing implementation of QWebPluginFactory_virtualbase_create")
proc miqt_exec_method_cQWebPluginFactory_create(vtbl: pointer, inst: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let vmimeType_ms = mimeType
  let vmimeTypex_ret = string.fromBytes(toOpenArrayByte(vmimeType_ms.data, 0, int(vmimeType_ms.len)-1))
  c_free(vmimeType_ms.data)
  let slotval1 = vmimeTypex_ret
  let slotval2 = gen_qurl_types.QUrl(h: param2, owned: false)
  var vargumentNames_ma = argumentNames
  var vargumentNamesx_ret = newSeq[string](int(vargumentNames_ma.len))
  let vargumentNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentNames_ma.data)
  for i in 0 ..< vargumentNames_ma.len:
    let vargumentNames_lv_ms = vargumentNames_outCast[i]
    let vargumentNames_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentNames_lv_ms.data, 0, int(vargumentNames_lv_ms.len)-1))
    c_free(vargumentNames_lv_ms.data)
    vargumentNamesx_ret[i] = vargumentNames_lvx_ret
  c_free(vargumentNames_ma.data)
  let slotval3 = vargumentNamesx_ret
  var vargumentValues_ma = argumentValues
  var vargumentValuesx_ret = newSeq[string](int(vargumentValues_ma.len))
  let vargumentValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentValues_ma.data)
  for i in 0 ..< vargumentValues_ma.len:
    let vargumentValues_lv_ms = vargumentValues_outCast[i]
    let vargumentValues_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentValues_lv_ms.data, 0, int(vargumentValues_lv_ms.len)-1))
    c_free(vargumentValues_lv_ms.data)
    vargumentValuesx_ret[i] = vargumentValues_lvx_ret
  c_free(vargumentValues_ma.data)
  let slotval4 = vargumentValuesx_ret
  var virtualReturn = vtbl.create(slotval1, slotval2, slotval3, slotval4)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method extension*(self: VirtualQWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool {.base.} =
  QWebPluginFactoryextension(self[], extension, option, output)
proc miqt_exec_method_cQWebPluginFactory_extension(vtbl: pointer, inst: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = cint(extension)
  let slotval2 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption(h: option, owned: false)
  let slotval3 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn(h: output, owned: false)
  var virtualReturn = vtbl.extension(slotval1, slotval2, slotval3)
  virtualReturn

method supportsExtension*(self: VirtualQWebPluginFactory, extension: cint): bool {.base.} =
  QWebPluginFactorysupportsExtension(self[], extension)
proc miqt_exec_method_cQWebPluginFactory_supportsExtension(vtbl: pointer, inst: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = cint(extension)
  var virtualReturn = vtbl.supportsExtension(slotval1)
  virtualReturn

method event*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebPluginFactoryevent(self[], event)
proc miqt_exec_method_cQWebPluginFactory_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebPluginFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebPluginFactoryeventFilter(self[], watched, event)
proc miqt_exec_method_cQWebPluginFactory_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebPluginFactorytimerEvent(self[], event)
proc miqt_exec_method_cQWebPluginFactory_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebPluginFactorychildEvent(self[], event)
proc miqt_exec_method_cQWebPluginFactory_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQWebPluginFactory, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebPluginFactorycustomEvent(self[], event)
proc miqt_exec_method_cQWebPluginFactory_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebPluginFactoryconnectNotify(self[], signal)
proc miqt_exec_method_cQWebPluginFactory_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebPluginFactorydisconnectNotify(self[], signal)
proc miqt_exec_method_cQWebPluginFactory_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebPluginFactory](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebPluginFactory_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): cint =
  fcQWebPluginFactory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: cstring): cint =
  fcQWebPluginFactory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebPluginFactory_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    vtbl: ref QWebPluginFactoryVTable = nil): gen_qwebpluginfactory_types.QWebPluginFactory =
  let vtbl = if vtbl == nil: new QWebPluginFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebPluginFactoryVTable, _: ptr cQWebPluginFactory) {.cdecl.} =
    let vtbl = cast[ref QWebPluginFactoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebPluginFactory_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebPluginFactory_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebPluginFactory_metacall
  if not isNil(vtbl[].plugins):
    vtbl[].vtbl.plugins = miqt_exec_callback_cQWebPluginFactory_plugins
  if not isNil(vtbl[].refreshPlugins):
    vtbl[].vtbl.refreshPlugins = miqt_exec_callback_cQWebPluginFactory_refreshPlugins
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = miqt_exec_callback_cQWebPluginFactory_create
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQWebPluginFactory_extension
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQWebPluginFactory_supportsExtension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebPluginFactory_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebPluginFactory_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebPluginFactory_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebPluginFactory_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebPluginFactory_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebPluginFactory_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebPluginFactory_disconnectNotify
  gen_qwebpluginfactory_types.QWebPluginFactory(h: fcQWebPluginFactory_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebPluginFactoryVTable = nil): gen_qwebpluginfactory_types.QWebPluginFactory =
  let vtbl = if vtbl == nil: new QWebPluginFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebPluginFactoryVTable, _: ptr cQWebPluginFactory) {.cdecl.} =
    let vtbl = cast[ref QWebPluginFactoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebPluginFactory_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebPluginFactory_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebPluginFactory_metacall
  if not isNil(vtbl[].plugins):
    vtbl[].vtbl.plugins = miqt_exec_callback_cQWebPluginFactory_plugins
  if not isNil(vtbl[].refreshPlugins):
    vtbl[].vtbl.refreshPlugins = miqt_exec_callback_cQWebPluginFactory_refreshPlugins
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = miqt_exec_callback_cQWebPluginFactory_create
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQWebPluginFactory_extension
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQWebPluginFactory_supportsExtension
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebPluginFactory_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebPluginFactory_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebPluginFactory_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebPluginFactory_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebPluginFactory_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebPluginFactory_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebPluginFactory_disconnectNotify
  gen_qwebpluginfactory_types.QWebPluginFactory(h: fcQWebPluginFactory_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    vtbl: VirtualQWebPluginFactory) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebPluginFactoryVTable, _: ptr cQWebPluginFactory) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWebPluginFactory()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWebPluginFactory_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWebPluginFactory_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWebPluginFactory_metacall
  vtbl[].vtbl.plugins = miqt_exec_method_cQWebPluginFactory_plugins
  vtbl[].vtbl.refreshPlugins = miqt_exec_method_cQWebPluginFactory_refreshPlugins
  vtbl[].vtbl.create = miqt_exec_method_cQWebPluginFactory_create
  vtbl[].vtbl.extension = miqt_exec_method_cQWebPluginFactory_extension
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQWebPluginFactory_supportsExtension
  vtbl[].vtbl.event = miqt_exec_method_cQWebPluginFactory_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWebPluginFactory_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWebPluginFactory_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWebPluginFactory_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWebPluginFactory_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWebPluginFactory_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWebPluginFactory_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWebPluginFactory_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQWebPluginFactory) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebPluginFactoryVTable, _: ptr cQWebPluginFactory) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWebPluginFactory()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWebPluginFactory, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWebPluginFactory_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWebPluginFactory_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWebPluginFactory_metacall
  vtbl[].vtbl.plugins = miqt_exec_method_cQWebPluginFactory_plugins
  vtbl[].vtbl.refreshPlugins = miqt_exec_method_cQWebPluginFactory_refreshPlugins
  vtbl[].vtbl.create = miqt_exec_method_cQWebPluginFactory_create
  vtbl[].vtbl.extension = miqt_exec_method_cQWebPluginFactory_extension
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQWebPluginFactory_supportsExtension
  vtbl[].vtbl.event = miqt_exec_method_cQWebPluginFactory_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWebPluginFactory_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWebPluginFactory_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWebPluginFactory_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWebPluginFactory_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWebPluginFactory_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWebPluginFactory_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWebPluginFactory_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

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

