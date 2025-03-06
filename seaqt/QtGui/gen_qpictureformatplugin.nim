import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
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

proc fcQPictureFormatPlugin_new(): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new".}
proc fcQPictureFormatPlugin_new2(parent: pointer): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new2".}
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
proc fQPictureFormatPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPictureFormatPlugin_virtualbase_metaObject".}
proc fcQPictureFormatPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_metaObject".}
proc fQPictureFormatPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPictureFormatPlugin_virtualbase_metacast".}
proc fcQPictureFormatPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_metacast".}
proc fQPictureFormatPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPictureFormatPlugin_virtualbase_metacall".}
proc fcQPictureFormatPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_metacall".}
proc fQPictureFormatPlugin_virtualbase_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_loadPicture".}
proc fcQPictureFormatPlugin_override_virtual_loadPicture(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_loadPicture".}
proc fQPictureFormatPlugin_virtualbase_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_savePicture".}
proc fcQPictureFormatPlugin_override_virtual_savePicture(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_savePicture".}
proc fcQPictureFormatPlugin_override_virtual_installIOHandler(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_installIOHandler".}
proc fQPictureFormatPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_event".}
proc fcQPictureFormatPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_event".}
proc fQPictureFormatPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_eventFilter".}
proc fcQPictureFormatPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_eventFilter".}
proc fQPictureFormatPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_timerEvent".}
proc fcQPictureFormatPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_timerEvent".}
proc fQPictureFormatPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_childEvent".}
proc fcQPictureFormatPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_childEvent".}
proc fQPictureFormatPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_customEvent".}
proc fcQPictureFormatPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_customEvent".}
proc fQPictureFormatPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_connectNotify".}
proc fcQPictureFormatPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_connectNotify".}
proc fQPictureFormatPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_disconnectNotify".}
proc fcQPictureFormatPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_disconnectNotify".}
proc fcQPictureFormatPlugin_staticMetaObject(): pointer {.importc: "QPictureFormatPlugin_staticMetaObject".}
proc fcQPictureFormatPlugin_delete(self: pointer) {.importc: "QPictureFormatPlugin_delete".}


func init*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin, h: ptr cQPictureFormatPlugin): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  T(h: h)
proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin, ): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  gen_qpictureformatplugin_types.QPictureFormatPlugin.init(fcQPictureFormatPlugin_new())

proc create*(T: type gen_qpictureformatplugin_types.QPictureFormatPlugin, parent: gen_qobject_types.QObject): gen_qpictureformatplugin_types.QPictureFormatPlugin =
  gen_qpictureformatplugin_types.QPictureFormatPlugin.init(fcQPictureFormatPlugin_new2(parent.h))

proc metaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_metaObject(self.h))

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

proc QPictureFormatPluginmetaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPictureFormatPlugin_virtualbase_metaObject(self.h))

type QPictureFormatPluginmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_metaObject(self: ptr cQPictureFormatPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QPictureFormatPlugin_metaObject ".} =
  var nimfunc = cast[ptr QPictureFormatPluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPictureFormatPluginmetacast*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cstring): pointer =
  fQPictureFormatPlugin_virtualbase_metacast(self.h, param1)

type QPictureFormatPluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginmetacastProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_metacast(self: ptr cQPictureFormatPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPictureFormatPlugin_metacast ".} =
  var nimfunc = cast[ptr QPictureFormatPluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPictureFormatPluginmetacall*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fQPictureFormatPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPictureFormatPluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginmetacallProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_metacall(self: ptr cQPictureFormatPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPictureFormatPlugin_metacall ".} =
  var nimfunc = cast[ptr QPictureFormatPluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPictureFormatPluginloadPicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool =
  fQPictureFormatPlugin_virtualbase_loadPicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

type QPictureFormatPluginloadPictureProc* = proc(format: string, filename: string, pic: gen_qpicture_types.QPicture): bool
proc onloadPicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginloadPictureProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginloadPictureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_loadPicture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_loadPicture(self: ptr cQPictureFormatPlugin, slot: int, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_loadPicture ".} =
  var nimfunc = cast[ptr QPictureFormatPluginloadPictureProc](cast[pointer](slot))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret

  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret

  let slotval3 = gen_qpicture_types.QPicture(h: pic)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPictureFormatPluginsavePicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture_types.QPicture): bool =
  fQPictureFormatPlugin_virtualbase_savePicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

type QPictureFormatPluginsavePictureProc* = proc(format: string, filename: string, pic: gen_qpicture_types.QPicture): bool
proc onsavePicture*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginsavePictureProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginsavePictureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_savePicture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_savePicture(self: ptr cQPictureFormatPlugin, slot: int, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_savePicture ".} =
  var nimfunc = cast[ptr QPictureFormatPluginsavePictureProc](cast[pointer](slot))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret

  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret

  let slotval3 = gen_qpicture_types.QPicture(h: pic)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QPictureFormatPlugininstallIOHandlerProc* = proc(format: string): bool
proc oninstallIOHandler*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPlugininstallIOHandlerProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPlugininstallIOHandlerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_installIOHandler(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_installIOHandler(self: ptr cQPictureFormatPlugin, slot: int, format: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_installIOHandler ".} =
  var nimfunc = cast[ptr QPictureFormatPlugininstallIOHandlerProc](cast[pointer](slot))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPictureFormatPluginevent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQPictureFormatPlugin_virtualbase_event(self.h, event.h)

type QPictureFormatPlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPlugineventProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_event(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_event ".} =
  var nimfunc = cast[ptr QPictureFormatPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPictureFormatPlugineventFilter*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPictureFormatPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPictureFormatPlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_eventFilter(self: ptr cQPictureFormatPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QPictureFormatPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPictureFormatPlugintimerEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPictureFormatPlugin_virtualbase_timerEvent(self.h, event.h)

type QPictureFormatPlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_timerEvent(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QPictureFormatPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPictureFormatPluginchildEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQPictureFormatPlugin_virtualbase_childEvent(self.h, event.h)

type QPictureFormatPluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_childEvent(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_childEvent ".} =
  var nimfunc = cast[ptr QPictureFormatPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPictureFormatPlugincustomEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, event: gen_qcoreevent_types.QEvent): void =
  fQPictureFormatPlugin_virtualbase_customEvent(self.h, event.h)

type QPictureFormatPlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_customEvent(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_customEvent ".} =
  var nimfunc = cast[ptr QPictureFormatPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPictureFormatPluginconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPictureFormatPlugin_virtualbase_connectNotify(self.h, signal.h)

type QPictureFormatPluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_connectNotify(self: ptr cQPictureFormatPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QPictureFormatPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPictureFormatPlugindisconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPictureFormatPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QPictureFormatPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin, slot: QPictureFormatPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPictureFormatPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_disconnectNotify(self: ptr cQPictureFormatPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QPictureFormatPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qpictureformatplugin_types.QPictureFormatPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPictureFormatPlugin_staticMetaObject())
proc delete*(self: gen_qpictureformatplugin_types.QPictureFormatPlugin) =
  fcQPictureFormatPlugin_delete(self.h)
