import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlengine.cpp", cflags).}


type QQmlImageProviderBaseImageTypeEnum* = distinct cint
template Image*(_: type QQmlImageProviderBaseImageTypeEnum): untyped = 0
template Pixmap*(_: type QQmlImageProviderBaseImageTypeEnum): untyped = 1
template Texture*(_: type QQmlImageProviderBaseImageTypeEnum): untyped = 2
template Invalid*(_: type QQmlImageProviderBaseImageTypeEnum): untyped = 3
template ImageResponse*(_: type QQmlImageProviderBaseImageTypeEnum): untyped = 4


type QQmlImageProviderBaseFlagEnum* = distinct cint
template ForceAsynchronousImageLoading*(_: type QQmlImageProviderBaseFlagEnum): untyped = 1


type QQmlEngineObjectOwnershipEnum* = distinct cint
template CppOwnership*(_: type QQmlEngineObjectOwnershipEnum): untyped = 0
template JavaScriptOwnership*(_: type QQmlEngineObjectOwnershipEnum): untyped = 1


import ./gen_qqmlengine_types
export gen_qqmlengine_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qnetworkaccessmanager_types,
  ./gen_qjsengine,
  ./gen_qqmlabstracturlinterceptor_types,
  ./gen_qqmlcontext_types,
  ./gen_qqmlerror_types,
  ./gen_qqmlincubator_types,
  ./gen_qqmlnetworkaccessmanagerfactory_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qnetworkaccessmanager_types,
  gen_qjsengine,
  gen_qqmlabstracturlinterceptor_types,
  gen_qqmlcontext_types,
  gen_qqmlerror_types,
  gen_qqmlincubator_types,
  gen_qqmlnetworkaccessmanagerfactory_types

type cQQmlImageProviderBase*{.exportc: "QQmlImageProviderBase", incompleteStruct.} = object
type cQQmlEngine*{.exportc: "QQmlEngine", incompleteStruct.} = object

