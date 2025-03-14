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


{.compile("gen_qvalidator.cpp", QtGuiCFlags).}


type QValidatorStateEnum* = distinct cint
template Invalid*(_: type QValidatorStateEnum): untyped = 0
template Intermediate*(_: type QValidatorStateEnum): untyped = 1
template Acceptable*(_: type QValidatorStateEnum): untyped = 2


type QDoubleValidatorNotationEnum* = distinct cint
template StandardNotation*(_: type QDoubleValidatorNotationEnum): untyped = 0
template ScientificNotation*(_: type QDoubleValidatorNotationEnum): untyped = 1


import ./gen_qvalidator_types
export gen_qvalidator_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qlocale_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qregexp_types,
  ../QtCore/gen_qregularexpression_types
export
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qregexp_types,
  gen_qregularexpression_types

type cQValidator*{.exportc: "QValidator", incompleteStruct.} = object
type cQIntValidator*{.exportc: "QIntValidator", incompleteStruct.} = object
type cQDoubleValidator*{.exportc: "QDoubleValidator", incompleteStruct.} = object
type cQRegExpValidator*{.exportc: "QRegExpValidator", incompleteStruct.} = object
type cQRegularExpressionValidator*{.exportc: "QRegularExpressionValidator", incompleteStruct.} = object

