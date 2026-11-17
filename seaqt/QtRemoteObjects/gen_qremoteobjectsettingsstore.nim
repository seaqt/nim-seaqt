import ./qtremoteobjects_pkg

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


{.compile("gen_qremoteobjectsettingsstore.cpp", QtRemoteObjectsCFlags).}


import ./gen_qremoteobjectsettingsstore_types
export gen_qremoteobjectsettingsstore_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qremoteobjectnode
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qremoteobjectnode

type cQRemoteObjectSettingsStore*{.exportc: "QRemoteObjectSettingsStore", incompleteStruct.} = object

proc fcQRemoteObjectSettingsStore_metaObject(self: pointer): pointer {.importc: "QRemoteObjectSettingsStore_metaObject".}
proc fcQRemoteObjectSettingsStore_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectSettingsStore_metacast".}
proc fcQRemoteObjectSettingsStore_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectSettingsStore_metacall".}
proc fcQRemoteObjectSettingsStore_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectSettingsStore_tr_s".}
proc fcQRemoteObjectSettingsStore_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.importc: "QRemoteObjectSettingsStore_saveProperties".}
proc fcQRemoteObjectSettingsStore_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.importc: "QRemoteObjectSettingsStore_restoreProperties".}
proc fcQRemoteObjectSettingsStore_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectSettingsStore_tr_s_c".}
proc fcQRemoteObjectSettingsStore_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectSettingsStore_tr_s_c_n".}
proc fcQRemoteObjectSettingsStore_vdata(self: pointer): ptr pointer {.importc: "QRemoteObjectSettingsStore_vdata".}
proc fvdata_cQRemoteObjectSettingsStore(self: pointer): pointer {.importc: "vdata_QRemoteObjectSettingsStore".}

type cQRemoteObjectSettingsStoreVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  saveProperties*: proc(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.cdecl, raises: [], gcsafe.}
  restoreProperties*: proc(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRemoteObjectSettingsStore_virtualbase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectSettingsStore_virtualbase_metaObject".}
proc fcQRemoteObjectSettingsStore_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectSettingsStore_virtualbase_metacast".}
proc fcQRemoteObjectSettingsStore_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectSettingsStore_virtualbase_metacall".}
proc fcQRemoteObjectSettingsStore_virtualbase_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.importc: "QRemoteObjectSettingsStore_virtualbase_saveProperties".}
proc fcQRemoteObjectSettingsStore_virtualbase_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.importc: "QRemoteObjectSettingsStore_virtualbase_restoreProperties".}
proc fcQRemoteObjectSettingsStore_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRemoteObjectSettingsStore_virtualbase_event".}
proc fcQRemoteObjectSettingsStore_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRemoteObjectSettingsStore_virtualbase_eventFilter".}
proc fcQRemoteObjectSettingsStore_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectSettingsStore_virtualbase_timerEvent".}
proc fcQRemoteObjectSettingsStore_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectSettingsStore_virtualbase_childEvent".}
proc fcQRemoteObjectSettingsStore_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectSettingsStore_virtualbase_customEvent".}
proc fcQRemoteObjectSettingsStore_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectSettingsStore_virtualbase_connectNotify".}
proc fcQRemoteObjectSettingsStore_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectSettingsStore_virtualbase_disconnectNotify".}
proc fcQRemoteObjectSettingsStore_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectSettingsStore_protectedbase_sender".}
proc fcQRemoteObjectSettingsStore_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectSettingsStore_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectSettingsStore_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectSettingsStore_protectedbase_receivers".}
proc fcQRemoteObjectSettingsStore_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectSettingsStore_protectedbase_isSignalConnected".}
proc fcQRemoteObjectSettingsStore_new(vtbl: pointer, vdata: csize_t): ptr cQRemoteObjectSettingsStore {.importc: "QRemoteObjectSettingsStore_new".}
proc fcQRemoteObjectSettingsStore_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQRemoteObjectSettingsStore {.importc: "QRemoteObjectSettingsStore_new_parent".}
proc fcQRemoteObjectSettingsStore_staticMetaObject(): pointer {.importc: "QRemoteObjectSettingsStore_staticMetaObject".}

