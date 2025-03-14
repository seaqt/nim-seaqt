import ./qtqml_pkg

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

proc fcQQmlImageProviderBase_imageType(self: pointer): cint {.importc: "QQmlImageProviderBase_imageType".}
proc fcQQmlImageProviderBase_flags(self: pointer): cint {.importc: "QQmlImageProviderBase_flags".}
proc fcQQmlEngine_metaObject(self: pointer): pointer {.importc: "QQmlEngine_metaObject".}
proc fcQQmlEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngine_metacast".}
proc fcQQmlEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngine_metacall".}
proc fcQQmlEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngine_tr".}
proc fcQQmlEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlEngine_trUtf8".}
proc fcQQmlEngine_rootContext(self: pointer): pointer {.importc: "QQmlEngine_rootContext".}
proc fcQQmlEngine_clearComponentCache(self: pointer): void {.importc: "QQmlEngine_clearComponentCache".}
proc fcQQmlEngine_trimComponentCache(self: pointer): void {.importc: "QQmlEngine_trimComponentCache".}
proc fcQQmlEngine_importPathList(self: pointer): struct_miqt_array {.importc: "QQmlEngine_importPathList".}
proc fcQQmlEngine_setImportPathList(self: pointer, paths: struct_miqt_array): void {.importc: "QQmlEngine_setImportPathList".}
proc fcQQmlEngine_addImportPath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_addImportPath".}
proc fcQQmlEngine_pluginPathList(self: pointer): struct_miqt_array {.importc: "QQmlEngine_pluginPathList".}
proc fcQQmlEngine_setPluginPathList(self: pointer, paths: struct_miqt_array): void {.importc: "QQmlEngine_setPluginPathList".}
proc fcQQmlEngine_addPluginPath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_addPluginPath".}
proc fcQQmlEngine_addNamedBundle(self: pointer, name: struct_miqt_string, fileName: struct_miqt_string): bool {.importc: "QQmlEngine_addNamedBundle".}
proc fcQQmlEngine_importPlugin(self: pointer, filePath: struct_miqt_string, uri: struct_miqt_string, errors: struct_miqt_array): bool {.importc: "QQmlEngine_importPlugin".}
proc fcQQmlEngine_setNetworkAccessManagerFactory(self: pointer, networkAccessManagerFactory: pointer): void {.importc: "QQmlEngine_setNetworkAccessManagerFactory".}
proc fcQQmlEngine_networkAccessManagerFactory(self: pointer): pointer {.importc: "QQmlEngine_networkAccessManagerFactory".}
proc fcQQmlEngine_networkAccessManager(self: pointer): pointer {.importc: "QQmlEngine_networkAccessManager".}
proc fcQQmlEngine_setUrlInterceptor(self: pointer, urlInterceptor: pointer): void {.importc: "QQmlEngine_setUrlInterceptor".}
proc fcQQmlEngine_urlInterceptor(self: pointer): pointer {.importc: "QQmlEngine_urlInterceptor".}
proc fcQQmlEngine_addImageProvider(self: pointer, id: struct_miqt_string, param2: pointer): void {.importc: "QQmlEngine_addImageProvider".}
proc fcQQmlEngine_imageProvider(self: pointer, id: struct_miqt_string): pointer {.importc: "QQmlEngine_imageProvider".}
proc fcQQmlEngine_removeImageProvider(self: pointer, id: struct_miqt_string): void {.importc: "QQmlEngine_removeImageProvider".}
proc fcQQmlEngine_setIncubationController(self: pointer, incubationController: pointer): void {.importc: "QQmlEngine_setIncubationController".}
proc fcQQmlEngine_incubationController(self: pointer): pointer {.importc: "QQmlEngine_incubationController".}
proc fcQQmlEngine_setOfflineStoragePath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_setOfflineStoragePath".}
proc fcQQmlEngine_offlineStoragePath(self: pointer): struct_miqt_string {.importc: "QQmlEngine_offlineStoragePath".}
proc fcQQmlEngine_offlineStorageDatabaseFilePath(self: pointer, databaseName: struct_miqt_string): struct_miqt_string {.importc: "QQmlEngine_offlineStorageDatabaseFilePath".}
proc fcQQmlEngine_baseUrl(self: pointer): pointer {.importc: "QQmlEngine_baseUrl".}
proc fcQQmlEngine_setBaseUrl(self: pointer, baseUrl: pointer): void {.importc: "QQmlEngine_setBaseUrl".}
proc fcQQmlEngine_outputWarningsToStandardError(self: pointer): bool {.importc: "QQmlEngine_outputWarningsToStandardError".}
proc fcQQmlEngine_setOutputWarningsToStandardError(self: pointer, outputWarningsToStandardError: bool): void {.importc: "QQmlEngine_setOutputWarningsToStandardError".}
proc fcQQmlEngine_retranslate(self: pointer): void {.importc: "QQmlEngine_retranslate".}
proc fcQQmlEngine_contextForObject(param1: pointer): pointer {.importc: "QQmlEngine_contextForObject".}
proc fcQQmlEngine_setContextForObject(param1: pointer, param2: pointer): void {.importc: "QQmlEngine_setContextForObject".}
proc fcQQmlEngine_setObjectOwnership(param1: pointer, param2: cint): void {.importc: "QQmlEngine_setObjectOwnership".}
proc fcQQmlEngine_objectOwnership(param1: pointer): cint {.importc: "QQmlEngine_objectOwnership".}
proc fcQQmlEngine_quit(self: pointer): void {.importc: "QQmlEngine_quit".}
proc fcQQmlEngine_connect_quit(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlEngine_connect_quit".}
proc fcQQmlEngine_exit(self: pointer, retCode: cint): void {.importc: "QQmlEngine_exit".}
proc fcQQmlEngine_connect_exit(self: pointer, slot: int, callback: proc (slot: int, retCode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlEngine_connect_exit".}
proc fcQQmlEngine_warnings(self: pointer, warnings: struct_miqt_array): void {.importc: "QQmlEngine_warnings".}
proc fcQQmlEngine_connect_warnings(self: pointer, slot: int, callback: proc (slot: int, warnings: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlEngine_connect_warnings".}
proc fcQQmlEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngine_tr2".}
proc fcQQmlEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngine_tr3".}
proc fcQQmlEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngine_trUtf82".}
proc fcQQmlEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngine_trUtf83".}
proc fcQQmlEngine_vtbl(self: pointer): pointer {.importc: "QQmlEngine_vtbl".}
proc fcQQmlEngine_vdata(self: pointer): pointer {.importc: "QQmlEngine_vdata".}
type cQQmlEngineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlEngine_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlEngine_virtualbase_metaObject".}
proc fcQQmlEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngine_virtualbase_metacast".}
proc fcQQmlEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngine_virtualbase_metacall".}
proc fcQQmlEngine_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQmlEngine_virtualbase_event".}
proc fcQQmlEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlEngine_virtualbase_eventFilter".}
proc fcQQmlEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlEngine_virtualbase_timerEvent".}
proc fcQQmlEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlEngine_virtualbase_childEvent".}
proc fcQQmlEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlEngine_virtualbase_customEvent".}
proc fcQQmlEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlEngine_virtualbase_connectNotify".}
proc fcQQmlEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlEngine_virtualbase_disconnectNotify".}
proc fcQQmlEngine_protectedbase_sender(self: pointer): pointer {.importc: "QQmlEngine_protectedbase_sender".}
proc fcQQmlEngine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlEngine_protectedbase_senderSignalIndex".}
proc fcQQmlEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlEngine_protectedbase_receivers".}
proc fcQQmlEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlEngine_protectedbase_isSignalConnected".}
proc fcQQmlEngine_new(vtbl, vdata: pointer): ptr cQQmlEngine {.importc: "QQmlEngine_new".}
proc fcQQmlEngine_new2(vtbl, vdata: pointer, p: pointer): ptr cQQmlEngine {.importc: "QQmlEngine_new2".}
proc fcQQmlEngine_staticMetaObject(): pointer {.importc: "QQmlEngine_staticMetaObject".}

proc imageType*(self: gen_qqmlengine_types.QQmlImageProviderBase): cint =
  cint(fcQQmlImageProviderBase_imageType(self.h))

proc flags*(self: gen_qqmlengine_types.QQmlImageProviderBase): cint =
  cint(fcQQmlImageProviderBase_flags(self.h))

proc metaObject*(self: gen_qqmlengine_types.QQmlEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlengine_types.QQmlEngine, param1: cstring): pointer =
  fcQQmlEngine_metacast(self.h, param1)

proc metacall*(self: gen_qqmlengine_types.QQmlEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring): string =
  let v_ms = fcQQmlEngine_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring): string =
  let v_ms = fcQQmlEngine_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rootContext*(self: gen_qqmlengine_types.QQmlEngine): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlEngine_rootContext(self.h), owned: false)

proc clearComponentCache*(self: gen_qqmlengine_types.QQmlEngine): void =
  fcQQmlEngine_clearComponentCache(self.h)

proc trimComponentCache*(self: gen_qqmlengine_types.QQmlEngine): void =
  fcQQmlEngine_trimComponentCache(self.h)

proc importPathList*(self: gen_qqmlengine_types.QQmlEngine): seq[string] =
  var v_ma = fcQQmlEngine_importPathList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setImportPathList*(self: gen_qqmlengine_types.QQmlEngine, paths: openArray[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQQmlEngine_setImportPathList(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc addImportPath*(self: gen_qqmlengine_types.QQmlEngine, dir: openArray[char]): void =
  fcQQmlEngine_addImportPath(self.h, struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))

proc pluginPathList*(self: gen_qqmlengine_types.QQmlEngine): seq[string] =
  var v_ma = fcQQmlEngine_pluginPathList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setPluginPathList*(self: gen_qqmlengine_types.QQmlEngine, paths: openArray[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQQmlEngine_setPluginPathList(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc addPluginPath*(self: gen_qqmlengine_types.QQmlEngine, dir: openArray[char]): void =
  fcQQmlEngine_addPluginPath(self.h, struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))

proc addNamedBundle*(self: gen_qqmlengine_types.QQmlEngine, name: openArray[char], fileName: openArray[char]): bool =
  fcQQmlEngine_addNamedBundle(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc importPlugin*(self: gen_qqmlengine_types.QQmlEngine, filePath: openArray[char], uri: openArray[char], errors: openArray[gen_qqmlerror_types.QQmlError]): bool =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQQmlEngine_importPlugin(self.h, struct_miqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))), struct_miqt_string(data: if len(uri) > 0: addr uri[0] else: nil, len: csize_t(len(uri))), struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc setNetworkAccessManagerFactory*(self: gen_qqmlengine_types.QQmlEngine, networkAccessManagerFactory: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory): void =
  fcQQmlEngine_setNetworkAccessManagerFactory(self.h, networkAccessManagerFactory.h)

proc networkAccessManagerFactory*(self: gen_qqmlengine_types.QQmlEngine): gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory =
  gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory(h: fcQQmlEngine_networkAccessManagerFactory(self.h), owned: false)

proc networkAccessManager*(self: gen_qqmlengine_types.QQmlEngine): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager(h: fcQQmlEngine_networkAccessManager(self.h), owned: false)

proc setUrlInterceptor*(self: gen_qqmlengine_types.QQmlEngine, urlInterceptor: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor): void =
  fcQQmlEngine_setUrlInterceptor(self.h, urlInterceptor.h)

proc urlInterceptor*(self: gen_qqmlengine_types.QQmlEngine): gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor =
  gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor(h: fcQQmlEngine_urlInterceptor(self.h), owned: false)

proc addImageProvider*(self: gen_qqmlengine_types.QQmlEngine, id: openArray[char], param2: gen_qqmlengine_types.QQmlImageProviderBase): void =
  fcQQmlEngine_addImageProvider(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), param2.h)

proc imageProvider*(self: gen_qqmlengine_types.QQmlEngine, id: openArray[char]): gen_qqmlengine_types.QQmlImageProviderBase =
  gen_qqmlengine_types.QQmlImageProviderBase(h: fcQQmlEngine_imageProvider(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id)))), owned: false)

proc removeImageProvider*(self: gen_qqmlengine_types.QQmlEngine, id: openArray[char]): void =
  fcQQmlEngine_removeImageProvider(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))))

