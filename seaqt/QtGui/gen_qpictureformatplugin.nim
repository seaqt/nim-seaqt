import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qpictureformatplugin.cpp", cflags).}


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

proc fcQPictureFormatPlugin_metaObject(self: pointer, ): pointer {.importc: "QPictureFormatPlugin_metaObject".}
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
type cQPictureFormatPluginVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQPictureFormatPluginVTable, self: ptr cQPictureFormatPlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  loadPicture*: proc(vtbl, self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl, raises: [], gcsafe.}
  savePicture*: proc(vtbl, self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl, raises: [], gcsafe.}
  installIOHandler*: proc(vtbl, self: pointer, format: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPictureFormatPlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPictureFormatPlugin_virtualbase_metaObject".}
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
proc fcQPictureFormatPlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QPictureFormatPlugin_protectedbase_sender".}
proc fcQPictureFormatPlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QPictureFormatPlugin_protectedbase_senderSignalIndex".}
proc fcQPictureFormatPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPictureFormatPlugin_protectedbase_receivers".}
proc fcQPictureFormatPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPictureFormatPlugin_protectedbase_isSignalConnected".}
proc fcQPictureFormatPlugin_new(vtbl: pointer, ): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new".}
proc fcQPictureFormatPlugin_new2(vtbl: pointer, parent: pointer): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new2".}
proc fcQPictureFormatPlugin_staticMetaObject(): pointer {.importc: "QPictureFormatPlugin_staticMetaObject".}

proc metaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cstring): pointer =
  fcQPictureFormatPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQPictureFormatPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring): string =
  let v_ms = fcQPictureFormatPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring): string =
  let v_ms = fcQPictureFormatPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc loadPicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_loadPicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

proc savePicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_savePicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

