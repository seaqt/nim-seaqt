import ./qtwebenginecore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qwebengineextensionmanager.cpp", QtWebEngineCoreCFlags).}


import ./gen_qwebengineextensionmanager_types
export gen_qwebengineextensionmanager_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qwebengineextensioninfo_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebengineextensioninfo_types

type cQWebEngineExtensionManager*{.exportc: "QWebEngineExtensionManager", incompleteStruct.} = object

proc fcQWebEngineExtensionManager_metaObject(self: pointer): pointer {.importc: "QWebEngineExtensionManager_metaObject".}
proc fcQWebEngineExtensionManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineExtensionManager_metacast".}
proc fcQWebEngineExtensionManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineExtensionManager_metacall".}
proc fcQWebEngineExtensionManager_trS(s: cstring): struct_seaqt_string {.importc: "QWebEngineExtensionManager_tr_s".}
proc fcQWebEngineExtensionManager_loadExtension(self: pointer, path: struct_seaqt_string): void {.importc: "QWebEngineExtensionManager_loadExtension".}
proc fcQWebEngineExtensionManager_installExtension(self: pointer, path: struct_seaqt_string): void {.importc: "QWebEngineExtensionManager_installExtension".}
proc fcQWebEngineExtensionManager_unloadExtension(self: pointer, extension: pointer): void {.importc: "QWebEngineExtensionManager_unloadExtension".}
proc fcQWebEngineExtensionManager_uninstallExtension(self: pointer, extension: pointer): void {.importc: "QWebEngineExtensionManager_uninstallExtension".}
proc fcQWebEngineExtensionManager_setExtensionEnabled(self: pointer, extension: pointer, enabled: bool): void {.importc: "QWebEngineExtensionManager_setExtensionEnabled".}
proc fcQWebEngineExtensionManager_installPath(self: pointer): struct_seaqt_string {.importc: "QWebEngineExtensionManager_installPath".}
proc fcQWebEngineExtensionManager_extensions(self: pointer): struct_seaqt_array {.importc: "QWebEngineExtensionManager_extensions".}
proc fcQWebEngineExtensionManager_loadFinished(self: pointer, extension: pointer): void {.importc: "QWebEngineExtensionManager_loadFinished".}
proc fcQWebEngineExtensionManager_connect_loadFinished(self: pointer, slot: int, callback: proc (slot: int, extension: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineExtensionManager_connect_loadFinished".}
proc fcQWebEngineExtensionManager_installFinished(self: pointer, extension: pointer): void {.importc: "QWebEngineExtensionManager_installFinished".}
proc fcQWebEngineExtensionManager_connect_installFinished(self: pointer, slot: int, callback: proc (slot: int, extension: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineExtensionManager_connect_installFinished".}
proc fcQWebEngineExtensionManager_unloadFinished(self: pointer, extension: pointer): void {.importc: "QWebEngineExtensionManager_unloadFinished".}
proc fcQWebEngineExtensionManager_connect_unloadFinished(self: pointer, slot: int, callback: proc (slot: int, extension: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineExtensionManager_connect_unloadFinished".}
proc fcQWebEngineExtensionManager_uninstallFinished(self: pointer, extension: pointer): void {.importc: "QWebEngineExtensionManager_uninstallFinished".}
proc fcQWebEngineExtensionManager_connect_uninstallFinished(self: pointer, slot: int, callback: proc (slot: int, extension: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineExtensionManager_connect_uninstallFinished".}
proc fcQWebEngineExtensionManager_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebEngineExtensionManager_tr_s_c".}
proc fcQWebEngineExtensionManager_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebEngineExtensionManager_tr_s_c_n".}
proc fcQWebEngineExtensionManager_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineExtensionManager_protectedbase_sender".}
proc fcQWebEngineExtensionManager_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineExtensionManager_protectedbase_senderSignalIndex".}
proc fcQWebEngineExtensionManager_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineExtensionManager_protectedbase_receivers".}
proc fcQWebEngineExtensionManager_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineExtensionManager_protectedbase_isSignalConnected".}
proc fcQWebEngineExtensionManager_staticMetaObject(): pointer {.importc: "QWebEngineExtensionManager_staticMetaObject".}

proc metaObject*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineExtensionManager_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, param1: cstring): pointer =
  fcQWebEngineExtensionManager_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineExtensionManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, s: cstring): string =
  let v_ms = fcQWebEngineExtensionManager_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc loadExtension*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, path: openArray[char]): void =
  fcQWebEngineExtensionManager_loadExtension(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc installExtension*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, path: openArray[char]): void =
  fcQWebEngineExtensionManager_installExtension(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc unloadExtension*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionManager_unloadExtension(self.h, extension.h)

proc uninstallExtension*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionManager_uninstallExtension(self.h, extension.h)

proc setExtensionEnabled*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo, enabled: bool): void =
  fcQWebEngineExtensionManager_setExtensionEnabled(self.h, extension.h, enabled)

proc installPath*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager): string =
  let v_ms = fcQWebEngineExtensionManager_installPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc extensions*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager): seq[gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo] =
  var v_ma = fcQWebEngineExtensionManager_extensions(self.h)
  var vx_ret = newSeq[gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc loadFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionManager_loadFinished(self.h, extension.h)

type QWebEngineExtensionManagerloadFinishedSlot* = proc(extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo)
proc fcQWebEngineExtensionManager_slot_callback_loadFinished(slot: int, extension: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineExtensionManagerloadFinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: extension, owned: false)

  nimfunc[](slotval1)

proc fcQWebEngineExtensionManager_slot_callback_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineExtensionManagerloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onLoadFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, slot: QWebEngineExtensionManagerloadFinishedSlot) =
  var tmp = new QWebEngineExtensionManagerloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineExtensionManager_connect_loadFinished(self.h, cast[int](addr tmp[]), fcQWebEngineExtensionManager_slot_callback_loadFinished, fcQWebEngineExtensionManager_slot_callback_loadFinished_release)

proc installFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionManager_installFinished(self.h, extension.h)

type QWebEngineExtensionManagerinstallFinishedSlot* = proc(extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo)
proc fcQWebEngineExtensionManager_slot_callback_installFinished(slot: int, extension: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineExtensionManagerinstallFinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: extension, owned: false)

  nimfunc[](slotval1)

proc fcQWebEngineExtensionManager_slot_callback_installFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineExtensionManagerinstallFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onInstallFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, slot: QWebEngineExtensionManagerinstallFinishedSlot) =
  var tmp = new QWebEngineExtensionManagerinstallFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineExtensionManager_connect_installFinished(self.h, cast[int](addr tmp[]), fcQWebEngineExtensionManager_slot_callback_installFinished, fcQWebEngineExtensionManager_slot_callback_installFinished_release)

proc unloadFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionManager_unloadFinished(self.h, extension.h)

type QWebEngineExtensionManagerunloadFinishedSlot* = proc(extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo)
proc fcQWebEngineExtensionManager_slot_callback_unloadFinished(slot: int, extension: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineExtensionManagerunloadFinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: extension, owned: false)

  nimfunc[](slotval1)

proc fcQWebEngineExtensionManager_slot_callback_unloadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineExtensionManagerunloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUnloadFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, slot: QWebEngineExtensionManagerunloadFinishedSlot) =
  var tmp = new QWebEngineExtensionManagerunloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineExtensionManager_connect_unloadFinished(self.h, cast[int](addr tmp[]), fcQWebEngineExtensionManager_slot_callback_unloadFinished, fcQWebEngineExtensionManager_slot_callback_unloadFinished_release)

proc uninstallFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo): void =
  fcQWebEngineExtensionManager_uninstallFinished(self.h, extension.h)