proc metaObject*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectSettingsStore_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, param1: cstring): pointer =
  fcQRemoteObjectSettingsStore_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectSettingsStore_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, s: cstring): string =
  let v_ms = fcQRemoteObjectSettingsStore_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc saveProperties*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void =
  var values_CArray = newSeq[pointer](len(values))
  for i in 0..<len(values):
    values_CArray[i] = values[i].h

  fcQRemoteObjectSettingsStore_saveProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))), struct_seaqt_array(len: csize_t(len(values)), data: if len(values) == 0: nil else: addr(values_CArray[0])))

proc restoreProperties*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQRemoteObjectSettingsStore_restoreProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))))
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectSettingsStore_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectSettingsStore_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRemoteObjectSettingsStoremetaObjectProc* = proc(self: QRemoteObjectSettingsStore): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoremetacastProc* = proc(self: QRemoteObjectSettingsStore, param1: cstring): pointer {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoremetacallProc* = proc(self: QRemoteObjectSettingsStore, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoresavePropertiesProc* = proc(self: QRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void {.raises: [], gcsafe.}
type QRemoteObjectSettingsStorerestorePropertiesProc* = proc(self: QRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoreeventProc* = proc(self: QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoreeventFilterProc* = proc(self: QRemoteObjectSettingsStore, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoretimerEventProc* = proc(self: QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRemoteObjectSettingsStorechildEventProc* = proc(self: QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRemoteObjectSettingsStorecustomEventProc* = proc(self: QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoreconnectNotifyProc* = proc(self: QRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRemoteObjectSettingsStoredisconnectNotifyProc* = proc(self: QRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRemoteObjectSettingsStoreVTable* {.inheritable, pure.} = object
  vtbl: cQRemoteObjectSettingsStoreVTable
  metaObject*: QRemoteObjectSettingsStoremetaObjectProc
  metacast*: QRemoteObjectSettingsStoremetacastProc
  metacall*: QRemoteObjectSettingsStoremetacallProc
  saveProperties*: QRemoteObjectSettingsStoresavePropertiesProc
  restoreProperties*: QRemoteObjectSettingsStorerestorePropertiesProc
  event*: QRemoteObjectSettingsStoreeventProc
  eventFilter*: QRemoteObjectSettingsStoreeventFilterProc
  timerEvent*: QRemoteObjectSettingsStoretimerEventProc
  childEvent*: QRemoteObjectSettingsStorechildEventProc
  customEvent*: QRemoteObjectSettingsStorecustomEventProc
  connectNotify*: QRemoteObjectSettingsStoreconnectNotifyProc
  disconnectNotify*: QRemoteObjectSettingsStoredisconnectNotifyProc

proc QRemoteObjectSettingsStoremetaObject*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectSettingsStore_virtualbase_metaObject(self.h), owned: false)

proc QRemoteObjectSettingsStoremetacast*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, param1: cstring): pointer =
  fcQRemoteObjectSettingsStore_virtualbase_metacast(self.h, param1)

proc QRemoteObjectSettingsStoremetacall*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectSettingsStore_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRemoteObjectSettingsStoresaveProperties*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void =
  var values_CArray = newSeq[pointer](len(values))
  for i in 0..<len(values):
    values_CArray[i] = values[i].h

  fcQRemoteObjectSettingsStore_virtualbase_saveProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))), struct_seaqt_array(len: csize_t(len(values)), data: if len(values) == 0: nil else: addr(values_CArray[0])))

proc QRemoteObjectSettingsStorerestoreProperties*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQRemoteObjectSettingsStore_virtualbase_restoreProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))))
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QRemoteObjectSettingsStoreevent*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectSettingsStore_virtualbase_event(self.h, event.h)

proc QRemoteObjectSettingsStoreeventFilter*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectSettingsStore_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRemoteObjectSettingsStoretimerEvent*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRemoteObjectSettingsStore_virtualbase_timerEvent(self.h, event.h)

proc QRemoteObjectSettingsStorechildEvent*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRemoteObjectSettingsStore_virtualbase_childEvent(self.h, event.h)

proc QRemoteObjectSettingsStorecustomEvent*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, event: gen_qcoreevent_types.QEvent): void =
  fcQRemoteObjectSettingsStore_virtualbase_customEvent(self.h, event.h)

