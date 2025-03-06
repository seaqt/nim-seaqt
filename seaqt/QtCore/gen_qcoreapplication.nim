import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qcoreapplication.cpp", cflags).}


type QCoreApplicationEnumEnum* = distinct cint
template ApplicationFlags*(_: type QCoreApplicationEnumEnum): untyped = 394242


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

proc fcQCoreApplication_metaObject(self: pointer, ): pointer {.importc: "QCoreApplication_metaObject".}
proc fcQCoreApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QCoreApplication_metacast".}
proc fcQCoreApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCoreApplication_metacall".}
proc fcQCoreApplication_tr(s: cstring): struct_miqt_string {.importc: "QCoreApplication_tr".}
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
proc fcQCoreApplication_sendEvent(receiver: pointer, event: pointer): bool {.importc: "QCoreApplication_sendEvent".}
proc fcQCoreApplication_postEvent(receiver: pointer, event: pointer): void {.importc: "QCoreApplication_postEvent".}
proc fcQCoreApplication_sendPostedEvents(): void {.importc: "QCoreApplication_sendPostedEvents".}
proc fcQCoreApplication_removePostedEvents(receiver: pointer): void {.importc: "QCoreApplication_removePostedEvents".}
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
proc fcQCoreApplication_installNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QCoreApplication_installNativeEventFilter".}
proc fcQCoreApplication_connect_installNativeEventFilter(self: pointer, slot: int, callback: proc (slot: int, filterObj: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_installNativeEventFilter".}
proc fcQCoreApplication_removeNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QCoreApplication_removeNativeEventFilter".}
proc fcQCoreApplication_connect_removeNativeEventFilter(self: pointer, slot: int, callback: proc (slot: int, filterObj: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_removeNativeEventFilter".}
proc fcQCoreApplication_isQuitLockEnabled(): bool {.importc: "QCoreApplication_isQuitLockEnabled".}
proc fcQCoreApplication_setQuitLockEnabled(enabled: bool): void {.importc: "QCoreApplication_setQuitLockEnabled".}
proc fcQCoreApplication_quit(): void {.importc: "QCoreApplication_quit".}
proc fcQCoreApplication_exit(): void {.importc: "QCoreApplication_exit".}
proc fcQCoreApplication_organizationNameChanged(self: pointer, ): void {.importc: "QCoreApplication_organizationNameChanged".}
proc fcQCoreApplication_connect_organizationNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_organizationNameChanged".}
proc fcQCoreApplication_organizationDomainChanged(self: pointer, ): void {.importc: "QCoreApplication_organizationDomainChanged".}
proc fcQCoreApplication_connect_organizationDomainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_organizationDomainChanged".}
proc fcQCoreApplication_applicationNameChanged(self: pointer, ): void {.importc: "QCoreApplication_applicationNameChanged".}
proc fcQCoreApplication_connect_applicationNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_applicationNameChanged".}
proc fcQCoreApplication_applicationVersionChanged(self: pointer, ): void {.importc: "QCoreApplication_applicationVersionChanged".}
proc fcQCoreApplication_connect_applicationVersionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCoreApplication_connect_applicationVersionChanged".}
proc fcQCoreApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCoreApplication_tr2".}
proc fcQCoreApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_tr3".}
proc fcQCoreApplication_setAttribute2(attribute: cint, on: bool): void {.importc: "QCoreApplication_setAttribute2".}
proc fcQCoreApplication_processEvents1(flags: cint): void {.importc: "QCoreApplication_processEvents1".}
proc fcQCoreApplication_postEvent3(receiver: pointer, event: pointer, priority: cint): void {.importc: "QCoreApplication_postEvent3".}
proc fcQCoreApplication_sendPostedEvents1(receiver: pointer): void {.importc: "QCoreApplication_sendPostedEvents1".}
proc fcQCoreApplication_sendPostedEvents2(receiver: pointer, event_type: cint): void {.importc: "QCoreApplication_sendPostedEvents2".}
proc fcQCoreApplication_removePostedEvents2(receiver: pointer, eventType: cint): void {.importc: "QCoreApplication_removePostedEvents2".}
proc fcQCoreApplication_translate3(context: cstring, key: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QCoreApplication_translate3".}
proc fcQCoreApplication_translate4(context: cstring, key: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_translate4".}
proc fcQCoreApplication_exit1(retcode: cint): void {.importc: "QCoreApplication_exit1".}
type cQCoreApplicationVTable = object
  destructor*: proc(vtbl: ptr cQCoreApplicationVTable, self: ptr cQCoreApplication) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  notify*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCoreApplication_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCoreApplication_virtualbase_metaObject".}
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
proc fcQCoreApplication_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QCoreApplication_protectedbase_resolveInterface".}
proc fcQCoreApplication_protectedbase_sender(self: pointer, ): pointer {.importc: "QCoreApplication_protectedbase_sender".}
proc fcQCoreApplication_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCoreApplication_protectedbase_senderSignalIndex".}
proc fcQCoreApplication_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCoreApplication_protectedbase_receivers".}
proc fcQCoreApplication_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCoreApplication_protectedbase_isSignalConnected".}
proc fcQCoreApplication_new(vtbl: pointer, argc: ptr cint, argv: cstringArray): ptr cQCoreApplication {.importc: "QCoreApplication_new".}
proc fcQCoreApplication_new2(vtbl: pointer, argc: ptr cint, argv: cstringArray, param3: cint): ptr cQCoreApplication {.importc: "QCoreApplication_new2".}
proc fcQCoreApplication_staticMetaObject(): pointer {.importc: "QCoreApplication_staticMetaObject".}
proc fcQCoreApplication_delete(self: pointer) {.importc: "QCoreApplication_delete".}

proc metaObject*(self: gen_qcoreapplication_types.QCoreApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_metaObject(self.h))

proc metacast*(self: gen_qcoreapplication_types.QCoreApplication, param1: cstring): pointer =
  fcQCoreApplication_metacast(self.h, param1)

proc metacall*(self: gen_qcoreapplication_types.QCoreApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQCoreApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring): string =
  let v_ms = fcQCoreApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc arguments*(_: type gen_qcoreapplication_types.QCoreApplication, ): seq[string] =
  var v_ma = fcQCoreApplication_arguments()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setAttribute*(_: type gen_qcoreapplication_types.QCoreApplication, attribute: cint): void =
  fcQCoreApplication_setAttribute(cint(attribute))

proc testAttribute*(_: type gen_qcoreapplication_types.QCoreApplication, attribute: cint): bool =
  fcQCoreApplication_testAttribute(cint(attribute))

proc setOrganizationDomain*(_: type gen_qcoreapplication_types.QCoreApplication, orgDomain: string): void =
  fcQCoreApplication_setOrganizationDomain(struct_miqt_string(data: orgDomain, len: csize_t(len(orgDomain))))

proc organizationDomain*(_: type gen_qcoreapplication_types.QCoreApplication, ): string =
  let v_ms = fcQCoreApplication_organizationDomain()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrganizationName*(_: type gen_qcoreapplication_types.QCoreApplication, orgName: string): void =
  fcQCoreApplication_setOrganizationName(struct_miqt_string(data: orgName, len: csize_t(len(orgName))))

proc organizationName*(_: type gen_qcoreapplication_types.QCoreApplication, ): string =
  let v_ms = fcQCoreApplication_organizationName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setApplicationName*(_: type gen_qcoreapplication_types.QCoreApplication, application: string): void =
  fcQCoreApplication_setApplicationName(struct_miqt_string(data: application, len: csize_t(len(application))))

proc applicationName*(_: type gen_qcoreapplication_types.QCoreApplication, ): string =
  let v_ms = fcQCoreApplication_applicationName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setApplicationVersion*(_: type gen_qcoreapplication_types.QCoreApplication, version: string): void =
  fcQCoreApplication_setApplicationVersion(struct_miqt_string(data: version, len: csize_t(len(version))))

proc applicationVersion*(_: type gen_qcoreapplication_types.QCoreApplication, ): string =
  let v_ms = fcQCoreApplication_applicationVersion()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSetuidAllowed*(_: type gen_qcoreapplication_types.QCoreApplication, allow: bool): void =
  fcQCoreApplication_setSetuidAllowed(allow)

proc isSetuidAllowed*(_: type gen_qcoreapplication_types.QCoreApplication, ): bool =
  fcQCoreApplication_isSetuidAllowed()

proc instance*(_: type gen_qcoreapplication_types.QCoreApplication, ): gen_qcoreapplication_types.QCoreApplication =
  gen_qcoreapplication_types.QCoreApplication(h: fcQCoreApplication_instance())

proc exec*(_: type gen_qcoreapplication_types.QCoreApplication, ): cint =
  fcQCoreApplication_exec()

proc processEvents*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_processEvents()

proc processEvents*(_: type gen_qcoreapplication_types.QCoreApplication, flags: cint, maxtime: cint): void =
  fcQCoreApplication_processEvents2(cint(flags), maxtime)

proc sendEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_sendEvent(receiver.h, event.h)

proc postEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): void =
  fcQCoreApplication_postEvent(receiver.h, event.h)

proc sendPostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_sendPostedEvents()

proc removePostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject): void =
  fcQCoreApplication_removePostedEvents(receiver.h)

proc eventDispatcher*(_: type gen_qcoreapplication_types.QCoreApplication, ): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQCoreApplication_eventDispatcher())

proc setEventDispatcher*(_: type gen_qcoreapplication_types.QCoreApplication, eventDispatcher: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQCoreApplication_setEventDispatcher(eventDispatcher.h)

proc notify*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_notify(self.h, param1.h, param2.h)

proc startingUp*(_: type gen_qcoreapplication_types.QCoreApplication, ): bool =
  fcQCoreApplication_startingUp()

proc closingDown*(_: type gen_qcoreapplication_types.QCoreApplication, ): bool =
  fcQCoreApplication_closingDown()

proc applicationDirPath*(_: type gen_qcoreapplication_types.QCoreApplication, ): string =
  let v_ms = fcQCoreApplication_applicationDirPath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applicationFilePath*(_: type gen_qcoreapplication_types.QCoreApplication, ): string =
  let v_ms = fcQCoreApplication_applicationFilePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applicationPid*(_: type gen_qcoreapplication_types.QCoreApplication, ): clonglong =
  fcQCoreApplication_applicationPid()

proc setLibraryPaths*(_: type gen_qcoreapplication_types.QCoreApplication, libraryPaths: seq[string]): void =
  var libraryPaths_CArray = newSeq[struct_miqt_string](len(libraryPaths))
  for i in 0..<len(libraryPaths):
    libraryPaths_CArray[i] = struct_miqt_string(data: libraryPaths[i], len: csize_t(len(libraryPaths[i])))

  fcQCoreApplication_setLibraryPaths(struct_miqt_array(len: csize_t(len(libraryPaths)), data: if len(libraryPaths) == 0: nil else: addr(libraryPaths_CArray[0])))

proc libraryPaths*(_: type gen_qcoreapplication_types.QCoreApplication, ): seq[string] =
  var v_ma = fcQCoreApplication_libraryPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc addLibraryPath*(_: type gen_qcoreapplication_types.QCoreApplication, param1: string): void =
  fcQCoreApplication_addLibraryPath(struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc removeLibraryPath*(_: type gen_qcoreapplication_types.QCoreApplication, param1: string): void =
  fcQCoreApplication_removeLibraryPath(struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc installTranslator*(_: type gen_qcoreapplication_types.QCoreApplication, messageFile: gen_qtranslator_types.QTranslator): bool =
  fcQCoreApplication_installTranslator(messageFile.h)

proc removeTranslator*(_: type gen_qcoreapplication_types.QCoreApplication, messageFile: gen_qtranslator_types.QTranslator): bool =
  fcQCoreApplication_removeTranslator(messageFile.h)

proc translate*(_: type gen_qcoreapplication_types.QCoreApplication, context: cstring, key: cstring): string =
  let v_ms = fcQCoreApplication_translate(context, key)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc installNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQCoreApplication_installNativeEventFilter(self.h, filterObj.h)

type QCoreApplicationinstallNativeEventFilterSlot* = proc(filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter)
proc miqt_exec_callback_cQCoreApplication_installNativeEventFilter(slot: int, filterObj: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationinstallNativeEventFilterSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter(h: filterObj)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCoreApplication_installNativeEventFilter_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationinstallNativeEventFilterSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oninstallNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationinstallNativeEventFilterSlot) =
  var tmp = new QCoreApplicationinstallNativeEventFilterSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_installNativeEventFilter(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCoreApplication_installNativeEventFilter, miqt_exec_callback_cQCoreApplication_installNativeEventFilter_release)

proc removeNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQCoreApplication_removeNativeEventFilter(self.h, filterObj.h)

type QCoreApplicationremoveNativeEventFilterSlot* = proc(filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter)
proc miqt_exec_callback_cQCoreApplication_removeNativeEventFilter(slot: int, filterObj: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationremoveNativeEventFilterSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter(h: filterObj)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCoreApplication_removeNativeEventFilter_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationremoveNativeEventFilterSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onremoveNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationremoveNativeEventFilterSlot) =
  var tmp = new QCoreApplicationremoveNativeEventFilterSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_removeNativeEventFilter(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCoreApplication_removeNativeEventFilter, miqt_exec_callback_cQCoreApplication_removeNativeEventFilter_release)

proc isQuitLockEnabled*(_: type gen_qcoreapplication_types.QCoreApplication, ): bool =
  fcQCoreApplication_isQuitLockEnabled()

proc setQuitLockEnabled*(_: type gen_qcoreapplication_types.QCoreApplication, enabled: bool): void =
  fcQCoreApplication_setQuitLockEnabled(enabled)

proc quit*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_quit()

proc exit*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_exit()

proc organizationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_organizationNameChanged(self.h)

type QCoreApplicationorganizationNameChangedSlot* = proc()
proc miqt_exec_callback_cQCoreApplication_organizationNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationorganizationNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCoreApplication_organizationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationorganizationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorganizationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationorganizationNameChangedSlot) =
  var tmp = new QCoreApplicationorganizationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_organizationNameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCoreApplication_organizationNameChanged, miqt_exec_callback_cQCoreApplication_organizationNameChanged_release)

proc organizationDomainChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_organizationDomainChanged(self.h)

type QCoreApplicationorganizationDomainChangedSlot* = proc()
proc miqt_exec_callback_cQCoreApplication_organizationDomainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationorganizationDomainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCoreApplication_organizationDomainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationorganizationDomainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorganizationDomainChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationorganizationDomainChangedSlot) =
  var tmp = new QCoreApplicationorganizationDomainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_organizationDomainChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCoreApplication_organizationDomainChanged, miqt_exec_callback_cQCoreApplication_organizationDomainChanged_release)

proc applicationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_applicationNameChanged(self.h)

type QCoreApplicationapplicationNameChangedSlot* = proc()
proc miqt_exec_callback_cQCoreApplication_applicationNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationapplicationNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCoreApplication_applicationNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationapplicationNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationapplicationNameChangedSlot) =
  var tmp = new QCoreApplicationapplicationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_applicationNameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCoreApplication_applicationNameChanged, miqt_exec_callback_cQCoreApplication_applicationNameChanged_release)