proc installIOHandler*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string): bool =
  fcQPictureFormatPlugin_installIOHandler(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc tr*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQPictureFormatPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPictureFormatPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQPictureFormatPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPictureFormatPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QPictureFormatPluginmetaObjectProc* = proc(self: QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPictureFormatPluginmetacastProc* = proc(self: QPictureFormatPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QPictureFormatPluginmetacallProc* = proc(self: QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPictureFormatPluginloadPictureProc* = proc(self: QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool {.raises: [], gcsafe.}
type QPictureFormatPluginsavePictureProc* = proc(self: QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool {.raises: [], gcsafe.}
type QPictureFormatPlugininstallIOHandlerProc* = proc(self: QPictureFormatPlugin, format: string): bool {.raises: [], gcsafe.}
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
proc QPictureFormatPluginmetaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQPictureFormatPlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPictureFormatPluginmetacast*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cstring): pointer =
  fcQPictureFormatPlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPictureFormatPlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPictureFormatPluginmetacall*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQPictureFormatPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPictureFormatPlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPictureFormatPluginloadPicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_virtualbase_loadPicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

proc miqt_exec_callback_cQPictureFormatPlugin_loadPicture(vtbl: pointer, self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = vtbl[].loadPicture(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPictureFormatPluginsavePicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool =
  fcQPictureFormatPlugin_virtualbase_savePicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

proc miqt_exec_callback_cQPictureFormatPlugin_savePicture(vtbl: pointer, self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = vtbl[].savePicture(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQPictureFormatPlugin_installIOHandler(vtbl: pointer, self: pointer, format: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  var virtualReturn = vtbl[].installIOHandler(self, slotval1)
  virtualReturn

proc QPictureFormatPluginevent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQPictureFormatPlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPictureFormatPlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPictureFormatPlugineventFilter*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPictureFormatPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPictureFormatPlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPictureFormatPlugintimerEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPictureFormatPlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPictureFormatPlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPictureFormatPluginchildEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPictureFormatPlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPictureFormatPlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPictureFormatPlugincustomEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQPictureFormatPlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPictureFormatPlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPictureFormatPluginconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPictureFormatPlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPictureFormatPlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPictureFormatPlugindisconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPictureFormatPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPictureFormatPlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureFormatPluginVTable](vtbl)
  let self = QPictureFormatPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPictureFormatPlugin* {.inheritable.} = ref object of QPictureFormatPlugin
  vtbl*: cQPictureFormatPluginVTable
method metaObject*(self: VirtualQPictureFormatPlugin, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPictureFormatPluginmetaObject(self[])
proc miqt_exec_method_cQPictureFormatPlugin_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPictureFormatPlugin, param1: cstring): pointer {.base.} =
  QPictureFormatPluginmetacast(self[], param1)
proc miqt_exec_method_cQPictureFormatPlugin_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPictureFormatPluginmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQPictureFormatPlugin_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method loadPicture*(self: VirtualQPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool {.base.} =
  QPictureFormatPluginloadPicture(self[], format, filename, pic)
proc miqt_exec_method_cQPictureFormatPlugin_loadPicture(vtbl: pointer, inst: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = vtbl.loadPicture(slotval1, slotval2, slotval3)
  virtualReturn

method savePicture*(self: VirtualQPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool {.base.} =
  QPictureFormatPluginsavePicture(self[], format, filename, pic)
proc miqt_exec_method_cQPictureFormatPlugin_savePicture(vtbl: pointer, inst: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret
  let slotval3 = gen_qpicture_types.QPicture(h: pic, owned: false)
  var virtualReturn = vtbl.savePicture(slotval1, slotval2, slotval3)
  virtualReturn

method installIOHandler*(self: VirtualQPictureFormatPlugin, format: string): bool {.base.} =
  raiseAssert("missing implementation of QPictureFormatPlugin_virtualbase_installIOHandler")
proc miqt_exec_method_cQPictureFormatPlugin_installIOHandler(vtbl: pointer, inst: pointer, format: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret
  var virtualReturn = vtbl.installIOHandler(slotval1)
  virtualReturn

method event*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPictureFormatPluginevent(self[], event)
proc miqt_exec_method_cQPictureFormatPlugin_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQPictureFormatPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPictureFormatPlugineventFilter(self[], watched, event)
proc miqt_exec_method_cQPictureFormatPlugin_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPictureFormatPlugintimerEvent(self[], event)
proc miqt_exec_method_cQPictureFormatPlugin_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPictureFormatPluginchildEvent(self[], event)
proc miqt_exec_method_cQPictureFormatPlugin_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPictureFormatPlugincustomEvent(self[], event)
proc miqt_exec_method_cQPictureFormatPlugin_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPictureFormatPluginconnectNotify(self[], signal)
proc miqt_exec_method_cQPictureFormatPlugin_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPictureFormatPlugindisconnectNotify(self[], signal)
proc miqt_exec_method_cQPictureFormatPlugin_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQPictureFormatPlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPictureFormatPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, ): cint =
  fcQPictureFormatPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: cstring): cint =
  fcQPictureFormatPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPictureFormatPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    vtbl: ref QPictureFormatPluginVTable = nil): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  let vtbl = if vtbl == nil: new QPictureFormatPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQPictureFormatPluginVTable, _: ptr cQPictureFormatPlugin) {.cdecl.} =
    let vtbl = cast[ref QPictureFormatPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPictureFormatPlugin_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPictureFormatPlugin_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPictureFormatPlugin_metacall
  if not isNil(vtbl[].loadPicture):
    vtbl[].vtbl.loadPicture = miqt_exec_callback_cQPictureFormatPlugin_loadPicture
  if not isNil(vtbl[].savePicture):
    vtbl[].vtbl.savePicture = miqt_exec_callback_cQPictureFormatPlugin_savePicture
  if not isNil(vtbl[].installIOHandler):
    vtbl[].vtbl.installIOHandler = miqt_exec_callback_cQPictureFormatPlugin_installIOHandler
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPictureFormatPlugin_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPictureFormatPlugin_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPictureFormatPlugin_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPictureFormatPlugin_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPictureFormatPlugin_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPictureFormatPlugin_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPictureFormatPlugin_disconnectNotify
  gen_qpictureformatplugin_types.QPictureFormatPlugin(h: fcQPictureFormatPlugin_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPictureFormatPluginVTable = nil): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  let vtbl = if vtbl == nil: new QPictureFormatPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQPictureFormatPluginVTable, _: ptr cQPictureFormatPlugin) {.cdecl.} =
    let vtbl = cast[ref QPictureFormatPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPictureFormatPlugin_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPictureFormatPlugin_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPictureFormatPlugin_metacall
  if not isNil(vtbl[].loadPicture):
    vtbl[].vtbl.loadPicture = miqt_exec_callback_cQPictureFormatPlugin_loadPicture
  if not isNil(vtbl[].savePicture):
    vtbl[].vtbl.savePicture = miqt_exec_callback_cQPictureFormatPlugin_savePicture
  if not isNil(vtbl[].installIOHandler):
    vtbl[].vtbl.installIOHandler = miqt_exec_callback_cQPictureFormatPlugin_installIOHandler
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPictureFormatPlugin_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPictureFormatPlugin_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPictureFormatPlugin_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPictureFormatPlugin_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPictureFormatPlugin_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPictureFormatPlugin_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPictureFormatPlugin_disconnectNotify
  gen_qpictureformatplugin_types.QPictureFormatPlugin(h: fcQPictureFormatPlugin_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    vtbl: VirtualQPictureFormatPlugin) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQPictureFormatPluginVTable, _: ptr cQPictureFormatPlugin) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQPictureFormatPlugin()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQPictureFormatPlugin_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQPictureFormatPlugin_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQPictureFormatPlugin_metacall
  vtbl[].vtbl.loadPicture = miqt_exec_method_cQPictureFormatPlugin_loadPicture
  vtbl[].vtbl.savePicture = miqt_exec_method_cQPictureFormatPlugin_savePicture
  vtbl[].vtbl.installIOHandler = miqt_exec_method_cQPictureFormatPlugin_installIOHandler
  vtbl[].vtbl.event = miqt_exec_method_cQPictureFormatPlugin_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQPictureFormatPlugin_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQPictureFormatPlugin_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQPictureFormatPlugin_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQPictureFormatPlugin_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQPictureFormatPlugin_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQPictureFormatPlugin_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQPictureFormatPlugin_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQPictureFormatPlugin) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQPictureFormatPluginVTable, _: ptr cQPictureFormatPlugin) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQPictureFormatPlugin()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQPictureFormatPlugin, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQPictureFormatPlugin_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQPictureFormatPlugin_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQPictureFormatPlugin_metacall
  vtbl[].vtbl.loadPicture = miqt_exec_method_cQPictureFormatPlugin_loadPicture
  vtbl[].vtbl.savePicture = miqt_exec_method_cQPictureFormatPlugin_savePicture
  vtbl[].vtbl.installIOHandler = miqt_exec_method_cQPictureFormatPlugin_installIOHandler
  vtbl[].vtbl.event = miqt_exec_method_cQPictureFormatPlugin_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQPictureFormatPlugin_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQPictureFormatPlugin_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQPictureFormatPlugin_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQPictureFormatPlugin_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQPictureFormatPlugin_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQPictureFormatPlugin_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQPictureFormatPlugin_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_staticMetaObject())