type QWebEngineExtensionManageruninstallFinishedSlot* = proc(extension: gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo)
proc fcQWebEngineExtensionManager_slot_callback_uninstallFinished(slot: int, extension: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineExtensionManageruninstallFinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebengineextensioninfo_types.QWebEngineExtensionInfo(h: extension, owned: false)

  nimfunc[](slotval1)

proc fcQWebEngineExtensionManager_slot_callback_uninstallFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineExtensionManageruninstallFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUninstallFinished*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, slot: QWebEngineExtensionManageruninstallFinishedSlot) =
  var tmp = new QWebEngineExtensionManageruninstallFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineExtensionManager_connect_uninstallFinished(self.h, cast[int](addr tmp[]), fcQWebEngineExtensionManager_slot_callback_uninstallFinished, fcQWebEngineExtensionManager_slot_callback_uninstallFinished_release)

proc tr*(_: type gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineExtensionManager_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineExtensionManager_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineExtensionManager_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager): cint =
  fcQWebEngineExtensionManager_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, signal: cstring): cint =
  fcQWebEngineExtensionManager_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineextensionmanager_types.QWebEngineExtensionManager, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineExtensionManager_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebengineextensionmanager_types.QWebEngineExtensionManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineExtensionManager_staticMetaObject())
