import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qcoreapplication.cpp", cflags).}


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

proc fcQCoreApplication_new(argc: ptr cint, argv: cstringArray): ptr cQCoreApplication {.importc: "QCoreApplication_new".}
proc fcQCoreApplication_new2(argc: ptr cint, argv: cstringArray, param3: cint): ptr cQCoreApplication {.importc: "QCoreApplication_new2".}
proc fcQCoreApplication_metaObject(self: pointer, ): pointer {.importc: "QCoreApplication_metaObject".}
proc fcQCoreApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QCoreApplication_metacast".}
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
proc fcQCoreApplication_organizationNameChanged(self: pointer, ): void {.importc: "QCoreApplication_organizationNameChanged".}
proc fcQCoreApplication_connect_organizationNameChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_organizationNameChanged".}
proc fcQCoreApplication_organizationDomainChanged(self: pointer, ): void {.importc: "QCoreApplication_organizationDomainChanged".}
proc fcQCoreApplication_connect_organizationDomainChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_organizationDomainChanged".}
proc fcQCoreApplication_applicationNameChanged(self: pointer, ): void {.importc: "QCoreApplication_applicationNameChanged".}
proc fcQCoreApplication_connect_applicationNameChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_applicationNameChanged".}
proc fcQCoreApplication_applicationVersionChanged(self: pointer, ): void {.importc: "QCoreApplication_applicationVersionChanged".}
proc fcQCoreApplication_connect_applicationVersionChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_applicationVersionChanged".}
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
proc fQCoreApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QCoreApplication_virtualbase_notify".}
proc fcQCoreApplication_override_virtual_notify(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_notify".}
proc fQCoreApplication_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QCoreApplication_virtualbase_event".}
proc fcQCoreApplication_override_virtual_event(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_event".}
proc fQCoreApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCoreApplication_virtualbase_eventFilter".}
proc fcQCoreApplication_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_eventFilter".}
proc fQCoreApplication_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCoreApplication_virtualbase_timerEvent".}
proc fcQCoreApplication_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_timerEvent".}
proc fQCoreApplication_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCoreApplication_virtualbase_childEvent".}
proc fcQCoreApplication_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_childEvent".}
proc fQCoreApplication_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCoreApplication_virtualbase_customEvent".}
proc fcQCoreApplication_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_customEvent".}
proc fQCoreApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCoreApplication_virtualbase_connectNotify".}
proc fcQCoreApplication_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_connectNotify".}
proc fQCoreApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCoreApplication_virtualbase_disconnectNotify".}
proc fcQCoreApplication_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_disconnectNotify".}
proc fcQCoreApplication_delete(self: pointer) {.importc: "QCoreApplication_delete".}


func init*(T: type gen_qcoreapplication_types.QCoreApplication, h: ptr cQCoreApplication): gen_qcoreapplication_types.QCoreApplication =
  T(h: h)
proc create*(T: type gen_qcoreapplication_types.QCoreApplication, ): gen_qcoreapplication_types.QCoreApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  gen_qcoreapplication_types.QCoreApplication.init(fcQCoreApplication_new(addr argc, argv))

proc create*(T: type gen_qcoreapplication_types.QCoreApplication, param3: cint): gen_qcoreapplication_types.QCoreApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  gen_qcoreapplication_types.QCoreApplication.init(fcQCoreApplication_new2(addr argc, argv, param3))

proc metaObject*(self: gen_qcoreapplication_types.QCoreApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCoreApplication_metaObject(self.h))

proc metacast*(self: gen_qcoreapplication_types.QCoreApplication, param1: cstring): pointer =
  fcQCoreApplication_metacast(self.h, param1)

proc tr*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring): string =
  let v_ms = fcQCoreApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring): string =
  let v_ms = fcQCoreApplication_trUtf8(s)
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

proc exit*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_exit()

proc sendEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCoreApplication_sendEvent(receiver.h, event.h)

proc postEvent*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): void =
  fcQCoreApplication_postEvent(receiver.h, event.h)

proc sendPostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_sendPostedEvents()

proc removePostedEvents*(_: type gen_qcoreapplication_types.QCoreApplication, receiver: gen_qobject_types.QObject): void =
  fcQCoreApplication_removePostedEvents(receiver.h)

proc hasPendingEvents*(_: type gen_qcoreapplication_types.QCoreApplication, ): bool =
  fcQCoreApplication_hasPendingEvents()

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

proc flush*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_flush()

proc installNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQCoreApplication_installNativeEventFilter(self.h, filterObj.h)