proc setIncubationController*(self: gen_qqmlengine_types.QQmlEngine, incubationController: gen_qqmlincubator_types.QQmlIncubationController): void =
  fcQQmlEngine_setIncubationController(self.h, incubationController.h)

proc incubationController*(self: gen_qqmlengine_types.QQmlEngine): gen_qqmlincubator_types.QQmlIncubationController =
  gen_qqmlincubator_types.QQmlIncubationController(h: fcQQmlEngine_incubationController(self.h), owned: false)

proc setOfflineStoragePath*(self: gen_qqmlengine_types.QQmlEngine, dir: openArray[char]): void =
  fcQQmlEngine_setOfflineStoragePath(self.h, struct_miqt_string(data: if len(dir) > 0: addr dir[0] else: nil, len: csize_t(len(dir))))

proc offlineStoragePath*(self: gen_qqmlengine_types.QQmlEngine): string =
  let v_ms = fcQQmlEngine_offlineStoragePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc offlineStorageDatabaseFilePath*(self: gen_qqmlengine_types.QQmlEngine, databaseName: openArray[char]): string =
  let v_ms = fcQQmlEngine_offlineStorageDatabaseFilePath(self.h, struct_miqt_string(data: if len(databaseName) > 0: addr databaseName[0] else: nil, len: csize_t(len(databaseName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc baseUrl*(self: gen_qqmlengine_types.QQmlEngine): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlEngine_baseUrl(self.h), owned: true)

proc setBaseUrl*(self: gen_qqmlengine_types.QQmlEngine, baseUrl: gen_qurl_types.QUrl): void =
  fcQQmlEngine_setBaseUrl(self.h, baseUrl.h)

proc outputWarningsToStandardError*(self: gen_qqmlengine_types.QQmlEngine): bool =
  fcQQmlEngine_outputWarningsToStandardError(self.h)

proc setOutputWarningsToStandardError*(self: gen_qqmlengine_types.QQmlEngine, outputWarningsToStandardError: bool): void =
  fcQQmlEngine_setOutputWarningsToStandardError(self.h, outputWarningsToStandardError)

proc retranslate*(self: gen_qqmlengine_types.QQmlEngine): void =
  fcQQmlEngine_retranslate(self.h)

proc contextForObject*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlEngine_contextForObject(param1.h), owned: false)

proc setContextForObject*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject, param2: gen_qqmlcontext_types.QQmlContext): void =
  fcQQmlEngine_setContextForObject(param1.h, param2.h)

proc setObjectOwnership*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject, param2: cint): void =
  fcQQmlEngine_setObjectOwnership(param1.h, cint(param2))