proc fcQQmlImageProviderBase_imageType(self: pointer, ): cint {.importc: "QQmlImageProviderBase_imageType".}
proc fcQQmlImageProviderBase_flags(self: pointer, ): cint {.importc: "QQmlImageProviderBase_flags".}
proc fcQQmlImageProviderBase_delete(self: pointer) {.importc: "QQmlImageProviderBase_delete".}
proc fcQQmlEngine_new(): ptr cQQmlEngine {.importc: "QQmlEngine_new".}
proc fcQQmlEngine_new2(p: pointer): ptr cQQmlEngine {.importc: "QQmlEngine_new2".}
proc fcQQmlEngine_metaObject(self: pointer, ): pointer {.importc: "QQmlEngine_metaObject".}
proc fcQQmlEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngine_metacast".}
proc fcQQmlEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngine_metacall".}
proc fcQQmlEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngine_tr".}
proc fcQQmlEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlEngine_trUtf8".}
proc fcQQmlEngine_rootContext(self: pointer, ): pointer {.importc: "QQmlEngine_rootContext".}
proc fcQQmlEngine_clearComponentCache(self: pointer, ): void {.importc: "QQmlEngine_clearComponentCache".}
proc fcQQmlEngine_trimComponentCache(self: pointer, ): void {.importc: "QQmlEngine_trimComponentCache".}
proc fcQQmlEngine_importPathList(self: pointer, ): struct_miqt_array {.importc: "QQmlEngine_importPathList".}
proc fcQQmlEngine_setImportPathList(self: pointer, paths: struct_miqt_array): void {.importc: "QQmlEngine_setImportPathList".}
proc fcQQmlEngine_addImportPath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_addImportPath".}
proc fcQQmlEngine_pluginPathList(self: pointer, ): struct_miqt_array {.importc: "QQmlEngine_pluginPathList".}
proc fcQQmlEngine_setPluginPathList(self: pointer, paths: struct_miqt_array): void {.importc: "QQmlEngine_setPluginPathList".}
proc fcQQmlEngine_addPluginPath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_addPluginPath".}
proc fcQQmlEngine_addNamedBundle(self: pointer, name: struct_miqt_string, fileName: struct_miqt_string): bool {.importc: "QQmlEngine_addNamedBundle".}
proc fcQQmlEngine_importPlugin(self: pointer, filePath: struct_miqt_string, uri: struct_miqt_string, errors: struct_miqt_array): bool {.importc: "QQmlEngine_importPlugin".}
proc fcQQmlEngine_setNetworkAccessManagerFactory(self: pointer, networkAccessManagerFactory: pointer): void {.importc: "QQmlEngine_setNetworkAccessManagerFactory".}
proc fcQQmlEngine_networkAccessManagerFactory(self: pointer, ): pointer {.importc: "QQmlEngine_networkAccessManagerFactory".}
proc fcQQmlEngine_networkAccessManager(self: pointer, ): pointer {.importc: "QQmlEngine_networkAccessManager".}
proc fcQQmlEngine_setUrlInterceptor(self: pointer, urlInterceptor: pointer): void {.importc: "QQmlEngine_setUrlInterceptor".}
proc fcQQmlEngine_urlInterceptor(self: pointer, ): pointer {.importc: "QQmlEngine_urlInterceptor".}
proc fcQQmlEngine_addImageProvider(self: pointer, id: struct_miqt_string, param2: pointer): void {.importc: "QQmlEngine_addImageProvider".}
proc fcQQmlEngine_imageProvider(self: pointer, id: struct_miqt_string): pointer {.importc: "QQmlEngine_imageProvider".}
proc fcQQmlEngine_removeImageProvider(self: pointer, id: struct_miqt_string): void {.importc: "QQmlEngine_removeImageProvider".}
proc fcQQmlEngine_setIncubationController(self: pointer, incubationController: pointer): void {.importc: "QQmlEngine_setIncubationController".}
proc fcQQmlEngine_incubationController(self: pointer, ): pointer {.importc: "QQmlEngine_incubationController".}
proc fcQQmlEngine_setOfflineStoragePath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_setOfflineStoragePath".}
proc fcQQmlEngine_offlineStoragePath(self: pointer, ): struct_miqt_string {.importc: "QQmlEngine_offlineStoragePath".}
proc fcQQmlEngine_offlineStorageDatabaseFilePath(self: pointer, databaseName: struct_miqt_string): struct_miqt_string {.importc: "QQmlEngine_offlineStorageDatabaseFilePath".}
proc fcQQmlEngine_baseUrl(self: pointer, ): pointer {.importc: "QQmlEngine_baseUrl".}
proc fcQQmlEngine_setBaseUrl(self: pointer, baseUrl: pointer): void {.importc: "QQmlEngine_setBaseUrl".}
proc fcQQmlEngine_outputWarningsToStandardError(self: pointer, ): bool {.importc: "QQmlEngine_outputWarningsToStandardError".}
proc fcQQmlEngine_setOutputWarningsToStandardError(self: pointer, outputWarningsToStandardError: bool): void {.importc: "QQmlEngine_setOutputWarningsToStandardError".}
proc fcQQmlEngine_retranslate(self: pointer, ): void {.importc: "QQmlEngine_retranslate".}
proc fcQQmlEngine_contextForObject(param1: pointer): pointer {.importc: "QQmlEngine_contextForObject".}
proc fcQQmlEngine_setContextForObject(param1: pointer, param2: pointer): void {.importc: "QQmlEngine_setContextForObject".}
proc fcQQmlEngine_setObjectOwnership(param1: pointer, param2: cint): void {.importc: "QQmlEngine_setObjectOwnership".}
proc fcQQmlEngine_objectOwnership(param1: pointer): cint {.importc: "QQmlEngine_objectOwnership".}
proc fcQQmlEngine_quit(self: pointer, ): void {.importc: "QQmlEngine_quit".}
proc fcQQmlEngine_connect_quit(self: pointer, slot: int) {.importc: "QQmlEngine_connect_quit".}
proc fcQQmlEngine_exit(self: pointer, retCode: cint): void {.importc: "QQmlEngine_exit".}
proc fcQQmlEngine_connect_exit(self: pointer, slot: int) {.importc: "QQmlEngine_connect_exit".}
proc fcQQmlEngine_warnings(self: pointer, warnings: struct_miqt_array): void {.importc: "QQmlEngine_warnings".}
proc fcQQmlEngine_connect_warnings(self: pointer, slot: int) {.importc: "QQmlEngine_connect_warnings".}
proc fcQQmlEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngine_tr2".}
proc fcQQmlEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngine_tr3".}
proc fcQQmlEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngine_trUtf82".}
proc fcQQmlEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngine_trUtf83".}
proc fQQmlEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlEngine_virtualbase_metaObject".}
proc fcQQmlEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_metaObject".}
proc fQQmlEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlEngine_virtualbase_metacast".}
proc fcQQmlEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_metacast".}
proc fQQmlEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlEngine_virtualbase_metacall".}
proc fcQQmlEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_metacall".}
proc fQQmlEngine_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQmlEngine_virtualbase_event".}
proc fcQQmlEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_event".}
proc fQQmlEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlEngine_virtualbase_eventFilter".}
proc fcQQmlEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_eventFilter".}
proc fQQmlEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlEngine_virtualbase_timerEvent".}
proc fcQQmlEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_timerEvent".}
proc fQQmlEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlEngine_virtualbase_childEvent".}
proc fcQQmlEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_childEvent".}
proc fQQmlEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlEngine_virtualbase_customEvent".}
proc fcQQmlEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_customEvent".}
proc fQQmlEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngine_virtualbase_connectNotify".}
proc fcQQmlEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_connectNotify".}
proc fQQmlEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngine_virtualbase_disconnectNotify".}
proc fcQQmlEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_disconnectNotify".}
proc fcQQmlEngine_staticMetaObject(): pointer {.importc: "QQmlEngine_staticMetaObject".}
proc fcQQmlEngine_delete(self: pointer) {.importc: "QQmlEngine_delete".}