proc QRemoteObjectSettingsStoreconnectNotify*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectSettingsStore_virtualbase_connectNotify(self.h, signal.h)

proc QRemoteObjectSettingsStoredisconnectNotify*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectSettingsStore_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRemoteObjectSettingsStore_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectSettingsStore_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRemoteObjectSettingsStore_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectSettingsStore_vtable_callback_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var vvalues_ma = values
  var vvaluesx_ret = newSeq[gen_qvariant_types.QVariant](int(vvalues_ma.len))
  let vvalues_outCast = cast[ptr UncheckedArray[pointer]](vvalues_ma.data)
  for i in 0 ..< vvalues_ma.len:
    vvaluesx_ret[i] = gen_qvariant_types.QVariant(h: vvalues_outCast[i], owned: true)
  c_free(vvalues_ma.data)
  let slotval3 = vvaluesx_ret
  vtbl[].saveProperties(self, slotval1, slotval2, slotval3)

proc fcQRemoteObjectSettingsStore_vtable_callback_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var virtualReturn = vtbl[].restoreProperties(self, slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQRemoteObjectSettingsStore_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRemoteObjectSettingsStore_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectSettingsStore_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRemoteObjectSettingsStore_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRemoteObjectSettingsStore_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRemoteObjectSettingsStore_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRemoteObjectSettingsStore_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
  let self = QRemoteObjectSettingsStore(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRemoteObjectSettingsStore* {.inheritable.} = ref object of QRemoteObjectSettingsStore
  vtbl*: cQRemoteObjectSettingsStoreVTable

method metaObject*(self: VirtualQRemoteObjectSettingsStore): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRemoteObjectSettingsStoremetaObject(self[])
method metacast*(self: VirtualQRemoteObjectSettingsStore, param1: cstring): pointer {.base.} =
  QRemoteObjectSettingsStoremetacast(self[], param1)
method metacall*(self: VirtualQRemoteObjectSettingsStore, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRemoteObjectSettingsStoremetacall(self[], param1, param2, param3)
method saveProperties*(self: VirtualQRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void {.base.} =
  QRemoteObjectSettingsStoresaveProperties(self[], repName, repSig, values)
method restoreProperties*(self: VirtualQRemoteObjectSettingsStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] {.base.} =
  QRemoteObjectSettingsStorerestoreProperties(self[], repName, repSig)
method event*(self: VirtualQRemoteObjectSettingsStore, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectSettingsStoreevent(self[], event)
method eventFilter*(self: VirtualQRemoteObjectSettingsStore, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectSettingsStoreeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRemoteObjectSettingsStore, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRemoteObjectSettingsStoretimerEvent(self[], event)
method childEvent*(self: VirtualQRemoteObjectSettingsStore, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRemoteObjectSettingsStorechildEvent(self[], event)
method customEvent*(self: VirtualQRemoteObjectSettingsStore, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRemoteObjectSettingsStorecustomEvent(self[], event)
method connectNotify*(self: VirtualQRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectSettingsStoreconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectSettingsStoredisconnectNotify(self[], signal)

proc fcQRemoteObjectSettingsStore_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectSettingsStore_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRemoteObjectSettingsStore_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectSettingsStore_method_callback_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var vvalues_ma = values
  var vvaluesx_ret = newSeq[gen_qvariant_types.QVariant](int(vvalues_ma.len))
  let vvalues_outCast = cast[ptr UncheckedArray[pointer]](vvalues_ma.data)
  for i in 0 ..< vvalues_ma.len:
    vvaluesx_ret[i] = gen_qvariant_types.QVariant(h: vvalues_outCast[i], owned: true)
  c_free(vvalues_ma.data)
  let slotval3 = vvaluesx_ret
  inst.saveProperties(slotval1, slotval2, slotval3)

proc fcQRemoteObjectSettingsStore_method_callback_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var virtualReturn = inst.restoreProperties(slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQRemoteObjectSettingsStore_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRemoteObjectSettingsStore_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectSettingsStore_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRemoteObjectSettingsStore_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRemoteObjectSettingsStore_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRemoteObjectSettingsStore_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRemoteObjectSettingsStore_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectSettingsStore](fcQRemoteObjectSettingsStore_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectSettingsStore_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore): cint =
  fcQRemoteObjectSettingsStore_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, signal: cstring): cint =
  fcQRemoteObjectSettingsStore_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectSettingsStore_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore,
    vtbl: ref QRemoteObjectSettingsStoreVTable = nil): gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore =
  let vtbl = if vtbl == nil: new QRemoteObjectSettingsStoreVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectSettingsStore_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectSettingsStore_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectSettingsStore_vtable_callback_metacall
  if not isNil(vtbl[].saveProperties):
    vtbl[].vtbl.saveProperties = fcQRemoteObjectSettingsStore_vtable_callback_saveProperties
  if not isNil(vtbl[].restoreProperties):
    vtbl[].vtbl.restoreProperties = fcQRemoteObjectSettingsStore_vtable_callback_restoreProperties
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectSettingsStore_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectSettingsStore_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectSettingsStore_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectSettingsStore_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectSettingsStore_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectSettingsStore_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectSettingsStore_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore(h: fcQRemoteObjectSettingsStore_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQRemoteObjectSettingsStore_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectSettingsStoreVTable = nil): gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore =
  let vtbl = if vtbl == nil: new QRemoteObjectSettingsStoreVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectSettingsStoreVTable](fcQRemoteObjectSettingsStore_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectSettingsStore_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectSettingsStore_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectSettingsStore_vtable_callback_metacall
  if not isNil(vtbl[].saveProperties):
    vtbl[].vtbl.saveProperties = fcQRemoteObjectSettingsStore_vtable_callback_saveProperties
  if not isNil(vtbl[].restoreProperties):
    vtbl[].vtbl.restoreProperties = fcQRemoteObjectSettingsStore_vtable_callback_restoreProperties
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectSettingsStore_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectSettingsStore_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectSettingsStore_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectSettingsStore_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectSettingsStore_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectSettingsStore_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectSettingsStore_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore(h: fcQRemoteObjectSettingsStore_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQRemoteObjectSettingsStore_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRemoteObjectSettingsStore_mvtbl = cQRemoteObjectSettingsStoreVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRemoteObjectSettingsStore()[])](self.fcQRemoteObjectSettingsStore_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRemoteObjectSettingsStore_method_callback_metaObject,
  metacast: fcQRemoteObjectSettingsStore_method_callback_metacast,
  metacall: fcQRemoteObjectSettingsStore_method_callback_metacall,
  saveProperties: fcQRemoteObjectSettingsStore_method_callback_saveProperties,
  restoreProperties: fcQRemoteObjectSettingsStore_method_callback_restoreProperties,
  event: fcQRemoteObjectSettingsStore_method_callback_event,
  eventFilter: fcQRemoteObjectSettingsStore_method_callback_eventFilter,
  timerEvent: fcQRemoteObjectSettingsStore_method_callback_timerEvent,
  childEvent: fcQRemoteObjectSettingsStore_method_callback_childEvent,
  customEvent: fcQRemoteObjectSettingsStore_method_callback_customEvent,
  connectNotify: fcQRemoteObjectSettingsStore_method_callback_connectNotify,
  disconnectNotify: fcQRemoteObjectSettingsStore_method_callback_disconnectNotify,
)
proc create*(T: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore,
    inst: VirtualQRemoteObjectSettingsStore) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectSettingsStore_new(addr(cQRemoteObjectSettingsStore_mvtbl), csize_t(sizeof(pointer)))
  fcQRemoteObjectSettingsStore_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectSettingsStore) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectSettingsStore_new2(addr(cQRemoteObjectSettingsStore_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQRemoteObjectSettingsStore_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qremoteobjectsettingsstore_types.QRemoteObjectSettingsStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectSettingsStore_staticMetaObject())