proc objectOwnership*(_: type gen_qqmlengine_types.QQmlEngine, param1: gen_qobject_types.QObject): cint =
  cint(fcQQmlEngine_objectOwnership(param1.h))

proc quit*(self: gen_qqmlengine_types.QQmlEngine): void =
  fcQQmlEngine_quit(self.h)

type QQmlEnginequitSlot* = proc()
proc cQQmlEngine_slot_callback_quit(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQmlEnginequitSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQmlEngine_slot_callback_quit_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlEnginequitSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onquit*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginequitSlot) =
  var tmp = new QQmlEnginequitSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_connect_quit(self.h, cast[int](addr tmp[]), cQQmlEngine_slot_callback_quit, cQQmlEngine_slot_callback_quit_release)

proc exit*(self: gen_qqmlengine_types.QQmlEngine, retCode: cint): void =
  fcQQmlEngine_exit(self.h, retCode)

type QQmlEngineexitSlot* = proc(retCode: cint)
proc cQQmlEngine_slot_callback_exit(slot: int, retCode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQmlEngineexitSlot](cast[pointer](slot))
  let slotval1 = retCode

  nimfunc[](slotval1)

proc cQQmlEngine_slot_callback_exit_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlEngineexitSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onexit*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEngineexitSlot) =
  var tmp = new QQmlEngineexitSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_connect_exit(self.h, cast[int](addr tmp[]), cQQmlEngine_slot_callback_exit, cQQmlEngine_slot_callback_exit_release)