func init*(T: type gen_qqmlengine_types.QQmlImageProviderBase, h: ptr cQQmlImageProviderBase): gen_qqmlengine_types.QQmlImageProviderBase =
  T(h: h)
proc imageType*(self: gen_qqmlengine_types.QQmlImageProviderBase, ): cint =
  cint(fcQQmlImageProviderBase_imageType(self.h))

proc flags*(self: gen_qqmlengine_types.QQmlImageProviderBase, ): cint =
  cint(fcQQmlImageProviderBase_flags(self.h))

proc delete*(self: gen_qqmlengine_types.QQmlImageProviderBase) =
  fcQQmlImageProviderBase_delete(self.h)

func init*(T: type gen_qqmlengine_types.QQmlEngine, h: ptr cQQmlEngine): gen_qqmlengine_types.QQmlEngine =
  T(h: h)
proc create*(T: type gen_qqmlengine_types.QQmlEngine, ): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine.init(fcQQmlEngine_new())

proc create*(T: type gen_qqmlengine_types.QQmlEngine, p: gen_qobject_types.QObject): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine.init(fcQQmlEngine_new2(p.h))

proc metaObject*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngine_metaObject(self.h))

proc metacast*(self: gen_qqmlengine_types.QQmlEngine, param1: cstring): pointer =
  fcQQmlEngine_metacast(self.h, param1)

proc metacall*(self: gen_qqmlengine_types.QQmlEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring): string =
  let v_ms = fcQQmlEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring): string =
  let v_ms = fcQQmlEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootContext*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlEngine_rootContext(self.h))

proc clearComponentCache*(self: gen_qqmlengine_types.QQmlEngine, ): void =
  fcQQmlEngine_clearComponentCache(self.h)

proc trimComponentCache*(self: gen_qqmlengine_types.QQmlEngine, ): void =
  fcQQmlEngine_trimComponentCache(self.h)