proc fcQValidator_metaObject(self: pointer): pointer {.importc: "QValidator_metaObject".}
proc fcQValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_metacast".}
proc fcQValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QValidator_metacall".}
proc fcQValidator_tr(s: cstring): struct_miqt_string {.importc: "QValidator_tr".}
proc fcQValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QValidator_trUtf8".}
proc fcQValidator_setLocale(self: pointer, locale: pointer): void {.importc: "QValidator_setLocale".}
proc fcQValidator_locale(self: pointer): pointer {.importc: "QValidator_locale".}
proc fcQValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QValidator_validate".}
proc fcQValidator_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_fixup".}
proc fcQValidator_changed(self: pointer): void {.importc: "QValidator_changed".}
proc fcQValidator_connect_changed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QValidator_connect_changed".}
proc fcQValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_tr2".}
proc fcQValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_tr3".}
proc fcQValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_trUtf82".}
proc fcQValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_trUtf83".}
proc fcQValidator_vtbl(self: pointer): pointer {.importc: "QValidator_vtbl".}
proc fcQValidator_vdata(self: pointer): pointer {.importc: "QValidator_vdata".}
type cQValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, param1: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQValidator_virtualbase_metaObject(self: pointer): pointer {.importc: "QValidator_virtualbase_metaObject".}
proc fcQValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_virtualbase_metacast".}
proc fcQValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QValidator_virtualbase_metacall".}
proc fcQValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_virtualbase_fixup".}
proc fcQValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QValidator_virtualbase_event".}
proc fcQValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QValidator_virtualbase_eventFilter".}
proc fcQValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QValidator_virtualbase_timerEvent".}
proc fcQValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QValidator_virtualbase_childEvent".}
proc fcQValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QValidator_virtualbase_customEvent".}
proc fcQValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QValidator_virtualbase_connectNotify".}
proc fcQValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QValidator_virtualbase_disconnectNotify".}
proc fcQValidator_protectedbase_sender(self: pointer): pointer {.importc: "QValidator_protectedbase_sender".}
proc fcQValidator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QValidator_protectedbase_senderSignalIndex".}
proc fcQValidator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QValidator_protectedbase_receivers".}
proc fcQValidator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QValidator_protectedbase_isSignalConnected".}
proc fcQValidator_new(vtbl, vdata: pointer): ptr cQValidator {.importc: "QValidator_new".}
proc fcQValidator_new2(vtbl, vdata: pointer, parent: pointer): ptr cQValidator {.importc: "QValidator_new2".}
proc fcQValidator_staticMetaObject(): pointer {.importc: "QValidator_staticMetaObject".}
proc fcQIntValidator_metaObject(self: pointer): pointer {.importc: "QIntValidator_metaObject".}
proc fcQIntValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QIntValidator_metacast".}
proc fcQIntValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIntValidator_metacall".}
proc fcQIntValidator_tr(s: cstring): struct_miqt_string {.importc: "QIntValidator_tr".}
proc fcQIntValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QIntValidator_trUtf8".}
proc fcQIntValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QIntValidator_validate".}
proc fcQIntValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QIntValidator_fixup".}
proc fcQIntValidator_setBottom(self: pointer, bottom: cint): void {.importc: "QIntValidator_setBottom".}
proc fcQIntValidator_setTop(self: pointer, top: cint): void {.importc: "QIntValidator_setTop".}
proc fcQIntValidator_setRange(self: pointer, bottom: cint, top: cint): void {.importc: "QIntValidator_setRange".}
proc fcQIntValidator_bottom(self: pointer): cint {.importc: "QIntValidator_bottom".}
proc fcQIntValidator_top(self: pointer): cint {.importc: "QIntValidator_top".}
proc fcQIntValidator_bottomChanged(self: pointer, bottom: cint): void {.importc: "QIntValidator_bottomChanged".}
proc fcQIntValidator_connect_bottomChanged(self: pointer, slot: int, callback: proc (slot: int, bottom: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIntValidator_connect_bottomChanged".}
proc fcQIntValidator_topChanged(self: pointer, top: cint): void {.importc: "QIntValidator_topChanged".}
proc fcQIntValidator_connect_topChanged(self: pointer, slot: int, callback: proc (slot: int, top: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIntValidator_connect_topChanged".}
proc fcQIntValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIntValidator_tr2".}
proc fcQIntValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIntValidator_tr3".}
proc fcQIntValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIntValidator_trUtf82".}
proc fcQIntValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIntValidator_trUtf83".}
proc fcQIntValidator_vtbl(self: pointer): pointer {.importc: "QIntValidator_vtbl".}
proc fcQIntValidator_vdata(self: pointer): pointer {.importc: "QIntValidator_vdata".}
type cQIntValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  setRange*: proc(self: pointer, bottom: cint, top: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIntValidator_virtualbase_metaObject(self: pointer): pointer {.importc: "QIntValidator_virtualbase_metaObject".}
proc fcQIntValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIntValidator_virtualbase_metacast".}
proc fcQIntValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIntValidator_virtualbase_metacall".}
proc fcQIntValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QIntValidator_virtualbase_validate".}
proc fcQIntValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QIntValidator_virtualbase_fixup".}
proc fcQIntValidator_virtualbase_setRange(self: pointer, bottom: cint, top: cint): void {.importc: "QIntValidator_virtualbase_setRange".}
proc fcQIntValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIntValidator_virtualbase_event".}
proc fcQIntValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIntValidator_virtualbase_eventFilter".}
proc fcQIntValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIntValidator_virtualbase_timerEvent".}
proc fcQIntValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIntValidator_virtualbase_childEvent".}
proc fcQIntValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIntValidator_virtualbase_customEvent".}
proc fcQIntValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIntValidator_virtualbase_connectNotify".}
proc fcQIntValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIntValidator_virtualbase_disconnectNotify".}
proc fcQIntValidator_protectedbase_sender(self: pointer): pointer {.importc: "QIntValidator_protectedbase_sender".}
proc fcQIntValidator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QIntValidator_protectedbase_senderSignalIndex".}
proc fcQIntValidator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIntValidator_protectedbase_receivers".}
proc fcQIntValidator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIntValidator_protectedbase_isSignalConnected".}
proc fcQIntValidator_new(vtbl, vdata: pointer): ptr cQIntValidator {.importc: "QIntValidator_new".}
proc fcQIntValidator_new2(vtbl, vdata: pointer, bottom: cint, top: cint): ptr cQIntValidator {.importc: "QIntValidator_new2".}
proc fcQIntValidator_new3(vtbl, vdata: pointer, parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new3".}
proc fcQIntValidator_new4(vtbl, vdata: pointer, bottom: cint, top: cint, parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new4".}
proc fcQIntValidator_staticMetaObject(): pointer {.importc: "QIntValidator_staticMetaObject".}
proc fcQDoubleValidator_metaObject(self: pointer): pointer {.importc: "QDoubleValidator_metaObject".}
proc fcQDoubleValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleValidator_metacast".}
proc fcQDoubleValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleValidator_metacall".}
proc fcQDoubleValidator_tr(s: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr".}
proc fcQDoubleValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QDoubleValidator_trUtf8".}
proc fcQDoubleValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_validate".}
proc fcQDoubleValidator_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.importc: "QDoubleValidator_setRange".}
proc fcQDoubleValidator_setBottom(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_setBottom".}
proc fcQDoubleValidator_setTop(self: pointer, top: float64): void {.importc: "QDoubleValidator_setTop".}
proc fcQDoubleValidator_setDecimals(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_setDecimals".}
proc fcQDoubleValidator_setNotation(self: pointer, notation: cint): void {.importc: "QDoubleValidator_setNotation".}
proc fcQDoubleValidator_bottom(self: pointer): float64 {.importc: "QDoubleValidator_bottom".}
proc fcQDoubleValidator_top(self: pointer): float64 {.importc: "QDoubleValidator_top".}
proc fcQDoubleValidator_decimals(self: pointer): cint {.importc: "QDoubleValidator_decimals".}
proc fcQDoubleValidator_notation(self: pointer): cint {.importc: "QDoubleValidator_notation".}
proc fcQDoubleValidator_bottomChanged(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_bottomChanged".}
proc fcQDoubleValidator_connect_bottomChanged(self: pointer, slot: int, callback: proc (slot: int, bottom: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleValidator_connect_bottomChanged".}
proc fcQDoubleValidator_topChanged(self: pointer, top: float64): void {.importc: "QDoubleValidator_topChanged".}
proc fcQDoubleValidator_connect_topChanged(self: pointer, slot: int, callback: proc (slot: int, top: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleValidator_connect_topChanged".}
proc fcQDoubleValidator_decimalsChanged(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_decimalsChanged".}
proc fcQDoubleValidator_connect_decimalsChanged(self: pointer, slot: int, callback: proc (slot: int, decimals: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleValidator_connect_decimalsChanged".}
proc fcQDoubleValidator_notationChanged(self: pointer, notation: cint): void {.importc: "QDoubleValidator_notationChanged".}
proc fcQDoubleValidator_connect_notationChanged(self: pointer, slot: int, callback: proc (slot: int, notation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDoubleValidator_connect_notationChanged".}
proc fcQDoubleValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr2".}
proc fcQDoubleValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleValidator_tr3".}
proc fcQDoubleValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleValidator_trUtf82".}
proc fcQDoubleValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleValidator_trUtf83".}
proc fcQDoubleValidator_vtbl(self: pointer): pointer {.importc: "QDoubleValidator_vtbl".}
proc fcQDoubleValidator_vdata(self: pointer): pointer {.importc: "QDoubleValidator_vdata".}
type cQDoubleValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  setRange*: proc(self: pointer, bottom: float64, top: float64, decimals: cint): void {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, param1: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDoubleValidator_virtualbase_metaObject(self: pointer): pointer {.importc: "QDoubleValidator_virtualbase_metaObject".}
proc fcQDoubleValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleValidator_virtualbase_metacast".}
proc fcQDoubleValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleValidator_virtualbase_metacall".}
proc fcQDoubleValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_virtualbase_validate".}
proc fcQDoubleValidator_virtualbase_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.importc: "QDoubleValidator_virtualbase_setRange".}
proc fcQDoubleValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QDoubleValidator_virtualbase_fixup".}
proc fcQDoubleValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDoubleValidator_virtualbase_event".}
proc fcQDoubleValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDoubleValidator_virtualbase_eventFilter".}
proc fcQDoubleValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDoubleValidator_virtualbase_timerEvent".}
proc fcQDoubleValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDoubleValidator_virtualbase_childEvent".}
proc fcQDoubleValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDoubleValidator_virtualbase_customEvent".}
proc fcQDoubleValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleValidator_virtualbase_connectNotify".}
proc fcQDoubleValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleValidator_virtualbase_disconnectNotify".}
proc fcQDoubleValidator_protectedbase_sender(self: pointer): pointer {.importc: "QDoubleValidator_protectedbase_sender".}
proc fcQDoubleValidator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDoubleValidator_protectedbase_senderSignalIndex".}
proc fcQDoubleValidator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDoubleValidator_protectedbase_receivers".}
proc fcQDoubleValidator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDoubleValidator_protectedbase_isSignalConnected".}
proc fcQDoubleValidator_new(vtbl, vdata: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new".}
proc fcQDoubleValidator_new2(vtbl, vdata: pointer, bottom: float64, top: float64, decimals: cint): ptr cQDoubleValidator {.importc: "QDoubleValidator_new2".}
proc fcQDoubleValidator_new3(vtbl, vdata: pointer, parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new3".}
proc fcQDoubleValidator_new4(vtbl, vdata: pointer, bottom: float64, top: float64, decimals: cint, parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new4".}
proc fcQDoubleValidator_staticMetaObject(): pointer {.importc: "QDoubleValidator_staticMetaObject".}
proc fcQRegExpValidator_metaObject(self: pointer): pointer {.importc: "QRegExpValidator_metaObject".}
proc fcQRegExpValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegExpValidator_metacast".}
proc fcQRegExpValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegExpValidator_metacall".}
proc fcQRegExpValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegExpValidator_tr".}
proc fcQRegExpValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QRegExpValidator_trUtf8".}
proc fcQRegExpValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegExpValidator_validate".}
proc fcQRegExpValidator_setRegExp(self: pointer, rx: pointer): void {.importc: "QRegExpValidator_setRegExp".}
proc fcQRegExpValidator_regExp(self: pointer): pointer {.importc: "QRegExpValidator_regExp".}
proc fcQRegExpValidator_regExpChanged(self: pointer, regExp: pointer): void {.importc: "QRegExpValidator_regExpChanged".}
proc fcQRegExpValidator_connect_regExpChanged(self: pointer, slot: int, callback: proc (slot: int, regExp: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRegExpValidator_connect_regExpChanged".}
proc fcQRegExpValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegExpValidator_tr2".}
proc fcQRegExpValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegExpValidator_tr3".}
proc fcQRegExpValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegExpValidator_trUtf82".}
proc fcQRegExpValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegExpValidator_trUtf83".}
proc fcQRegExpValidator_vtbl(self: pointer): pointer {.importc: "QRegExpValidator_vtbl".}
proc fcQRegExpValidator_vdata(self: pointer): pointer {.importc: "QRegExpValidator_vdata".}
type cQRegExpValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, param1: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRegExpValidator_virtualbase_metaObject(self: pointer): pointer {.importc: "QRegExpValidator_virtualbase_metaObject".}
proc fcQRegExpValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegExpValidator_virtualbase_metacast".}
proc fcQRegExpValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegExpValidator_virtualbase_metacall".}
proc fcQRegExpValidator_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegExpValidator_virtualbase_validate".}
proc fcQRegExpValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QRegExpValidator_virtualbase_fixup".}
proc fcQRegExpValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRegExpValidator_virtualbase_event".}
proc fcQRegExpValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRegExpValidator_virtualbase_eventFilter".}
proc fcQRegExpValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRegExpValidator_virtualbase_timerEvent".}
proc fcQRegExpValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRegExpValidator_virtualbase_childEvent".}
proc fcQRegExpValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRegExpValidator_virtualbase_customEvent".}
proc fcQRegExpValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRegExpValidator_virtualbase_connectNotify".}
proc fcQRegExpValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRegExpValidator_virtualbase_disconnectNotify".}
proc fcQRegExpValidator_protectedbase_sender(self: pointer): pointer {.importc: "QRegExpValidator_protectedbase_sender".}
proc fcQRegExpValidator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRegExpValidator_protectedbase_senderSignalIndex".}
proc fcQRegExpValidator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRegExpValidator_protectedbase_receivers".}
proc fcQRegExpValidator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRegExpValidator_protectedbase_isSignalConnected".}
proc fcQRegExpValidator_new(vtbl, vdata: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new".}
proc fcQRegExpValidator_new2(vtbl, vdata: pointer, rx: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new2".}
proc fcQRegExpValidator_new3(vtbl, vdata: pointer, parent: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new3".}
proc fcQRegExpValidator_new4(vtbl, vdata: pointer, rx: pointer, parent: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new4".}
proc fcQRegExpValidator_staticMetaObject(): pointer {.importc: "QRegExpValidator_staticMetaObject".}
proc fcQRegularExpressionValidator_metaObject(self: pointer): pointer {.importc: "QRegularExpressionValidator_metaObject".}
proc fcQRegularExpressionValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_metacast".}
proc fcQRegularExpressionValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegularExpressionValidator_metacall".}
proc fcQRegularExpressionValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr".}
proc fcQRegularExpressionValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_trUtf8".}
proc fcQRegularExpressionValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_validate".}
proc fcQRegularExpressionValidator_regularExpression(self: pointer): pointer {.importc: "QRegularExpressionValidator_regularExpression".}
proc fcQRegularExpressionValidator_setRegularExpression(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_setRegularExpression".}
proc fcQRegularExpressionValidator_regularExpressionChanged(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_regularExpressionChanged".}
proc fcQRegularExpressionValidator_connect_regularExpressionChanged(self: pointer, slot: int, callback: proc (slot: int, re: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRegularExpressionValidator_connect_regularExpressionChanged".}
proc fcQRegularExpressionValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr2".}
proc fcQRegularExpressionValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_tr3".}
proc fcQRegularExpressionValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_trUtf82".}
proc fcQRegularExpressionValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_trUtf83".}
proc fcQRegularExpressionValidator_vtbl(self: pointer): pointer {.importc: "QRegularExpressionValidator_vtbl".}
proc fcQRegularExpressionValidator_vdata(self: pointer): pointer {.importc: "QRegularExpressionValidator_vdata".}
type cQRegularExpressionValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, param1: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRegularExpressionValidator_virtualbase_metaObject(self: pointer): pointer {.importc: "QRegularExpressionValidator_virtualbase_metaObject".}
proc fcQRegularExpressionValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_virtualbase_metacast".}
proc fcQRegularExpressionValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegularExpressionValidator_virtualbase_metacall".}
proc fcQRegularExpressionValidator_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_virtualbase_validate".}
proc fcQRegularExpressionValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QRegularExpressionValidator_virtualbase_fixup".}
proc fcQRegularExpressionValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRegularExpressionValidator_virtualbase_event".}
proc fcQRegularExpressionValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRegularExpressionValidator_virtualbase_eventFilter".}
proc fcQRegularExpressionValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_timerEvent".}
proc fcQRegularExpressionValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_childEvent".}
proc fcQRegularExpressionValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_customEvent".}
proc fcQRegularExpressionValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_connectNotify".}
proc fcQRegularExpressionValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_disconnectNotify".}
proc fcQRegularExpressionValidator_protectedbase_sender(self: pointer): pointer {.importc: "QRegularExpressionValidator_protectedbase_sender".}
proc fcQRegularExpressionValidator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRegularExpressionValidator_protectedbase_senderSignalIndex".}
proc fcQRegularExpressionValidator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRegularExpressionValidator_protectedbase_receivers".}
proc fcQRegularExpressionValidator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRegularExpressionValidator_protectedbase_isSignalConnected".}
proc fcQRegularExpressionValidator_new(vtbl, vdata: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new".}
proc fcQRegularExpressionValidator_new2(vtbl, vdata: pointer, re: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new2".}
proc fcQRegularExpressionValidator_new3(vtbl, vdata: pointer, parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new3".}
proc fcQRegularExpressionValidator_new4(vtbl, vdata: pointer, re: pointer, parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new4".}
proc fcQRegularExpressionValidator_staticMetaObject(): pointer {.importc: "QRegularExpressionValidator_staticMetaObject".}

proc metaObject*(self: gen_qvalidator_types.QValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvalidator_types.QValidator, param1: cstring): pointer =
  fcQValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring): string =
  let v_ms = fcQValidator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QValidator, s: cstring): string =
  let v_ms = fcQValidator_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setLocale*(self: gen_qvalidator_types.QValidator, locale: gen_qlocale_types.QLocale): void =
  fcQValidator_setLocale(self.h, locale.h)

proc locale*(self: gen_qvalidator_types.QValidator): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQValidator_locale(self.h), owned: true)

proc validate*(self: gen_qvalidator_types.QValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQValidator_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QValidator, param1: openArray[char]): void =
  fcQValidator_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc changed*(self: gen_qvalidator_types.QValidator): void =
  fcQValidator_changed(self.h)

type QValidatorchangedSlot* = proc()
proc cQValidator_slot_callback_changed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QValidatorchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQValidator_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QValidatorchangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchanged*(self: gen_qvalidator_types.QValidator, slot: QValidatorchangedSlot) =
  var tmp = new QValidatorchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_connect_changed(self.h, cast[int](addr tmp[]), cQValidator_slot_callback_changed, cQValidator_slot_callback_changed_release)

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring): string =
  let v_ms = fcQValidator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring): string =
  let v_ms = fcQValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QValidatormetaObjectProc* = proc(self: QValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QValidatormetacastProc* = proc(self: QValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QValidatormetacallProc* = proc(self: QValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QValidatorvalidateProc* = proc(self: QValidator, param1: openArray[char], param2: ptr cint): cint {.raises: [], gcsafe.}
type QValidatorfixupProc* = proc(self: QValidator, param1: openArray[char]): void {.raises: [], gcsafe.}
type QValidatoreventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QValidatoreventFilterProc* = proc(self: QValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QValidatortimerEventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QValidatorchildEventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QValidatorcustomEventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QValidatorconnectNotifyProc* = proc(self: QValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QValidatordisconnectNotifyProc* = proc(self: QValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QValidatorVTable* {.inheritable, pure.} = object
  vtbl: cQValidatorVTable
  metaObject*: QValidatormetaObjectProc
  metacast*: QValidatormetacastProc
  metacall*: QValidatormetacallProc
  validate*: QValidatorvalidateProc
  fixup*: QValidatorfixupProc
  event*: QValidatoreventProc
  eventFilter*: QValidatoreventFilterProc
  timerEvent*: QValidatortimerEventProc
  childEvent*: QValidatorchildEventProc
  customEvent*: QValidatorcustomEventProc
  connectNotify*: QValidatorconnectNotifyProc
  disconnectNotify*: QValidatordisconnectNotifyProc
proc QValidatormetaObject*(self: gen_qvalidator_types.QValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_virtualbase_metaObject(self.h), owned: false)

proc cQValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QValidatormetacast*(self: gen_qvalidator_types.QValidator, param1: cstring): pointer =
  fcQValidator_virtualbase_metacast(self.h, param1)

proc cQValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QValidatormetacall*(self: gen_qvalidator_types.QValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQValidator_vtable_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QValidatorfixup*(self: gen_qvalidator_types.QValidator, param1: openArray[char]): void =
  fcQValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc cQValidator_vtable_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc QValidatorevent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQValidator_virtualbase_event(self.h, event.h)

proc cQValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QValidatoreventFilter*(self: gen_qvalidator_types.QValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QValidatortimerEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQValidator_virtualbase_timerEvent(self.h, event.h)

proc cQValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QValidatorchildEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQValidator_virtualbase_childEvent(self.h, event.h)

proc cQValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QValidatorcustomEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQValidator_virtualbase_customEvent(self.h, event.h)

proc cQValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QValidatorconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQValidator_virtualbase_connectNotify(self.h, signal.h)

proc cQValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QValidatordisconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc cQValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQValidator* {.inheritable.} = ref object of QValidator
  vtbl*: cQValidatorVTable
method metaObject*(self: VirtualQValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QValidatormetaObject(self[])
proc cQValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQValidator, param1: cstring): pointer {.base.} =
  QValidatormetacast(self[], param1)
proc cQValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QValidatormetacall(self[], param1, param2, param3)
proc cQValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method validate*(self: VirtualQValidator, param1: openArray[char], param2: ptr cint): cint {.base.} =
  raiseAssert("missing implementation of QValidator_virtualbase_validate")
proc cQValidator_method_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQValidator, param1: openArray[char]): void {.base.} =
  QValidatorfixup(self[], param1)
proc cQValidator_method_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  inst.fixup(slotval1)

method event*(self: VirtualQValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QValidatorevent(self[], event)
proc cQValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QValidatoreventFilter(self[], watched, event)
proc cQValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QValidatortimerEvent(self[], event)
proc cQValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QValidatorchildEvent(self[], event)
proc cQValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QValidatorcustomEvent(self[], event)
proc cQValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QValidatorconnectNotify(self[], signal)
proc cQValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QValidatordisconnectNotify(self[], signal)
proc cQValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvalidator_types.QValidator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQValidator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvalidator_types.QValidator): cint =
  fcQValidator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvalidator_types.QValidator, signal: cstring): cint =
  fcQValidator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQValidator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvalidator_types.QValidator,
    vtbl: ref QValidatorVTable = nil): gen_qvalidator_types.QValidator =
  let vtbl = if vtbl == nil: new QValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QValidatorVTable](fcQValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QValidator(h: fcQValidator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvalidator_types.QValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QValidatorVTable = nil): gen_qvalidator_types.QValidator =
  let vtbl = if vtbl == nil: new QValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QValidatorVTable](fcQValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QValidator(h: fcQValidator_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQValidator_mvtbl = cQValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQValidator()[])](self.fcQValidator_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQValidator_method_callback_metaObject,
  metacast: cQValidator_method_callback_metacast,
  metacall: cQValidator_method_callback_metacall,
  validate: cQValidator_method_callback_validate,
  fixup: cQValidator_method_callback_fixup,
  event: cQValidator_method_callback_event,
  eventFilter: cQValidator_method_callback_eventFilter,
  timerEvent: cQValidator_method_callback_timerEvent,
  childEvent: cQValidator_method_callback_childEvent,
  customEvent: cQValidator_method_callback_customEvent,
  connectNotify: cQValidator_method_callback_connectNotify,
  disconnectNotify: cQValidator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvalidator_types.QValidator,
    inst: VirtualQValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQValidator_new(addr(cQValidator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QValidator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQValidator_new2(addr(cQValidator_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvalidator_types.QValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_staticMetaObject())
proc metaObject*(self: gen_qvalidator_types.QIntValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvalidator_types.QIntValidator, param1: cstring): pointer =
  fcQIntValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QIntValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQIntValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring): string =
  let v_ms = fcQIntValidator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QIntValidator, s: cstring): string =
  let v_ms = fcQIntValidator_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QIntValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQIntValidator_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QIntValidator, input: openArray[char]): void =
  fcQIntValidator_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc setBottom*(self: gen_qvalidator_types.QIntValidator, bottom: cint): void =
  fcQIntValidator_setBottom(self.h, bottom)

proc setTop*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_setTop(self.h, top)

proc setRange*(self: gen_qvalidator_types.QIntValidator, bottom: cint, top: cint): void =
  fcQIntValidator_setRange(self.h, bottom, top)

proc bottom*(self: gen_qvalidator_types.QIntValidator): cint =
  fcQIntValidator_bottom(self.h)

proc top*(self: gen_qvalidator_types.QIntValidator): cint =
  fcQIntValidator_top(self.h)

proc bottomChanged*(self: gen_qvalidator_types.QIntValidator, bottom: cint): void =
  fcQIntValidator_bottomChanged(self.h, bottom)

type QIntValidatorbottomChangedSlot* = proc(bottom: cint)
proc cQIntValidator_slot_callback_bottomChanged(slot: int, bottom: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIntValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc cQIntValidator_slot_callback_bottomChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIntValidatorbottomChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbottomChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorbottomChangedSlot) =
  var tmp = new QIntValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]), cQIntValidator_slot_callback_bottomChanged, cQIntValidator_slot_callback_bottomChanged_release)

proc topChanged*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_topChanged(self.h, top)

type QIntValidatortopChangedSlot* = proc(top: cint)
proc cQIntValidator_slot_callback_topChanged(slot: int, top: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIntValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc cQIntValidator_slot_callback_topChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIntValidatortopChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontopChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatortopChangedSlot) =
  var tmp = new QIntValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_topChanged(self.h, cast[int](addr tmp[]), cQIntValidator_slot_callback_topChanged, cQIntValidator_slot_callback_topChanged_release)

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring): string =
  let v_ms = fcQIntValidator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIntValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring): string =
  let v_ms = fcQIntValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIntValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QIntValidatormetaObjectProc* = proc(self: QIntValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIntValidatormetacastProc* = proc(self: QIntValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QIntValidatormetacallProc* = proc(self: QIntValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIntValidatorvalidateProc* = proc(self: QIntValidator, param1: openArray[char], param2: ptr cint): cint {.raises: [], gcsafe.}
type QIntValidatorfixupProc* = proc(self: QIntValidator, input: openArray[char]): void {.raises: [], gcsafe.}
type QIntValidatorsetRangeProc* = proc(self: QIntValidator, bottom: cint, top: cint): void {.raises: [], gcsafe.}
type QIntValidatoreventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIntValidatoreventFilterProc* = proc(self: QIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIntValidatortimerEventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIntValidatorchildEventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIntValidatorcustomEventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIntValidatorconnectNotifyProc* = proc(self: QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIntValidatordisconnectNotifyProc* = proc(self: QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIntValidatorVTable* {.inheritable, pure.} = object
  vtbl: cQIntValidatorVTable
  metaObject*: QIntValidatormetaObjectProc
  metacast*: QIntValidatormetacastProc
  metacall*: QIntValidatormetacallProc
  validate*: QIntValidatorvalidateProc
  fixup*: QIntValidatorfixupProc
  setRange*: QIntValidatorsetRangeProc
  event*: QIntValidatoreventProc
  eventFilter*: QIntValidatoreventFilterProc
  timerEvent*: QIntValidatortimerEventProc
  childEvent*: QIntValidatorchildEventProc
  customEvent*: QIntValidatorcustomEventProc
  connectNotify*: QIntValidatorconnectNotifyProc
  disconnectNotify*: QIntValidatordisconnectNotifyProc
proc QIntValidatormetaObject*(self: gen_qvalidator_types.QIntValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_virtualbase_metaObject(self.h), owned: false)

proc cQIntValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIntValidatormetacast*(self: gen_qvalidator_types.QIntValidator, param1: cstring): pointer =
  fcQIntValidator_virtualbase_metacast(self.h, param1)

proc cQIntValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIntValidatormetacall*(self: gen_qvalidator_types.QIntValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQIntValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQIntValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIntValidatorvalidate*(self: gen_qvalidator_types.QIntValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQIntValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc cQIntValidator_vtable_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QIntValidatorfixup*(self: gen_qvalidator_types.QIntValidator, input: openArray[char]): void =
  fcQIntValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc cQIntValidator_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QIntValidatorsetRange*(self: gen_qvalidator_types.QIntValidator, bottom: cint, top: cint): void =
  fcQIntValidator_virtualbase_setRange(self.h, bottom, top)

proc cQIntValidator_vtable_callback_setRange(self: pointer, bottom: cint, top: cint): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = bottom
  let slotval2 = top
  vtbl[].setRange(self, slotval1, slotval2)

proc QIntValidatorevent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQIntValidator_virtualbase_event(self.h, event.h)

proc cQIntValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIntValidatoreventFilter*(self: gen_qvalidator_types.QIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIntValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQIntValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIntValidatortimerEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIntValidator_virtualbase_timerEvent(self.h, event.h)

proc cQIntValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QIntValidatorchildEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIntValidator_virtualbase_childEvent(self.h, event.h)

proc cQIntValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QIntValidatorcustomEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQIntValidator_virtualbase_customEvent(self.h, event.h)

proc cQIntValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QIntValidatorconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIntValidator_virtualbase_connectNotify(self.h, signal.h)

proc cQIntValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QIntValidatordisconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIntValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc cQIntValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQIntValidator* {.inheritable.} = ref object of QIntValidator
  vtbl*: cQIntValidatorVTable
method metaObject*(self: VirtualQIntValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QIntValidatormetaObject(self[])
proc cQIntValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQIntValidator, param1: cstring): pointer {.base.} =
  QIntValidatormetacast(self[], param1)
proc cQIntValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQIntValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QIntValidatormetacall(self[], param1, param2, param3)
proc cQIntValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method validate*(self: VirtualQIntValidator, param1: openArray[char], param2: ptr cint): cint {.base.} =
  QIntValidatorvalidate(self[], param1, param2)
proc cQIntValidator_method_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQIntValidator, input: openArray[char]): void {.base.} =
  QIntValidatorfixup(self[], input)
proc cQIntValidator_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

method setRange*(self: VirtualQIntValidator, bottom: cint, top: cint): void {.base.} =
  QIntValidatorsetRange(self[], bottom, top)
proc cQIntValidator_method_callback_setRange(self: pointer, bottom: cint, top: cint): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = bottom
  let slotval2 = top
  inst.setRange(slotval1, slotval2)

method event*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIntValidatorevent(self[], event)
proc cQIntValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIntValidatoreventFilter(self[], watched, event)
proc cQIntValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QIntValidatortimerEvent(self[], event)
proc cQIntValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QIntValidatorchildEvent(self[], event)
proc cQIntValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QIntValidatorcustomEvent(self[], event)
proc cQIntValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIntValidatorconnectNotify(self[], signal)
proc cQIntValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIntValidatordisconnectNotify(self[], signal)
proc cQIntValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvalidator_types.QIntValidator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIntValidator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvalidator_types.QIntValidator): cint =
  fcQIntValidator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvalidator_types.QIntValidator, signal: cstring): cint =
  fcQIntValidator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIntValidator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvalidator_types.QIntValidator,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](fcQIntValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQIntValidator_vtable_callback_setRange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIntValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvalidator_types.QIntValidator,
    bottom: cint, top: cint,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](fcQIntValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQIntValidator_vtable_callback_setRange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIntValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new2(addr(vtbl[].vtbl), addr(vtbl[]), bottom, top), owned: true)

proc create*(T: type gen_qvalidator_types.QIntValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](fcQIntValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQIntValidator_vtable_callback_setRange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIntValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qvalidator_types.QIntValidator,
    bottom: cint, top: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](fcQIntValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQIntValidator_vtable_callback_setRange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIntValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), bottom, top, parent.h), owned: true)

const cQIntValidator_mvtbl = cQIntValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIntValidator()[])](self.fcQIntValidator_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQIntValidator_method_callback_metaObject,
  metacast: cQIntValidator_method_callback_metacast,
  metacall: cQIntValidator_method_callback_metacall,
  validate: cQIntValidator_method_callback_validate,
  fixup: cQIntValidator_method_callback_fixup,
  setRange: cQIntValidator_method_callback_setRange,
  event: cQIntValidator_method_callback_event,
  eventFilter: cQIntValidator_method_callback_eventFilter,
  timerEvent: cQIntValidator_method_callback_timerEvent,
  childEvent: cQIntValidator_method_callback_childEvent,
  customEvent: cQIntValidator_method_callback_customEvent,
  connectNotify: cQIntValidator_method_callback_connectNotify,
  disconnectNotify: cQIntValidator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvalidator_types.QIntValidator,
    inst: VirtualQIntValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIntValidator_new(addr(cQIntValidator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QIntValidator,
    bottom: cint, top: cint,
    inst: VirtualQIntValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIntValidator_new2(addr(cQIntValidator_mvtbl), addr(inst[]), bottom, top)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QIntValidator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQIntValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIntValidator_new3(addr(cQIntValidator_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QIntValidator,
    bottom: cint, top: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQIntValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIntValidator_new4(addr(cQIntValidator_mvtbl), addr(inst[]), bottom, top, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvalidator_types.QIntValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_staticMetaObject())
proc metaObject*(self: gen_qvalidator_types.QDoubleValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvalidator_types.QDoubleValidator, param1: cstring): pointer =
  fcQDoubleValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring): string =
  let v_ms = fcQDoubleValidator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring): string =
  let v_ms = fcQDoubleValidator_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QDoubleValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQDoubleValidator_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc setRange*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64, decimals: cint): void =
  fcQDoubleValidator_setRange(self.h, bottom, top, decimals)

proc setBottom*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64): void =
  fcQDoubleValidator_setBottom(self.h, bottom)

proc setTop*(self: gen_qvalidator_types.QDoubleValidator, top: float64): void =
  fcQDoubleValidator_setTop(self.h, top)

proc setDecimals*(self: gen_qvalidator_types.QDoubleValidator, decimals: cint): void =
  fcQDoubleValidator_setDecimals(self.h, decimals)

proc setNotation*(self: gen_qvalidator_types.QDoubleValidator, notation: cint): void =
  fcQDoubleValidator_setNotation(self.h, cint(notation))

proc bottom*(self: gen_qvalidator_types.QDoubleValidator): float64 =
  fcQDoubleValidator_bottom(self.h)

proc top*(self: gen_qvalidator_types.QDoubleValidator): float64 =
  fcQDoubleValidator_top(self.h)

proc decimals*(self: gen_qvalidator_types.QDoubleValidator): cint =
  fcQDoubleValidator_decimals(self.h)

proc notation*(self: gen_qvalidator_types.QDoubleValidator): cint =
  cint(fcQDoubleValidator_notation(self.h))

proc bottomChanged*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64): void =
  fcQDoubleValidator_bottomChanged(self.h, bottom)

type QDoubleValidatorbottomChangedSlot* = proc(bottom: float64)
proc cQDoubleValidator_slot_callback_bottomChanged(slot: int, bottom: float64) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc cQDoubleValidator_slot_callback_bottomChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatorbottomChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbottomChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorbottomChangedSlot) =
  var tmp = new QDoubleValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]), cQDoubleValidator_slot_callback_bottomChanged, cQDoubleValidator_slot_callback_bottomChanged_release)

proc topChanged*(self: gen_qvalidator_types.QDoubleValidator, top: float64): void =
  fcQDoubleValidator_topChanged(self.h, top)

type QDoubleValidatortopChangedSlot* = proc(top: float64)
proc cQDoubleValidator_slot_callback_topChanged(slot: int, top: float64) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc cQDoubleValidator_slot_callback_topChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatortopChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontopChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatortopChangedSlot) =
  var tmp = new QDoubleValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_topChanged(self.h, cast[int](addr tmp[]), cQDoubleValidator_slot_callback_topChanged, cQDoubleValidator_slot_callback_topChanged_release)

proc decimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, decimals: cint): void =
  fcQDoubleValidator_decimalsChanged(self.h, decimals)

type QDoubleValidatordecimalsChangedSlot* = proc(decimals: cint)
proc cQDoubleValidator_slot_callback_decimalsChanged(slot: int, decimals: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatordecimalsChangedSlot](cast[pointer](slot))
  let slotval1 = decimals

  nimfunc[](slotval1)

proc cQDoubleValidator_slot_callback_decimalsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatordecimalsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondecimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatordecimalsChangedSlot) =
  var tmp = new QDoubleValidatordecimalsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_decimalsChanged(self.h, cast[int](addr tmp[]), cQDoubleValidator_slot_callback_decimalsChanged, cQDoubleValidator_slot_callback_decimalsChanged_release)

proc notationChanged*(self: gen_qvalidator_types.QDoubleValidator, notation: cint): void =
  fcQDoubleValidator_notationChanged(self.h, cint(notation))

type QDoubleValidatornotationChangedSlot* = proc(notation: cint)
proc cQDoubleValidator_slot_callback_notationChanged(slot: int, notation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatornotationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(notation)

  nimfunc[](slotval1)

proc cQDoubleValidator_slot_callback_notationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatornotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnotationChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatornotationChangedSlot) =
  var tmp = new QDoubleValidatornotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_notationChanged(self.h, cast[int](addr tmp[]), cQDoubleValidator_slot_callback_notationChanged, cQDoubleValidator_slot_callback_notationChanged_release)

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleValidator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDoubleValidatormetaObjectProc* = proc(self: QDoubleValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDoubleValidatormetacastProc* = proc(self: QDoubleValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QDoubleValidatormetacallProc* = proc(self: QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDoubleValidatorvalidateProc* = proc(self: QDoubleValidator, param1: openArray[char], param2: ptr cint): cint {.raises: [], gcsafe.}
type QDoubleValidatorsetRangeProc* = proc(self: QDoubleValidator, bottom: float64, top: float64, decimals: cint): void {.raises: [], gcsafe.}
type QDoubleValidatorfixupProc* = proc(self: QDoubleValidator, param1: openArray[char]): void {.raises: [], gcsafe.}
type QDoubleValidatoreventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDoubleValidatoreventFilterProc* = proc(self: QDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDoubleValidatortimerEventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDoubleValidatorchildEventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDoubleValidatorcustomEventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDoubleValidatorconnectNotifyProc* = proc(self: QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDoubleValidatordisconnectNotifyProc* = proc(self: QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDoubleValidatorVTable* {.inheritable, pure.} = object
  vtbl: cQDoubleValidatorVTable
  metaObject*: QDoubleValidatormetaObjectProc
  metacast*: QDoubleValidatormetacastProc
  metacall*: QDoubleValidatormetacallProc
  validate*: QDoubleValidatorvalidateProc
  setRange*: QDoubleValidatorsetRangeProc
  fixup*: QDoubleValidatorfixupProc
  event*: QDoubleValidatoreventProc
  eventFilter*: QDoubleValidatoreventFilterProc
  timerEvent*: QDoubleValidatortimerEventProc
  childEvent*: QDoubleValidatorchildEventProc
  customEvent*: QDoubleValidatorcustomEventProc
  connectNotify*: QDoubleValidatorconnectNotifyProc
  disconnectNotify*: QDoubleValidatordisconnectNotifyProc
proc QDoubleValidatormetaObject*(self: gen_qvalidator_types.QDoubleValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_virtualbase_metaObject(self.h), owned: false)

proc cQDoubleValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDoubleValidatormetacast*(self: gen_qvalidator_types.QDoubleValidator, param1: cstring): pointer =
  fcQDoubleValidator_virtualbase_metacast(self.h, param1)

proc cQDoubleValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDoubleValidatormetacall*(self: gen_qvalidator_types.QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQDoubleValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDoubleValidatorvalidate*(self: gen_qvalidator_types.QDoubleValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQDoubleValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc cQDoubleValidator_vtable_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QDoubleValidatorsetRange*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64, decimals: cint): void =
  fcQDoubleValidator_virtualbase_setRange(self.h, bottom, top, decimals)

proc cQDoubleValidator_vtable_callback_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = bottom
  let slotval2 = top
  let slotval3 = decimals
  vtbl[].setRange(self, slotval1, slotval2, slotval3)

proc QDoubleValidatorfixup*(self: gen_qvalidator_types.QDoubleValidator, param1: openArray[char]): void =
  fcQDoubleValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc cQDoubleValidator_vtable_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc QDoubleValidatorevent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleValidator_virtualbase_event(self.h, event.h)

proc cQDoubleValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDoubleValidatoreventFilter*(self: gen_qvalidator_types.QDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQDoubleValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDoubleValidatortimerEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDoubleValidator_virtualbase_timerEvent(self.h, event.h)

proc cQDoubleValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDoubleValidatorchildEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDoubleValidator_virtualbase_childEvent(self.h, event.h)

proc cQDoubleValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDoubleValidatorcustomEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleValidator_virtualbase_customEvent(self.h, event.h)

proc cQDoubleValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDoubleValidatorconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleValidator_virtualbase_connectNotify(self.h, signal.h)

proc cQDoubleValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDoubleValidatordisconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc cQDoubleValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDoubleValidator* {.inheritable.} = ref object of QDoubleValidator
  vtbl*: cQDoubleValidatorVTable
method metaObject*(self: VirtualQDoubleValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDoubleValidatormetaObject(self[])
proc cQDoubleValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDoubleValidator, param1: cstring): pointer {.base.} =
  QDoubleValidatormetacast(self[], param1)
proc cQDoubleValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDoubleValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDoubleValidatormetacall(self[], param1, param2, param3)
proc cQDoubleValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method validate*(self: VirtualQDoubleValidator, param1: openArray[char], param2: ptr cint): cint {.base.} =
  QDoubleValidatorvalidate(self[], param1, param2)
proc cQDoubleValidator_method_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method setRange*(self: VirtualQDoubleValidator, bottom: float64, top: float64, decimals: cint): void {.base.} =
  QDoubleValidatorsetRange(self[], bottom, top, decimals)
proc cQDoubleValidator_method_callback_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = bottom
  let slotval2 = top
  let slotval3 = decimals
  inst.setRange(slotval1, slotval2, slotval3)

method fixup*(self: VirtualQDoubleValidator, param1: openArray[char]): void {.base.} =
  QDoubleValidatorfixup(self[], param1)
proc cQDoubleValidator_method_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  inst.fixup(slotval1)

method event*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDoubleValidatorevent(self[], event)
proc cQDoubleValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDoubleValidatoreventFilter(self[], watched, event)
proc cQDoubleValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDoubleValidatortimerEvent(self[], event)
proc cQDoubleValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDoubleValidatorchildEvent(self[], event)
proc cQDoubleValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDoubleValidatorcustomEvent(self[], event)
proc cQDoubleValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDoubleValidatorconnectNotify(self[], signal)
proc cQDoubleValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDoubleValidatordisconnectNotify(self[], signal)
proc cQDoubleValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvalidator_types.QDoubleValidator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDoubleValidator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvalidator_types.QDoubleValidator): cint =
  fcQDoubleValidator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvalidator_types.QDoubleValidator, signal: cstring): cint =
  fcQDoubleValidator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDoubleValidator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQDoubleValidator_vtable_callback_setRange
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDoubleValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    bottom: float64, top: float64, decimals: cint,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQDoubleValidator_vtable_callback_setRange
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDoubleValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new2(addr(vtbl[].vtbl), addr(vtbl[]), bottom, top, decimals), owned: true)

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQDoubleValidator_vtable_callback_setRange
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDoubleValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    bottom: float64, top: float64, decimals: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].setRange):
    vtbl[].vtbl.setRange = cQDoubleValidator_vtable_callback_setRange
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDoubleValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), bottom, top, decimals, parent.h), owned: true)

const cQDoubleValidator_mvtbl = cQDoubleValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDoubleValidator()[])](self.fcQDoubleValidator_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQDoubleValidator_method_callback_metaObject,
  metacast: cQDoubleValidator_method_callback_metacast,
  metacall: cQDoubleValidator_method_callback_metacall,
  validate: cQDoubleValidator_method_callback_validate,
  setRange: cQDoubleValidator_method_callback_setRange,
  fixup: cQDoubleValidator_method_callback_fixup,
  event: cQDoubleValidator_method_callback_event,
  eventFilter: cQDoubleValidator_method_callback_eventFilter,
  timerEvent: cQDoubleValidator_method_callback_timerEvent,
  childEvent: cQDoubleValidator_method_callback_childEvent,
  customEvent: cQDoubleValidator_method_callback_customEvent,
  connectNotify: cQDoubleValidator_method_callback_connectNotify,
  disconnectNotify: cQDoubleValidator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    inst: VirtualQDoubleValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDoubleValidator_new(addr(cQDoubleValidator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    bottom: float64, top: float64, decimals: cint,
    inst: VirtualQDoubleValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDoubleValidator_new2(addr(cQDoubleValidator_mvtbl), addr(inst[]), bottom, top, decimals)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQDoubleValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDoubleValidator_new3(addr(cQDoubleValidator_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    bottom: float64, top: float64, decimals: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQDoubleValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDoubleValidator_new4(addr(cQDoubleValidator_mvtbl), addr(inst[]), bottom, top, decimals, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvalidator_types.QDoubleValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_staticMetaObject())
proc metaObject*(self: gen_qvalidator_types.QRegExpValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegExpValidator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvalidator_types.QRegExpValidator, param1: cstring): pointer =
  fcQRegExpValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QRegExpValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegExpValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QRegExpValidator, s: cstring): string =
  let v_ms = fcQRegExpValidator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QRegExpValidator, s: cstring): string =
  let v_ms = fcQRegExpValidator_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QRegExpValidator, input: openArray[char], pos: ptr cint): cint =
  cint(fcQRegExpValidator_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc setRegExp*(self: gen_qvalidator_types.QRegExpValidator, rx: gen_qregexp_types.QRegExp): void =
  fcQRegExpValidator_setRegExp(self.h, rx.h)

proc regExp*(self: gen_qvalidator_types.QRegExpValidator): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQRegExpValidator_regExp(self.h), owned: false)

proc regExpChanged*(self: gen_qvalidator_types.QRegExpValidator, regExp: gen_qregexp_types.QRegExp): void =
  fcQRegExpValidator_regExpChanged(self.h, regExp.h)

type QRegExpValidatorregExpChangedSlot* = proc(regExp: gen_qregexp_types.QRegExp)
proc cQRegExpValidator_slot_callback_regExpChanged(slot: int, regExp: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QRegExpValidatorregExpChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qregexp_types.QRegExp(h: regExp, owned: false)

  nimfunc[](slotval1)

proc cQRegExpValidator_slot_callback_regExpChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRegExpValidatorregExpChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onregExpChanged*(self: gen_qvalidator_types.QRegExpValidator, slot: QRegExpValidatorregExpChangedSlot) =
  var tmp = new QRegExpValidatorregExpChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_connect_regExpChanged(self.h, cast[int](addr tmp[]), cQRegExpValidator_slot_callback_regExpChanged, cQRegExpValidator_slot_callback_regExpChanged_release)

proc tr*(_: type gen_qvalidator_types.QRegExpValidator, s: cstring, c: cstring): string =
  let v_ms = fcQRegExpValidator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QRegExpValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRegExpValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QRegExpValidator, s: cstring, c: cstring): string =
  let v_ms = fcQRegExpValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QRegExpValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRegExpValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRegExpValidatormetaObjectProc* = proc(self: QRegExpValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRegExpValidatormetacastProc* = proc(self: QRegExpValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QRegExpValidatormetacallProc* = proc(self: QRegExpValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRegExpValidatorvalidateProc* = proc(self: QRegExpValidator, input: openArray[char], pos: ptr cint): cint {.raises: [], gcsafe.}
type QRegExpValidatorfixupProc* = proc(self: QRegExpValidator, param1: openArray[char]): void {.raises: [], gcsafe.}
type QRegExpValidatoreventProc* = proc(self: QRegExpValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRegExpValidatoreventFilterProc* = proc(self: QRegExpValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRegExpValidatortimerEventProc* = proc(self: QRegExpValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRegExpValidatorchildEventProc* = proc(self: QRegExpValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRegExpValidatorcustomEventProc* = proc(self: QRegExpValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRegExpValidatorconnectNotifyProc* = proc(self: QRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRegExpValidatordisconnectNotifyProc* = proc(self: QRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRegExpValidatorVTable* {.inheritable, pure.} = object
  vtbl: cQRegExpValidatorVTable
  metaObject*: QRegExpValidatormetaObjectProc
  metacast*: QRegExpValidatormetacastProc
  metacall*: QRegExpValidatormetacallProc
  validate*: QRegExpValidatorvalidateProc
  fixup*: QRegExpValidatorfixupProc
  event*: QRegExpValidatoreventProc
  eventFilter*: QRegExpValidatoreventFilterProc
  timerEvent*: QRegExpValidatortimerEventProc
  childEvent*: QRegExpValidatorchildEventProc
  customEvent*: QRegExpValidatorcustomEventProc
  connectNotify*: QRegExpValidatorconnectNotifyProc
  disconnectNotify*: QRegExpValidatordisconnectNotifyProc
proc QRegExpValidatormetaObject*(self: gen_qvalidator_types.QRegExpValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegExpValidator_virtualbase_metaObject(self.h), owned: false)

proc cQRegExpValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRegExpValidatormetacast*(self: gen_qvalidator_types.QRegExpValidator, param1: cstring): pointer =
  fcQRegExpValidator_virtualbase_metacast(self.h, param1)

proc cQRegExpValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRegExpValidatormetacall*(self: gen_qvalidator_types.QRegExpValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegExpValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQRegExpValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRegExpValidatorvalidate*(self: gen_qvalidator_types.QRegExpValidator, input: openArray[char], pos: ptr cint): cint =
  cint(fcQRegExpValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc cQRegExpValidator_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QRegExpValidatorfixup*(self: gen_qvalidator_types.QRegExpValidator, param1: openArray[char]): void =
  fcQRegExpValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc cQRegExpValidator_vtable_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc QRegExpValidatorevent*(self: gen_qvalidator_types.QRegExpValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegExpValidator_virtualbase_event(self.h, event.h)

proc cQRegExpValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRegExpValidatoreventFilter*(self: gen_qvalidator_types.QRegExpValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegExpValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQRegExpValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRegExpValidatortimerEvent*(self: gen_qvalidator_types.QRegExpValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRegExpValidator_virtualbase_timerEvent(self.h, event.h)

proc cQRegExpValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QRegExpValidatorchildEvent*(self: gen_qvalidator_types.QRegExpValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRegExpValidator_virtualbase_childEvent(self.h, event.h)

proc cQRegExpValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QRegExpValidatorcustomEvent*(self: gen_qvalidator_types.QRegExpValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQRegExpValidator_virtualbase_customEvent(self.h, event.h)

proc cQRegExpValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QRegExpValidatorconnectNotify*(self: gen_qvalidator_types.QRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegExpValidator_virtualbase_connectNotify(self.h, signal.h)

proc cQRegExpValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QRegExpValidatordisconnectNotify*(self: gen_qvalidator_types.QRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegExpValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc cQRegExpValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
  let self = QRegExpValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRegExpValidator* {.inheritable.} = ref object of QRegExpValidator
  vtbl*: cQRegExpValidatorVTable
method metaObject*(self: VirtualQRegExpValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRegExpValidatormetaObject(self[])
proc cQRegExpValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQRegExpValidator, param1: cstring): pointer {.base.} =
  QRegExpValidatormetacast(self[], param1)
proc cQRegExpValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQRegExpValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRegExpValidatormetacall(self[], param1, param2, param3)
proc cQRegExpValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method validate*(self: VirtualQRegExpValidator, input: openArray[char], pos: ptr cint): cint {.base.} =
  QRegExpValidatorvalidate(self[], input, pos)
proc cQRegExpValidator_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQRegExpValidator, param1: openArray[char]): void {.base.} =
  QRegExpValidatorfixup(self[], param1)
proc cQRegExpValidator_method_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  inst.fixup(slotval1)

method event*(self: VirtualQRegExpValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRegExpValidatorevent(self[], event)
proc cQRegExpValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQRegExpValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRegExpValidatoreventFilter(self[], watched, event)
proc cQRegExpValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQRegExpValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRegExpValidatortimerEvent(self[], event)
proc cQRegExpValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQRegExpValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRegExpValidatorchildEvent(self[], event)
proc cQRegExpValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQRegExpValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRegExpValidatorcustomEvent(self[], event)
proc cQRegExpValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRegExpValidatorconnectNotify(self[], signal)
proc cQRegExpValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRegExpValidatordisconnectNotify(self[], signal)
proc cQRegExpValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegExpValidator](fcQRegExpValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvalidator_types.QRegExpValidator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRegExpValidator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvalidator_types.QRegExpValidator): cint =
  fcQRegExpValidator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvalidator_types.QRegExpValidator, signal: cstring): cint =
  fcQRegExpValidator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvalidator_types.QRegExpValidator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRegExpValidator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    vtbl: ref QRegExpValidatorVTable = nil): gen_qvalidator_types.QRegExpValidator =
  let vtbl = if vtbl == nil: new QRegExpValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegExpValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegExpValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegExpValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegExpValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegExpValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegExpValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegExpValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegExpValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegExpValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegExpValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegExpValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegExpValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegExpValidator(h: fcQRegExpValidator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    rx: gen_qregexp_types.QRegExp,
    vtbl: ref QRegExpValidatorVTable = nil): gen_qvalidator_types.QRegExpValidator =
  let vtbl = if vtbl == nil: new QRegExpValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegExpValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegExpValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegExpValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegExpValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegExpValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegExpValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegExpValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegExpValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegExpValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegExpValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegExpValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegExpValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegExpValidator(h: fcQRegExpValidator_new2(addr(vtbl[].vtbl), addr(vtbl[]), rx.h), owned: true)

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRegExpValidatorVTable = nil): gen_qvalidator_types.QRegExpValidator =
  let vtbl = if vtbl == nil: new QRegExpValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegExpValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegExpValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegExpValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegExpValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegExpValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegExpValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegExpValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegExpValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegExpValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegExpValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegExpValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegExpValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegExpValidator(h: fcQRegExpValidator_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    rx: gen_qregexp_types.QRegExp, parent: gen_qobject_types.QObject,
    vtbl: ref QRegExpValidatorVTable = nil): gen_qvalidator_types.QRegExpValidator =
  let vtbl = if vtbl == nil: new QRegExpValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegExpValidatorVTable](fcQRegExpValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegExpValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegExpValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegExpValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegExpValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegExpValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegExpValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegExpValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegExpValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegExpValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegExpValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegExpValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegExpValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegExpValidator(h: fcQRegExpValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), rx.h, parent.h), owned: true)

const cQRegExpValidator_mvtbl = cQRegExpValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRegExpValidator()[])](self.fcQRegExpValidator_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQRegExpValidator_method_callback_metaObject,
  metacast: cQRegExpValidator_method_callback_metacast,
  metacall: cQRegExpValidator_method_callback_metacall,
  validate: cQRegExpValidator_method_callback_validate,
  fixup: cQRegExpValidator_method_callback_fixup,
  event: cQRegExpValidator_method_callback_event,
  eventFilter: cQRegExpValidator_method_callback_eventFilter,
  timerEvent: cQRegExpValidator_method_callback_timerEvent,
  childEvent: cQRegExpValidator_method_callback_childEvent,
  customEvent: cQRegExpValidator_method_callback_customEvent,
  connectNotify: cQRegExpValidator_method_callback_connectNotify,
  disconnectNotify: cQRegExpValidator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    inst: VirtualQRegExpValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegExpValidator_new(addr(cQRegExpValidator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    rx: gen_qregexp_types.QRegExp,
    inst: VirtualQRegExpValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegExpValidator_new2(addr(cQRegExpValidator_mvtbl), addr(inst[]), rx.h)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRegExpValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegExpValidator_new3(addr(cQRegExpValidator_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QRegExpValidator,
    rx: gen_qregexp_types.QRegExp, parent: gen_qobject_types.QObject,
    inst: VirtualQRegExpValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegExpValidator_new4(addr(cQRegExpValidator_mvtbl), addr(inst[]), rx.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvalidator_types.QRegExpValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegExpValidator_staticMetaObject())
proc metaObject*(self: gen_qvalidator_types.QRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cstring): pointer =
  fcQRegularExpressionValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegularExpressionValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring): string =
  let v_ms = fcQRegularExpressionValidator_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring): string =
  let v_ms = fcQRegularExpressionValidator_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc regularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpressionValidator_regularExpression(self.h), owned: true)

proc setRegularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_setRegularExpression(self.h, re.h)

proc regularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_regularExpressionChanged(self.h, re.h)

type QRegularExpressionValidatorregularExpressionChangedSlot* = proc(re: gen_qregularexpression_types.QRegularExpression)
proc cQRegularExpressionValidator_slot_callback_regularExpressionChanged(slot: int, re: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QRegularExpressionValidatorregularExpressionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qregularexpression_types.QRegularExpression(h: re, owned: false)

  nimfunc[](slotval1)

proc cQRegularExpressionValidator_slot_callback_regularExpressionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRegularExpressionValidatorregularExpressionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onregularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorregularExpressionChangedSlot) =
  var tmp = new QRegularExpressionValidatorregularExpressionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_connect_regularExpressionChanged(self.h, cast[int](addr tmp[]), cQRegularExpressionValidator_slot_callback_regularExpressionChanged, cQRegularExpressionValidator_slot_callback_regularExpressionChanged_release)

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring): string =
  let v_ms = fcQRegularExpressionValidator_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRegularExpressionValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring): string =
  let v_ms = fcQRegularExpressionValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRegularExpressionValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRegularExpressionValidatormetaObjectProc* = proc(self: QRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRegularExpressionValidatormetacastProc* = proc(self: QRegularExpressionValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QRegularExpressionValidatormetacallProc* = proc(self: QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRegularExpressionValidatorvalidateProc* = proc(self: QRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint {.raises: [], gcsafe.}
type QRegularExpressionValidatorfixupProc* = proc(self: QRegularExpressionValidator, param1: openArray[char]): void {.raises: [], gcsafe.}
type QRegularExpressionValidatoreventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRegularExpressionValidatoreventFilterProc* = proc(self: QRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRegularExpressionValidatortimerEventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorchildEventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorcustomEventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorconnectNotifyProc* = proc(self: QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRegularExpressionValidatordisconnectNotifyProc* = proc(self: QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorVTable* {.inheritable, pure.} = object
  vtbl: cQRegularExpressionValidatorVTable
  metaObject*: QRegularExpressionValidatormetaObjectProc
  metacast*: QRegularExpressionValidatormetacastProc
  metacall*: QRegularExpressionValidatormetacallProc
  validate*: QRegularExpressionValidatorvalidateProc
  fixup*: QRegularExpressionValidatorfixupProc
  event*: QRegularExpressionValidatoreventProc
  eventFilter*: QRegularExpressionValidatoreventFilterProc
  timerEvent*: QRegularExpressionValidatortimerEventProc
  childEvent*: QRegularExpressionValidatorchildEventProc
  customEvent*: QRegularExpressionValidatorcustomEventProc
  connectNotify*: QRegularExpressionValidatorconnectNotifyProc
  disconnectNotify*: QRegularExpressionValidatordisconnectNotifyProc
proc QRegularExpressionValidatormetaObject*(self: gen_qvalidator_types.QRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_virtualbase_metaObject(self.h), owned: false)

proc cQRegularExpressionValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRegularExpressionValidatormetacast*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cstring): pointer =
  fcQRegularExpressionValidator_virtualbase_metacast(self.h, param1)

proc cQRegularExpressionValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRegularExpressionValidatormetacall*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegularExpressionValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQRegularExpressionValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRegularExpressionValidatorvalidate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc cQRegularExpressionValidator_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QRegularExpressionValidatorfixup*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: openArray[char]): void =
  fcQRegularExpressionValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc cQRegularExpressionValidator_vtable_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc QRegularExpressionValidatorevent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegularExpressionValidator_virtualbase_event(self.h, event.h)

proc cQRegularExpressionValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRegularExpressionValidatoreventFilter*(self: gen_qvalidator_types.QRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegularExpressionValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQRegularExpressionValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRegularExpressionValidatortimerEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRegularExpressionValidator_virtualbase_timerEvent(self.h, event.h)

proc cQRegularExpressionValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QRegularExpressionValidatorchildEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRegularExpressionValidator_virtualbase_childEvent(self.h, event.h)

proc cQRegularExpressionValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QRegularExpressionValidatorcustomEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQRegularExpressionValidator_virtualbase_customEvent(self.h, event.h)

proc cQRegularExpressionValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QRegularExpressionValidatorconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegularExpressionValidator_virtualbase_connectNotify(self.h, signal.h)

proc cQRegularExpressionValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QRegularExpressionValidatordisconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegularExpressionValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc cQRegularExpressionValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRegularExpressionValidator* {.inheritable.} = ref object of QRegularExpressionValidator
  vtbl*: cQRegularExpressionValidatorVTable
method metaObject*(self: VirtualQRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRegularExpressionValidatormetaObject(self[])
proc cQRegularExpressionValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQRegularExpressionValidator, param1: cstring): pointer {.base.} =
  QRegularExpressionValidatormetacast(self[], param1)
proc cQRegularExpressionValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRegularExpressionValidatormetacall(self[], param1, param2, param3)
proc cQRegularExpressionValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method validate*(self: VirtualQRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint {.base.} =
  QRegularExpressionValidatorvalidate(self[], input, pos)
proc cQRegularExpressionValidator_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQRegularExpressionValidator, param1: openArray[char]): void {.base.} =
  QRegularExpressionValidatorfixup(self[], param1)
proc cQRegularExpressionValidator_method_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  inst.fixup(slotval1)

method event*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRegularExpressionValidatorevent(self[], event)
proc cQRegularExpressionValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRegularExpressionValidatoreventFilter(self[], watched, event)
proc cQRegularExpressionValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRegularExpressionValidatortimerEvent(self[], event)
proc cQRegularExpressionValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRegularExpressionValidatorchildEvent(self[], event)
proc cQRegularExpressionValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRegularExpressionValidatorcustomEvent(self[], event)
proc cQRegularExpressionValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRegularExpressionValidatorconnectNotify(self[], signal)
proc cQRegularExpressionValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRegularExpressionValidatordisconnectNotify(self[], signal)
proc cQRegularExpressionValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvalidator_types.QRegularExpressionValidator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRegularExpressionValidator_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvalidator_types.QRegularExpressionValidator): cint =
  fcQRegularExpressionValidator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: cstring): cint =
  fcQRegularExpressionValidator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRegularExpressionValidator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegularExpressionValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    re: gen_qregularexpression_types.QRegularExpression,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegularExpressionValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new2(addr(vtbl[].vtbl), addr(vtbl[]), re.h), owned: true)

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegularExpressionValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    re: gen_qregularexpression_types.QRegularExpression, parent: gen_qobject_types.QObject,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRegularExpressionValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), re.h, parent.h), owned: true)

const cQRegularExpressionValidator_mvtbl = cQRegularExpressionValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRegularExpressionValidator()[])](self.fcQRegularExpressionValidator_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQRegularExpressionValidator_method_callback_metaObject,
  metacast: cQRegularExpressionValidator_method_callback_metacast,
  metacall: cQRegularExpressionValidator_method_callback_metacall,
  validate: cQRegularExpressionValidator_method_callback_validate,
  fixup: cQRegularExpressionValidator_method_callback_fixup,
  event: cQRegularExpressionValidator_method_callback_event,
  eventFilter: cQRegularExpressionValidator_method_callback_eventFilter,
  timerEvent: cQRegularExpressionValidator_method_callback_timerEvent,
  childEvent: cQRegularExpressionValidator_method_callback_childEvent,
  customEvent: cQRegularExpressionValidator_method_callback_customEvent,
  connectNotify: cQRegularExpressionValidator_method_callback_connectNotify,
  disconnectNotify: cQRegularExpressionValidator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    inst: VirtualQRegularExpressionValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegularExpressionValidator_new(addr(cQRegularExpressionValidator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    re: gen_qregularexpression_types.QRegularExpression,
    inst: VirtualQRegularExpressionValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegularExpressionValidator_new2(addr(cQRegularExpressionValidator_mvtbl), addr(inst[]), re.h)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRegularExpressionValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegularExpressionValidator_new3(addr(cQRegularExpressionValidator_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    re: gen_qregularexpression_types.QRegularExpression, parent: gen_qobject_types.QObject,
    inst: VirtualQRegularExpressionValidator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRegularExpressionValidator_new4(addr(cQRegularExpressionValidator_mvtbl), addr(inst[]), re.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvalidator_types.QRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_staticMetaObject())