proc warnings*(self: gen_qqmlengine_types.QQmlEngine, warnings: openArray[gen_qqmlerror_types.QQmlError]): void =
  var warnings_CArray = newSeq[pointer](len(warnings))
  for i in 0..<len(warnings):
    warnings_CArray[i] = warnings[i].h

  fcQQmlEngine_warnings(self.h, struct_miqt_array(len: csize_t(len(warnings)), data: if len(warnings) == 0: nil else: addr(warnings_CArray[0])))

type QQmlEnginewarningsSlot* = proc(warnings: openArray[gen_qqmlerror_types.QQmlError])
proc cQQmlEngine_slot_callback_warnings(slot: int, warnings: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QQmlEnginewarningsSlot](cast[pointer](slot))
  var vwarnings_ma = warnings
  var vwarningsx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(vwarnings_ma.len))
  let vwarnings_outCast = cast[ptr UncheckedArray[pointer]](vwarnings_ma.data)
  for i in 0 ..< vwarnings_ma.len:
    vwarningsx_ret[i] = gen_qqmlerror_types.QQmlError(h: vwarnings_outCast[i], owned: true)
  c_free(vwarnings_ma.data)
  let slotval1 = vwarningsx_ret

  nimfunc[](slotval1)

proc cQQmlEngine_slot_callback_warnings_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlEnginewarningsSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwarnings*(self: gen_qqmlengine_types.QQmlEngine, slot: QQmlEnginewarningsSlot) =
  var tmp = new QQmlEnginewarningsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_connect_warnings(self.h, cast[int](addr tmp[]), cQQmlEngine_slot_callback_warnings, cQQmlEngine_slot_callback_warnings_release)

