import ./qtgui_pkg

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


{.compile("gen_qpictureformatplugin.cpp", QtGuiCFlags).}


import ./gen_qpictureformatplugin_types
export gen_qpictureformatplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qpicture_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpicture_types

type cQPictureFormatPlugin*{.exportc: "QPictureFormatPlugin", incompleteStruct.} = object

proc fcQPictureFormatPlugin_metaObject(self: pointer): pointer {.importc: "QPictureFormatPlugin_metaObject".}
proc fcQPictureFormatPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QPictureFormatPlugin_metacast".}
proc fcQPictureFormatPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPictureFormatPlugin_metacall".}
proc fcQPictureFormatPlugin_tr(s: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_tr".}
proc fcQPictureFormatPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_trUtf8".}
proc fcQPictureFormatPlugin_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.importc: "QPictureFormatPlugin_loadPicture".}
proc fcQPictureFormatPlugin_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.importc: "QPictureFormatPlugin_savePicture".}
proc fcQPictureFormatPlugin_installIOHandler(self: pointer, format: struct_miqt_string): bool {.importc: "QPictureFormatPlugin_installIOHandler".}
proc fcQPictureFormatPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_tr2".}
proc fcQPictureFormatPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPictureFormatPlugin_tr3".}
proc fcQPictureFormatPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_trUtf82".}
proc fcQPictureFormatPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPictureFormatPlugin_trUtf83".}
proc fcQPictureFormatPlugin_vtbl(self: pointer): pointer {.importc: "QPictureFormatPlugin_vtbl".}
proc fcQPictureFormatPlugin_vdata(self: pointer): pointer {.importc: "QPictureFormatPlugin_vdata".}
type cQPictureFormatPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  loadPicture*: proc(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl, raises: [], gcsafe.}
  savePicture*: proc(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl, raises: [], gcsafe.}
  installIOHandler*: proc(self: pointer, format: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPictureFormatPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QPictureFormatPlugin_virtualbase_metaObject".}
proc fcQPictureFormatPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPictureFormatPlugin_virtualbase_metacast".}
proc fcQPictureFormatPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPictureFormatPlugin_virtualbase_metacall".}
proc fcQPictureFormatPlugin_virtualbase_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.importc: "QPictureFormatPlugin_virtualbase_loadPicture".}
proc fcQPictureFormatPlugin_virtualbase_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.importc: "QPictureFormatPlugin_virtualbase_savePicture".}
proc fcQPictureFormatPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPictureFormatPlugin_virtualbase_event".}
proc fcQPictureFormatPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPictureFormatPlugin_virtualbase_eventFilter".}
proc fcQPictureFormatPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPictureFormatPlugin_virtualbase_timerEvent".}
proc fcQPictureFormatPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPictureFormatPlugin_virtualbase_childEvent".}
proc fcQPictureFormatPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPictureFormatPlugin_virtualbase_customEvent".}
proc fcQPictureFormatPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPictureFormatPlugin_virtualbase_connectNotify".}
proc fcQPictureFormatPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPictureFormatPlugin_virtualbase_disconnectNotify".}
proc fcQPictureFormatPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QPictureFormatPlugin_protectedbase_sender".}
proc fcQPictureFormatPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPictureFormatPlugin_protectedbase_senderSignalIndex".}
proc fcQPictureFormatPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPictureFormatPlugin_protectedbase_receivers".}
proc fcQPictureFormatPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPictureFormatPlugin_protectedbase_isSignalConnected".}
proc fcQPictureFormatPlugin_new(vtbl, vdata: pointer): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new".}
proc fcQPictureFormatPlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new2".}
proc fcQPictureFormatPlugin_staticMetaObject(): pointer {.importc: "QPictureFormatPlugin_staticMetaObject".}

proc metaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cstring): pointer =
  fcQPictureFormatPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQPictureFormatPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring): string =
  let v_ms = fcQPictureFormatPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring): string =
  let v_ms = fcQPictureFormatPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc loadPicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_loadPicture(self.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), pic.h)

proc savePicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_savePicture(self.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), pic.h)

proc installIOHandler*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: openArray[char]): bool =
  fcQPictureFormatPlugin_installIOHandler(self.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))

