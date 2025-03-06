import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qsettings.cpp", cflags).}


type QSettingsStatusEnum* = distinct cint
template NoError*(_: type QSettingsStatusEnum): untyped = 0
template AccessError*(_: type QSettingsStatusEnum): untyped = 1
template FormatError*(_: type QSettingsStatusEnum): untyped = 2


type QSettingsFormatEnum* = distinct cint
template NativeFormat*(_: type QSettingsFormatEnum): untyped = 0
template IniFormat*(_: type QSettingsFormatEnum): untyped = 1
template InvalidFormat*(_: type QSettingsFormatEnum): untyped = 16
template CustomFormat1*(_: type QSettingsFormatEnum): untyped = 17
template CustomFormat2*(_: type QSettingsFormatEnum): untyped = 18
template CustomFormat3*(_: type QSettingsFormatEnum): untyped = 19
template CustomFormat4*(_: type QSettingsFormatEnum): untyped = 20
template CustomFormat5*(_: type QSettingsFormatEnum): untyped = 21
template CustomFormat6*(_: type QSettingsFormatEnum): untyped = 22
template CustomFormat7*(_: type QSettingsFormatEnum): untyped = 23
template CustomFormat8*(_: type QSettingsFormatEnum): untyped = 24
template CustomFormat9*(_: type QSettingsFormatEnum): untyped = 25
template CustomFormat10*(_: type QSettingsFormatEnum): untyped = 26
template CustomFormat11*(_: type QSettingsFormatEnum): untyped = 27
template CustomFormat12*(_: type QSettingsFormatEnum): untyped = 28
template CustomFormat13*(_: type QSettingsFormatEnum): untyped = 29
template CustomFormat14*(_: type QSettingsFormatEnum): untyped = 30
template CustomFormat15*(_: type QSettingsFormatEnum): untyped = 31
template CustomFormat16*(_: type QSettingsFormatEnum): untyped = 32


type QSettingsScopeEnum* = distinct cint
template UserScope*(_: type QSettingsScopeEnum): untyped = 0
template SystemScope*(_: type QSettingsScopeEnum): untyped = 1


import ./gen_qsettings_types
export gen_qsettings_types

import
  ./gen_qanystringview_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qvariant_types
export
  gen_qanystringview_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQSettings*{.exportc: "QSettings", incompleteStruct.} = object