proc tr*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngine_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlengine_types.QQmlEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQmlEnginemetaObjectProc* = proc(self: QQmlEngine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlEnginemetacastProc* = proc(self: QQmlEngine, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlEnginemetacallProc* = proc(self: QQmlEngine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlEngineeventProc* = proc(self: QQmlEngine, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlEngineeventFilterProc* = proc(self: QQmlEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlEnginetimerEventProc* = proc(self: QQmlEngine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlEnginechildEventProc* = proc(self: QQmlEngine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlEnginecustomEventProc* = proc(self: QQmlEngine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlEngineconnectNotifyProc* = proc(self: QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlEnginedisconnectNotifyProc* = proc(self: QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlEngineVTable* {.inheritable, pure.} = object
  vtbl: cQQmlEngineVTable
  metaObject*: QQmlEnginemetaObjectProc
  metacast*: QQmlEnginemetacastProc
  metacall*: QQmlEnginemetacallProc
  event*: QQmlEngineeventProc
  eventFilter*: QQmlEngineeventFilterProc
  timerEvent*: QQmlEnginetimerEventProc
  childEvent*: QQmlEnginechildEventProc
  customEvent*: QQmlEnginecustomEventProc
  connectNotify*: QQmlEngineconnectNotifyProc
  disconnectNotify*: QQmlEnginedisconnectNotifyProc
proc QQmlEnginemetaObject*(self: gen_qqmlengine_types.QQmlEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngine_virtualbase_metaObject(self.h), owned: false)

proc cQQmlEngine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlEnginemetacast*(self: gen_qqmlengine_types.QQmlEngine, param1: cstring): pointer =
  fcQQmlEngine_virtualbase_metacast(self.h, param1)

proc cQQmlEngine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlEnginemetacall*(self: gen_qqmlengine_types.QQmlEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQmlEngine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlEngineevent*(self: gen_qqmlengine_types.QQmlEngine, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQmlEngine_virtualbase_event(self.h, param1.h)

proc cQQmlEngine_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlEngineeventFilter*(self: gen_qqmlengine_types.QQmlEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQmlEngine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlEnginetimerEvent*(self: gen_qqmlengine_types.QQmlEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlEngine_virtualbase_timerEvent(self.h, event.h)

proc cQQmlEngine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlEnginechildEvent*(self: gen_qqmlengine_types.QQmlEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlEngine_virtualbase_childEvent(self.h, event.h)

proc cQQmlEngine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlEnginecustomEvent*(self: gen_qqmlengine_types.QQmlEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlEngine_virtualbase_customEvent(self.h, event.h)

proc cQQmlEngine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlEngineconnectNotify*(self: gen_qqmlengine_types.QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlEngine_virtualbase_connectNotify(self.h, signal.h)

proc cQQmlEngine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlEnginedisconnectNotify*(self: gen_qqmlengine_types.QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQmlEngine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineVTable](fcQQmlEngine_vdata(self))
  let self = QQmlEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlEngine* {.inheritable.} = ref object of QQmlEngine
  vtbl*: cQQmlEngineVTable
method metaObject*(self: VirtualQQmlEngine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlEnginemetaObject(self[])
proc cQQmlEngine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlEngine, param1: cstring): pointer {.base.} =
  QQmlEnginemetacast(self[], param1)
proc cQQmlEngine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlEngine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlEnginemetacall(self[], param1, param2, param3)
proc cQQmlEngine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQQmlEngine, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlEngineevent(self[], param1)
proc cQQmlEngine_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlEngineeventFilter(self[], watched, event)
proc cQQmlEngine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlEngine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlEnginetimerEvent(self[], event)
proc cQQmlEngine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlEngine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlEnginechildEvent(self[], event)
proc cQQmlEngine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQmlEngine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlEnginecustomEvent(self[], event)
proc cQQmlEngine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlEngineconnectNotify(self[], signal)
proc cQQmlEngine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlEnginedisconnectNotify(self[], signal)
proc cQQmlEngine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngine](fcQQmlEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qqmlengine_types.QQmlEngine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlEngine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlengine_types.QQmlEngine): cint =
  fcQQmlEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlengine_types.QQmlEngine, signal: cstring): cint =
  fcQQmlEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlengine_types.QQmlEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlengine_types.QQmlEngine,
    vtbl: ref QQmlEngineVTable = nil): gen_qqmlengine_types.QQmlEngine =
  let vtbl = if vtbl == nil: new QQmlEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlEngineVTable](fcQQmlEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlEngine_vtable_callback_disconnectNotify
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlEngine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlengine_types.QQmlEngine,
    p: gen_qobject_types.QObject,
    vtbl: ref QQmlEngineVTable = nil): gen_qqmlengine_types.QQmlEngine =
  let vtbl = if vtbl == nil: new QQmlEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlEngineVTable](fcQQmlEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlEngine_vtable_callback_disconnectNotify
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlEngine_new2(addr(vtbl[].vtbl), addr(vtbl[]), p.h), owned: true)

const cQQmlEngine_mvtbl = cQQmlEngineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlEngine()[])](self.fcQQmlEngine_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQmlEngine_method_callback_metaObject,
  metacast: cQQmlEngine_method_callback_metacast,
  metacall: cQQmlEngine_method_callback_metacall,
  event: cQQmlEngine_method_callback_event,
  eventFilter: cQQmlEngine_method_callback_eventFilter,
  timerEvent: cQQmlEngine_method_callback_timerEvent,
  childEvent: cQQmlEngine_method_callback_childEvent,
  customEvent: cQQmlEngine_method_callback_customEvent,
  connectNotify: cQQmlEngine_method_callback_connectNotify,
  disconnectNotify: cQQmlEngine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlengine_types.QQmlEngine,
    inst: VirtualQQmlEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlEngine_new(addr(cQQmlEngine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlengine_types.QQmlEngine,
    p: gen_qobject_types.QObject,
    inst: VirtualQQmlEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlEngine_new2(addr(cQQmlEngine_mvtbl), addr(inst[]), p.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlengine_types.QQmlEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngine_staticMetaObject())