proc importPathList*(self: gen_qqmlengine_types.QQmlEngine, ): seq[string] =
  var v_ma = fcQQmlEngine_importPathList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setImportPathList*(self: gen_qqmlengine_types.QQmlEngine, paths: seq[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQQmlEngine_setImportPathList(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc addImportPath*(self: gen_qqmlengine_types.QQmlEngine, dir: string): void =
  fcQQmlEngine_addImportPath(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc pluginPathList*(self: gen_qqmlengine_types.QQmlEngine, ): seq[string] =
  var v_ma = fcQQmlEngine_pluginPathList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setPluginPathList*(self: gen_qqmlengine_types.QQmlEngine, paths: seq[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQQmlEngine_setPluginPathList(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc addPluginPath*(self: gen_qqmlengine_types.QQmlEngine, dir: string): void =
  fcQQmlEngine_addPluginPath(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc addNamedBundle*(self: gen_qqmlengine_types.QQmlEngine, name: string, fileName: string): bool =
  fcQQmlEngine_addNamedBundle(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc importPlugin*(self: gen_qqmlengine_types.QQmlEngine, filePath: string, uri: string, errors: seq[gen_qqmlerror_types.QQmlError]): bool =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQQmlEngine_importPlugin(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), struct_miqt_string(data: uri, len: csize_t(len(uri))), struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc setNetworkAccessManagerFactory*(self: gen_qqmlengine_types.QQmlEngine, networkAccessManagerFactory: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory): void =
  fcQQmlEngine_setNetworkAccessManagerFactory(self.h, networkAccessManagerFactory.h)

proc networkAccessManagerFactory*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory =
  gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory(h: fcQQmlEngine_networkAccessManagerFactory(self.h))

proc networkAccessManager*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager(h: fcQQmlEngine_networkAccessManager(self.h))

proc setUrlInterceptor*(self: gen_qqmlengine_types.QQmlEngine, urlInterceptor: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor): void =
  fcQQmlEngine_setUrlInterceptor(self.h, urlInterceptor.h)

proc urlInterceptor*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor =
  gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor(h: fcQQmlEngine_urlInterceptor(self.h))

proc addImageProvider*(self: gen_qqmlengine_types.QQmlEngine, id: string, param2: gen_qqmlengine_types.QQmlImageProviderBase): void =
  fcQQmlEngine_addImageProvider(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), param2.h)

proc imageProvider*(self: gen_qqmlengine_types.QQmlEngine, id: string): gen_qqmlengine_types.QQmlImageProviderBase =
  gen_qqmlengine_types.QQmlImageProviderBase(h: fcQQmlEngine_imageProvider(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc removeImageProvider*(self: gen_qqmlengine_types.QQmlEngine, id: string): void =
  fcQQmlEngine_removeImageProvider(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc setIncubationController*(self: gen_qqmlengine_types.QQmlEngine, incubationController: gen_qqmlincubator_types.QQmlIncubationController): void =
  fcQQmlEngine_setIncubationController(self.h, incubationController.h)

proc incubationController*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qqmlincubator_types.QQmlIncubationController =
  gen_qqmlincubator_types.QQmlIncubationController(h: fcQQmlEngine_incubationController(self.h))

proc setOfflineStoragePath*(self: gen_qqmlengine_types.QQmlEngine, dir: string): void =
  fcQQmlEngine_setOfflineStoragePath(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc offlineStoragePath*(self: gen_qqmlengine_types.QQmlEngine, ): string =
  let v_ms = fcQQmlEngine_offlineStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc offlineStorageDatabaseFilePath*(self: gen_qqmlengine_types.QQmlEngine, databaseName: string): string =
  let v_ms = fcQQmlEngine_offlineStorageDatabaseFilePath(self.h, struct_miqt_string(data: databaseName, len: csize_t(len(databaseName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseUrl*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlEngine_baseUrl(self.h))

proc setBaseUrl*(self: gen_qqmlengine_types.QQmlEngine, baseUrl: gen_qurl_types.QUrl): void =
  fcQQmlEngine_setBaseUrl(self.h, baseUrl.h)

proc outputWarningsToStandardError*(self: gen_qqmlengine_types.QQmlEngine, ): bool =
  fcQQmlEngine_outputWarningsToStandardError(self.h)

proc setOutputWarningsToStandardError*(self: gen_qqmlengine_types.QQmlEngine, outputWarningsToStandardError: bool): void =
  fcQQmlEngine_setOutputWarningsToStandardError(self.h, outputWarningsToStandardError)

proc retranslate*(self: gen_qqmlengine_types.QQmlEngine, ): void =
  fcQQmlEngine_retranslate(self.h)

proc contextForObject*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlEngine_contextForObject(param1.h))

proc setContextForObject*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject, param2: gen_qqmlcontext_types.QQmlContext): void =
  fcQQmlEngine_setContextForObject(param1.h, param2.h)

proc setObjectOwnership*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject, param2: cint): void =
  fcQQmlEngine_setObjectOwnership(param1.h, cint(param2))

proc objectOwnership*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject): cint =
  cint(fcQQmlEngine_objectOwnership(param1.h))

proc quit*(self: gen_qqmlengine_types.QQmlEngine, ): void =
  fcQQmlEngine_quit(self.h)

type QQmlEnginequitSlot* = proc()
proc miqt_exec_callback_QQmlEngine_quit(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQmlEnginequitSlot](cast[pointer](slot))
  nimfunc[]()

proc onquit*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginequitSlot) =
  var tmp = new QQmlEnginequitSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_connect_quit(self.h, cast[int](addr tmp[]))

proc exit*(self: gen_qqmlengine_types.QQmlEngine, retCode: cint): void =
  fcQQmlEngine_exit(self.h, retCode)

type QQmlEngineexitSlot* = proc(retCode: cint)
proc miqt_exec_callback_QQmlEngine_exit(slot: int, retCode: cint) {.exportc.} =
  let nimfunc = cast[ptr QQmlEngineexitSlot](cast[pointer](slot))
  let slotval1 = retCode

  nimfunc[](slotval1)

proc onexit*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEngineexitSlot) =
  var tmp = new QQmlEngineexitSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_connect_exit(self.h, cast[int](addr tmp[]))

proc warnings*(self: gen_qqmlengine_types.QQmlEngine, warnings: seq[gen_qqmlerror_types.QQmlError]): void =
  var warnings_CArray = newSeq[pointer](len(warnings))
  for i in 0..<len(warnings):
    warnings_CArray[i] = warnings[i].h

  fcQQmlEngine_warnings(self.h, struct_miqt_array(len: csize_t(len(warnings)), data: if len(warnings) == 0: nil else: addr(warnings_CArray[0])))

type QQmlEnginewarningsSlot* = proc(warnings: seq[gen_qqmlerror_types.QQmlError])
proc miqt_exec_callback_QQmlEngine_warnings(slot: int, warnings: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QQmlEnginewarningsSlot](cast[pointer](slot))
  var vwarnings_ma = warnings
  var vwarningsx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(vwarnings_ma.len))
  let vwarnings_outCast = cast[ptr UncheckedArray[pointer]](vwarnings_ma.data)
  for i in 0 ..< vwarnings_ma.len:
    vwarningsx_ret[i] = gen_qqmlerror_types.QQmlError(h: vwarnings_outCast[i])
  let slotval1 = vwarningsx_ret

  nimfunc[](slotval1)

proc onwarnings*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginewarningsSlot) =
  var tmp = new QQmlEnginewarningsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_connect_warnings(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQmlEnginemetaObject*(self: gen_qqmlengine_types.QQmlEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlEngine_virtualbase_metaObject(self.h))

type QQmlEnginemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginemetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlEnginemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_metaObject(self: ptr cQQmlEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlEngine_metaObject ".} =
  var nimfunc = cast[ptr QQmlEnginemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlEnginemetacast*(self: gen_qqmlengine_types.QQmlEngine, param1: cstring): pointer =
  fQQmlEngine_virtualbase_metacast(self.h, param1)

type QQmlEnginemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginemetacastProc) =
  # TODO check subclass
  var tmp = new QQmlEnginemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_metacast(self: ptr cQQmlEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlEngine_metacast ".} =
  var nimfunc = cast[ptr QQmlEnginemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlEnginemetacall*(self: gen_qqmlengine_types.QQmlEngine, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlEnginemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginemetacallProc) =
  # TODO check subclass
  var tmp = new QQmlEnginemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_metacall(self: ptr cQQmlEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlEngine_metacall ".} =
  var nimfunc = cast[ptr QQmlEnginemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlEngineevent*(self: gen_qqmlengine_types.QQmlEngine, param1: gen_qcoreevent_types.QEvent): bool =
  fQQmlEngine_virtualbase_event(self.h, param1.h)

type QQmlEngineeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEngineeventProc) =
  # TODO check subclass
  var tmp = new QQmlEngineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_event(self: ptr cQQmlEngine, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngine_event ".} =
  var nimfunc = cast[ptr QQmlEngineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlEngineeventFilter*(self: gen_qqmlengine_types.QQmlEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlEngineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEngineeventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlEngineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_eventFilter(self: ptr cQQmlEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngine_eventFilter ".} =
  var nimfunc = cast[ptr QQmlEngineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlEnginetimerEvent*(self: gen_qqmlengine_types.QQmlEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlEngine_virtualbase_timerEvent(self.h, event.h)

type QQmlEnginetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginetimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlEnginetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_timerEvent(self: ptr cQQmlEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_timerEvent ".} =
  var nimfunc = cast[ptr QQmlEnginetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlEnginechildEvent*(self: gen_qqmlengine_types.QQmlEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlEngine_virtualbase_childEvent(self.h, event.h)

type QQmlEnginechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginechildEventProc) =
  # TODO check subclass
  var tmp = new QQmlEnginechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_childEvent(self: ptr cQQmlEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_childEvent ".} =
  var nimfunc = cast[ptr QQmlEnginechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlEnginecustomEvent*(self: gen_qqmlengine_types.QQmlEngine, event: gen_qcoreevent_types.QEvent): void =
  fQQmlEngine_virtualbase_customEvent(self.h, event.h)

type QQmlEnginecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginecustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlEnginecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_customEvent(self: ptr cQQmlEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_customEvent ".} =
  var nimfunc = cast[ptr QQmlEnginecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlEngineconnectNotify*(self: gen_qqmlengine_types.QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlEngine_virtualbase_connectNotify(self.h, signal.h)

type QQmlEngineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEngineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlEngineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_connectNotify(self: ptr cQQmlEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_connectNotify ".} =
  var nimfunc = cast[ptr QQmlEngineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlEnginedisconnectNotify*(self: gen_qqmlengine_types.QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlEnginedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlEnginedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_disconnectNotify(self: ptr cQQmlEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlEnginedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlengine_types.QQmlEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngine_staticMetaObject())
proc delete*(self: gen_qqmlengine_types.QQmlEngine) =
  fcQQmlEngine_delete(self.h)
