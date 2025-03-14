import ./qtcore_pkg

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


{.compile("gen_qcoreapplication.cpp", QtCoreCFlags).}


type QCoreApplicationEnumEnum* = distinct cint
template ApplicationFlags*(_: type QCoreApplicationEnumEnum): untyped = 331528


import ./gen_qcoreapplication_types
export gen_qcoreapplication_types

import
  ./gen_qabstracteventdispatcher_types,
  ./gen_qabstractnativeeventfilter_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qtranslator_types,
  std/cmdline,
  std/os
export
  gen_qabstracteventdispatcher_types,
  gen_qabstractnativeeventfilter_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qtranslator_types

type cQCoreApplication*{.exportc: "QCoreApplication", incompleteStruct.} = object

proc fcQCoreApplication_metaObject(self: pointer): pointer {.importc: "QCoreApplication_metaObject".}
proc fcQCoreApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QCoreApplication_metacast".}
proc fcQCoreApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCoreApplication_metacall".}
proc fcQCoreApplication_tr(s: cstring): struct_miqt_string {.importc: "QCoreApplication_tr".}
proc fcQCoreApplication_trUtf8(s: cstring): struct_miqt_string {.importc: "QCoreApplication_trUtf8".}
proc fcQCoreApplication_arguments(): struct_miqt_array {.importc: "QCoreApplication_arguments".}
proc fcQCoreApplication_setAttribute(attribute: cint): void {.importc: "QCoreApplication_setAttribute".}
proc fcQCoreApplication_testAttribute(attribute: cint): bool {.importc: "QCoreApplication_testAttribute".}
proc fcQCoreApplication_setOrganizationDomain(orgDomain: struct_miqt_string): void {.importc: "QCoreApplication_setOrganizationDomain".}
proc fcQCoreApplication_organizationDomain(): struct_miqt_string {.importc: "QCoreApplication_organizationDomain".}
proc fcQCoreApplication_setOrganizationName(orgName: struct_miqt_string): void {.importc: "QCoreApplication_setOrganizationName".}
proc fcQCoreApplication_organizationName(): struct_miqt_string {.importc: "QCoreApplication_organizationName".}
proc fcQCoreApplication_setApplicationName(application: struct_miqt_string): void {.importc: "QCoreApplication_setApplicationName".}
proc fcQCoreApplication_applicationName(): struct_miqt_string {.importc: "QCoreApplication_applicationName".}
proc fcQCoreApplication_setApplicationVersion(version: struct_miqt_string): void {.importc: "QCoreApplication_setApplicationVersion".}
proc fcQCoreApplication_applicationVersion(): struct_miqt_string {.importc: "QCoreApplication_applicationVersion".}
proc fcQCoreApplication_setSetuidAllowed(allow: bool): void {.importc: "QCoreApplication_setSetuidAllowed".}
proc fcQCoreApplication_isSetuidAllowed(): bool {.importc: "QCoreApplication_isSetuidAllowed".}
proc fcQCoreApplication_instance(): pointer {.importc: "QCoreApplication_instance".}
proc fcQCoreApplication_exec(): cint {.importc: "QCoreApplication_exec".}
proc fcQCoreApplication_processEvents(): void {.importc: "QCoreApplication_processEvents".}
proc fcQCoreApplication_processEvents2(flags: cint, maxtime: cint): void {.importc: "QCoreApplication_processEvents2".}
proc fcQCoreApplication_exit(): void {.importc: "QCoreApplication_exit".}
proc fcQCoreApplication_sendEvent(receiver: pointer, event: pointer): bool {.importc: "QCoreApplication_sendEvent".}
proc fcQCoreApplication_postEvent(receiver: pointer, event: pointer): void {.importc: "QCoreApplication_postEvent".}
proc fcQCoreApplication_sendPostedEvents(): void {.importc: "QCoreApplication_sendPostedEvents".}
proc fcQCoreApplication_removePostedEvents(receiver: pointer): void {.importc: "QCoreApplication_removePostedEvents".}
proc fcQCoreApplication_hasPendingEvents(): bool {.importc: "QCoreApplication_hasPendingEvents".}
proc fcQCoreApplication_eventDispatcher(): pointer {.importc: "QCoreApplication_eventDispatcher".}
proc fcQCoreApplication_setEventDispatcher(eventDispatcher: pointer): void {.importc: "QCoreApplication_setEventDispatcher".}
proc fcQCoreApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QCoreApplication_notify".}
proc fcQCoreApplication_startingUp(): bool {.importc: "QCoreApplication_startingUp".}
proc fcQCoreApplication_closingDown(): bool {.importc: "QCoreApplication_closingDown".}
proc fcQCoreApplication_applicationDirPath(): struct_miqt_string {.importc: "QCoreApplication_applicationDirPath".}
proc fcQCoreApplication_applicationFilePath(): struct_miqt_string {.importc: "QCoreApplication_applicationFilePath".}
proc fcQCoreApplication_applicationPid(): clonglong {.importc: "QCoreApplication_applicationPid".}
proc fcQCoreApplication_setLibraryPaths(libraryPaths: struct_miqt_array): void {.importc: "QCoreApplication_setLibraryPaths".}
proc fcQCoreApplication_libraryPaths(): struct_miqt_array {.importc: "QCoreApplication_libraryPaths".}
proc fcQCoreApplication_addLibraryPath(param1: struct_miqt_string): void {.importc: "QCoreApplication_addLibraryPath".}
proc fcQCoreApplication_removeLibraryPath(param1: struct_miqt_string): void {.importc: "QCoreApplication_removeLibraryPath".}
proc fcQCoreApplication_installTranslator(messageFile: pointer): bool {.importc: "QCoreApplication_installTranslator".}
proc fcQCoreApplication_removeTranslator(messageFile: pointer): bool {.importc: "QCoreApplication_removeTranslator".}
proc fcQCoreApplication_translate(context: cstring, key: cstring): struct_miqt_string {.importc: "QCoreApplication_translate".}
proc fcQCoreApplication_flush(): void {.importc: "QCoreApplication_flush".}
proc fcQCoreApplication_installNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QCoreApplication_installNativeEventFilter".}
proc fcQCoreApplication_removeNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QCoreApplication_removeNativeEventFilter".}
proc fcQCoreApplication_isQuitLockEnabled(): bool {.importc: "QCoreApplication_isQuitLockEnabled".}
proc fcQCoreApplication_setQuitLockEnabled(enabled: bool): void {.importc: "QCoreApplication_setQuitLockEnabled".}
proc fcQCoreApplication_quit(): void {.importc: "QCoreApplication_quit".}
proc fcQCoreApplication_organizationNameChanged(self: pointer): void {.importc: "QCoreApplication_organizationNameChanged".}
proc fcQCoreApplication_connect_organizationNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_organizationNameChanged".}
proc fcQCoreApplication_organizationDomainChanged(self: pointer): void {.importc: "QCoreApplication_organizationDomainChanged".}
proc fcQCoreApplication_connect_organizationDomainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_organizationDomainChanged".}
proc fcQCoreApplication_applicationNameChanged(self: pointer): void {.importc: "QCoreApplication_applicationNameChanged".}
proc fcQCoreApplication_connect_applicationNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_applicationNameChanged".}
proc fcQCoreApplication_applicationVersionChanged(self: pointer): void {.importc: "QCoreApplication_applicationVersionChanged".}
proc fcQCoreApplication_connect_applicationVersionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_applicationVersionChanged".}
proc fcQCoreApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCoreApplication_tr2".}
proc fcQCoreApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_tr3".}
proc fcQCoreApplication_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCoreApplication_trUtf82".}
proc fcQCoreApplication_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_trUtf83".}
proc fcQCoreApplication_setAttribute2(attribute: cint, on: bool): void {.importc: "QCoreApplication_setAttribute2".}
proc fcQCoreApplication_processEvents1(flags: cint): void {.importc: "QCoreApplication_processEvents1".}
proc fcQCoreApplication_exit1(retcode: cint): void {.importc: "QCoreApplication_exit1".}
proc fcQCoreApplication_postEvent3(receiver: pointer, event: pointer, priority: cint): void {.importc: "QCoreApplication_postEvent3".}
proc fcQCoreApplication_sendPostedEvents1(receiver: pointer): void {.importc: "QCoreApplication_sendPostedEvents1".}
proc fcQCoreApplication_sendPostedEvents2(receiver: pointer, event_type: cint): void {.importc: "QCoreApplication_sendPostedEvents2".}
proc fcQCoreApplication_removePostedEvents2(receiver: pointer, eventType: cint): void {.importc: "QCoreApplication_removePostedEvents2".}
proc fcQCoreApplication_translate3(context: cstring, key: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QCoreApplication_translate3".}
proc fcQCoreApplication_translate4(context: cstring, key: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_translate4".}
proc fcQCoreApplication_vtbl(self: pointer): pointer {.importc: "QCoreApplication_vtbl".}
proc fcQCoreApplication_vdata(self: pointer): pointer {.importc: "QCoreApplication_vdata".}
type cQCoreApplicationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  notify*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCoreApplication_virtualbase_metaObject(self: pointer): pointer {.importc: "QCoreApplication_virtualbase_metaObject".}
proc fcQCoreApplication_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCoreApplication_virtualbase_metacast".}
proc fcQCoreApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCoreApplication_virtualbase_metacall".}
proc fcQCoreApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QCoreApplication_virtualbase_notify".}
proc fcQCoreApplication_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QCoreApplication_virtualbase_event".}
proc fcQCoreApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCoreApplication_virtualbase_eventFilter".}
proc fcQCoreApplication_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCoreApplication_virtualbase_timerEvent".}
proc fcQCoreApplication_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCoreApplication_virtualbase_childEvent".}
proc fcQCoreApplication_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCoreApplication_virtualbase_customEvent".}
proc fcQCoreApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCoreApplication_virtualbase_connectNotify".}
proc fcQCoreApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCoreApplication_virtualbase_disconnectNotify".}
proc fcQCoreApplication_protectedbase_sender(self: pointer): pointer {.importc: "QCoreApplication_protectedbase_sender".}
proc fcQCoreApplication_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCoreApplication_protectedbase_senderSignalIndex".}
proc fcQCoreApplication_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCoreApplication_protectedbase_receivers".}
proc fcQCoreApplication_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCoreApplication_protectedbase_isSignalConnected".}
proc fcQCoreApplication_new(vtbl, vdata: pointer, argc: ptr cint, argv: cstringArray): ptr cQCoreApplication {.importc: "QCoreApplication_new".}
proc fcQCoreApplication_new2(vtbl, vdata: pointer, argc: ptr cint, argv: cstringArray, param3: cint): ptr cQCoreApplication {.importc: "QCoreApplication_new2".}
proc fcQCoreApplication_staticMetaObject(): pointer {.importc: "QCoreApplication_staticMetaObject".}

proc metaObject*(self: gen_qcoreapplication_types.QCoreApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcoreapplication_types.QCoreApplication, param1: cstring): pointer =
  fcQCoreApplication_metacast(self.h, param1)

proc metacall*(self: gen_qcoreapplication_types.QCoreApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQCoreApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring): string =
  let v_ms = fcQCoreApplication_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring): string =
  let v_ms = fcQCoreApplication_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc arguments*(_: type gen_qcoreapplication_types.QCoreApplication): seq[string] =
  var v_ma = fcQCoreApplication_arguments()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setAttribute*(_: type gen_qcoreapplication_types.QCoreApplication, attribute: cint): void =
  fcQCoreApplication_setAttribute(cint(attribute))

proc testAttribute*(_: type gen_qcoreapplication_types.QCoreApplication, attribute: cint): bool =
  fcQCoreApplication_testAttribute(cint(attribute))

proc setOrganizationDomain*(_: type gen_qcoreapplication_types.QCoreApplication, orgDomain: openArray[char]): void =
  fcQCoreApplication_setOrganizationDomain(struct_miqt_string(data: if len(orgDomain) > 0: addr orgDomain[0] else: nil, len: csize_t(len(orgDomain))))

proc organizationDomain*(_: type gen_qcoreapplication_types.QCoreApplication): string =
  let v_ms = fcQCoreApplication_organizationDomain()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOrganizationName*(_: type gen_qcoreapplication_types.QCoreApplication, orgName: openArray[char]): void =
  fcQCoreApplication_setOrganizationName(struct_miqt_string(data: if len(orgName) > 0: addr orgName[0] else: nil, len: csize_t(len(orgName))))

proc organizationName*(_: type gen_qcoreapplication_types.QCoreApplication): string =
  let v_ms = fcQCoreApplication_organizationName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setApplicationName*(_: type gen_qcoreapplication_types.QCoreApplication, application: openArray[char]): void =
  fcQCoreApplication_setApplicationName(struct_miqt_string(data: if len(application) > 0: addr application[0] else: nil, len: csize_t(len(application))))

proc applicationName*(_: type gen_qcoreapplication_types.QCoreApplication): string =
  let v_ms = fcQCoreApplication_applicationName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setApplicationVersion*(_: type gen_qcoreapplication_types.QCoreApplication, version: openArray[char]): void =
  fcQCoreApplication_setApplicationVersion(struct_miqt_string(data: if len(version) > 0: addr version[0] else: nil, len: csize_t(len(version))))

proc applicationVersion*(_: type gen_qcoreapplication_types.QCoreApplication): string =
  let v_ms = fcQCoreApplication_applicationVersion()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSetuidAllowed*(_: type gen_qcoreapplication_types.QCoreApplication, allow: bool): void =
  fcQCoreApplication_setSetuidAllowed(allow)

proc isSetuidAllowed*(_: type gen_qcoreapplication_types.QCoreApplication): bool =
  fcQCoreApplication_isSetuidAllowed()

proc instance*(_: type gen_qcoreapplication_types.QCoreApplication): gen_qcoreapplication_types.QCoreApplication =
  gen_qcoreapplication_types.QCoreApplication(h: fcQCoreApplication_instance(), owned: false)

proc exec*(_: type gen_qcoreapplication_types.QCoreApplication): cint =
  fcQCoreApplication_exec()

proc processEvents*(_: type gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_processEvents()

proc processEvents*(_: type gen_qcoreapplication_types.QCoreApplication, flags: cint, maxtime: cint): void =
  fcQCoreApplication_processEvents2(cint(flags), maxtime)

proc exit*(_: type gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_exit()

proc sendEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_sendEvent(receiver.h, event.h)

proc postEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): void =
  fcQCoreApplication_postEvent(receiver.h, event.h)

proc sendPostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_sendPostedEvents()

proc removePostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject): void =
  fcQCoreApplication_removePostedEvents(receiver.h)

proc hasPendingEvents*(_: type gen_qcoreapplication_types.QCoreApplication): bool =
  fcQCoreApplication_hasPendingEvents()

proc eventDispatcher*(_: type gen_qcoreapplication_types.QCoreApplication): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQCoreApplication_eventDispatcher(), owned: false)

