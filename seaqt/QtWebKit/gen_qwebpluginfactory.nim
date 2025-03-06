import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit")  & " -fPIC"
{.compile("gen_qwebpluginfactory.cpp", cflags).}


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

proc fcQWebPluginFactory_new(): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new".}
proc fcQWebPluginFactory_new2(parent: pointer): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new2".}
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
proc fQWebPluginFactory_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebPluginFactory_virtualbase_metaObject".}
proc fcQWebPluginFactory_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_metaObject".}
proc fQWebPluginFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebPluginFactory_virtualbase_metacast".}
proc fcQWebPluginFactory_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_metacast".}
proc fQWebPluginFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebPluginFactory_virtualbase_metacall".}
proc fcQWebPluginFactory_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_metacall".}
proc fcQWebPluginFactory_override_virtual_plugins(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_plugins".}
proc fQWebPluginFactory_virtualbase_refreshPlugins(self: pointer, ): void{.importc: "QWebPluginFactory_virtualbase_refreshPlugins".}
proc fcQWebPluginFactory_override_virtual_refreshPlugins(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_refreshPlugins".}
proc fcQWebPluginFactory_override_virtual_create(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_create".}
proc fQWebPluginFactory_virtualbase_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool{.importc: "QWebPluginFactory_virtualbase_extension".}
proc fcQWebPluginFactory_override_virtual_extension(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_extension".}
proc fQWebPluginFactory_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QWebPluginFactory_virtualbase_supportsExtension".}
proc fcQWebPluginFactory_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_supportsExtension".}
proc fQWebPluginFactory_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebPluginFactory_virtualbase_event".}
proc fcQWebPluginFactory_override_virtual_event(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_event".}
proc fQWebPluginFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebPluginFactory_virtualbase_eventFilter".}
proc fcQWebPluginFactory_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_eventFilter".}
proc fQWebPluginFactory_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebPluginFactory_virtualbase_timerEvent".}
proc fcQWebPluginFactory_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_timerEvent".}
proc fQWebPluginFactory_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebPluginFactory_virtualbase_childEvent".}
proc fcQWebPluginFactory_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_childEvent".}
proc fQWebPluginFactory_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebPluginFactory_virtualbase_customEvent".}
proc fcQWebPluginFactory_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_customEvent".}
proc fQWebPluginFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebPluginFactory_virtualbase_connectNotify".}
proc fcQWebPluginFactory_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_connectNotify".}
proc fQWebPluginFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebPluginFactory_virtualbase_disconnectNotify".}
proc fcQWebPluginFactory_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_disconnectNotify".}
proc fcQWebPluginFactory_staticMetaObject(): pointer {.importc: "QWebPluginFactory_staticMetaObject".}
proc fcQWebPluginFactory_delete(self: pointer) {.importc: "QWebPluginFactory_delete".}
proc fcQWebPluginFactoryMimeType_new(param1: pointer): ptr cQWebPluginFactoryMimeType {.importc: "QWebPluginFactory__MimeType_new".}
proc fcQWebPluginFactoryMimeType_operatorEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorEqual".}
proc fcQWebPluginFactoryMimeType_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorNotEqual".}
proc fcQWebPluginFactoryMimeType_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__MimeType_operatorAssign".}
proc fcQWebPluginFactoryMimeType_delete(self: pointer) {.importc: "QWebPluginFactory__MimeType_delete".}
proc fcQWebPluginFactoryPlugin_new(param1: pointer): ptr cQWebPluginFactoryPlugin {.importc: "QWebPluginFactory__Plugin_new".}
proc fcQWebPluginFactoryPlugin_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__Plugin_operatorAssign".}
proc fcQWebPluginFactoryPlugin_delete(self: pointer) {.importc: "QWebPluginFactory__Plugin_delete".}
proc fcQWebPluginFactoryExtensionOption_delete(self: pointer) {.importc: "QWebPluginFactory__ExtensionOption_delete".}
proc fcQWebPluginFactoryExtensionReturn_delete(self: pointer) {.importc: "QWebPluginFactory__ExtensionReturn_delete".}


func init*(T: type gen_qwebpluginfactory_types.QWebPluginFactory, h: ptr cQWebPluginFactory): gen_qwebpluginfactory_types.QWebPluginFactory =
  T(h: h)
proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory, ): gen_qwebpluginfactory_types.QWebPluginFactory =
  gen_qwebpluginfactory_types.QWebPluginFactory.init(fcQWebPluginFactory_new())

proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactory, parent: gen_qobject_types.QObject): gen_qwebpluginfactory_types.QWebPluginFactory =
  gen_qwebpluginfactory_types.QWebPluginFactory.init(fcQWebPluginFactory_new2(parent.h))

proc metaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_metaObject(self.h))

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
    vx_ret[i] = gen_qwebpluginfactory_types.QWebPluginFactoryPlugin(h: v_outCast[i])
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

  gen_qobject_types.QObject(h: fcQWebPluginFactory_create(self.h, struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), param2.h, struct_miqt_array(len: csize_t(len(argumentNames)), data: if len(argumentNames) == 0: nil else: addr(argumentNames_CArray[0])), struct_miqt_array(len: csize_t(len(argumentValues)), data: if len(argumentValues) == 0: nil else: addr(argumentValues_CArray[0]))))

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

proc QWebPluginFactorymetaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWebPluginFactory_virtualbase_metaObject(self.h))

type QWebPluginFactorymetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorymetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorymetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_metaObject(self: ptr cQWebPluginFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QWebPluginFactory_metaObject ".} =
  var nimfunc = cast[ptr QWebPluginFactorymetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebPluginFactorymetacast*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cstring): pointer =
  fQWebPluginFactory_virtualbase_metacast(self.h, param1)

type QWebPluginFactorymetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorymetacastProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorymetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_metacast(self: ptr cQWebPluginFactory, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebPluginFactory_metacast ".} =
  var nimfunc = cast[ptr QWebPluginFactorymetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebPluginFactorymetacall*(self: gen_qwebpluginfactory_types.QWebPluginFactory, param1: cint, param2: cint, param3: pointer): cint =
  fQWebPluginFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebPluginFactorymetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorymetacallProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorymetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_metacall(self: ptr cQWebPluginFactory, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebPluginFactory_metacall ".} =
  var nimfunc = cast[ptr QWebPluginFactorymetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QWebPluginFactorypluginsProc* = proc(): seq[gen_qwebpluginfactory_types.QWebPluginFactoryPlugin]
proc onplugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorypluginsProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorypluginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_plugins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_plugins(self: ptr cQWebPluginFactory, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QWebPluginFactory_plugins ".} =
  var nimfunc = cast[ptr QWebPluginFactorypluginsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QWebPluginFactoryrefreshPlugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory, ): void =
  fQWebPluginFactory_virtualbase_refreshPlugins(self.h)

type QWebPluginFactoryrefreshPluginsProc* = proc(): void
proc onrefreshPlugins*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactoryrefreshPluginsProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactoryrefreshPluginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_refreshPlugins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_refreshPlugins(self: ptr cQWebPluginFactory, slot: int): void {.exportc: "miqt_exec_callback_QWebPluginFactory_refreshPlugins ".} =
  var nimfunc = cast[ptr QWebPluginFactoryrefreshPluginsProc](cast[pointer](slot))

  nimfunc[]()
type QWebPluginFactorycreateProc* = proc(mimeType: string, param2: gen_qurl_types.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject_types.QObject
proc oncreate*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorycreateProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorycreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_create(self: ptr cQWebPluginFactory, slot: int, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QWebPluginFactory_create ".} =
  var nimfunc = cast[ptr QWebPluginFactorycreateProc](cast[pointer](slot))
  let vmimeType_ms = mimeType
  let vmimeTypex_ret = string.fromBytes(toOpenArrayByte(vmimeType_ms.data, 0, int(vmimeType_ms.len)-1))
  c_free(vmimeType_ms.data)
  let slotval1 = vmimeTypex_ret

  let slotval2 = gen_qurl_types.QUrl(h: param2)

  var vargumentNames_ma = argumentNames
  var vargumentNamesx_ret = newSeq[string](int(vargumentNames_ma.len))
  let vargumentNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentNames_ma.data)
  for i in 0 ..< vargumentNames_ma.len:
    let vargumentNames_lv_ms = vargumentNames_outCast[i]
    let vargumentNames_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentNames_lv_ms.data, 0, int(vargumentNames_lv_ms.len)-1))
    c_free(vargumentNames_lv_ms.data)
    vargumentNamesx_ret[i] = vargumentNames_lvx_ret
  let slotval3 = vargumentNamesx_ret

  var vargumentValues_ma = argumentValues
  var vargumentValuesx_ret = newSeq[string](int(vargumentValues_ma.len))
  let vargumentValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentValues_ma.data)
  for i in 0 ..< vargumentValues_ma.len:
    let vargumentValues_lv_ms = vargumentValues_outCast[i]
    let vargumentValues_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentValues_lv_ms.data, 0, int(vargumentValues_lv_ms.len)-1))
    c_free(vargumentValues_lv_ms.data)
    vargumentValuesx_ret[i] = vargumentValues_lvx_ret
  let slotval4 = vargumentValuesx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc QWebPluginFactoryextension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool =
  fQWebPluginFactory_virtualbase_extension(self.h, cint(extension), option.h, output.h)

type QWebPluginFactoryextensionProc* = proc(extension: cint, option: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, output: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn): bool
proc onextension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactoryextensionProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactoryextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_extension(self: ptr cQWebPluginFactory, slot: int, extension: cint, option: pointer, output: pointer): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_extension ".} =
  var nimfunc = cast[ptr QWebPluginFactoryextensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption(h: option)

  let slotval3 = gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn(h: output)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebPluginFactorysupportsExtension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, extension: cint): bool =
  fQWebPluginFactory_virtualbase_supportsExtension(self.h, cint(extension))

type QWebPluginFactorysupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorysupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorysupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_supportsExtension(self: ptr cQWebPluginFactory, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_supportsExtension ".} =
  var nimfunc = cast[ptr QWebPluginFactorysupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebPluginFactoryevent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QEvent): bool =
  fQWebPluginFactory_virtualbase_event(self.h, event.h)

type QWebPluginFactoryeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactoryeventProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactoryeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_event(self: ptr cQWebPluginFactory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_event ".} =
  var nimfunc = cast[ptr QWebPluginFactoryeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebPluginFactoryeventFilter*(self: gen_qwebpluginfactory_types.QWebPluginFactory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebPluginFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebPluginFactoryeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactoryeventFilterProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactoryeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_eventFilter(self: ptr cQWebPluginFactory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_eventFilter ".} =
  var nimfunc = cast[ptr QWebPluginFactoryeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebPluginFactorytimerEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebPluginFactory_virtualbase_timerEvent(self.h, event.h)

type QWebPluginFactorytimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorytimerEventProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorytimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_timerEvent(self: ptr cQWebPluginFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_timerEvent ".} =
  var nimfunc = cast[ptr QWebPluginFactorytimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebPluginFactorychildEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebPluginFactory_virtualbase_childEvent(self.h, event.h)

type QWebPluginFactorychildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorychildEventProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorychildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_childEvent(self: ptr cQWebPluginFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_childEvent ".} =
  var nimfunc = cast[ptr QWebPluginFactorychildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebPluginFactorycustomEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, event: gen_qcoreevent_types.QEvent): void =
  fQWebPluginFactory_virtualbase_customEvent(self.h, event.h)

type QWebPluginFactorycustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorycustomEventProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorycustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_customEvent(self: ptr cQWebPluginFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_customEvent ".} =
  var nimfunc = cast[ptr QWebPluginFactorycustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebPluginFactoryconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebPluginFactory_virtualbase_connectNotify(self.h, signal.h)

type QWebPluginFactoryconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactoryconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactoryconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_connectNotify(self: ptr cQWebPluginFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_connectNotify ".} =
  var nimfunc = cast[ptr QWebPluginFactoryconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebPluginFactorydisconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebPluginFactory_virtualbase_disconnectNotify(self.h, signal.h)

type QWebPluginFactorydisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebpluginfactory_types.QWebPluginFactory, slot: QWebPluginFactorydisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebPluginFactorydisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_disconnectNotify(self: ptr cQWebPluginFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebPluginFactorydisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebpluginfactory_types.QWebPluginFactory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPluginFactory_staticMetaObject())
proc delete*(self: gen_qwebpluginfactory_types.QWebPluginFactory) =
  fcQWebPluginFactory_delete(self.h)

func init*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, h: ptr cQWebPluginFactoryMimeType): gen_qwebpluginfactory_types.QWebPluginFactoryMimeType =
  T(h: h)
proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, param1: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): gen_qwebpluginfactory_types.QWebPluginFactoryMimeType =
  gen_qwebpluginfactory_types.QWebPluginFactoryMimeType.init(fcQWebPluginFactoryMimeType_new(param1.h))

proc operatorEqual*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, other: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): bool =
  fcQWebPluginFactoryMimeType_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, other: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): bool =
  fcQWebPluginFactoryMimeType_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType, param1: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType): void =
  fcQWebPluginFactoryMimeType_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwebpluginfactory_types.QWebPluginFactoryMimeType) =
  fcQWebPluginFactoryMimeType_delete(self.h)

func init*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryPlugin, h: ptr cQWebPluginFactoryPlugin): gen_qwebpluginfactory_types.QWebPluginFactoryPlugin =
  T(h: h)
proc create*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryPlugin, param1: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin): gen_qwebpluginfactory_types.QWebPluginFactoryPlugin =
  gen_qwebpluginfactory_types.QWebPluginFactoryPlugin.init(fcQWebPluginFactoryPlugin_new(param1.h))

proc operatorAssign*(self: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin, param1: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin): void =
  fcQWebPluginFactoryPlugin_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwebpluginfactory_types.QWebPluginFactoryPlugin) =
  fcQWebPluginFactoryPlugin_delete(self.h)

func init*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption, h: ptr cQWebPluginFactoryExtensionOption): gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption =
  T(h: h)
proc delete*(self: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionOption) =
  fcQWebPluginFactoryExtensionOption_delete(self.h)

func init*(T: type gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn, h: ptr cQWebPluginFactoryExtensionReturn): gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn =
  T(h: h)
proc delete*(self: gen_qwebpluginfactory_types.QWebPluginFactoryExtensionReturn) =
  fcQWebPluginFactoryExtensionReturn_delete(self.h)
