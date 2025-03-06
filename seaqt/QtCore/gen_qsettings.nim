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

proc fcQSettings_new(organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new".}
proc fcQSettings_new2(scope: cint, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new2".}
proc fcQSettings_new3(format: cint, scope: cint, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new3".}
proc fcQSettings_new4(fileName: struct_miqt_string, format: cint): ptr cQSettings {.importc: "QSettings_new4".}
proc fcQSettings_new5(): ptr cQSettings {.importc: "QSettings_new5".}
proc fcQSettings_new6(scope: cint): ptr cQSettings {.importc: "QSettings_new6".}
proc fcQSettings_new7(organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new7".}
proc fcQSettings_new8(organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new8".}
proc fcQSettings_new9(scope: cint, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new9".}
proc fcQSettings_new10(scope: cint, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new10".}
proc fcQSettings_new11(format: cint, scope: cint, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new11".}
proc fcQSettings_new12(format: cint, scope: cint, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new12".}
proc fcQSettings_new13(fileName: struct_miqt_string, format: cint, parent: pointer): ptr cQSettings {.importc: "QSettings_new13".}
proc fcQSettings_new14(parent: pointer): ptr cQSettings {.importc: "QSettings_new14".}
proc fcQSettings_new15(scope: cint, parent: pointer): ptr cQSettings {.importc: "QSettings_new15".}
proc fcQSettings_metaObject(self: pointer, ): pointer {.importc: "QSettings_metaObject".}
proc fcQSettings_metacast(self: pointer, param1: cstring): pointer {.importc: "QSettings_metacast".}
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
proc fQSettings_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSettings_virtualbase_event".}
proc fcQSettings_override_virtual_event(self: pointer, slot: int) {.importc: "QSettings_override_virtual_event".}
proc fQSettings_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSettings_virtualbase_eventFilter".}
proc fcQSettings_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSettings_override_virtual_eventFilter".}
proc fQSettings_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSettings_virtualbase_timerEvent".}
proc fcQSettings_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSettings_override_virtual_timerEvent".}
proc fQSettings_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSettings_virtualbase_childEvent".}
proc fcQSettings_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSettings_override_virtual_childEvent".}
proc fQSettings_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSettings_virtualbase_customEvent".}
proc fcQSettings_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSettings_override_virtual_customEvent".}
proc fQSettings_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSettings_virtualbase_connectNotify".}
proc fcQSettings_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSettings_override_virtual_connectNotify".}
proc fQSettings_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSettings_virtualbase_disconnectNotify".}
proc fcQSettings_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSettings_override_virtual_disconnectNotify".}
proc fcQSettings_delete(self: pointer) {.importc: "QSettings_delete".}


func init*(T: type gen_qsettings_types.QSettings, h: ptr cQSettings): gen_qsettings_types.QSettings =
  T(h: h)
proc create*(T: type gen_qsettings_types.QSettings, organization: string): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new(struct_miqt_string(data: organization, len: csize_t(len(organization)))))

proc create*(T: type gen_qsettings_types.QSettings, scope: cint, organization: string): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new2(cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization)))))

proc create*(T: type gen_qsettings_types.QSettings, format: cint, scope: cint, organization: string): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new3(cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization)))))

proc create*(T: type gen_qsettings_types.QSettings, fileName: string, format: cint): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format)))

proc create*(T: type gen_qsettings_types.QSettings, ): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new5())

proc create*(T: type gen_qsettings_types.QSettings, scope: cint): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new6(cint(scope)))

proc create*(T: type gen_qsettings_types.QSettings, organization: string, application: string): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new7(struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))))

proc create*(T: type gen_qsettings_types.QSettings, organization: string, application: string, parent: gen_qobject_types.QObject): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new8(struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h))

proc create*(T: type gen_qsettings_types.QSettings, scope: cint, organization: string, application: string): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new9(cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))))

proc create*(T: type gen_qsettings_types.QSettings, scope: cint, organization: string, application: string, parent: gen_qobject_types.QObject): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new10(cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h))

proc create*(T: type gen_qsettings_types.QSettings, format: cint, scope: cint, organization: string, application: string): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new11(cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))))