proc setEventDispatcher*(_: type gen_qcoreapplication_types.QCoreApplication, eventDispatcher: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQCoreApplication_setEventDispatcher(eventDispatcher.h)

proc notify*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_notify(self.h, param1.h, param2.h)

proc startingUp*(_: type gen_qcoreapplication_types.QCoreApplication): bool =
  fcQCoreApplication_startingUp()

proc closingDown*(_: type gen_qcoreapplication_types.QCoreApplication): bool =
  fcQCoreApplication_closingDown()

proc applicationDirPath*(_: type gen_qcoreapplication_types.QCoreApplication): string =
  let v_ms = fcQCoreApplication_applicationDirPath()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc applicationFilePath*(_: type gen_qcoreapplication_types.QCoreApplication): string =
  let v_ms = fcQCoreApplication_applicationFilePath()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc applicationPid*(_: type gen_qcoreapplication_types.QCoreApplication): clonglong =
  fcQCoreApplication_applicationPid()

proc setLibraryPaths*(_: type gen_qcoreapplication_types.QCoreApplication, libraryPaths: openArray[string]): void =
  var libraryPaths_CArray = newSeq[struct_miqt_string](len(libraryPaths))
  for i in 0..<len(libraryPaths):
    libraryPaths_CArray[i] = struct_miqt_string(data: if len(libraryPaths[i]) > 0: addr libraryPaths[i][0] else: nil, len: csize_t(len(libraryPaths[i])))

  fcQCoreApplication_setLibraryPaths(struct_miqt_array(len: csize_t(len(libraryPaths)), data: if len(libraryPaths) == 0: nil else: addr(libraryPaths_CArray[0])))

proc libraryPaths*(_: type gen_qcoreapplication_types.QCoreApplication): seq[string] =
  var v_ma = fcQCoreApplication_libraryPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc addLibraryPath*(_: type gen_qcoreapplication_types.QCoreApplication, param1: openArray[char]): void =
  fcQCoreApplication_addLibraryPath(struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc removeLibraryPath*(_: type gen_qcoreapplication_types.QCoreApplication, param1: openArray[char]): void =
  fcQCoreApplication_removeLibraryPath(struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc installTranslator*(_: type gen_qcoreapplication_types.QCoreApplication, messageFile: gen_qtranslator_types.QTranslator): bool =
  fcQCoreApplication_installTranslator(messageFile.h)

proc removeTranslator*(_: type gen_qcoreapplication_types.QCoreApplication, messageFile: gen_qtranslator_types.QTranslator): bool =
  fcQCoreApplication_removeTranslator(messageFile.h)

proc translate*(_: type gen_qcoreapplication_types.QCoreApplication, context: cstring, key: cstring): string =
  let v_ms = fcQCoreApplication_translate(context, key)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc flush*(_: type gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_flush()

proc installNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQCoreApplication_installNativeEventFilter(self.h, filterObj.h)

proc removeNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQCoreApplication_removeNativeEventFilter(self.h, filterObj.h)

proc isQuitLockEnabled*(_: type gen_qcoreapplication_types.QCoreApplication): bool =
  fcQCoreApplication_isQuitLockEnabled()

proc setQuitLockEnabled*(_: type gen_qcoreapplication_types.QCoreApplication, enabled: bool): void =
  fcQCoreApplication_setQuitLockEnabled(enabled)

proc quit*(_: type gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_quit()

proc organizationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_organizationNameChanged(self.h)

type QCoreApplicationorganizationNameChangedSlot* = proc()
proc cQCoreApplication_slot_callback_organizationNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationorganizationNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQCoreApplication_slot_callback_organizationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationorganizationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorganizationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationorganizationNameChangedSlot) =
  var tmp = new QCoreApplicationorganizationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_organizationNameChanged(self.h, cast[int](addr tmp[]), cQCoreApplication_slot_callback_organizationNameChanged, cQCoreApplication_slot_callback_organizationNameChanged_release)

proc organizationDomainChanged*(self: gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_organizationDomainChanged(self.h)

type QCoreApplicationorganizationDomainChangedSlot* = proc()
proc cQCoreApplication_slot_callback_organizationDomainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationorganizationDomainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQCoreApplication_slot_callback_organizationDomainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationorganizationDomainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorganizationDomainChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationorganizationDomainChangedSlot) =
  var tmp = new QCoreApplicationorganizationDomainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_organizationDomainChanged(self.h, cast[int](addr tmp[]), cQCoreApplication_slot_callback_organizationDomainChanged, cQCoreApplication_slot_callback_organizationDomainChanged_release)

proc applicationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_applicationNameChanged(self.h)

type QCoreApplicationapplicationNameChangedSlot* = proc()
proc cQCoreApplication_slot_callback_applicationNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationapplicationNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQCoreApplication_slot_callback_applicationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationapplicationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationapplicationNameChangedSlot) =
  var tmp = new QCoreApplicationapplicationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_applicationNameChanged(self.h, cast[int](addr tmp[]), cQCoreApplication_slot_callback_applicationNameChanged, cQCoreApplication_slot_callback_applicationNameChanged_release)

proc applicationVersionChanged*(self: gen_qcoreapplication_types.QCoreApplication): void =
  fcQCoreApplication_applicationVersionChanged(self.h)

type QCoreApplicationapplicationVersionChangedSlot* = proc()
proc cQCoreApplication_slot_callback_applicationVersionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationapplicationVersionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQCoreApplication_slot_callback_applicationVersionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationapplicationVersionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationVersionChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationapplicationVersionChangedSlot) =
  var tmp = new QCoreApplicationapplicationVersionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_applicationVersionChanged(self.h, cast[int](addr tmp[]), cQCoreApplication_slot_callback_applicationVersionChanged, cQCoreApplication_slot_callback_applicationVersionChanged_release)

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring): string =
  let v_ms = fcQCoreApplication_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring): string =
  let v_ms = fcQCoreApplication_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAttribute*(_: type gen_qcoreapplication_types.QCoreApplication, attribute: cint, on: bool): void =
  fcQCoreApplication_setAttribute2(cint(attribute), on)