proc removeNativeEventFilter*(self: gen_qcoreapplication_types.QCoreApplication, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQCoreApplication_removeNativeEventFilter(self.h, filterObj.h)

proc isQuitLockEnabled*(_: type gen_qcoreapplication_types.QCoreApplication, ): bool =
  fcQCoreApplication_isQuitLockEnabled()

proc setQuitLockEnabled*(_: type gen_qcoreapplication_types.QCoreApplication, enabled: bool): void =
  fcQCoreApplication_setQuitLockEnabled(enabled)

proc quit*(_: type gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_quit()

proc organizationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_organizationNameChanged(self.h)

type QCoreApplicationorganizationNameChangedSlot* = proc()
proc miqt_exec_callback_QCoreApplication_organizationNameChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCoreApplicationorganizationNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onorganizationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationorganizationNameChangedSlot) =
  var tmp = new QCoreApplicationorganizationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_organizationNameChanged(self.h, cast[int](addr tmp[]))

proc organizationDomainChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_organizationDomainChanged(self.h)

type QCoreApplicationorganizationDomainChangedSlot* = proc()
proc miqt_exec_callback_QCoreApplication_organizationDomainChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCoreApplicationorganizationDomainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onorganizationDomainChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationorganizationDomainChangedSlot) =
  var tmp = new QCoreApplicationorganizationDomainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_organizationDomainChanged(self.h, cast[int](addr tmp[]))

proc applicationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_applicationNameChanged(self.h)

type QCoreApplicationapplicationNameChangedSlot* = proc()
proc miqt_exec_callback_QCoreApplication_applicationNameChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCoreApplicationapplicationNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapplicationNameChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationapplicationNameChangedSlot) =
  var tmp = new QCoreApplicationapplicationNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_applicationNameChanged(self.h, cast[int](addr tmp[]))

proc applicationVersionChanged*(self: gen_qcoreapplication_types.QCoreApplication, ): void =
  fcQCoreApplication_applicationVersionChanged(self.h)

type QCoreApplicationapplicationVersionChangedSlot* = proc()
proc miqt_exec_callback_QCoreApplication_applicationVersionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCoreApplicationapplicationVersionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapplicationVersionChanged*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationapplicationVersionChangedSlot) =
  var tmp = new QCoreApplicationapplicationVersionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_connect_applicationVersionChanged(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring): string =
  let v_ms = fcQCoreApplication_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcoreapplication_types.QCoreApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc translate*(_: type gen_qcoreapplication_types.QCoreApplication, context: cstring, key: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQCoreApplication_translate4(context, key, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QCoreApplicationnotify*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQCoreApplication_virtualbase_notify(self.h, param1.h, param2.h)

type QCoreApplicationnotifyProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc onnotify*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationnotifyProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationnotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_notify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_notify(self: ptr cQCoreApplication, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QCoreApplication_notify ".} =
  var nimfunc = cast[ptr QCoreApplicationnotifyProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCoreApplicationevent*(self: gen_qcoreapplication_types.QCoreApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fQCoreApplication_virtualbase_event(self.h, param1.h)

type QCoreApplicationeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationeventProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_event(self: ptr cQCoreApplication, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QCoreApplication_event ".} =
  var nimfunc = cast[ptr QCoreApplicationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCoreApplicationeventFilter*(self: gen_qcoreapplication_types.QCoreApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCoreApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCoreApplicationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationeventFilterProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_eventFilter(self: ptr cQCoreApplication, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCoreApplication_eventFilter ".} =
  var nimfunc = cast[ptr QCoreApplicationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCoreApplicationtimerEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fQCoreApplication_virtualbase_timerEvent(self.h, event.h)

type QCoreApplicationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationtimerEventProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_timerEvent(self: ptr cQCoreApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_timerEvent ".} =
  var nimfunc = cast[ptr QCoreApplicationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCoreApplicationchildEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fQCoreApplication_virtualbase_childEvent(self.h, event.h)

type QCoreApplicationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationchildEventProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_childEvent(self: ptr cQCoreApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_childEvent ".} =
  var nimfunc = cast[ptr QCoreApplicationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCoreApplicationcustomEvent*(self: gen_qcoreapplication_types.QCoreApplication, event: gen_qcoreevent_types.QEvent): void =
  fQCoreApplication_virtualbase_customEvent(self.h, event.h)

type QCoreApplicationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationcustomEventProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_customEvent(self: ptr cQCoreApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_customEvent ".} =
  var nimfunc = cast[ptr QCoreApplicationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCoreApplicationconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCoreApplication_virtualbase_connectNotify(self.h, signal.h)

type QCoreApplicationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_connectNotify(self: ptr cQCoreApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_connectNotify ".} =
  var nimfunc = cast[ptr QCoreApplicationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCoreApplicationdisconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCoreApplication_virtualbase_disconnectNotify(self.h, signal.h)

type QCoreApplicationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcoreapplication_types.QCoreApplication, slot: QCoreApplicationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCoreApplicationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_disconnectNotify(self: ptr cQCoreApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_disconnectNotify ".} =
  var nimfunc = cast[ptr QCoreApplicationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qcoreapplication_types.QCoreApplication) =
  fcQCoreApplication_delete(self.h)