proc applicationVersionChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_applicationVersionChanged(self.h)

type QCoreApplicationapplicationVersionChangedSlot* = proc()
proc miqt_exec_callback_cQCoreApplication_applicationVersionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCoreApplicationapplicationVersionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCoreApplication_applicationVersionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCoreApplicationapplicationVersionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationVersionChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationapplicationVersionChangedSlot) =
  var tmp = new QCoreApplicationapplicationVersionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_applicationVersionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCoreApplication_applicationVersionChanged, miqt_exec_callback_cQCoreApplication_applicationVersionChanged_release)

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring): string =
  let v_ms = fcQCoreApplication_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAttribute*(_: type gen_qcoreapplication_types.QCoreApplication, attribute: cint, on: bool): void =
  fcQCoreApplication_setAttribute2(cint(attribute), on)

proc processEvents*(_: type gen_qcoreapplication_types.QCoreApplication, flags: cint): void =
  fcQCoreApplication_processEvents1(cint(flags))

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
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc translate*(_: type gen_qcoreapplication_types.QCoreApplication, context: cstring, key: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_translate4(context, key, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exit*(_: type gen_qcoreapplication_types.QCoreApplication, retcode: cint): void =
  fcQCoreApplication_exit1(retcode)

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
type QCoreApplicationVTable* = object
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
proc QCoreApplicationmetaObject*(self: gen_qcoreapplication_types.QCoreApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQCoreApplication_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QCoreApplicationmetacast*(self: gen_qcoreapplication_types.QCoreApplication, param1: cstring): pointer =
  fcQCoreApplication_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCoreApplication_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCoreApplicationmetacall*(self: gen_qcoreapplication_types.QCoreApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQCoreApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCoreApplication_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCoreApplicationnotify*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_virtualbase_notify(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQCoreApplication_notify(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].notify(self, slotval1, slotval2)
  virtualReturn

proc QCoreApplicationevent*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQCoreApplication_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCoreApplicationeventFilter*(self: gen_qcoreapplication_types.QCoreApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCoreApplication_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCoreApplicationtimerEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCoreApplication_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCoreApplication_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QCoreApplicationchildEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCoreApplication_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCoreApplication_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QCoreApplicationcustomEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QEvent): void =
  fcQCoreApplication_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCoreApplication_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QCoreApplicationconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCoreApplication_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCoreApplication_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QCoreApplicationdisconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCoreApplication_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCoreApplication_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCoreApplicationVTable](vtbl)
  let self = QCoreApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc resolveInterface*(self: gen_qcoreapplication_types.QCoreApplication, name: cstring, revision: cint): pointer =
  fcQCoreApplication_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qcoreapplication_types.QCoreApplication, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCoreApplication_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcoreapplication_types.QCoreApplication, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCoreApplicationVTable, _: ptr cQCoreApplication) {.cdecl.} =
    let vtbl = cast[ref QCoreApplicationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCoreApplication_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCoreApplication_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCoreApplication_metacall
  if not isNil(vtbl.notify):
    vtbl[].vtbl.notify = miqt_exec_callback_cQCoreApplication_notify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCoreApplication_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCoreApplication_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCoreApplication_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCoreApplication_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCoreApplication_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCoreApplication_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCoreApplication_disconnectNotify
  gen_qcoreapplication_types.QCoreApplication(h: fcQCoreApplication_new(addr(vtbl[]), addr argc, argv))

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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCoreApplicationVTable, _: ptr cQCoreApplication) {.cdecl.} =
    let vtbl = cast[ref QCoreApplicationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCoreApplication_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCoreApplication_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCoreApplication_metacall
  if not isNil(vtbl.notify):
    vtbl[].vtbl.notify = miqt_exec_callback_cQCoreApplication_notify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCoreApplication_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCoreApplication_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCoreApplication_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCoreApplication_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCoreApplication_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCoreApplication_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCoreApplication_disconnectNotify
  gen_qcoreapplication_types.QCoreApplication(h: fcQCoreApplication_new2(addr(vtbl[]), addr argc, argv, param3))

proc staticMetaObject*(_: type gen_qcoreapplication_types.QCoreApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_staticMetaObject())
proc delete*(self: gen_qcoreapplication_types.QCoreApplication) =
  fcQCoreApplication_delete(self.h)