proc processEvents*(_: type gen_qcoreapplication_types.QCoreApplication, flags: cint): void =
  fcQCoreApplication_processEvents1(cint(flags))

proc exit*(_: type gen_qcoreapplication_types.QCoreApplication, retcode: cint): void =
  fcQCoreApplication_exit1(retcode)

proc postEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent, priority: cint): void =
  fcQCoreApplication_postEvent3(receiver.h, event.h, priority)

proc sendPostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject): void =
  fcQCoreApplication_sendPostedEvents1(receiver.h)

proc sendPostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event_type: cint): void =
  fcQCoreApplication_sendPostedEvents2(receiver.h, event_type)

proc removePostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, eventType: cint): void =
  fcQCoreApplication_removePostedEvents2(receiver.h, eventType)

proc translate*(_: type gen_qcoreapplication_types.QCoreApplication, context: cstring, key: cstring, disambiguation: cstring): string =
  let v_ms = fcQCoreApplication_translate3(context, key, disambiguation)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc translate*(_: type gen_qcoreapplication_types.QCoreApplication, context: cstring, key: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_translate4(context, key, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QCoreApplicationmetaObjectProc* = proc(self: QCoreApplication): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCoreApplicationmetacastProc* = proc(self: QCoreApplication, param1: cstring): pointer {.raises: [], gcsafe.}
type QCoreApplicationmetacallProc* = proc(self: QCoreApplication, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCoreApplicationnotifyProc* = proc(self: QCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCoreApplicationeventProc* = proc(self: QCoreApplication, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCoreApplicationeventFilterProc* = proc(self: QCoreApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCoreApplicationtimerEventProc* = proc(self: QCoreApplication, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCoreApplicationchildEventProc* = proc(self: QCoreApplication, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCoreApplicationcustomEventProc* = proc(self: QCoreApplication, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCoreApplicationconnectNotifyProc* = proc(self: QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCoreApplicationdisconnectNotifyProc* = proc(self: QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCoreApplicationVTable* {.inheritable, pure.} = object
  vtbl: cQCoreApplicationVTable
  metaObject*: QCoreApplicationmetaObjectProc
  metacast*: QCoreApplicationmetacastProc
  metacall*: QCoreApplicationmetacallProc
  notify*: QCoreApplicationnotifyProc
  event*: QCoreApplicationeventProc
  eventFilter*: QCoreApplicationeventFilterProc
  timerEvent*: QCoreApplicationtimerEventProc
  childEvent*: QCoreApplicationchildEventProc
  customEvent*: QCoreApplicationcustomEventProc
  connectNotify*: QCoreApplicationconnectNotifyProc
  disconnectNotify*: QCoreApplicationdisconnectNotifyProc
proc QCoreApplicationmetaObject*(self: gen_qcoreapplication_types.QCoreApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_virtualbase_metaObject(self.h), owned: false)

proc cQCoreApplication_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCoreApplicationmetacast*(self: gen_qcoreapplication_types.QCoreApplication, param1: cstring): pointer =
  fcQCoreApplication_virtualbase_metacast(self.h, param1)

proc cQCoreApplication_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCoreApplicationmetacall*(self: gen_qcoreapplication_types.QCoreApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQCoreApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQCoreApplication_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCoreApplicationnotify*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_virtualbase_notify(self.h, param1.h, param2.h)

proc cQCoreApplication_vtable_callback_notify(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].notify(self, slotval1, slotval2)
  virtualReturn

proc QCoreApplicationevent*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_virtualbase_event(self.h, param1.h)

proc cQCoreApplication_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCoreApplicationeventFilter*(self: gen_qcoreapplication_types.QCoreApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQCoreApplication_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCoreApplicationtimerEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCoreApplication_virtualbase_timerEvent(self.h, event.h)

proc cQCoreApplication_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QCoreApplicationchildEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCoreApplication_virtualbase_childEvent(self.h, event.h)

proc cQCoreApplication_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QCoreApplicationcustomEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QEvent): void =
  fcQCoreApplication_virtualbase_customEvent(self.h, event.h)

proc cQCoreApplication_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QCoreApplicationconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCoreApplication_virtualbase_connectNotify(self.h, signal.h)

proc cQCoreApplication_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QCoreApplicationdisconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCoreApplication_virtualbase_disconnectNotify(self.h, signal.h)

proc cQCoreApplication_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](fcQCoreApplication_vdata(self))
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCoreApplication* {.inheritable.} = ref object of QCoreApplication
  vtbl*: cQCoreApplicationVTable
method metaObject*(self: VirtualQCoreApplication): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCoreApplicationmetaObject(self[])
proc cQCoreApplication_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQCoreApplication, param1: cstring): pointer {.base.} =
  QCoreApplicationmetacast(self[], param1)
proc cQCoreApplication_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQCoreApplication, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCoreApplicationmetacall(self[], param1, param2, param3)
proc cQCoreApplication_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method notify*(self: VirtualQCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCoreApplicationnotify(self[], param1, param2)
proc cQCoreApplication_method_callback_notify(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.notify(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQCoreApplication, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCoreApplicationevent(self[], param1)
proc cQCoreApplication_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQCoreApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCoreApplicationeventFilter(self[], watched, event)
proc cQCoreApplication_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQCoreApplication, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCoreApplicationtimerEvent(self[], event)
proc cQCoreApplication_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQCoreApplication, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCoreApplicationchildEvent(self[], event)
proc cQCoreApplication_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQCoreApplication, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCoreApplicationcustomEvent(self[], event)
proc cQCoreApplication_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCoreApplicationconnectNotify(self[], signal)
proc cQCoreApplication_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCoreApplicationdisconnectNotify(self[], signal)
proc cQCoreApplication_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCoreApplication](fcQCoreApplication_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qcoreapplication_types.QCoreApplication): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCoreApplication_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcoreapplication_types.QCoreApplication): cint =
  fcQCoreApplication_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcoreapplication_types.QCoreApplication, signal: cstring): cint =
  fcQCoreApplication_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCoreApplication_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcoreapplication_types.QCoreApplication,
    vtbl: ref QCoreApplicationVTable = nil): gen_qcoreapplication_types.QCoreApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  let vtbl = if vtbl == nil: new QCoreApplicationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCoreApplicationVTable](fcQCoreApplication_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCoreApplication_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCoreApplication_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCoreApplication_vtable_callback_metacall
  if not isNil(vtbl[].notify):
    vtbl[].vtbl.notify = cQCoreApplication_vtable_callback_notify
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCoreApplication_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCoreApplication_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCoreApplication_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCoreApplication_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCoreApplication_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCoreApplication_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCoreApplication_vtable_callback_disconnectNotify
  gen_qcoreapplication_types.QCoreApplication(h: fcQCoreApplication_new(addr(vtbl[].vtbl), addr(vtbl[]), addr argc, argv), owned: true)

proc create*(T: type gen_qcoreapplication_types.QCoreApplication,
    param3: cint,
    vtbl: ref QCoreApplicationVTable = nil): gen_qcoreapplication_types.QCoreApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  let vtbl = if vtbl == nil: new QCoreApplicationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCoreApplicationVTable](fcQCoreApplication_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCoreApplication_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCoreApplication_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCoreApplication_vtable_callback_metacall
  if not isNil(vtbl[].notify):
    vtbl[].vtbl.notify = cQCoreApplication_vtable_callback_notify
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCoreApplication_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCoreApplication_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCoreApplication_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCoreApplication_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCoreApplication_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCoreApplication_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCoreApplication_vtable_callback_disconnectNotify
  gen_qcoreapplication_types.QCoreApplication(h: fcQCoreApplication_new2(addr(vtbl[].vtbl), addr(vtbl[]), addr argc, argv, param3), owned: true)

const cQCoreApplication_mvtbl = cQCoreApplicationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCoreApplication()[])](self.fcQCoreApplication_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQCoreApplication_method_callback_metaObject,
  metacast: cQCoreApplication_method_callback_metacast,
  metacall: cQCoreApplication_method_callback_metacall,
  notify: cQCoreApplication_method_callback_notify,
  event: cQCoreApplication_method_callback_event,
  eventFilter: cQCoreApplication_method_callback_eventFilter,
  timerEvent: cQCoreApplication_method_callback_timerEvent,
  childEvent: cQCoreApplication_method_callback_childEvent,
  customEvent: cQCoreApplication_method_callback_customEvent,
  connectNotify: cQCoreApplication_method_callback_connectNotify,
  disconnectNotify: cQCoreApplication_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcoreapplication_types.QCoreApplication,
    inst: VirtualQCoreApplication) =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCoreApplication_new(addr(cQCoreApplication_mvtbl), addr(inst[]), addr argc, argv)
  inst[].owned = true

proc create*(T: type gen_qcoreapplication_types.QCoreApplication,
    param3: cint,
    inst: VirtualQCoreApplication) =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCoreApplication_new2(addr(cQCoreApplication_mvtbl), addr(inst[]), addr argc, argv, param3)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcoreapplication_types.QCoreApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_staticMetaObject())
