import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qvalidator.cpp", cflags).}


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

proc fcQValidator_new(): ptr cQValidator {.importc: "QValidator_new".}
proc fcQValidator_new2(parent: pointer): ptr cQValidator {.importc: "QValidator_new2".}
proc fcQValidator_metaObject(self: pointer, ): pointer {.importc: "QValidator_metaObject".}
proc fcQValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_metacast".}
proc fcQValidator_tr(s: cstring): struct_miqt_string {.importc: "QValidator_tr".}
proc fcQValidator_setLocale(self: pointer, locale: pointer): void {.importc: "QValidator_setLocale".}
proc fcQValidator_locale(self: pointer, ): pointer {.importc: "QValidator_locale".}
proc fcQValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QValidator_validate".}
proc fcQValidator_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_fixup".}
proc fcQValidator_changed(self: pointer, ): void {.importc: "QValidator_changed".}
proc fcQValidator_connect_changed(self: pointer, slot: int) {.importc: "QValidator_connect_changed".}
proc fcQValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_tr2".}
proc fcQValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_tr3".}
proc fcQValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QValidator_override_virtual_validate".}
proc fQValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void{.importc: "QValidator_virtualbase_fixup".}
proc fcQValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QValidator_override_virtual_fixup".}
proc fQValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QValidator_virtualbase_event".}
proc fcQValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QValidator_override_virtual_event".}
proc fQValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QValidator_virtualbase_eventFilter".}
proc fcQValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QValidator_override_virtual_eventFilter".}
proc fQValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QValidator_virtualbase_timerEvent".}
proc fcQValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QValidator_override_virtual_timerEvent".}
proc fQValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QValidator_virtualbase_childEvent".}
proc fcQValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QValidator_override_virtual_childEvent".}
proc fQValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QValidator_virtualbase_customEvent".}
proc fcQValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QValidator_override_virtual_customEvent".}
proc fQValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QValidator_virtualbase_connectNotify".}
proc fcQValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QValidator_override_virtual_connectNotify".}
proc fQValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QValidator_virtualbase_disconnectNotify".}
proc fcQValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QValidator_override_virtual_disconnectNotify".}
proc fcQValidator_delete(self: pointer) {.importc: "QValidator_delete".}
proc fcQIntValidator_new(): ptr cQIntValidator {.importc: "QIntValidator_new".}
proc fcQIntValidator_new2(bottom: cint, top: cint): ptr cQIntValidator {.importc: "QIntValidator_new2".}
proc fcQIntValidator_new3(parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new3".}
proc fcQIntValidator_new4(bottom: cint, top: cint, parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new4".}
proc fcQIntValidator_metaObject(self: pointer, ): pointer {.importc: "QIntValidator_metaObject".}
proc fcQIntValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QIntValidator_metacast".}
proc fcQIntValidator_tr(s: cstring): struct_miqt_string {.importc: "QIntValidator_tr".}
proc fcQIntValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QIntValidator_validate".}
proc fcQIntValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QIntValidator_fixup".}
proc fcQIntValidator_setBottom(self: pointer, bottom: cint): void {.importc: "QIntValidator_setBottom".}
proc fcQIntValidator_setTop(self: pointer, top: cint): void {.importc: "QIntValidator_setTop".}
proc fcQIntValidator_setRange(self: pointer, bottom: cint, top: cint): void {.importc: "QIntValidator_setRange".}
proc fcQIntValidator_bottom(self: pointer, ): cint {.importc: "QIntValidator_bottom".}
proc fcQIntValidator_top(self: pointer, ): cint {.importc: "QIntValidator_top".}
proc fcQIntValidator_bottomChanged(self: pointer, bottom: cint): void {.importc: "QIntValidator_bottomChanged".}
proc fcQIntValidator_connect_bottomChanged(self: pointer, slot: int) {.importc: "QIntValidator_connect_bottomChanged".}
proc fcQIntValidator_topChanged(self: pointer, top: cint): void {.importc: "QIntValidator_topChanged".}
proc fcQIntValidator_connect_topChanged(self: pointer, slot: int) {.importc: "QIntValidator_connect_topChanged".}
proc fcQIntValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIntValidator_tr2".}
proc fcQIntValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIntValidator_tr3".}
proc fQIntValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint{.importc: "QIntValidator_virtualbase_validate".}
proc fcQIntValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_validate".}
proc fQIntValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QIntValidator_virtualbase_fixup".}
proc fcQIntValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_fixup".}
proc fQIntValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIntValidator_virtualbase_event".}
proc fcQIntValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_event".}
proc fQIntValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIntValidator_virtualbase_eventFilter".}
proc fcQIntValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_eventFilter".}
proc fQIntValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIntValidator_virtualbase_timerEvent".}
proc fcQIntValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_timerEvent".}
proc fQIntValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIntValidator_virtualbase_childEvent".}
proc fcQIntValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_childEvent".}
proc fQIntValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIntValidator_virtualbase_customEvent".}
proc fcQIntValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_customEvent".}
proc fQIntValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIntValidator_virtualbase_connectNotify".}
proc fcQIntValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_connectNotify".}
proc fQIntValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIntValidator_virtualbase_disconnectNotify".}
proc fcQIntValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_disconnectNotify".}
proc fcQIntValidator_delete(self: pointer) {.importc: "QIntValidator_delete".}
proc fcQDoubleValidator_new(): ptr cQDoubleValidator {.importc: "QDoubleValidator_new".}
proc fcQDoubleValidator_new2(bottom: float64, top: float64, decimals: cint): ptr cQDoubleValidator {.importc: "QDoubleValidator_new2".}
proc fcQDoubleValidator_new3(parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new3".}
proc fcQDoubleValidator_new4(bottom: float64, top: float64, decimals: cint, parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new4".}
proc fcQDoubleValidator_metaObject(self: pointer, ): pointer {.importc: "QDoubleValidator_metaObject".}
proc fcQDoubleValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleValidator_metacast".}
proc fcQDoubleValidator_tr(s: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr".}
proc fcQDoubleValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_validate".}
proc fcQDoubleValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDoubleValidator_fixup".}
proc fcQDoubleValidator_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.importc: "QDoubleValidator_setRange".}
proc fcQDoubleValidator_setRange2(self: pointer, bottom: float64, top: float64): void {.importc: "QDoubleValidator_setRange2".}
proc fcQDoubleValidator_setBottom(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_setBottom".}
proc fcQDoubleValidator_setTop(self: pointer, top: float64): void {.importc: "QDoubleValidator_setTop".}
proc fcQDoubleValidator_setDecimals(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_setDecimals".}
proc fcQDoubleValidator_setNotation(self: pointer, notation: cint): void {.importc: "QDoubleValidator_setNotation".}
proc fcQDoubleValidator_bottom(self: pointer, ): float64 {.importc: "QDoubleValidator_bottom".}
proc fcQDoubleValidator_top(self: pointer, ): float64 {.importc: "QDoubleValidator_top".}
proc fcQDoubleValidator_decimals(self: pointer, ): cint {.importc: "QDoubleValidator_decimals".}
proc fcQDoubleValidator_notation(self: pointer, ): cint {.importc: "QDoubleValidator_notation".}
proc fcQDoubleValidator_bottomChanged(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_bottomChanged".}
proc fcQDoubleValidator_connect_bottomChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_bottomChanged".}
proc fcQDoubleValidator_topChanged(self: pointer, top: float64): void {.importc: "QDoubleValidator_topChanged".}
proc fcQDoubleValidator_connect_topChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_topChanged".}
proc fcQDoubleValidator_decimalsChanged(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_decimalsChanged".}
proc fcQDoubleValidator_connect_decimalsChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_decimalsChanged".}
proc fcQDoubleValidator_notationChanged(self: pointer, notation: cint): void {.importc: "QDoubleValidator_notationChanged".}
proc fcQDoubleValidator_connect_notationChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_notationChanged".}
proc fcQDoubleValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr2".}
proc fcQDoubleValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleValidator_tr3".}
proc fQDoubleValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint{.importc: "QDoubleValidator_virtualbase_validate".}
proc fcQDoubleValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_validate".}
proc fQDoubleValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QDoubleValidator_virtualbase_fixup".}
proc fcQDoubleValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_fixup".}
proc fQDoubleValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDoubleValidator_virtualbase_event".}
proc fcQDoubleValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_event".}
proc fQDoubleValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDoubleValidator_virtualbase_eventFilter".}
proc fcQDoubleValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_eventFilter".}
proc fQDoubleValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDoubleValidator_virtualbase_timerEvent".}
proc fcQDoubleValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_timerEvent".}
proc fQDoubleValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDoubleValidator_virtualbase_childEvent".}
proc fcQDoubleValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_childEvent".}
proc fQDoubleValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDoubleValidator_virtualbase_customEvent".}
proc fcQDoubleValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_customEvent".}
proc fQDoubleValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleValidator_virtualbase_connectNotify".}
proc fcQDoubleValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_connectNotify".}
proc fQDoubleValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleValidator_virtualbase_disconnectNotify".}
proc fcQDoubleValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_disconnectNotify".}
proc fcQDoubleValidator_delete(self: pointer) {.importc: "QDoubleValidator_delete".}
proc fcQRegularExpressionValidator_new(): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new".}
proc fcQRegularExpressionValidator_new2(re: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new2".}
proc fcQRegularExpressionValidator_new3(parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new3".}
proc fcQRegularExpressionValidator_new4(re: pointer, parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new4".}
proc fcQRegularExpressionValidator_metaObject(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_metaObject".}
proc fcQRegularExpressionValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_metacast".}
proc fcQRegularExpressionValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr".}
proc fcQRegularExpressionValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_validate".}
proc fcQRegularExpressionValidator_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_regularExpression".}
proc fcQRegularExpressionValidator_setRegularExpression(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_setRegularExpression".}
proc fcQRegularExpressionValidator_regularExpressionChanged(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_regularExpressionChanged".}
proc fcQRegularExpressionValidator_connect_regularExpressionChanged(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_connect_regularExpressionChanged".}
proc fcQRegularExpressionValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr2".}
proc fcQRegularExpressionValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_tr3".}
proc fQRegularExpressionValidator_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QRegularExpressionValidator_virtualbase_validate".}
proc fcQRegularExpressionValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_validate".}
proc fQRegularExpressionValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void{.importc: "QRegularExpressionValidator_virtualbase_fixup".}
proc fcQRegularExpressionValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_fixup".}
proc fQRegularExpressionValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRegularExpressionValidator_virtualbase_event".}
proc fcQRegularExpressionValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_event".}
proc fQRegularExpressionValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRegularExpressionValidator_virtualbase_eventFilter".}
proc fcQRegularExpressionValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_eventFilter".}
proc fQRegularExpressionValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_timerEvent".}
proc fcQRegularExpressionValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_timerEvent".}
proc fQRegularExpressionValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_childEvent".}
proc fcQRegularExpressionValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_childEvent".}
proc fQRegularExpressionValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_customEvent".}
proc fcQRegularExpressionValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_customEvent".}
proc fQRegularExpressionValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_connectNotify".}
proc fcQRegularExpressionValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_connectNotify".}
proc fQRegularExpressionValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_disconnectNotify".}
proc fcQRegularExpressionValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_disconnectNotify".}
proc fcQRegularExpressionValidator_delete(self: pointer) {.importc: "QRegularExpressionValidator_delete".}


func init*(T: type gen_qvalidator_types.QValidator, h: ptr cQValidator): gen_qvalidator_types.QValidator =
  T(h: h)
proc create*(T: type gen_qvalidator_types.QValidator, ): gen_qvalidator_types.QValidator =
  gen_qvalidator_types.QValidator.init(fcQValidator_new())

proc create*(T: type gen_qvalidator_types.QValidator, parent: gen_qobject_types.QObject): gen_qvalidator_types.QValidator =
  gen_qvalidator_types.QValidator.init(fcQValidator_new2(parent.h))

proc metaObject*(self: gen_qvalidator_types.QValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QValidator, param1: cstring): pointer =
  fcQValidator_metacast(self.h, param1)

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring): string =
  let v_ms = fcQValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLocale*(self: gen_qvalidator_types.QValidator, locale: gen_qlocale_types.QLocale): void =
  fcQValidator_setLocale(self.h, locale.h)

proc locale*(self: gen_qvalidator_types.QValidator, ): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQValidator_locale(self.h))

proc validate*(self: gen_qvalidator_types.QValidator, param1: string, param2: ptr cint): cint =
  cint(fcQValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QValidator, param1: string): void =
  fcQValidator_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc changed*(self: gen_qvalidator_types.QValidator, ): void =
  fcQValidator_changed(self.h)

type QValidatorchangedSlot* = proc()
proc miqt_exec_callback_QValidator_changed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QValidatorchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onchanged*(self: gen_qvalidator_types.QValidator, slot: QValidatorchangedSlot) =
  var tmp = new QValidatorchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_connect_changed(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring): string =
  let v_ms = fcQValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QValidatorvalidateProc* = proc(param1: string, param2: ptr cint): cint
proc onvalidate*(self: gen_qvalidator_types.QValidator, slot: QValidatorvalidateProc) =
  # TODO check subclass
  var tmp = new QValidatorvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_validate(self: ptr cQValidator, slot: int, param1: struct_miqt_string, param2: ptr cint): cint {.exportc: "miqt_exec_callback_QValidator_validate ".} =
  var nimfunc = cast[ptr QValidatorvalidateProc](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  let slotval2 = param2


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QValidatorfixup*(self: gen_qvalidator_types.QValidator, param1: string): void =
  fQValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QValidatorfixupProc* = proc(param1: string): void
proc onfixup*(self: gen_qvalidator_types.QValidator, slot: QValidatorfixupProc) =
  # TODO check subclass
  var tmp = new QValidatorfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_fixup(self: ptr cQValidator, slot: int, param1: struct_miqt_string): void {.exportc: "miqt_exec_callback_QValidator_fixup ".} =
  var nimfunc = cast[ptr QValidatorfixupProc](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)
proc QValidatorevent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): bool =
  fQValidator_virtualbase_event(self.h, event.h)

type QValidatoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvalidator_types.QValidator, slot: QValidatoreventProc) =
  # TODO check subclass
  var tmp = new QValidatoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_event(self: ptr cQValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QValidator_event ".} =
  var nimfunc = cast[ptr QValidatoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QValidatoreventFilter*(self: gen_qvalidator_types.QValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QValidatoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvalidator_types.QValidator, slot: QValidatoreventFilterProc) =
  # TODO check subclass
  var tmp = new QValidatoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_eventFilter(self: ptr cQValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QValidator_eventFilter ".} =
  var nimfunc = cast[ptr QValidatoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QValidatortimerEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fQValidator_virtualbase_timerEvent(self.h, event.h)

type QValidatortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvalidator_types.QValidator, slot: QValidatortimerEventProc) =
  # TODO check subclass
  var tmp = new QValidatortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_timerEvent(self: ptr cQValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QValidator_timerEvent ".} =
  var nimfunc = cast[ptr QValidatortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QValidatorchildEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fQValidator_virtualbase_childEvent(self.h, event.h)

type QValidatorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvalidator_types.QValidator, slot: QValidatorchildEventProc) =
  # TODO check subclass
  var tmp = new QValidatorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_childEvent(self: ptr cQValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QValidator_childEvent ".} =
  var nimfunc = cast[ptr QValidatorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QValidatorcustomEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): void =
  fQValidator_virtualbase_customEvent(self.h, event.h)

type QValidatorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvalidator_types.QValidator, slot: QValidatorcustomEventProc) =
  # TODO check subclass
  var tmp = new QValidatorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_customEvent(self: ptr cQValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QValidator_customEvent ".} =
  var nimfunc = cast[ptr QValidatorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QValidatorconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQValidator_virtualbase_connectNotify(self.h, signal.h)

type QValidatorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvalidator_types.QValidator, slot: QValidatorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QValidatorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_connectNotify(self: ptr cQValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QValidator_connectNotify ".} =
  var nimfunc = cast[ptr QValidatorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QValidatordisconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QValidatordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvalidator_types.QValidator, slot: QValidatordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QValidatordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_disconnectNotify(self: ptr cQValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QValidator_disconnectNotify ".} =
  var nimfunc = cast[ptr QValidatordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qvalidator_types.QValidator) =
  fcQValidator_delete(self.h)

func init*(T: type gen_qvalidator_types.QIntValidator, h: ptr cQIntValidator): gen_qvalidator_types.QIntValidator =
  T(h: h)
proc create*(T: type gen_qvalidator_types.QIntValidator, ): gen_qvalidator_types.QIntValidator =
  gen_qvalidator_types.QIntValidator.init(fcQIntValidator_new())

proc create*(T: type gen_qvalidator_types.QIntValidator, bottom: cint, top: cint): gen_qvalidator_types.QIntValidator =
  gen_qvalidator_types.QIntValidator.init(fcQIntValidator_new2(bottom, top))

proc create*(T: type gen_qvalidator_types.QIntValidator, parent: gen_qobject_types.QObject): gen_qvalidator_types.QIntValidator =
  gen_qvalidator_types.QIntValidator.init(fcQIntValidator_new3(parent.h))

proc create*(T: type gen_qvalidator_types.QIntValidator, bottom: cint, top: cint, parent: gen_qobject_types.QObject): gen_qvalidator_types.QIntValidator =
  gen_qvalidator_types.QIntValidator.init(fcQIntValidator_new4(bottom, top, parent.h))

proc metaObject*(self: gen_qvalidator_types.QIntValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QIntValidator, param1: cstring): pointer =
  fcQIntValidator_metacast(self.h, param1)

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring): string =
  let v_ms = fcQIntValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QIntValidator, param1: string, param2: ptr cint): cint =
  cint(fcQIntValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QIntValidator, input: string): void =
  fcQIntValidator_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc setBottom*(self: gen_qvalidator_types.QIntValidator, bottom: cint): void =
  fcQIntValidator_setBottom(self.h, bottom)

proc setTop*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_setTop(self.h, top)

proc setRange*(self: gen_qvalidator_types.QIntValidator, bottom: cint, top: cint): void =
  fcQIntValidator_setRange(self.h, bottom, top)

proc bottom*(self: gen_qvalidator_types.QIntValidator, ): cint =
  fcQIntValidator_bottom(self.h)

proc top*(self: gen_qvalidator_types.QIntValidator, ): cint =
  fcQIntValidator_top(self.h)

proc bottomChanged*(self: gen_qvalidator_types.QIntValidator, bottom: cint): void =
  fcQIntValidator_bottomChanged(self.h, bottom)

type QIntValidatorbottomChangedSlot* = proc(bottom: cint)
proc miqt_exec_callback_QIntValidator_bottomChanged(slot: int, bottom: cint) {.exportc.} =
  let nimfunc = cast[ptr QIntValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc onbottomChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorbottomChangedSlot) =
  var tmp = new QIntValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]))

proc topChanged*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_topChanged(self.h, top)

type QIntValidatortopChangedSlot* = proc(top: cint)
proc miqt_exec_callback_QIntValidator_topChanged(slot: int, top: cint) {.exportc.} =
  let nimfunc = cast[ptr QIntValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc ontopChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatortopChangedSlot) =
  var tmp = new QIntValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_topChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring): string =
  let v_ms = fcQIntValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIntValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QIntValidatorvalidate*(self: gen_qvalidator_types.QIntValidator, param1: string, param2: ptr cint): cint =
  cint(fQIntValidator_virtualbase_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

type QIntValidatorvalidateProc* = proc(param1: string, param2: ptr cint): cint
proc onvalidate*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorvalidateProc) =
  # TODO check subclass
  var tmp = new QIntValidatorvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_validate(self: ptr cQIntValidator, slot: int, param1: struct_miqt_string, param2: ptr cint): cint {.exportc: "miqt_exec_callback_QIntValidator_validate ".} =
  var nimfunc = cast[ptr QIntValidatorvalidateProc](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  let slotval2 = param2


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QIntValidatorfixup*(self: gen_qvalidator_types.QIntValidator, input: string): void =
  fQIntValidator_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QIntValidatorfixupProc* = proc(input: string): void
proc onfixup*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorfixupProc) =
  # TODO check subclass
  var tmp = new QIntValidatorfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_fixup(self: ptr cQIntValidator, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QIntValidator_fixup ".} =
  var nimfunc = cast[ptr QIntValidatorfixupProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](slotval1)
proc QIntValidatorevent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): bool =
  fQIntValidator_virtualbase_event(self.h, event.h)

type QIntValidatoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatoreventProc) =
  # TODO check subclass
  var tmp = new QIntValidatoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_event(self: ptr cQIntValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIntValidator_event ".} =
  var nimfunc = cast[ptr QIntValidatoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIntValidatoreventFilter*(self: gen_qvalidator_types.QIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQIntValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIntValidatoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatoreventFilterProc) =
  # TODO check subclass
  var tmp = new QIntValidatoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_eventFilter(self: ptr cQIntValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIntValidator_eventFilter ".} =
  var nimfunc = cast[ptr QIntValidatoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIntValidatortimerEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fQIntValidator_virtualbase_timerEvent(self.h, event.h)

type QIntValidatortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatortimerEventProc) =
  # TODO check subclass
  var tmp = new QIntValidatortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_timerEvent(self: ptr cQIntValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_timerEvent ".} =
  var nimfunc = cast[ptr QIntValidatortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QIntValidatorchildEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fQIntValidator_virtualbase_childEvent(self.h, event.h)

type QIntValidatorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorchildEventProc) =
  # TODO check subclass
  var tmp = new QIntValidatorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_childEvent(self: ptr cQIntValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_childEvent ".} =
  var nimfunc = cast[ptr QIntValidatorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QIntValidatorcustomEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): void =
  fQIntValidator_virtualbase_customEvent(self.h, event.h)

type QIntValidatorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorcustomEventProc) =
  # TODO check subclass
  var tmp = new QIntValidatorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_customEvent(self: ptr cQIntValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_customEvent ".} =
  var nimfunc = cast[ptr QIntValidatorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QIntValidatorconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIntValidator_virtualbase_connectNotify(self.h, signal.h)

type QIntValidatorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIntValidatorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_connectNotify(self: ptr cQIntValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_connectNotify ".} =
  var nimfunc = cast[ptr QIntValidatorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QIntValidatordisconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIntValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QIntValidatordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIntValidatordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_disconnectNotify(self: ptr cQIntValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_disconnectNotify ".} =
  var nimfunc = cast[ptr QIntValidatordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qvalidator_types.QIntValidator) =
  fcQIntValidator_delete(self.h)

func init*(T: type gen_qvalidator_types.QDoubleValidator, h: ptr cQDoubleValidator): gen_qvalidator_types.QDoubleValidator =
  T(h: h)
proc create*(T: type gen_qvalidator_types.QDoubleValidator, ): gen_qvalidator_types.QDoubleValidator =
  gen_qvalidator_types.QDoubleValidator.init(fcQDoubleValidator_new())

proc create*(T: type gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64, decimals: cint): gen_qvalidator_types.QDoubleValidator =
  gen_qvalidator_types.QDoubleValidator.init(fcQDoubleValidator_new2(bottom, top, decimals))

proc create*(T: type gen_qvalidator_types.QDoubleValidator, parent: gen_qobject_types.QObject): gen_qvalidator_types.QDoubleValidator =
  gen_qvalidator_types.QDoubleValidator.init(fcQDoubleValidator_new3(parent.h))

proc create*(T: type gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64, decimals: cint, parent: gen_qobject_types.QObject): gen_qvalidator_types.QDoubleValidator =
  gen_qvalidator_types.QDoubleValidator.init(fcQDoubleValidator_new4(bottom, top, decimals, parent.h))

proc metaObject*(self: gen_qvalidator_types.QDoubleValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QDoubleValidator, param1: cstring): pointer =
  fcQDoubleValidator_metacast(self.h, param1)

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring): string =
  let v_ms = fcQDoubleValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QDoubleValidator, param1: string, param2: ptr cint): cint =
  cint(fcQDoubleValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QDoubleValidator, input: string): void =
  fcQDoubleValidator_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

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

proc bottom*(self: gen_qvalidator_types.QDoubleValidator, ): float64 =
  fcQDoubleValidator_bottom(self.h)

proc top*(self: gen_qvalidator_types.QDoubleValidator, ): float64 =
  fcQDoubleValidator_top(self.h)

proc decimals*(self: gen_qvalidator_types.QDoubleValidator, ): cint =
  fcQDoubleValidator_decimals(self.h)

proc notation*(self: gen_qvalidator_types.QDoubleValidator, ): cint =
  cint(fcQDoubleValidator_notation(self.h))

proc bottomChanged*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64): void =
  fcQDoubleValidator_bottomChanged(self.h, bottom)

type QDoubleValidatorbottomChangedSlot* = proc(bottom: float64)
proc miqt_exec_callback_QDoubleValidator_bottomChanged(slot: int, bottom: float64) {.exportc.} =
  let nimfunc = cast[ptr QDoubleValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc onbottomChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorbottomChangedSlot) =
  var tmp = new QDoubleValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]))

proc topChanged*(self: gen_qvalidator_types.QDoubleValidator, top: float64): void =
  fcQDoubleValidator_topChanged(self.h, top)

type QDoubleValidatortopChangedSlot* = proc(top: float64)
proc miqt_exec_callback_QDoubleValidator_topChanged(slot: int, top: float64) {.exportc.} =
  let nimfunc = cast[ptr QDoubleValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc ontopChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatortopChangedSlot) =
  var tmp = new QDoubleValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_topChanged(self.h, cast[int](addr tmp[]))

proc decimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, decimals: cint): void =
  fcQDoubleValidator_decimalsChanged(self.h, decimals)

type QDoubleValidatordecimalsChangedSlot* = proc(decimals: cint)
proc miqt_exec_callback_QDoubleValidator_decimalsChanged(slot: int, decimals: cint) {.exportc.} =
  let nimfunc = cast[ptr QDoubleValidatordecimalsChangedSlot](cast[pointer](slot))
  let slotval1 = decimals

  nimfunc[](slotval1)

proc ondecimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatordecimalsChangedSlot) =
  var tmp = new QDoubleValidatordecimalsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_decimalsChanged(self.h, cast[int](addr tmp[]))

proc notationChanged*(self: gen_qvalidator_types.QDoubleValidator, notation: cint): void =
  fcQDoubleValidator_notationChanged(self.h, cint(notation))

type QDoubleValidatornotationChangedSlot* = proc(notation: cint)
proc miqt_exec_callback_QDoubleValidator_notationChanged(slot: int, notation: cint) {.exportc.} =
  let nimfunc = cast[ptr QDoubleValidatornotationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(notation)

  nimfunc[](slotval1)

proc onnotationChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatornotationChangedSlot) =
  var tmp = new QDoubleValidatornotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_notationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDoubleValidatorvalidate*(self: gen_qvalidator_types.QDoubleValidator, param1: string, param2: ptr cint): cint =
  cint(fQDoubleValidator_virtualbase_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

type QDoubleValidatorvalidateProc* = proc(param1: string, param2: ptr cint): cint
proc onvalidate*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorvalidateProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatorvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_validate(self: ptr cQDoubleValidator, slot: int, param1: struct_miqt_string, param2: ptr cint): cint {.exportc: "miqt_exec_callback_QDoubleValidator_validate ".} =
  var nimfunc = cast[ptr QDoubleValidatorvalidateProc](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  let slotval2 = param2


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QDoubleValidatorfixup*(self: gen_qvalidator_types.QDoubleValidator, input: string): void =
  fQDoubleValidator_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QDoubleValidatorfixupProc* = proc(input: string): void
proc onfixup*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorfixupProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatorfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_fixup(self: ptr cQDoubleValidator, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDoubleValidator_fixup ".} =
  var nimfunc = cast[ptr QDoubleValidatorfixupProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](slotval1)
proc QDoubleValidatorevent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): bool =
  fQDoubleValidator_virtualbase_event(self.h, event.h)

type QDoubleValidatoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatoreventProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_event(self: ptr cQDoubleValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleValidator_event ".} =
  var nimfunc = cast[ptr QDoubleValidatoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDoubleValidatoreventFilter*(self: gen_qvalidator_types.QDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDoubleValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDoubleValidatoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatoreventFilterProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_eventFilter(self: ptr cQDoubleValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleValidator_eventFilter ".} =
  var nimfunc = cast[ptr QDoubleValidatoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDoubleValidatortimerEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDoubleValidator_virtualbase_timerEvent(self.h, event.h)

type QDoubleValidatortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatortimerEventProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_timerEvent(self: ptr cQDoubleValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_timerEvent ".} =
  var nimfunc = cast[ptr QDoubleValidatortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleValidatorchildEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fQDoubleValidator_virtualbase_childEvent(self.h, event.h)

type QDoubleValidatorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorchildEventProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_childEvent(self: ptr cQDoubleValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_childEvent ".} =
  var nimfunc = cast[ptr QDoubleValidatorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleValidatorcustomEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): void =
  fQDoubleValidator_virtualbase_customEvent(self.h, event.h)

type QDoubleValidatorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorcustomEventProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_customEvent(self: ptr cQDoubleValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_customEvent ".} =
  var nimfunc = cast[ptr QDoubleValidatorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDoubleValidatorconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDoubleValidator_virtualbase_connectNotify(self.h, signal.h)

type QDoubleValidatorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_connectNotify(self: ptr cQDoubleValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_connectNotify ".} =
  var nimfunc = cast[ptr QDoubleValidatorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDoubleValidatordisconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDoubleValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QDoubleValidatordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDoubleValidatordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_disconnectNotify(self: ptr cQDoubleValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_disconnectNotify ".} =
  var nimfunc = cast[ptr QDoubleValidatordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qvalidator_types.QDoubleValidator) =
  fcQDoubleValidator_delete(self.h)

func init*(T: type gen_qvalidator_types.QRegularExpressionValidator, h: ptr cQRegularExpressionValidator): gen_qvalidator_types.QRegularExpressionValidator =
  T(h: h)
proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator, ): gen_qvalidator_types.QRegularExpressionValidator =
  gen_qvalidator_types.QRegularExpressionValidator.init(fcQRegularExpressionValidator_new())

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): gen_qvalidator_types.QRegularExpressionValidator =
  gen_qvalidator_types.QRegularExpressionValidator.init(fcQRegularExpressionValidator_new2(re.h))

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator, parent: gen_qobject_types.QObject): gen_qvalidator_types.QRegularExpressionValidator =
  gen_qvalidator_types.QRegularExpressionValidator.init(fcQRegularExpressionValidator_new3(parent.h))

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression, parent: gen_qobject_types.QObject): gen_qvalidator_types.QRegularExpressionValidator =
  gen_qvalidator_types.QRegularExpressionValidator.init(fcQRegularExpressionValidator_new4(re.h, parent.h))

proc metaObject*(self: gen_qvalidator_types.QRegularExpressionValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cstring): pointer =
  fcQRegularExpressionValidator_metacast(self.h, param1)

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring): string =
  let v_ms = fcQRegularExpressionValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: string, pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc regularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpressionValidator_regularExpression(self.h))

proc setRegularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_setRegularExpression(self.h, re.h)

proc regularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_regularExpressionChanged(self.h, re.h)

type QRegularExpressionValidatorregularExpressionChangedSlot* = proc(re: gen_qregularexpression_types.QRegularExpression)
proc miqt_exec_callback_QRegularExpressionValidator_regularExpressionChanged(slot: int, re: pointer) {.exportc.} =
  let nimfunc = cast[ptr QRegularExpressionValidatorregularExpressionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qregularexpression_types.QRegularExpression(h: re)

  nimfunc[](slotval1)

proc onregularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorregularExpressionChangedSlot) =
  var tmp = new QRegularExpressionValidatorregularExpressionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_connect_regularExpressionChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring): string =
  let v_ms = fcQRegularExpressionValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRegularExpressionValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QRegularExpressionValidatorvalidate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: string, pos: ptr cint): cint =
  cint(fQRegularExpressionValidator_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QRegularExpressionValidatorvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorvalidateProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatorvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_validate(self: ptr cQRegularExpressionValidator, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QRegularExpressionValidator_validate ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatorvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QRegularExpressionValidatorfixup*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: string): void =
  fQRegularExpressionValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QRegularExpressionValidatorfixupProc* = proc(param1: string): void
proc onfixup*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorfixupProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatorfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_fixup(self: ptr cQRegularExpressionValidator, slot: int, param1: struct_miqt_string): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_fixup ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatorfixupProc](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)
proc QRegularExpressionValidatorevent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool =
  fQRegularExpressionValidator_virtualbase_event(self.h, event.h)

type QRegularExpressionValidatoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatoreventProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_event(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRegularExpressionValidator_event ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRegularExpressionValidatoreventFilter*(self: gen_qvalidator_types.QRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQRegularExpressionValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRegularExpressionValidatoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatoreventFilterProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_eventFilter(self: ptr cQRegularExpressionValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRegularExpressionValidator_eventFilter ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QRegularExpressionValidatortimerEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fQRegularExpressionValidator_virtualbase_timerEvent(self.h, event.h)

type QRegularExpressionValidatortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatortimerEventProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_timerEvent(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_timerEvent ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QRegularExpressionValidatorchildEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fQRegularExpressionValidator_virtualbase_childEvent(self.h, event.h)

type QRegularExpressionValidatorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorchildEventProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_childEvent(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_childEvent ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QRegularExpressionValidatorcustomEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void =
  fQRegularExpressionValidator_virtualbase_customEvent(self.h, event.h)

type QRegularExpressionValidatorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorcustomEventProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_customEvent(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_customEvent ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRegularExpressionValidatorconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRegularExpressionValidator_virtualbase_connectNotify(self.h, signal.h)

type QRegularExpressionValidatorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_connectNotify(self: ptr cQRegularExpressionValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_connectNotify ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QRegularExpressionValidatordisconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRegularExpressionValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QRegularExpressionValidatordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRegularExpressionValidatordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_disconnectNotify(self: ptr cQRegularExpressionValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_disconnectNotify ".} =
  var nimfunc = cast[ptr QRegularExpressionValidatordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qvalidator_types.QRegularExpressionValidator) =
  fcQRegularExpressionValidator_delete(self.h)