proc create*(T: type gen_qsettings_types.QSettings, format: cint, scope: cint, organization: string, application: string, parent: gen_qobject_types.QObject): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new12(cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h))

proc create*(T: type gen_qsettings_types.QSettings, fileName: string, format: cint, parent: gen_qobject_types.QObject): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new13(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format), parent.h))

proc create*(T: type gen_qsettings_types.QSettings, parent: gen_qobject_types.QObject): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new14(parent.h))

proc create*(T: type gen_qsettings_types.QSettings, scope: cint, parent: gen_qobject_types.QObject): gen_qsettings_types.QSettings =
  gen_qsettings_types.QSettings.init(fcQSettings_new15(cint(scope), parent.h))

proc metaObject*(self: gen_qsettings_types.QSettings, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSettings_metaObject(self.h))

proc metacast*(self: gen_qsettings_types.QSettings, param1: cstring): pointer =
  fcQSettings_metacast(self.h, param1)

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
  vx_ret

proc isWritable*(self: gen_qsettings_types.QSettings, ): bool =
  fcQSettings_isWritable(self.h)

proc setValue*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView, value: gen_qvariant_types.QVariant): void =
  fcQSettings_setValue(self.h, key.h, value.h)

proc value*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView, defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSettings_value(self.h, key.h, defaultValue.h))

proc value*(self: gen_qsettings_types.QSettings, key: gen_qanystringview_types.QAnyStringView): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSettings_valueWithKey(self.h, key.h))

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

proc QSettingsevent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QEvent): bool =
  fQSettings_virtualbase_event(self.h, event.h)

type QSettingseventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsettings_types.QSettings, slot: QSettingseventProc) =
  # TODO check subclass
  var tmp = new QSettingseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_event(self: ptr cQSettings, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSettings_event ".} =
  var nimfunc = cast[ptr QSettingseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSettingseventFilter*(self: gen_qsettings_types.QSettings, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSettings_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSettingseventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsettings_types.QSettings, slot: QSettingseventFilterProc) =
  # TODO check subclass
  var tmp = new QSettingseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_eventFilter(self: ptr cQSettings, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSettings_eventFilter ".} =
  var nimfunc = cast[ptr QSettingseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSettingstimerEvent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSettings_virtualbase_timerEvent(self.h, event.h)

type QSettingstimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsettings_types.QSettings, slot: QSettingstimerEventProc) =
  # TODO check subclass
  var tmp = new QSettingstimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_timerEvent(self: ptr cQSettings, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSettings_timerEvent ".} =
  var nimfunc = cast[ptr QSettingstimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSettingschildEvent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QChildEvent): void =
  fQSettings_virtualbase_childEvent(self.h, event.h)

type QSettingschildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsettings_types.QSettings, slot: QSettingschildEventProc) =
  # TODO check subclass
  var tmp = new QSettingschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_childEvent(self: ptr cQSettings, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSettings_childEvent ".} =
  var nimfunc = cast[ptr QSettingschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSettingscustomEvent*(self: gen_qsettings_types.QSettings, event: gen_qcoreevent_types.QEvent): void =
  fQSettings_virtualbase_customEvent(self.h, event.h)

type QSettingscustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsettings_types.QSettings, slot: QSettingscustomEventProc) =
  # TODO check subclass
  var tmp = new QSettingscustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_customEvent(self: ptr cQSettings, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSettings_customEvent ".} =
  var nimfunc = cast[ptr QSettingscustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSettingsconnectNotify*(self: gen_qsettings_types.QSettings, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSettings_virtualbase_connectNotify(self.h, signal.h)

type QSettingsconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsettings_types.QSettings, slot: QSettingsconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSettingsconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_connectNotify(self: ptr cQSettings, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSettings_connectNotify ".} =
  var nimfunc = cast[ptr QSettingsconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSettingsdisconnectNotify*(self: gen_qsettings_types.QSettings, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSettings_virtualbase_disconnectNotify(self.h, signal.h)

type QSettingsdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsettings_types.QSettings, slot: QSettingsdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSettingsdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_disconnectNotify(self: ptr cQSettings, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSettings_disconnectNotify ".} =
  var nimfunc = cast[ptr QSettingsdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qsettings_types.QSettings) =
  fcQSettings_delete(self.h)
