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
  ../QtCore/gen_qregularexpression_types
export
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qregularexpression_types

type cQValidator*{.exportc: "QValidator", incompleteStruct.} = object
type cQIntValidator*{.exportc: "QIntValidator", incompleteStruct.} = object
type cQDoubleValidator*{.exportc: "QDoubleValidator", incompleteStruct.} = object
type cQRegularExpressionValidator*{.exportc: "QRegularExpressionValidator", incompleteStruct.} = object

proc fcQValidator_metaObject(self: pointer): pointer {.importc: "QValidator_metaObject".}
proc fcQValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_metacast".}
proc fcQValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QValidator_metacall".}
proc fcQValidator_tr(s: cstring): struct_miqt_string {.importc: "QValidator_tr".}
proc fcQValidator_setLocale(self: pointer, locale: pointer): void {.importc: "QValidator_setLocale".}
proc fcQValidator_locale(self: pointer): pointer {.importc: "QValidator_locale".}
proc fcQValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QValidator_validate".}
proc fcQValidator_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_fixup".}
proc fcQValidator_changed(self: pointer): void {.importc: "QValidator_changed".}
proc fcQValidator_connect_changed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QValidator_connect_changed".}
proc fcQValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_tr2".}
proc fcQValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_tr3".}
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
proc fcQIntValidator_vtbl(self: pointer): pointer {.importc: "QIntValidator_vtbl".}
proc fcQIntValidator_vdata(self: pointer): pointer {.importc: "QIntValidator_vdata".}

type cQIntValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDoubleValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_validate".}
proc fcQDoubleValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDoubleValidator_fixup".}
proc fcQDoubleValidator_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.importc: "QDoubleValidator_setRange".}
proc fcQDoubleValidator_setRange2(self: pointer, bottom: float64, top: float64): void {.importc: "QDoubleValidator_setRange2".}
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
proc fcQDoubleValidator_vtbl(self: pointer): pointer {.importc: "QDoubleValidator_vtbl".}
proc fcQDoubleValidator_vdata(self: pointer): pointer {.importc: "QDoubleValidator_vdata".}

type cQDoubleValidatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDoubleValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDoubleValidator_virtualbase_fixup".}
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
proc fcQRegularExpressionValidator_metaObject(self: pointer): pointer {.importc: "QRegularExpressionValidator_metaObject".}
proc fcQRegularExpressionValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_metacast".}
proc fcQRegularExpressionValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegularExpressionValidator_metacall".}
proc fcQRegularExpressionValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr".}
proc fcQRegularExpressionValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_validate".}
proc fcQRegularExpressionValidator_regularExpression(self: pointer): pointer {.importc: "QRegularExpressionValidator_regularExpression".}
proc fcQRegularExpressionValidator_setRegularExpression(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_setRegularExpression".}
proc fcQRegularExpressionValidator_regularExpressionChanged(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_regularExpressionChanged".}
proc fcQRegularExpressionValidator_connect_regularExpressionChanged(self: pointer, slot: int, callback: proc (slot: int, re: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRegularExpressionValidator_connect_regularExpressionChanged".}
proc fcQRegularExpressionValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr2".}
proc fcQRegularExpressionValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_tr3".}
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
proc fcQValidator_slot_callback_changed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QValidatorchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQValidator_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QValidatorchangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onChanged*(self: gen_qvalidator_types.QValidator, slot: QValidatorchangedSlot) =
  var tmp = new QValidatorchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_connect_changed(self.h, cast[int](addr tmp[]), fcQValidator_slot_callback_changed, fcQValidator_slot_callback_changed_release)

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

proc QValidatormetacast*(self: gen_qvalidator_types.QValidator, param1: cstring): pointer =
  fcQValidator_virtualbase_metacast(self.h, param1)

proc QValidatormetacall*(self: gen_qvalidator_types.QValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QValidatorfixup*(self: gen_qvalidator_types.QValidator, param1: openArray[char]): void =
  fcQValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc QValidatorevent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQValidator_virtualbase_event(self.h, event.h)

proc QValidatoreventFilter*(self: gen_qvalidator_types.QValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QValidatortimerEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQValidator_virtualbase_timerEvent(self.h, event.h)

proc QValidatorchildEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQValidator_virtualbase_childEvent(self.h, event.h)

proc QValidatorcustomEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQValidator_virtualbase_customEvent(self.h, event.h)

proc QValidatorconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQValidator_virtualbase_connectNotify(self.h, signal.h)

proc QValidatordisconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQValidator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQValidator_vtable_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQValidator_vtable_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc fcQValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](fcQValidator_vdata(self))
  let self = QValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQValidator* {.inheritable.} = ref object of QValidator
  vtbl*: cQValidatorVTable

method metaObject*(self: VirtualQValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QValidatormetaObject(self[])
method metacast*(self: VirtualQValidator, param1: cstring): pointer {.base.} =
  QValidatormetacast(self[], param1)
method metacall*(self: VirtualQValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QValidatormetacall(self[], param1, param2, param3)
method validate*(self: VirtualQValidator, param1: openArray[char], param2: ptr cint): cint {.base.} =
  raiseAssert("missing implementation of QValidator.validate")
method fixup*(self: VirtualQValidator, param1: openArray[char]): void {.base.} =
  QValidatorfixup(self[], param1)
method event*(self: VirtualQValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QValidatorevent(self[], event)
method eventFilter*(self: VirtualQValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QValidatoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QValidatortimerEvent(self[], event)
method childEvent*(self: VirtualQValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QValidatorchildEvent(self[], event)
method customEvent*(self: VirtualQValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QValidatorcustomEvent(self[], event)
method connectNotify*(self: VirtualQValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QValidatorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QValidatordisconnectNotify(self[], signal)

proc fcQValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQValidator_method_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

proc fcQValidator_method_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  inst.fixup(slotval1)

proc fcQValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQValidator](fcQValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
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
    vtbl[].vtbl.metaObject = fcQValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QValidator(h: fcQValidator_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQValidator_mvtbl = cQValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQValidator()[])](self.fcQValidator_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQValidator_method_callback_metaObject,
  metacast: fcQValidator_method_callback_metacast,
  metacall: fcQValidator_method_callback_metacall,
  validate: fcQValidator_method_callback_validate,
  fixup: fcQValidator_method_callback_fixup,
  event: fcQValidator_method_callback_event,
  eventFilter: fcQValidator_method_callback_eventFilter,
  timerEvent: fcQValidator_method_callback_timerEvent,
  childEvent: fcQValidator_method_callback_childEvent,
  customEvent: fcQValidator_method_callback_customEvent,
  connectNotify: fcQValidator_method_callback_connectNotify,
  disconnectNotify: fcQValidator_method_callback_disconnectNotify,
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
proc fcQIntValidator_slot_callback_bottomChanged(slot: int, bottom: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIntValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc fcQIntValidator_slot_callback_bottomChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIntValidatorbottomChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBottomChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorbottomChangedSlot) =
  var tmp = new QIntValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]), fcQIntValidator_slot_callback_bottomChanged, fcQIntValidator_slot_callback_bottomChanged_release)

proc topChanged*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_topChanged(self.h, top)

type QIntValidatortopChangedSlot* = proc(top: cint)
proc fcQIntValidator_slot_callback_topChanged(slot: int, top: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIntValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc fcQIntValidator_slot_callback_topChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIntValidatortopChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTopChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatortopChangedSlot) =
  var tmp = new QIntValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_topChanged(self.h, cast[int](addr tmp[]), fcQIntValidator_slot_callback_topChanged, fcQIntValidator_slot_callback_topChanged_release)

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

type QIntValidatormetaObjectProc* = proc(self: QIntValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIntValidatormetacastProc* = proc(self: QIntValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QIntValidatormetacallProc* = proc(self: QIntValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIntValidatorvalidateProc* = proc(self: QIntValidator, param1: openArray[char], param2: ptr cint): cint {.raises: [], gcsafe.}
type QIntValidatorfixupProc* = proc(self: QIntValidator, input: openArray[char]): void {.raises: [], gcsafe.}
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
  event*: QIntValidatoreventProc
  eventFilter*: QIntValidatoreventFilterProc
  timerEvent*: QIntValidatortimerEventProc
  childEvent*: QIntValidatorchildEventProc
  customEvent*: QIntValidatorcustomEventProc
  connectNotify*: QIntValidatorconnectNotifyProc
  disconnectNotify*: QIntValidatordisconnectNotifyProc

proc QIntValidatormetaObject*(self: gen_qvalidator_types.QIntValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_virtualbase_metaObject(self.h), owned: false)

proc QIntValidatormetacast*(self: gen_qvalidator_types.QIntValidator, param1: cstring): pointer =
  fcQIntValidator_virtualbase_metacast(self.h, param1)

proc QIntValidatormetacall*(self: gen_qvalidator_types.QIntValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQIntValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QIntValidatorvalidate*(self: gen_qvalidator_types.QIntValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQIntValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc QIntValidatorfixup*(self: gen_qvalidator_types.QIntValidator, input: openArray[char]): void =
  fcQIntValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc QIntValidatorevent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQIntValidator_virtualbase_event(self.h, event.h)

proc QIntValidatoreventFilter*(self: gen_qvalidator_types.QIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIntValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QIntValidatortimerEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIntValidator_virtualbase_timerEvent(self.h, event.h)

proc QIntValidatorchildEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIntValidator_virtualbase_childEvent(self.h, event.h)

proc QIntValidatorcustomEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQIntValidator_virtualbase_customEvent(self.h, event.h)

proc QIntValidatorconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIntValidator_virtualbase_connectNotify(self.h, signal.h)

proc QIntValidatordisconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIntValidator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQIntValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQIntValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQIntValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQIntValidator_vtable_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQIntValidator_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc fcQIntValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQIntValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQIntValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQIntValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQIntValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQIntValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQIntValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](fcQIntValidator_vdata(self))
  let self = QIntValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQIntValidator* {.inheritable.} = ref object of QIntValidator
  vtbl*: cQIntValidatorVTable

method metaObject*(self: VirtualQIntValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QIntValidatormetaObject(self[])
method metacast*(self: VirtualQIntValidator, param1: cstring): pointer {.base.} =
  QIntValidatormetacast(self[], param1)
method metacall*(self: VirtualQIntValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QIntValidatormetacall(self[], param1, param2, param3)
method validate*(self: VirtualQIntValidator, param1: openArray[char], param2: ptr cint): cint {.base.} =
  QIntValidatorvalidate(self[], param1, param2)
method fixup*(self: VirtualQIntValidator, input: openArray[char]): void {.base.} =
  QIntValidatorfixup(self[], input)
method event*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIntValidatorevent(self[], event)
method eventFilter*(self: VirtualQIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIntValidatoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QIntValidatortimerEvent(self[], event)
method childEvent*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QIntValidatorchildEvent(self[], event)
method customEvent*(self: VirtualQIntValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QIntValidatorcustomEvent(self[], event)
method connectNotify*(self: VirtualQIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIntValidatorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIntValidatordisconnectNotify(self[], signal)

proc fcQIntValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQIntValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQIntValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQIntValidator_method_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

proc fcQIntValidator_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

proc fcQIntValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQIntValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQIntValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQIntValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQIntValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQIntValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIntValidator](fcQIntValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQIntValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
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
    vtbl[].vtbl.metaObject = fcQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQIntValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQIntValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQIntValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQIntValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQIntValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQIntValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQIntValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQIntValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQIntValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQIntValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQIntValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQIntValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQIntValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQIntValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQIntValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), bottom, top, parent.h), owned: true)

const cQIntValidator_mvtbl = cQIntValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIntValidator()[])](self.fcQIntValidator_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQIntValidator_method_callback_metaObject,
  metacast: fcQIntValidator_method_callback_metacast,
  metacall: fcQIntValidator_method_callback_metacall,
  validate: fcQIntValidator_method_callback_validate,
  fixup: fcQIntValidator_method_callback_fixup,
  event: fcQIntValidator_method_callback_event,
  eventFilter: fcQIntValidator_method_callback_eventFilter,
  timerEvent: fcQIntValidator_method_callback_timerEvent,
  childEvent: fcQIntValidator_method_callback_childEvent,
  customEvent: fcQIntValidator_method_callback_customEvent,
  connectNotify: fcQIntValidator_method_callback_connectNotify,
  disconnectNotify: fcQIntValidator_method_callback_disconnectNotify,
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

proc validate*(self: gen_qvalidator_types.QDoubleValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQDoubleValidator_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QDoubleValidator, input: openArray[char]): void =
  fcQDoubleValidator_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc setRange*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64, decimals: cint): void =
  fcQDoubleValidator_setRange(self.h, bottom, top, decimals)

proc setRange*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64): void =
  fcQDoubleValidator_setRange2(self.h, bottom, top)

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
proc fcQDoubleValidator_slot_callback_bottomChanged(slot: int, bottom: float64) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc fcQDoubleValidator_slot_callback_bottomChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatorbottomChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBottomChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorbottomChangedSlot) =
  var tmp = new QDoubleValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]), fcQDoubleValidator_slot_callback_bottomChanged, fcQDoubleValidator_slot_callback_bottomChanged_release)

proc topChanged*(self: gen_qvalidator_types.QDoubleValidator, top: float64): void =
  fcQDoubleValidator_topChanged(self.h, top)

type QDoubleValidatortopChangedSlot* = proc(top: float64)
proc fcQDoubleValidator_slot_callback_topChanged(slot: int, top: float64) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc fcQDoubleValidator_slot_callback_topChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatortopChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTopChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatortopChangedSlot) =
  var tmp = new QDoubleValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_topChanged(self.h, cast[int](addr tmp[]), fcQDoubleValidator_slot_callback_topChanged, fcQDoubleValidator_slot_callback_topChanged_release)

proc decimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, decimals: cint): void =
  fcQDoubleValidator_decimalsChanged(self.h, decimals)

type QDoubleValidatordecimalsChangedSlot* = proc(decimals: cint)
proc fcQDoubleValidator_slot_callback_decimalsChanged(slot: int, decimals: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatordecimalsChangedSlot](cast[pointer](slot))
  let slotval1 = decimals

  nimfunc[](slotval1)

proc fcQDoubleValidator_slot_callback_decimalsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatordecimalsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDecimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatordecimalsChangedSlot) =
  var tmp = new QDoubleValidatordecimalsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_decimalsChanged(self.h, cast[int](addr tmp[]), fcQDoubleValidator_slot_callback_decimalsChanged, fcQDoubleValidator_slot_callback_decimalsChanged_release)

proc notationChanged*(self: gen_qvalidator_types.QDoubleValidator, notation: cint): void =
  fcQDoubleValidator_notationChanged(self.h, cint(notation))

type QDoubleValidatornotationChangedSlot* = proc(notation: cint)
proc fcQDoubleValidator_slot_callback_notationChanged(slot: int, notation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDoubleValidatornotationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(notation)

  nimfunc[](slotval1)

proc fcQDoubleValidator_slot_callback_notationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDoubleValidatornotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNotationChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatornotationChangedSlot) =
  var tmp = new QDoubleValidatornotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_notationChanged(self.h, cast[int](addr tmp[]), fcQDoubleValidator_slot_callback_notationChanged, fcQDoubleValidator_slot_callback_notationChanged_release)

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

type QDoubleValidatormetaObjectProc* = proc(self: QDoubleValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDoubleValidatormetacastProc* = proc(self: QDoubleValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QDoubleValidatormetacallProc* = proc(self: QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDoubleValidatorvalidateProc* = proc(self: QDoubleValidator, param1: openArray[char], param2: ptr cint): cint {.raises: [], gcsafe.}
type QDoubleValidatorfixupProc* = proc(self: QDoubleValidator, input: openArray[char]): void {.raises: [], gcsafe.}
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

proc QDoubleValidatormetacast*(self: gen_qvalidator_types.QDoubleValidator, param1: cstring): pointer =
  fcQDoubleValidator_virtualbase_metacast(self.h, param1)

proc QDoubleValidatormetacall*(self: gen_qvalidator_types.QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDoubleValidatorvalidate*(self: gen_qvalidator_types.QDoubleValidator, param1: openArray[char], param2: ptr cint): cint =
  cint(fcQDoubleValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2))

proc QDoubleValidatorfixup*(self: gen_qvalidator_types.QDoubleValidator, input: openArray[char]): void =
  fcQDoubleValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))))

proc QDoubleValidatorevent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleValidator_virtualbase_event(self.h, event.h)

proc QDoubleValidatoreventFilter*(self: gen_qvalidator_types.QDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDoubleValidatortimerEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDoubleValidator_virtualbase_timerEvent(self.h, event.h)

proc QDoubleValidatorchildEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDoubleValidator_virtualbase_childEvent(self.h, event.h)

proc QDoubleValidatorcustomEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleValidator_virtualbase_customEvent(self.h, event.h)

proc QDoubleValidatorconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleValidator_virtualbase_connectNotify(self.h, signal.h)

proc QDoubleValidatordisconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleValidator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDoubleValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDoubleValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDoubleValidator_vtable_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQDoubleValidator_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc fcQDoubleValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDoubleValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDoubleValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDoubleValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDoubleValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDoubleValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDoubleValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](fcQDoubleValidator_vdata(self))
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDoubleValidator* {.inheritable.} = ref object of QDoubleValidator
  vtbl*: cQDoubleValidatorVTable

method metaObject*(self: VirtualQDoubleValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDoubleValidatormetaObject(self[])
method metacast*(self: VirtualQDoubleValidator, param1: cstring): pointer {.base.} =
  QDoubleValidatormetacast(self[], param1)
method metacall*(self: VirtualQDoubleValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDoubleValidatormetacall(self[], param1, param2, param3)
method validate*(self: VirtualQDoubleValidator, param1: openArray[char], param2: ptr cint): cint {.base.} =
  QDoubleValidatorvalidate(self[], param1, param2)
method fixup*(self: VirtualQDoubleValidator, input: openArray[char]): void {.base.} =
  QDoubleValidatorfixup(self[], input)
method event*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDoubleValidatorevent(self[], event)
method eventFilter*(self: VirtualQDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDoubleValidatoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDoubleValidatortimerEvent(self[], event)
method childEvent*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDoubleValidatorchildEvent(self[], event)
method customEvent*(self: VirtualQDoubleValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDoubleValidatorcustomEvent(self[], event)
method connectNotify*(self: VirtualQDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDoubleValidatorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDoubleValidatordisconnectNotify(self[], signal)

proc fcQDoubleValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDoubleValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDoubleValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDoubleValidator_method_callback_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

proc fcQDoubleValidator_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

proc fcQDoubleValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDoubleValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDoubleValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDoubleValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDoubleValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDoubleValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDoubleValidator](fcQDoubleValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDoubleValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
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
    vtbl[].vtbl.metaObject = fcQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDoubleValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDoubleValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDoubleValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQDoubleValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDoubleValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDoubleValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQDoubleValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQDoubleValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDoubleValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDoubleValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDoubleValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDoubleValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDoubleValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDoubleValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDoubleValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), bottom, top, decimals, parent.h), owned: true)

const cQDoubleValidator_mvtbl = cQDoubleValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDoubleValidator()[])](self.fcQDoubleValidator_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDoubleValidator_method_callback_metaObject,
  metacast: fcQDoubleValidator_method_callback_metacast,
  metacall: fcQDoubleValidator_method_callback_metacall,
  validate: fcQDoubleValidator_method_callback_validate,
  fixup: fcQDoubleValidator_method_callback_fixup,
  event: fcQDoubleValidator_method_callback_event,
  eventFilter: fcQDoubleValidator_method_callback_eventFilter,
  timerEvent: fcQDoubleValidator_method_callback_timerEvent,
  childEvent: fcQDoubleValidator_method_callback_childEvent,
  customEvent: fcQDoubleValidator_method_callback_customEvent,
  connectNotify: fcQDoubleValidator_method_callback_connectNotify,
  disconnectNotify: fcQDoubleValidator_method_callback_disconnectNotify,
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

proc validate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc regularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpressionValidator_regularExpression(self.h), owned: true)

proc setRegularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_setRegularExpression(self.h, re.h)

proc regularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_regularExpressionChanged(self.h, re.h)

type QRegularExpressionValidatorregularExpressionChangedSlot* = proc(re: gen_qregularexpression_types.QRegularExpression)
proc fcQRegularExpressionValidator_slot_callback_regularExpressionChanged(slot: int, re: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QRegularExpressionValidatorregularExpressionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qregularexpression_types.QRegularExpression(h: re, owned: false)

  nimfunc[](slotval1)

proc fcQRegularExpressionValidator_slot_callback_regularExpressionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRegularExpressionValidatorregularExpressionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRegularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorregularExpressionChangedSlot) =
  var tmp = new QRegularExpressionValidatorregularExpressionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_connect_regularExpressionChanged(self.h, cast[int](addr tmp[]), fcQRegularExpressionValidator_slot_callback_regularExpressionChanged, fcQRegularExpressionValidator_slot_callback_regularExpressionChanged_release)

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

proc QRegularExpressionValidatormetacast*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cstring): pointer =
  fcQRegularExpressionValidator_virtualbase_metacast(self.h, param1)

proc QRegularExpressionValidatormetacall*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegularExpressionValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRegularExpressionValidatorvalidate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_virtualbase_validate(self.h, struct_miqt_string(data: if len(input) > 0: addr input[0] else: nil, len: csize_t(len(input))), pos))

proc QRegularExpressionValidatorfixup*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: openArray[char]): void =
  fcQRegularExpressionValidator_virtualbase_fixup(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc QRegularExpressionValidatorevent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegularExpressionValidator_virtualbase_event(self.h, event.h)

proc QRegularExpressionValidatoreventFilter*(self: gen_qvalidator_types.QRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegularExpressionValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRegularExpressionValidatortimerEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRegularExpressionValidator_virtualbase_timerEvent(self.h, event.h)

proc QRegularExpressionValidatorchildEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRegularExpressionValidator_virtualbase_childEvent(self.h, event.h)

proc QRegularExpressionValidatorcustomEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQRegularExpressionValidator_virtualbase_customEvent(self.h, event.h)

proc QRegularExpressionValidatorconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegularExpressionValidator_virtualbase_connectNotify(self.h, signal.h)

proc QRegularExpressionValidatordisconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegularExpressionValidator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRegularExpressionValidator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRegularExpressionValidator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRegularExpressionValidator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRegularExpressionValidator_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQRegularExpressionValidator_vtable_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc fcQRegularExpressionValidator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRegularExpressionValidator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRegularExpressionValidator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRegularExpressionValidator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRegularExpressionValidator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRegularExpressionValidator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRegularExpressionValidator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](fcQRegularExpressionValidator_vdata(self))
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRegularExpressionValidator* {.inheritable.} = ref object of QRegularExpressionValidator
  vtbl*: cQRegularExpressionValidatorVTable

method metaObject*(self: VirtualQRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRegularExpressionValidatormetaObject(self[])
method metacast*(self: VirtualQRegularExpressionValidator, param1: cstring): pointer {.base.} =
  QRegularExpressionValidatormetacast(self[], param1)
method metacall*(self: VirtualQRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRegularExpressionValidatormetacall(self[], param1, param2, param3)
method validate*(self: VirtualQRegularExpressionValidator, input: openArray[char], pos: ptr cint): cint {.base.} =
  QRegularExpressionValidatorvalidate(self[], input, pos)
method fixup*(self: VirtualQRegularExpressionValidator, param1: openArray[char]): void {.base.} =
  QRegularExpressionValidatorfixup(self[], param1)
method event*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRegularExpressionValidatorevent(self[], event)
method eventFilter*(self: VirtualQRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRegularExpressionValidatoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRegularExpressionValidatortimerEvent(self[], event)
method childEvent*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRegularExpressionValidatorchildEvent(self[], event)
method customEvent*(self: VirtualQRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRegularExpressionValidatorcustomEvent(self[], event)
method connectNotify*(self: VirtualQRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRegularExpressionValidatorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRegularExpressionValidatordisconnectNotify(self[], signal)

proc fcQRegularExpressionValidator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRegularExpressionValidator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRegularExpressionValidator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRegularExpressionValidator_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(vinput_ms)
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

proc fcQRegularExpressionValidator_method_callback_fixup(self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  inst.fixup(slotval1)

proc fcQRegularExpressionValidator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRegularExpressionValidator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRegularExpressionValidator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRegularExpressionValidator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRegularExpressionValidator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRegularExpressionValidator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRegularExpressionValidator](fcQRegularExpressionValidator_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRegularExpressionValidator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
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
    vtbl[].vtbl.metaObject = fcQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRegularExpressionValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRegularExpressionValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRegularExpressionValidator_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = fcQRegularExpressionValidator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRegularExpressionValidator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRegularExpressionValidator_vtable_callback_metacall
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = fcQRegularExpressionValidator_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = fcQRegularExpressionValidator_vtable_callback_fixup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRegularExpressionValidator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRegularExpressionValidator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRegularExpressionValidator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRegularExpressionValidator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRegularExpressionValidator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRegularExpressionValidator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRegularExpressionValidator_vtable_callback_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new4(addr(vtbl[].vtbl), addr(vtbl[]), re.h, parent.h), owned: true)

const cQRegularExpressionValidator_mvtbl = cQRegularExpressionValidatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRegularExpressionValidator()[])](self.fcQRegularExpressionValidator_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRegularExpressionValidator_method_callback_metaObject,
  metacast: fcQRegularExpressionValidator_method_callback_metacast,
  metacall: fcQRegularExpressionValidator_method_callback_metacall,
  validate: fcQRegularExpressionValidator_method_callback_validate,
  fixup: fcQRegularExpressionValidator_method_callback_fixup,
  event: fcQRegularExpressionValidator_method_callback_event,
  eventFilter: fcQRegularExpressionValidator_method_callback_eventFilter,
  timerEvent: fcQRegularExpressionValidator_method_callback_timerEvent,
  childEvent: fcQRegularExpressionValidator_method_callback_childEvent,
  customEvent: fcQRegularExpressionValidator_method_callback_customEvent,
  connectNotify: fcQRegularExpressionValidator_method_callback_connectNotify,
  disconnectNotify: fcQRegularExpressionValidator_method_callback_disconnectNotify,
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