proc fcQSettings_metaObject(self: pointer, ): pointer {.importc: "QSettings_metaObject".}
proc fcQSettings_metacast(self: pointer, param1: cstring): pointer {.importc: "QSettings_metacast".}
proc fcQSettings_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSettings_metacall".}
proc fcQSettings_tr(s: cstring): struct_miqt_string {.importc: "QSettings_tr".}
proc fcQSettings_clear(self: pointer, ): void {.importc: "QSettings_clear".}
proc fcQSettings_sync(self: pointer, ): void {.importc: "QSettings_sync".}
proc fcQSettings_status(self: pointer, ): cint {.importc: "QSettings_status".}
proc fcQSettings_isAtomicSyncRequired(self: pointer, ): bool {.importc: "QSettings_isAtomicSyncRequired".}
proc fcQSettings_setAtomicSyncRequired(self: pointer, enable: bool): void {.importc: "QSettings_setAtomicSyncRequired".}
proc fcQSettings_beginGroup(self: pointer, prefix: pointer): void {.importc: "QSettings_beginGroup".}
proc fcQSettings_endGroup(self: pointer, ): void {.importc: "QSettings_endGroup".}
proc fcQSettings_group(self: pointer, ): struct_miqt_string {.importc: "QSettings_group".}
proc fcQSettings_beginReadArray(self: pointer, prefix: pointer): cint {.importc: "QSettings_beginReadArray".}
proc fcQSettings_beginWriteArray(self: pointer, prefix: pointer): void {.importc: "QSettings_beginWriteArray".}
proc fcQSettings_endArray(self: pointer, ): void {.importc: "QSettings_endArray".}
proc fcQSettings_setArrayIndex(self: pointer, i: cint): void {.importc: "QSettings_setArrayIndex".}
proc fcQSettings_allKeys(self: pointer, ): struct_miqt_array {.importc: "QSettings_allKeys".}
proc fcQSettings_childKeys(self: pointer, ): struct_miqt_array {.importc: "QSettings_childKeys".}
proc fcQSettings_childGroups(self: pointer, ): struct_miqt_array {.importc: "QSettings_childGroups".}
proc fcQSettings_isWritable(self: pointer, ): bool {.importc: "QSettings_isWritable".}
proc fcQSettings_setValue(self: pointer, key: pointer, value: pointer): void {.importc: "QSettings_setValue".}
proc fcQSettings_value(self: pointer, key: pointer, defaultValue: pointer): pointer {.importc: "QSettings_value".}
proc fcQSettings_valueWithKey(self: pointer, key: pointer): pointer {.importc: "QSettings_valueWithKey".}
proc fcQSettings_remove(self: pointer, key: pointer): void {.importc: "QSettings_remove".}
proc fcQSettings_contains(self: pointer, key: pointer): bool {.importc: "QSettings_contains".}
proc fcQSettings_setFallbacksEnabled(self: pointer, b: bool): void {.importc: "QSettings_setFallbacksEnabled".}
proc fcQSettings_fallbacksEnabled(self: pointer, ): bool {.importc: "QSettings_fallbacksEnabled".}
proc fcQSettings_fileName(self: pointer, ): struct_miqt_string {.importc: "QSettings_fileName".}
proc fcQSettings_format(self: pointer, ): cint {.importc: "QSettings_format".}
proc fcQSettings_scope(self: pointer, ): cint {.importc: "QSettings_scope".}
proc fcQSettings_organizationName(self: pointer, ): struct_miqt_string {.importc: "QSettings_organizationName".}
proc fcQSettings_applicationName(self: pointer, ): struct_miqt_string {.importc: "QSettings_applicationName".}
proc fcQSettings_setDefaultFormat(format: cint): void {.importc: "QSettings_setDefaultFormat".}
proc fcQSettings_defaultFormat(): cint {.importc: "QSettings_defaultFormat".}
proc fcQSettings_setPath(format: cint, scope: cint, path: struct_miqt_string): void {.importc: "QSettings_setPath".}
proc fcQSettings_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSettings_tr2".}
proc fcQSettings_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSettings_tr3".}
proc fcQSettings_beginWriteArray2(self: pointer, prefix: pointer, size: cint): void {.importc: "QSettings_beginWriteArray2".}
type cQSettingsVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSettingsVTable, self: ptr cQSettings) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSettings_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSettings_virtualbase_metaObject".}
proc fcQSettings_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSettings_virtualbase_metacast".}
proc fcQSettings_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSettings_virtualbase_metacall".}
proc fcQSettings_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSettings_virtualbase_event".}
proc fcQSettings_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSettings_virtualbase_eventFilter".}
proc fcQSettings_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSettings_virtualbase_timerEvent".}
proc fcQSettings_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSettings_virtualbase_childEvent".}
proc fcQSettings_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSettings_virtualbase_customEvent".}
proc fcQSettings_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSettings_virtualbase_connectNotify".}
proc fcQSettings_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSettings_virtualbase_disconnectNotify".}
proc fcQSettings_protectedbase_sender(self: pointer, ): pointer {.importc: "QSettings_protectedbase_sender".}
proc fcQSettings_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSettings_protectedbase_senderSignalIndex".}
proc fcQSettings_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSettings_protectedbase_receivers".}
proc fcQSettings_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSettings_protectedbase_isSignalConnected".}
proc fcQSettings_new(vtbl: pointer, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new".}
proc fcQSettings_new2(vtbl: pointer, scope: cint, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new2".}
proc fcQSettings_new3(vtbl: pointer, format: cint, scope: cint, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new3".}
proc fcQSettings_new4(vtbl: pointer, fileName: struct_miqt_string, format: cint): ptr cQSettings {.importc: "QSettings_new4".}
proc fcQSettings_new5(vtbl: pointer, ): ptr cQSettings {.importc: "QSettings_new5".}
proc fcQSettings_new6(vtbl: pointer, scope: cint): ptr cQSettings {.importc: "QSettings_new6".}
proc fcQSettings_new7(vtbl: pointer, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new7".}
proc fcQSettings_new8(vtbl: pointer, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new8".}
proc fcQSettings_new9(vtbl: pointer, scope: cint, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new9".}
proc fcQSettings_new10(vtbl: pointer, scope: cint, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new10".}
proc fcQSettings_new11(vtbl: pointer, format: cint, scope: cint, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new11".}
proc fcQSettings_new12(vtbl: pointer, format: cint, scope: cint, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new12".}
proc fcQSettings_new13(vtbl: pointer, fileName: struct_miqt_string, format: cint, parent: pointer): ptr cQSettings {.importc: "QSettings_new13".}
proc fcQSettings_new14(vtbl: pointer, parent: pointer): ptr cQSettings {.importc: "QSettings_new14".}
proc fcQSettings_new15(vtbl: pointer, scope: cint, parent: pointer): ptr cQSettings {.importc: "QSettings_new15".}
proc fcQSettings_staticMetaObject(): pointer {.importc: "QSettings_staticMetaObject".}

proc metaObject*(self: gen_qsettings_types.QSettings, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSettings_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsettings_types.QSettings, param1: cstring): pointer =
  fcQSettings_metacast(self.h, param1)

proc metacall*(self: gen_qsettings_types.QSettings, param1: cint, param2: cint, param3: pointer): cint =
  fcQSettings_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsettings_types.QSettings, s: cstring): string =
  let v_ms = fcQSettings_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qsettings_types.QSettings, ): void =
  fcQSettings_clear(self.h)

proc sync*(self: gen_qsettings_types.QSettings, ): void =
  fcQSettings_sync(self.h)

proc status*(self: gen_qsettings_types.QSettings, ): cint =
  cint(fcQSettings_status(self.h))

proc isAtomicSyncRequired*(self: gen_qsettings_types.QSettings, ): bool =
  fcQSettings_isAtomicSyncRequired(self.h)

proc setAtomicSyncRequired*(self: gen_qsettings_types.QSettings, enable: bool): void =
  fcQSettings_setAtomicSyncRequired(self.h, enable)

proc beginGroup*(self: gen_qsettings_types.QSettings, prefix: gen_qanystringview_types.QAnyStringView): void =
  fcQSettings_beginGroup(self.h, prefix.h)

proc endGroup*(self: gen_qsettings_types.QSettings, ): void =
  fcQSettings_endGroup(self.h)

proc group*(self: gen_qsettings_types.QSettings, ): string =
  let v_ms = fcQSettings_group(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc beginReadArray*(self: gen_qsettings_types.QSettings, prefix: gen_qanystringview_types.QAnyStringView): cint =
  fcQSettings_beginReadArray(self.h, prefix.h)

proc beginWriteArray*(self: gen_qsettings_types.QSettings, prefix: gen_qanystringview_types.QAnyStringView): void =
  fcQSettings_beginWriteArray(self.h, prefix.h)

proc endArray*(self: gen_qsettings_types.QSettings, ): void =
  fcQSettings_endArray(self.h)

proc setArrayIndex*(self: gen_qsettings_types.QSettings, i: cint): void =
  fcQSettings_setArrayIndex(self.h, i)

proc allKeys*(self: gen_qsettings_types.QSettings, ): seq[string] =
  var v_ma = fcQSettings_allKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc childKeys*(self: gen_qsettings_types.QSettings, ): seq[string] =
  var v_ma = fcQSettings_childKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc childGroups*(self: gen_qsettings_types.QSettings, ): seq[string] =
  var v_ma = fcQSettings_childGroups(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc isWritable*(self: gen_qsettings_types.QSettings, ): bool =
  fcQSettings_isWritable(self.h)

proc setValue*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView, value: gen_qvariant_types.QVariant): void =
  fcQSettings_setValue(self.h, key.h, value.h)

proc value*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView, defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSettings_value(self.h, key.h, defaultValue.h), owned: true)

proc value*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSettings_valueWithKey(self.h, key.h), owned: true)

proc remove*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView): void =
  fcQSettings_remove(self.h, key.h)

proc contains*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView): bool =
  fcQSettings_contains(self.h, key.h)

proc setFallbacksEnabled*(self: gen_qsettings_types.QSettings, b: bool): void =
  fcQSettings_setFallbacksEnabled(self.h, b)

proc fallbacksEnabled*(self: gen_qsettings_types.QSettings, ): bool =
  fcQSettings_fallbacksEnabled(self.h)

proc fileName*(self: gen_qsettings_types.QSettings, ): string =
  let v_ms = fcQSettings_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qsettings_types.QSettings, ): cint =
  cint(fcQSettings_format(self.h))

proc scope*(self: gen_qsettings_types.QSettings, ): cint =
  cint(fcQSettings_scope(self.h))

proc organizationName*(self: gen_qsettings_types.QSettings, ): string =
  let v_ms = fcQSettings_organizationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applicationName*(self: gen_qsettings_types.QSettings, ): string =
  let v_ms = fcQSettings_applicationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultFormat*(_: type gen_qsettings_types.QSettings, format: cint): void =
  fcQSettings_setDefaultFormat(cint(format))

proc defaultFormat*(_: type gen_qsettings_types.QSettings, ): cint =
  cint(fcQSettings_defaultFormat())

proc setPath*(_: type gen_qsettings_types.QSettings, format: cint, scope: cint, path: string): void =
  fcQSettings_setPath(cint(format), cint(scope), struct_miqt_string(data: path, len: csize_t(len(path))))

proc tr*(_: type gen_qsettings_types.QSettings, s: cstring, c: cstring): string =
  let v_ms = fcQSettings_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsettings_types.QSettings, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSettings_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc beginWriteArray*(self: gen_qsettings_types.QSettings, prefix: gen_qanystringview_types.QAnyStringView, size: cint): void =
  fcQSettings_beginWriteArray2(self.h, prefix.h, size)

type QSettingsmetaObjectProc* = proc(self: QSettings): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSettingsmetacastProc* = proc(self: QSettings, param1: cstring): pointer {.raises: [], gcsafe.}
type QSettingsmetacallProc* = proc(self: QSettings, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSettingseventProc* = proc(self: QSettings, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSettingseventFilterProc* = proc(self: QSettings, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSettingstimerEventProc* = proc(self: QSettings, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSettingschildEventProc* = proc(self: QSettings, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSettingscustomEventProc* = proc(self: QSettings, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSettingsconnectNotifyProc* = proc(self: QSettings, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSettingsdisconnectNotifyProc* = proc(self: QSettings, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSettingsVTable* {.inheritable, pure.} = object
  vtbl: cQSettingsVTable
  metaObject*: QSettingsmetaObjectProc
  metacast*: QSettingsmetacastProc
  metacall*: QSettingsmetacallProc
  event*: QSettingseventProc
  eventFilter*: QSettingseventFilterProc
  timerEvent*: QSettingstimerEventProc
  childEvent*: QSettingschildEventProc
  customEvent*: QSettingscustomEventProc
  connectNotify*: QSettingsconnectNotifyProc
  disconnectNotify*: QSettingsdisconnectNotifyProc
proc QSettingsmetaObject*(self: gen_qsettings_types.QSettings, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSettings_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQSettings_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSettingsmetacast*(self: gen_qsettings_types.QSettings, param1: cstring): pointer =
  fcQSettings_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSettings_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSettingsmetacall*(self: gen_qsettings_types.QSettings, param1: cint, param2: cint, param3: pointer): cint =
  fcQSettings_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSettings_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSettingsevent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QEvent): bool =
  fcQSettings_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSettings_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSettingseventFilter*(self: gen_qsettings_types.QSettings, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSettings_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSettings_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSettingstimerEvent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSettings_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSettings_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSettingschildEvent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSettings_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSettings_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSettingscustomEvent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QEvent): void =
  fcQSettings_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSettings_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSettingsconnectNotify*(self: gen_qsettings_types.QSettings, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSettings_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSettings_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSettingsdisconnectNotify*(self: gen_qsettings_types.QSettings, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSettings_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSettings_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSettingsVTable](vtbl)
  let self = QSettings(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSettings* {.inheritable.} = ref object of QSettings
  vtbl*: cQSettingsVTable
method metaObject*(self: VirtualQSettings, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSettingsmetaObject(self[])
proc miqt_exec_method_cQSettings_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSettings, param1: cstring): pointer {.base.} =
  QSettingsmetacast(self[], param1)
proc miqt_exec_method_cQSettings_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSettings, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSettingsmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQSettings_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQSettings, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSettingsevent(self[], event)
proc miqt_exec_method_cQSettings_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSettings, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSettingseventFilter(self[], watched, event)
proc miqt_exec_method_cQSettings_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSettings, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSettingstimerEvent(self[], event)
proc miqt_exec_method_cQSettings_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQSettings, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSettingschildEvent(self[], event)
proc miqt_exec_method_cQSettings_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQSettings, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSettingscustomEvent(self[], event)
proc miqt_exec_method_cQSettings_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQSettings, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSettingsconnectNotify(self[], signal)
proc miqt_exec_method_cQSettings_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSettings, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSettingsdisconnectNotify(self[], signal)
proc miqt_exec_method_cQSettings_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSettings](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qsettings_types.QSettings, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSettings_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsettings_types.QSettings, ): cint =
  fcQSettings_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsettings_types.QSettings, signal: cstring): cint =
  fcQSettings_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsettings_types.QSettings, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSettings_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsettings_types.QSettings,
    organization: string,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new(addr(vtbl[].vtbl), struct_miqt_string(data: organization, len: csize_t(len(organization)))), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, organization: string,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new2(addr(vtbl[].vtbl), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization)))), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    format: cint, scope: cint, organization: string,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new3(addr(vtbl[].vtbl), cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization)))), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    fileName: string, format: cint,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new4(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format)), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new5(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new6(addr(vtbl[].vtbl), cint(scope)), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    organization: string, application: string,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new7(addr(vtbl[].vtbl), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    organization: string, application: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new8(addr(vtbl[].vtbl), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, organization: string, application: string,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new9(addr(vtbl[].vtbl), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, organization: string, application: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new10(addr(vtbl[].vtbl), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    format: cint, scope: cint, organization: string, application: string,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new11(addr(vtbl[].vtbl), cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    format: cint, scope: cint, organization: string, application: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new12(addr(vtbl[].vtbl), cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    fileName: string, format: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new13(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format), parent.h), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new14(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QSettingsVTable = nil): gen_qsettings_types.QSettings =
  let vtbl = if vtbl == nil: new QSettingsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ref QSettingsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSettings_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSettings_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSettings_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSettings_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSettings_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSettings_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSettings_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSettings_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSettings_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSettings_disconnectNotify
  gen_qsettings_types.QSettings(h: fcQSettings_new15(addr(vtbl[].vtbl), cint(scope), parent.h), owned: true)

proc create*(T: type gen_qsettings_types.QSettings,
    organization: string,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new(addr(vtbl[].vtbl), struct_miqt_string(data: organization, len: csize_t(len(organization))))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, organization: string,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new2(addr(vtbl[].vtbl), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    format: cint, scope: cint, organization: string,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new3(addr(vtbl[].vtbl), cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    fileName: string, format: cint,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new4(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new5(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new6(addr(vtbl[].vtbl), cint(scope))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    organization: string, application: string,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new7(addr(vtbl[].vtbl), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    organization: string, application: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new8(addr(vtbl[].vtbl), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, organization: string, application: string,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new9(addr(vtbl[].vtbl), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, organization: string, application: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new10(addr(vtbl[].vtbl), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    format: cint, scope: cint, organization: string, application: string,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new11(addr(vtbl[].vtbl), cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))))
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    format: cint, scope: cint, organization: string, application: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new12(addr(vtbl[].vtbl), cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    fileName: string, format: cint, parent: gen_qobject_types.QObject,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new13(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new14(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qsettings_types.QSettings,
    scope: cint, parent: gen_qobject_types.QObject,
    vtbl: VirtualQSettings) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSettingsVTable, _: ptr cQSettings) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSettings()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSettings, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSettings_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSettings_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSettings_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSettings_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSettings_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSettings_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSettings_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSettings_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSettings_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSettings_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSettings_new15(addr(vtbl[].vtbl), cint(scope), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qsettings_types.QSettings): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSettings_staticMetaObject())
