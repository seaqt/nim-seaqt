import ./qtuitools_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_quiloader.cpp", QtUiToolsCFlags).}


import ./gen_quiloader_types
export gen_quiloader_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdir_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qactiongroup_types,
  ../QtWidgets/gen_qlayout_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qdir_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaction_types,
  gen_qactiongroup_types,
  gen_qlayout_types,
  gen_qwidget_types

type cQUiLoader*{.exportc: "QUiLoader", incompleteStruct.} = object

proc fcQUiLoader_metaObject(self: pointer): pointer {.importc: "QUiLoader_metaObject".}
proc fcQUiLoader_metacast(self: pointer, param1: cstring): pointer {.importc: "QUiLoader_metacast".}
proc fcQUiLoader_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUiLoader_metacall".}
proc fcQUiLoader_tr(s: cstring): struct_seaqt_string {.importc: "QUiLoader_tr".}
proc fcQUiLoader_pluginPaths(self: pointer): struct_seaqt_array {.importc: "QUiLoader_pluginPaths".}
proc fcQUiLoader_clearPluginPaths(self: pointer): void {.importc: "QUiLoader_clearPluginPaths".}
proc fcQUiLoader_addPluginPath(self: pointer, path: struct_seaqt_string): void {.importc: "QUiLoader_addPluginPath".}
proc fcQUiLoader_load(self: pointer, device: pointer): pointer {.importc: "QUiLoader_load".}
proc fcQUiLoader_availableWidgets(self: pointer): struct_seaqt_array {.importc: "QUiLoader_availableWidgets".}
proc fcQUiLoader_availableLayouts(self: pointer): struct_seaqt_array {.importc: "QUiLoader_availableLayouts".}
proc fcQUiLoader_createWidget(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_createWidget".}
proc fcQUiLoader_createLayout(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_createLayout".}
proc fcQUiLoader_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_createActionGroup".}
proc fcQUiLoader_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_createAction".}
proc fcQUiLoader_setWorkingDirectory(self: pointer, dir: pointer): void {.importc: "QUiLoader_setWorkingDirectory".}
proc fcQUiLoader_workingDirectory(self: pointer): pointer {.importc: "QUiLoader_workingDirectory".}
proc fcQUiLoader_setLanguageChangeEnabled(self: pointer, enabled: bool): void {.importc: "QUiLoader_setLanguageChangeEnabled".}
proc fcQUiLoader_isLanguageChangeEnabled(self: pointer): bool {.importc: "QUiLoader_isLanguageChangeEnabled".}
proc fcQUiLoader_setTranslationEnabled(self: pointer, enabled: bool): void {.importc: "QUiLoader_setTranslationEnabled".}
proc fcQUiLoader_isTranslationEnabled(self: pointer): bool {.importc: "QUiLoader_isTranslationEnabled".}
proc fcQUiLoader_errorString(self: pointer): struct_seaqt_string {.importc: "QUiLoader_errorString".}
proc fcQUiLoader_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QUiLoader_tr2".}
proc fcQUiLoader_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QUiLoader_tr3".}
proc fcQUiLoader_load2(self: pointer, device: pointer, parentWidget: pointer): pointer {.importc: "QUiLoader_load2".}
proc fcQUiLoader_vdata(self: pointer): ptr pointer {.importc: "QUiLoader_vdata".}
proc fvdata_cQUiLoader(self: pointer): pointer {.importc: "vdata_QUiLoader".}

type cQUiLoaderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createWidget*: proc(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createLayout*: proc(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createActionGroup*: proc(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  createAction*: proc(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQUiLoader_virtualbase_metaObject(self: pointer): pointer {.importc: "QUiLoader_virtualbase_metaObject".}
proc fcQUiLoader_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QUiLoader_virtualbase_metacast".}
proc fcQUiLoader_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUiLoader_virtualbase_metacall".}
proc fcQUiLoader_virtualbase_createWidget(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_virtualbase_createWidget".}
proc fcQUiLoader_virtualbase_createLayout(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_virtualbase_createLayout".}
proc fcQUiLoader_virtualbase_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_virtualbase_createActionGroup".}
proc fcQUiLoader_virtualbase_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.importc: "QUiLoader_virtualbase_createAction".}
proc fcQUiLoader_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QUiLoader_virtualbase_event".}
proc fcQUiLoader_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QUiLoader_virtualbase_eventFilter".}
proc fcQUiLoader_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QUiLoader_virtualbase_timerEvent".}
proc fcQUiLoader_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QUiLoader_virtualbase_childEvent".}
proc fcQUiLoader_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QUiLoader_virtualbase_customEvent".}
proc fcQUiLoader_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QUiLoader_virtualbase_connectNotify".}
proc fcQUiLoader_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QUiLoader_virtualbase_disconnectNotify".}
proc fcQUiLoader_protectedbase_sender(self: pointer): pointer {.importc: "QUiLoader_protectedbase_sender".}
proc fcQUiLoader_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QUiLoader_protectedbase_senderSignalIndex".}
proc fcQUiLoader_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QUiLoader_protectedbase_receivers".}
proc fcQUiLoader_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QUiLoader_protectedbase_isSignalConnected".}
proc fcQUiLoader_new(vtbl: pointer, vdata: csize_t): ptr cQUiLoader {.importc: "QUiLoader_new".}
proc fcQUiLoader_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQUiLoader {.importc: "QUiLoader_new2".}
proc fcQUiLoader_staticMetaObject(): pointer {.importc: "QUiLoader_staticMetaObject".}
proc fcQUiLoader_delete(self: pointer) {.importc: "QUiLoader_delete".}

proc metaObject*(self: gen_quiloader_types.QUiLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUiLoader_metaObject(self.h))

proc metacast*(self: gen_quiloader_types.QUiLoader, param1: cstring): pointer =
  fcQUiLoader_metacast(self.h, param1)

proc metacall*(self: gen_quiloader_types.QUiLoader, param1: cint, param2: cint, param3: pointer): cint =
  fcQUiLoader_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_quiloader_types.QUiLoader, s: cstring): string =
  let v_ms = fcQUiLoader_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pluginPaths*(self: gen_quiloader_types.QUiLoader): seq[string] =
  var v_ma = fcQUiLoader_pluginPaths(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc clearPluginPaths*(self: gen_quiloader_types.QUiLoader): void =
  fcQUiLoader_clearPluginPaths(self.h)

proc addPluginPath*(self: gen_quiloader_types.QUiLoader, path: openArray[char]): void =
  fcQUiLoader_addPluginPath(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc load*(self: gen_quiloader_types.QUiLoader, device: gen_qiodevice_types.QIODevice): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQUiLoader_load(self.h, device.h))

proc availableWidgets*(self: gen_quiloader_types.QUiLoader): seq[string] =
  var v_ma = fcQUiLoader_availableWidgets(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc availableLayouts*(self: gen_quiloader_types.QUiLoader): seq[string] =
  var v_ma = fcQUiLoader_availableLayouts(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc createWidget*(self: gen_quiloader_types.QUiLoader, className: openArray[char], parent: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQUiLoader_createWidget(self.h, struct_seaqt_string(data: if len(className) > 0: addr className[0] else: nil, len: csize_t(len(className))), parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc createLayout*(self: gen_quiloader_types.QUiLoader, className: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQUiLoader_createLayout(self.h, struct_seaqt_string(data: if len(className) > 0: addr className[0] else: nil, len: csize_t(len(className))), parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc createActionGroup*(self: gen_quiloader_types.QUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQUiLoader_createActionGroup(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc createAction*(self: gen_quiloader_types.QUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUiLoader_createAction(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc setWorkingDirectory*(self: gen_quiloader_types.QUiLoader, dir: gen_qdir_types.QDir): void =
  fcQUiLoader_setWorkingDirectory(self.h, dir.h)

proc workingDirectory*(self: gen_quiloader_types.QUiLoader): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQUiLoader_workingDirectory(self.h))

proc setLanguageChangeEnabled*(self: gen_quiloader_types.QUiLoader, enabled: bool): void =
  fcQUiLoader_setLanguageChangeEnabled(self.h, enabled)

proc isLanguageChangeEnabled*(self: gen_quiloader_types.QUiLoader): bool =
  fcQUiLoader_isLanguageChangeEnabled(self.h)

proc setTranslationEnabled*(self: gen_quiloader_types.QUiLoader, enabled: bool): void =
  fcQUiLoader_setTranslationEnabled(self.h, enabled)

proc isTranslationEnabled*(self: gen_quiloader_types.QUiLoader): bool =
  fcQUiLoader_isTranslationEnabled(self.h)

proc errorString*(self: gen_quiloader_types.QUiLoader): string =
  let v_ms = fcQUiLoader_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_quiloader_types.QUiLoader, s: cstring, c: cstring): string =
  let v_ms = fcQUiLoader_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_quiloader_types.QUiLoader, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUiLoader_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_quiloader_types.QUiLoader, device: gen_qiodevice_types.QIODevice, parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQUiLoader_load2(self.h, device.h, parentWidget.h))

type QUiLoadermetaObjectProc* = proc(self: QUiLoader): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QUiLoadermetacastProc* = proc(self: QUiLoader, param1: cstring): pointer {.raises: [], gcsafe.}
type QUiLoadermetacallProc* = proc(self: QUiLoader, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QUiLoadercreateWidgetProc* = proc(self: QUiLoader, className: openArray[char], parent: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QUiLoadercreateLayoutProc* = proc(self: QUiLoader, className: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QUiLoadercreateActionGroupProc* = proc(self: QUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup {.raises: [], gcsafe.}
type QUiLoadercreateActionProc* = proc(self: QUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction {.raises: [], gcsafe.}
type QUiLoadereventProc* = proc(self: QUiLoader, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUiLoadereventFilterProc* = proc(self: QUiLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUiLoadertimerEventProc* = proc(self: QUiLoader, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QUiLoaderchildEventProc* = proc(self: QUiLoader, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QUiLoadercustomEventProc* = proc(self: QUiLoader, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUiLoaderconnectNotifyProc* = proc(self: QUiLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUiLoaderdisconnectNotifyProc* = proc(self: QUiLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUiLoaderVTable* = object
  vtbl: cQUiLoaderVTable
  metaObject*: QUiLoadermetaObjectProc
  metacast*: QUiLoadermetacastProc
  metacall*: QUiLoadermetacallProc
  createWidget*: QUiLoadercreateWidgetProc
  createLayout*: QUiLoadercreateLayoutProc
  createActionGroup*: QUiLoadercreateActionGroupProc
  createAction*: QUiLoadercreateActionProc
  event*: QUiLoadereventProc
  eventFilter*: QUiLoadereventFilterProc
  timerEvent*: QUiLoadertimerEventProc
  childEvent*: QUiLoaderchildEventProc
  customEvent*: QUiLoadercustomEventProc
  connectNotify*: QUiLoaderconnectNotifyProc
  disconnectNotify*: QUiLoaderdisconnectNotifyProc

proc QUiLoadermetaObject*(self: gen_quiloader_types.QUiLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUiLoader_virtualbase_metaObject(self.h))

proc QUiLoadermetacast*(self: gen_quiloader_types.QUiLoader, param1: cstring): pointer =
  fcQUiLoader_virtualbase_metacast(self.h, param1)

proc QUiLoadermetacall*(self: gen_quiloader_types.QUiLoader, param1: cint, param2: cint, param3: pointer): cint =
  fcQUiLoader_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QUiLoadercreateWidget*(self: gen_quiloader_types.QUiLoader, className: openArray[char], parent: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQUiLoader_virtualbase_createWidget(self.h, struct_seaqt_string(data: if len(className) > 0: addr className[0] else: nil, len: csize_t(len(className))), parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QUiLoadercreateLayout*(self: gen_quiloader_types.QUiLoader, className: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQUiLoader_virtualbase_createLayout(self.h, struct_seaqt_string(data: if len(className) > 0: addr className[0] else: nil, len: csize_t(len(className))), parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QUiLoadercreateActionGroup*(self: gen_quiloader_types.QUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQUiLoader_virtualbase_createActionGroup(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QUiLoadercreateAction*(self: gen_quiloader_types.QUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUiLoader_virtualbase_createAction(self.h, parent.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QUiLoaderevent*(self: gen_quiloader_types.QUiLoader, event: gen_qcoreevent_types.QEvent): bool =
  fcQUiLoader_virtualbase_event(self.h, event.h)

proc QUiLoadereventFilter*(self: gen_quiloader_types.QUiLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQUiLoader_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QUiLoadertimerEvent*(self: gen_quiloader_types.QUiLoader, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQUiLoader_virtualbase_timerEvent(self.h, event.h)

proc QUiLoaderchildEvent*(self: gen_quiloader_types.QUiLoader, event: gen_qcoreevent_types.QChildEvent): void =
  fcQUiLoader_virtualbase_childEvent(self.h, event.h)

proc QUiLoadercustomEvent*(self: gen_quiloader_types.QUiLoader, event: gen_qcoreevent_types.QEvent): void =
  fcQUiLoader_virtualbase_customEvent(self.h, event.h)

proc QUiLoaderconnectNotify*(self: gen_quiloader_types.QUiLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUiLoader_virtualbase_connectNotify(self.h, signal.h)

proc QUiLoaderdisconnectNotify*(self: gen_quiloader_types.QUiLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUiLoader_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQUiLoader_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQUiLoader_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQUiLoader_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQUiLoader_vtable_callback_createWidget(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let vclassName_ms = className
  let vclassNamex_ret = string.fromBytes(vclassName_ms)
  c_free(vclassName_ms.data)
  let slotval1 = vclassNamex_ret
  let slotval2 = gen_qwidget_types.QWidget(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = vtbl[].createWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQUiLoader_vtable_callback_createLayout(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let vclassName_ms = className
  let vclassNamex_ret = string.fromBytes(vclassName_ms)
  c_free(vclassName_ms.data)
  let slotval1 = vclassNamex_ret
  let slotval2 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = vtbl[].createLayout(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQUiLoader_vtable_callback_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = vtbl[].createActionGroup(self, slotval1, slotval2)
  virtualReturn.h

proc fcQUiLoader_vtable_callback_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = vtbl[].createAction(self, slotval1, slotval2)
  virtualReturn.h

proc fcQUiLoader_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQUiLoader_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQUiLoader_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQUiLoader_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQUiLoader_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQUiLoader_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQUiLoader_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUiLoaderVTable](fcQUiLoader_vdata(self)[])
  let self = QUiLoader(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQUiLoader* {.inheritable.} = ref object of QUiLoader
  vtbl*: cQUiLoaderVTable

method metaObject*(self: VirtualQUiLoader): gen_qobjectdefs_types.QMetaObject {.base.} =
  QUiLoadermetaObject(self[])
method metacast*(self: VirtualQUiLoader, param1: cstring): pointer {.base.} =
  QUiLoadermetacast(self[], param1)
method metacall*(self: VirtualQUiLoader, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QUiLoadermetacall(self[], param1, param2, param3)
method createWidget*(self: VirtualQUiLoader, className: openArray[char], parent: gen_qwidget_types.QWidget, name: openArray[char]): gen_qwidget_types.QWidget {.base.} =
  QUiLoadercreateWidget(self[], className, parent, name)
method createLayout*(self: VirtualQUiLoader, className: openArray[char], parent: gen_qobject_types.QObject, name: openArray[char]): gen_qlayout_types.QLayout {.base.} =
  QUiLoadercreateLayout(self[], className, parent, name)
method createActionGroup*(self: VirtualQUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qactiongroup_types.QActionGroup {.base.} =
  QUiLoadercreateActionGroup(self[], parent, name)
method createAction*(self: VirtualQUiLoader, parent: gen_qobject_types.QObject, name: openArray[char]): gen_qaction_types.QAction {.base.} =
  QUiLoadercreateAction(self[], parent, name)
method event*(self: VirtualQUiLoader, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUiLoaderevent(self[], event)
method eventFilter*(self: VirtualQUiLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUiLoadereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQUiLoader, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QUiLoadertimerEvent(self[], event)
method childEvent*(self: VirtualQUiLoader, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QUiLoaderchildEvent(self[], event)
method customEvent*(self: VirtualQUiLoader, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QUiLoadercustomEvent(self[], event)
method connectNotify*(self: VirtualQUiLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUiLoaderconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQUiLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUiLoaderdisconnectNotify(self[], signal)

proc fcQUiLoader_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQUiLoader_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQUiLoader_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQUiLoader_method_callback_createWidget(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let vclassName_ms = className
  let vclassNamex_ret = string.fromBytes(vclassName_ms)
  c_free(vclassName_ms.data)
  let slotval1 = vclassNamex_ret
  let slotval2 = gen_qwidget_types.QWidget(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = inst.createWidget(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQUiLoader_method_callback_createLayout(self: pointer, className: struct_seaqt_string, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let vclassName_ms = className
  let vclassNamex_ret = string.fromBytes(vclassName_ms)
  c_free(vclassName_ms.data)
  let slotval1 = vclassNamex_ret
  let slotval2 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval3 = vnamex_ret
  var virtualReturn = inst.createLayout(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQUiLoader_method_callback_createActionGroup(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = inst.createActionGroup(slotval1, slotval2)
  virtualReturn.h

proc fcQUiLoader_method_callback_createAction(self: pointer, parent: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  var virtualReturn = inst.createAction(slotval1, slotval2)
  virtualReturn.h

proc fcQUiLoader_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQUiLoader_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQUiLoader_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQUiLoader_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQUiLoader_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQUiLoader_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQUiLoader_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUiLoader](fcQUiLoader_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_quiloader_types.QUiLoader): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQUiLoader_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_quiloader_types.QUiLoader): cint =
  fcQUiLoader_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_quiloader_types.QUiLoader, signal: cstring): cint =
  fcQUiLoader_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_quiloader_types.QUiLoader, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQUiLoader_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_quiloader_types.QUiLoader,
    vtbl: ref QUiLoaderVTable = nil): gen_quiloader_types.QUiLoader =
  let vtbl = if vtbl == nil: new QUiLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUiLoaderVTable](fcQUiLoader_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQUiLoader_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQUiLoader_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQUiLoader_vtable_callback_metacall
  if not isNil(vtbl[].createWidget):
    vtbl[].vtbl.createWidget = fcQUiLoader_vtable_callback_createWidget
  if not isNil(vtbl[].createLayout):
    vtbl[].vtbl.createLayout = fcQUiLoader_vtable_callback_createLayout
  if not isNil(vtbl[].createActionGroup):
    vtbl[].vtbl.createActionGroup = fcQUiLoader_vtable_callback_createActionGroup
  if not isNil(vtbl[].createAction):
    vtbl[].vtbl.createAction = fcQUiLoader_vtable_callback_createAction
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQUiLoader_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQUiLoader_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQUiLoader_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQUiLoader_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQUiLoader_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQUiLoader_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQUiLoader_vtable_callback_disconnectNotify
  let tmp = gen_quiloader_types.QUiLoader(h: fcQUiLoader_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQUiLoader_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_quiloader_types.QUiLoader,
    parent: gen_qobject_types.QObject,
    vtbl: ref QUiLoaderVTable = nil): gen_quiloader_types.QUiLoader =
  let vtbl = if vtbl == nil: new QUiLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUiLoaderVTable](fcQUiLoader_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQUiLoader_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQUiLoader_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQUiLoader_vtable_callback_metacall
  if not isNil(vtbl[].createWidget):
    vtbl[].vtbl.createWidget = fcQUiLoader_vtable_callback_createWidget
  if not isNil(vtbl[].createLayout):
    vtbl[].vtbl.createLayout = fcQUiLoader_vtable_callback_createLayout
  if not isNil(vtbl[].createActionGroup):
    vtbl[].vtbl.createActionGroup = fcQUiLoader_vtable_callback_createActionGroup
  if not isNil(vtbl[].createAction):
    vtbl[].vtbl.createAction = fcQUiLoader_vtable_callback_createAction
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQUiLoader_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQUiLoader_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQUiLoader_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQUiLoader_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQUiLoader_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQUiLoader_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQUiLoader_vtable_callback_disconnectNotify
  let tmp = gen_quiloader_types.QUiLoader(h: fcQUiLoader_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQUiLoader_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQUiLoader_mvtbl = cQUiLoaderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQUiLoader()[])](self.fcQUiLoader_vdata()[])
    inst[].h = nil,

  metaObject: fcQUiLoader_method_callback_metaObject,
  metacast: fcQUiLoader_method_callback_metacast,
  metacall: fcQUiLoader_method_callback_metacall,
  createWidget: fcQUiLoader_method_callback_createWidget,
  createLayout: fcQUiLoader_method_callback_createLayout,
  createActionGroup: fcQUiLoader_method_callback_createActionGroup,
  createAction: fcQUiLoader_method_callback_createAction,
  event: fcQUiLoader_method_callback_event,
  eventFilter: fcQUiLoader_method_callback_eventFilter,
  timerEvent: fcQUiLoader_method_callback_timerEvent,
  childEvent: fcQUiLoader_method_callback_childEvent,
  customEvent: fcQUiLoader_method_callback_customEvent,
  connectNotify: fcQUiLoader_method_callback_connectNotify,
  disconnectNotify: fcQUiLoader_method_callback_disconnectNotify,
)
proc create*(T: type gen_quiloader_types.QUiLoader,
    inst: VirtualQUiLoader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUiLoader_new(addr(cQUiLoader_mvtbl), csize_t(sizeof(pointer)))
  fcQUiLoader_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_quiloader_types.QUiLoader,
    parent: gen_qobject_types.QObject,
    inst: VirtualQUiLoader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUiLoader_new2(addr(cQUiLoader_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQUiLoader_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_quiloader_types.QUiLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUiLoader_staticMetaObject())
proc delete*(self: gen_quiloader_types.QUiLoader) =
  fcQUiLoader_delete(self.h)