proc tr*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQPictureFormatPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPictureFormatPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQPictureFormatPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPictureFormatPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPictureFormatPluginmetaObjectProc* = proc(self: QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPictureFormatPluginmetacastProc* = proc(self: QPictureFormatPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QPictureFormatPluginmetacallProc* = proc(self: QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPictureFormatPluginloadPictureProc* = proc(self: QPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool {.raises: [], gcsafe.}
type QPictureFormatPluginsavePictureProc* = proc(self: QPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool {.raises: [], gcsafe.}
type QPictureFormatPlugininstallIOHandlerProc* = proc(self: QPictureFormatPlugin, format: openArray[char]): bool {.raises: [], gcsafe.}
type QPictureFormatPlugineventProc* = proc(self: QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPictureFormatPlugineventFilterProc* = proc(self: QPictureFormatPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPictureFormatPlugintimerEventProc* = proc(self: QPictureFormatPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPictureFormatPluginchildEventProc* = proc(self: QPictureFormatPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPictureFormatPlugincustomEventProc* = proc(self: QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPictureFormatPluginconnectNotifyProc* = proc(self: QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPictureFormatPlugindisconnectNotifyProc* = proc(self: QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPictureFormatPluginVTable* {.inheritable, pure.} = object
  vtbl: cQPictureFormatPluginVTable
  metaObject*: QPictureFormatPluginmetaObjectProc
  metacast*: QPictureFormatPluginmetacastProc
  metacall*: QPictureFormatPluginmetacallProc
  loadPicture*: QPictureFormatPluginloadPictureProc
  savePicture*: QPictureFormatPluginsavePictureProc
  installIOHandler*: QPictureFormatPlugininstallIOHandlerProc
  event*: QPictureFormatPlugineventProc
  eventFilter*: QPictureFormatPlugineventFilterProc
  timerEvent*: QPictureFormatPlugintimerEventProc
  childEvent*: QPictureFormatPluginchildEventProc
  customEvent*: QPictureFormatPlugincustomEventProc
  connectNotify*: QPictureFormatPluginconnectNotifyProc
  disconnectNotify*: QPictureFormatPlugindisconnectNotifyProc
proc QPictureFormatPluginmetaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_virtualbase_metaObject(self.h), owned: false)

proc cQPictureFormatPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPictureFormatPluginmetacast*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cstring): pointer =
  fcQPictureFormatPlugin_virtualbase_metacast(self.h, param1)

proc cQPictureFormatPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPictureFormatPluginmetacall*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQPictureFormatPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPictureFormatPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPictureFormatPluginloadPicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_virtualbase_loadPicture(self.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), pic.h)

proc cQPictureFormatPlugin_vtable_callback_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(vformat_ms)
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(vfilename_ms)
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = vtbl[].loadPicture(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPictureFormatPluginsavePicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_virtualbase_savePicture(self.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), pic.h)

proc cQPictureFormatPlugin_vtable_callback_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(vformat_ms)
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(vfilename_ms)
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = vtbl[].savePicture(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQPictureFormatPlugin_vtable_callback_installIOHandler(self: pointer, format: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(vformat_ms)
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  var virtualReturn = vtbl[].installIOHandler(self, slotval1)
  virtualReturn

proc QPictureFormatPluginevent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQPictureFormatPlugin_virtualbase_event(self.h, event.h)

proc cQPictureFormatPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPictureFormatPlugineventFilter*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPictureFormatPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQPictureFormatPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPictureFormatPlugintimerEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPictureFormatPlugin_virtualbase_timerEvent(self.h, event.h)

proc cQPictureFormatPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPictureFormatPluginchildEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPictureFormatPlugin_virtualbase_childEvent(self.h, event.h)

proc cQPictureFormatPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPictureFormatPlugincustomEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQPictureFormatPlugin_virtualbase_customEvent(self.h, event.h)

proc cQPictureFormatPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPictureFormatPluginconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPictureFormatPlugin_virtualbase_connectNotify(self.h, signal.h)

proc cQPictureFormatPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPictureFormatPlugindisconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPictureFormatPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPictureFormatPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPictureFormatPlugin* {.inheritable.} = ref object of QPictureFormatPlugin
  vtbl*: cQPictureFormatPluginVTable
method metaObject*(self: VirtualQPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPictureFormatPluginmetaObject(self[])
proc cQPictureFormatPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPictureFormatPlugin, param1: cstring): pointer {.base.} =
  QPictureFormatPluginmetacast(self[], param1)
proc cQPictureFormatPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPictureFormatPluginmetacall(self[], param1, param2, param3)
proc cQPictureFormatPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method loadPicture*(self: VirtualQPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool {.base.} =
  QPictureFormatPluginloadPicture(self[], format, filename, pic)
proc cQPictureFormatPlugin_method_callback_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(vformat_ms)
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(vfilename_ms)
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = inst.loadPicture(slotval1, slotval2, slotval3)
  virtualReturn

method savePicture*(self: VirtualQPictureFormatPlugin, format: openArray[char], filename: openArray[char], pic: gen_qpicture_types.QPicture): bool {.base.} =
  QPictureFormatPluginsavePicture(self[], format, filename, pic)
proc cQPictureFormatPlugin_method_callback_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(vformat_ms)
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(vfilename_ms)
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = inst.savePicture(slotval1, slotval2, slotval3)
  virtualReturn

method installIOHandler*(self: VirtualQPictureFormatPlugin, format: openArray[char]): bool {.base.} =
  raiseAssert("missing implementation of QPictureFormatPlugin_virtualbase_installIOHandler")
proc cQPictureFormatPlugin_method_callback_installIOHandler(self: pointer, format: struct_miqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(vformat_ms)
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  var virtualReturn = inst.installIOHandler(slotval1)
  virtualReturn

method event*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPictureFormatPluginevent(self[], event)
proc cQPictureFormatPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQPictureFormatPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPictureFormatPlugineventFilter(self[], watched, event)
proc cQPictureFormatPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPictureFormatPlugintimerEvent(self[], event)
proc cQPictureFormatPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPictureFormatPluginchildEvent(self[], event)
proc cQPictureFormatPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPictureFormatPlugincustomEvent(self[], event)
proc cQPictureFormatPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPictureFormatPluginconnectNotify(self[], signal)
proc cQPictureFormatPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPictureFormatPlugindisconnectNotify(self[], signal)
proc cQPictureFormatPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPictureFormatPlugin](fcQPictureFormatPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPictureFormatPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin): cint =
  fcQPictureFormatPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: cstring): cint =
  fcQPictureFormatPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPictureFormatPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    vtbl: ref QPictureFormatPluginVTable = nil): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  let vtbl = if vtbl == nil: new QPictureFormatPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPictureFormatPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPictureFormatPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPictureFormatPlugin_vtable_callback_metacall
  if not isNil(vtbl[].loadPicture):
    vtbl[].vtbl.loadPicture = cQPictureFormatPlugin_vtable_callback_loadPicture
  if not isNil(vtbl[].savePicture):
    vtbl[].vtbl.savePicture = cQPictureFormatPlugin_vtable_callback_savePicture
  if not isNil(vtbl[].installIOHandler):
    vtbl[].vtbl.installIOHandler = cQPictureFormatPlugin_vtable_callback_installIOHandler
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPictureFormatPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPictureFormatPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPictureFormatPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPictureFormatPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPictureFormatPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPictureFormatPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPictureFormatPlugin_vtable_callback_disconnectNotify
  gen_qpictureformatplugin_types.QPictureFormatPlugin(h: fcQPictureFormatPlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPictureFormatPluginVTable = nil): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  let vtbl = if vtbl == nil: new QPictureFormatPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPictureFormatPluginVTable](fcQPictureFormatPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPictureFormatPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPictureFormatPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPictureFormatPlugin_vtable_callback_metacall
  if not isNil(vtbl[].loadPicture):
    vtbl[].vtbl.loadPicture = cQPictureFormatPlugin_vtable_callback_loadPicture
  if not isNil(vtbl[].savePicture):
    vtbl[].vtbl.savePicture = cQPictureFormatPlugin_vtable_callback_savePicture
  if not isNil(vtbl[].installIOHandler):
    vtbl[].vtbl.installIOHandler = cQPictureFormatPlugin_vtable_callback_installIOHandler
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPictureFormatPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPictureFormatPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPictureFormatPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPictureFormatPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPictureFormatPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPictureFormatPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPictureFormatPlugin_vtable_callback_disconnectNotify
  gen_qpictureformatplugin_types.QPictureFormatPlugin(h: fcQPictureFormatPlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQPictureFormatPlugin_mvtbl = cQPictureFormatPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPictureFormatPlugin()[])](self.fcQPictureFormatPlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPictureFormatPlugin_method_callback_metaObject,
  metacast: cQPictureFormatPlugin_method_callback_metacast,
  metacall: cQPictureFormatPlugin_method_callback_metacall,
  loadPicture: cQPictureFormatPlugin_method_callback_loadPicture,
  savePicture: cQPictureFormatPlugin_method_callback_savePicture,
  installIOHandler: cQPictureFormatPlugin_method_callback_installIOHandler,
  event: cQPictureFormatPlugin_method_callback_event,
  eventFilter: cQPictureFormatPlugin_method_callback_eventFilter,
  timerEvent: cQPictureFormatPlugin_method_callback_timerEvent,
  childEvent: cQPictureFormatPlugin_method_callback_childEvent,
  customEvent: cQPictureFormatPlugin_method_callback_customEvent,
  connectNotify: cQPictureFormatPlugin_method_callback_connectNotify,
  disconnectNotify: cQPictureFormatPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    inst: VirtualQPictureFormatPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPictureFormatPlugin_new(addr(cQPictureFormatPlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPictureFormatPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPictureFormatPlugin_new2(addr(cQPictureFormatPlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_staticMetaObject())
