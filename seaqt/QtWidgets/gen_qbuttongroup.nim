import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qbuttongroup.cpp", cflags).}


import ./gen_qbuttongroup_types
export gen_qbuttongroup_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qabstractbutton_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qabstractbutton_types

type cQButtonGroup*{.exportc: "QButtonGroup", incompleteStruct.} = object

proc fcQButtonGroup_metaObject(self: pointer, ): pointer {.importc: "QButtonGroup_metaObject".}
proc fcQButtonGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QButtonGroup_metacast".}
proc fcQButtonGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QButtonGroup_metacall".}
proc fcQButtonGroup_tr(s: cstring): struct_miqt_string {.importc: "QButtonGroup_tr".}
proc fcQButtonGroup_setExclusive(self: pointer, exclusive: bool): void {.importc: "QButtonGroup_setExclusive".}
proc fcQButtonGroup_exclusive(self: pointer, ): bool {.importc: "QButtonGroup_exclusive".}
proc fcQButtonGroup_addButton(self: pointer, param1: pointer): void {.importc: "QButtonGroup_addButton".}
proc fcQButtonGroup_removeButton(self: pointer, param1: pointer): void {.importc: "QButtonGroup_removeButton".}
proc fcQButtonGroup_buttons(self: pointer, ): struct_miqt_array {.importc: "QButtonGroup_buttons".}
proc fcQButtonGroup_checkedButton(self: pointer, ): pointer {.importc: "QButtonGroup_checkedButton".}
proc fcQButtonGroup_button(self: pointer, id: cint): pointer {.importc: "QButtonGroup_button".}
proc fcQButtonGroup_setId(self: pointer, button: pointer, id: cint): void {.importc: "QButtonGroup_setId".}
proc fcQButtonGroup_id(self: pointer, button: pointer): cint {.importc: "QButtonGroup_id".}
proc fcQButtonGroup_checkedId(self: pointer, ): cint {.importc: "QButtonGroup_checkedId".}
proc fcQButtonGroup_buttonClicked(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonClicked".}
proc fcQButtonGroup_connect_buttonClicked(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_buttonClicked".}
proc fcQButtonGroup_buttonPressed(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonPressed".}
proc fcQButtonGroup_connect_buttonPressed(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_buttonPressed".}
proc fcQButtonGroup_buttonReleased(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonReleased".}
proc fcQButtonGroup_connect_buttonReleased(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_buttonReleased".}
proc fcQButtonGroup_buttonToggled(self: pointer, param1: pointer, param2: bool): void {.importc: "QButtonGroup_buttonToggled".}
proc fcQButtonGroup_connect_buttonToggled(self: pointer, slot: int, callback: proc (slot: int, param1: pointer, param2: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_buttonToggled".}
proc fcQButtonGroup_idClicked(self: pointer, param1: cint): void {.importc: "QButtonGroup_idClicked".}
proc fcQButtonGroup_connect_idClicked(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_idClicked".}
proc fcQButtonGroup_idPressed(self: pointer, param1: cint): void {.importc: "QButtonGroup_idPressed".}
proc fcQButtonGroup_connect_idPressed(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_idPressed".}
proc fcQButtonGroup_idReleased(self: pointer, param1: cint): void {.importc: "QButtonGroup_idReleased".}
proc fcQButtonGroup_connect_idReleased(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_idReleased".}
proc fcQButtonGroup_idToggled(self: pointer, param1: cint, param2: bool): void {.importc: "QButtonGroup_idToggled".}
proc fcQButtonGroup_connect_idToggled(self: pointer, slot: int, callback: proc (slot: int, param1: cint, param2: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QButtonGroup_connect_idToggled".}
proc fcQButtonGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QButtonGroup_tr2".}
proc fcQButtonGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QButtonGroup_tr3".}
proc fcQButtonGroup_addButton2(self: pointer, param1: pointer, id: cint): void {.importc: "QButtonGroup_addButton2".}
type cQButtonGroupVTable = object
  destructor*: proc(vtbl: ptr cQButtonGroupVTable, self: ptr cQButtonGroup) {.cdecl, raises:[], gcsafe.}
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
proc fcQButtonGroup_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QButtonGroup_virtualbase_metaObject".}
proc fcQButtonGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QButtonGroup_virtualbase_metacast".}
proc fcQButtonGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QButtonGroup_virtualbase_metacall".}
proc fcQButtonGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QButtonGroup_virtualbase_event".}
proc fcQButtonGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QButtonGroup_virtualbase_eventFilter".}
proc fcQButtonGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QButtonGroup_virtualbase_timerEvent".}
proc fcQButtonGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QButtonGroup_virtualbase_childEvent".}
proc fcQButtonGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QButtonGroup_virtualbase_customEvent".}
proc fcQButtonGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QButtonGroup_virtualbase_connectNotify".}
proc fcQButtonGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QButtonGroup_virtualbase_disconnectNotify".}
proc fcQButtonGroup_protectedbase_sender(self: pointer, ): pointer {.importc: "QButtonGroup_protectedbase_sender".}
proc fcQButtonGroup_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QButtonGroup_protectedbase_senderSignalIndex".}
proc fcQButtonGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QButtonGroup_protectedbase_receivers".}
proc fcQButtonGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QButtonGroup_protectedbase_isSignalConnected".}
proc fcQButtonGroup_new(vtbl: pointer, ): ptr cQButtonGroup {.importc: "QButtonGroup_new".}
proc fcQButtonGroup_new2(vtbl: pointer, parent: pointer): ptr cQButtonGroup {.importc: "QButtonGroup_new2".}
proc fcQButtonGroup_staticMetaObject(): pointer {.importc: "QButtonGroup_staticMetaObject".}
proc fcQButtonGroup_delete(self: pointer) {.importc: "QButtonGroup_delete".}

proc metaObject*(self: gen_qbuttongroup_types.QButtonGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQButtonGroup_metaObject(self.h))

proc metacast*(self: gen_qbuttongroup_types.QButtonGroup, param1: cstring): pointer =
  fcQButtonGroup_metacast(self.h, param1)

proc metacall*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQButtonGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qbuttongroup_types.QButtonGroup, s: cstring): string =
  let v_ms = fcQButtonGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExclusive*(self: gen_qbuttongroup_types.QButtonGroup, exclusive: bool): void =
  fcQButtonGroup_setExclusive(self.h, exclusive)

proc exclusive*(self: gen_qbuttongroup_types.QButtonGroup, ): bool =
  fcQButtonGroup_exclusive(self.h)

proc addButton*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_addButton(self.h, param1.h)

proc removeButton*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_removeButton(self.h, param1.h)

proc buttons*(self: gen_qbuttongroup_types.QButtonGroup, ): seq[gen_qabstractbutton_types.QAbstractButton] =
  var v_ma = fcQButtonGroup_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton_types.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton_types.QAbstractButton(h: v_outCast[i])
  vx_ret

proc checkedButton*(self: gen_qbuttongroup_types.QButtonGroup, ): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQButtonGroup_checkedButton(self.h))

proc button*(self: gen_qbuttongroup_types.QButtonGroup, id: cint): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQButtonGroup_button(self.h, id))

proc setId*(self: gen_qbuttongroup_types.QButtonGroup, button: gen_qabstractbutton_types.QAbstractButton, id: cint): void =
  fcQButtonGroup_setId(self.h, button.h, id)

proc id*(self: gen_qbuttongroup_types.QButtonGroup, button: gen_qabstractbutton_types.QAbstractButton): cint =
  fcQButtonGroup_id(self.h, button.h)

proc checkedId*(self: gen_qbuttongroup_types.QButtonGroup, ): cint =
  fcQButtonGroup_checkedId(self.h)

proc buttonClicked*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_buttonClicked(self.h, param1.h)

type QButtonGroupbuttonClickedSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_cQButtonGroup_buttonClicked(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupbuttonClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQButtonGroup_buttonClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupbuttonClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbuttonClicked*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonClickedSlot) =
  var tmp = new QButtonGroupbuttonClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_buttonClicked, miqt_exec_callback_cQButtonGroup_buttonClicked_release)

proc buttonPressed*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_buttonPressed(self.h, param1.h)

type QButtonGroupbuttonPressedSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_cQButtonGroup_buttonPressed(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupbuttonPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQButtonGroup_buttonPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupbuttonPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbuttonPressed*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonPressedSlot) =
  var tmp = new QButtonGroupbuttonPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_buttonPressed, miqt_exec_callback_cQButtonGroup_buttonPressed_release)

proc buttonReleased*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_buttonReleased(self.h, param1.h)

type QButtonGroupbuttonReleasedSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_cQButtonGroup_buttonReleased(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupbuttonReleasedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQButtonGroup_buttonReleased_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupbuttonReleasedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbuttonReleased*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonReleasedSlot) =
  var tmp = new QButtonGroupbuttonReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonReleased(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_buttonReleased, miqt_exec_callback_cQButtonGroup_buttonReleased_release)

proc buttonToggled*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton, param2: bool): void =
  fcQButtonGroup_buttonToggled(self.h, param1.h, param2)

type QButtonGroupbuttonToggledSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton, param2: bool)
proc miqt_exec_callback_cQButtonGroup_buttonToggled(slot: int, param1: pointer, param2: bool) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupbuttonToggledSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQButtonGroup_buttonToggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupbuttonToggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbuttonToggled*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonToggledSlot) =
  var tmp = new QButtonGroupbuttonToggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonToggled(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_buttonToggled, miqt_exec_callback_cQButtonGroup_buttonToggled_release)

proc idClicked*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_idClicked(self.h, param1)

type QButtonGroupidClickedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQButtonGroup_idClicked(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupidClickedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQButtonGroup_idClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupidClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onidClicked*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidClickedSlot) =
  var tmp = new QButtonGroupidClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_idClicked, miqt_exec_callback_cQButtonGroup_idClicked_release)

proc idPressed*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_idPressed(self.h, param1)

type QButtonGroupidPressedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQButtonGroup_idPressed(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupidPressedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQButtonGroup_idPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupidPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onidPressed*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidPressedSlot) =
  var tmp = new QButtonGroupidPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_idPressed, miqt_exec_callback_cQButtonGroup_idPressed_release)

proc idReleased*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_idReleased(self.h, param1)

type QButtonGroupidReleasedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQButtonGroup_idReleased(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupidReleasedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQButtonGroup_idReleased_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupidReleasedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onidReleased*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidReleasedSlot) =
  var tmp = new QButtonGroupidReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idReleased(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_idReleased, miqt_exec_callback_cQButtonGroup_idReleased_release)

proc idToggled*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint, param2: bool): void =
  fcQButtonGroup_idToggled(self.h, param1, param2)

type QButtonGroupidToggledSlot* = proc(param1: cint, param2: bool)
proc miqt_exec_callback_cQButtonGroup_idToggled(slot: int, param1: cint, param2: bool) {.cdecl.} =
  let nimfunc = cast[ptr QButtonGroupidToggledSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQButtonGroup_idToggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QButtonGroupidToggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onidToggled*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidToggledSlot) =
  var tmp = new QButtonGroupidToggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idToggled(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQButtonGroup_idToggled, miqt_exec_callback_cQButtonGroup_idToggled_release)

proc tr*(_: type gen_qbuttongroup_types.QButtonGroup, s: cstring, c: cstring): string =
  let v_ms = fcQButtonGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qbuttongroup_types.QButtonGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQButtonGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addButton*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton, id: cint): void =
  fcQButtonGroup_addButton2(self.h, param1.h, id)

type QButtonGroupmetaObjectProc* = proc(self: QButtonGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QButtonGroupmetacastProc* = proc(self: QButtonGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QButtonGroupmetacallProc* = proc(self: QButtonGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QButtonGroupeventProc* = proc(self: QButtonGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QButtonGroupeventFilterProc* = proc(self: QButtonGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QButtonGrouptimerEventProc* = proc(self: QButtonGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QButtonGroupchildEventProc* = proc(self: QButtonGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QButtonGroupcustomEventProc* = proc(self: QButtonGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QButtonGroupconnectNotifyProc* = proc(self: QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QButtonGroupdisconnectNotifyProc* = proc(self: QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QButtonGroupVTable* = object
  vtbl: cQButtonGroupVTable
  metaObject*: QButtonGroupmetaObjectProc
  metacast*: QButtonGroupmetacastProc
  metacall*: QButtonGroupmetacallProc
  event*: QButtonGroupeventProc
  eventFilter*: QButtonGroupeventFilterProc
  timerEvent*: QButtonGrouptimerEventProc
  childEvent*: QButtonGroupchildEventProc
  customEvent*: QButtonGroupcustomEventProc
  connectNotify*: QButtonGroupconnectNotifyProc
  disconnectNotify*: QButtonGroupdisconnectNotifyProc
proc QButtonGroupmetaObject*(self: gen_qbuttongroup_types.QButtonGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQButtonGroup_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQButtonGroup_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QButtonGroupmetacast*(self: gen_qbuttongroup_types.QButtonGroup, param1: cstring): pointer =
  fcQButtonGroup_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQButtonGroup_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QButtonGroupmetacall*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQButtonGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQButtonGroup_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QButtonGroupevent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQButtonGroup_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQButtonGroup_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QButtonGroupeventFilter*(self: gen_qbuttongroup_types.QButtonGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQButtonGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQButtonGroup_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QButtonGrouptimerEvent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQButtonGroup_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQButtonGroup_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QButtonGroupchildEvent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQButtonGroup_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQButtonGroup_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QButtonGroupcustomEvent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQButtonGroup_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQButtonGroup_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QButtonGroupconnectNotify*(self: gen_qbuttongroup_types.QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQButtonGroup_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQButtonGroup_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QButtonGroupdisconnectNotify*(self: gen_qbuttongroup_types.QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQButtonGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQButtonGroup_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QButtonGroupVTable](vtbl)
  let self = QButtonGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qbuttongroup_types.QButtonGroup, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQButtonGroup_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qbuttongroup_types.QButtonGroup, ): cint =
  fcQButtonGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qbuttongroup_types.QButtonGroup, signal: cstring): cint =
  fcQButtonGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qbuttongroup_types.QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQButtonGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qbuttongroup_types.QButtonGroup,
    vtbl: ref QButtonGroupVTable = nil): gen_qbuttongroup_types.QButtonGroup =
  let vtbl = if vtbl == nil: new QButtonGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQButtonGroupVTable, _: ptr cQButtonGroup) {.cdecl.} =
    let vtbl = cast[ref QButtonGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQButtonGroup_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQButtonGroup_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQButtonGroup_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQButtonGroup_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQButtonGroup_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQButtonGroup_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQButtonGroup_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQButtonGroup_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQButtonGroup_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQButtonGroup_disconnectNotify
  gen_qbuttongroup_types.QButtonGroup(h: fcQButtonGroup_new(addr(vtbl[]), ))

proc create*(T: type gen_qbuttongroup_types.QButtonGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QButtonGroupVTable = nil): gen_qbuttongroup_types.QButtonGroup =
  let vtbl = if vtbl == nil: new QButtonGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQButtonGroupVTable, _: ptr cQButtonGroup) {.cdecl.} =
    let vtbl = cast[ref QButtonGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQButtonGroup_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQButtonGroup_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQButtonGroup_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQButtonGroup_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQButtonGroup_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQButtonGroup_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQButtonGroup_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQButtonGroup_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQButtonGroup_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQButtonGroup_disconnectNotify
  gen_qbuttongroup_types.QButtonGroup(h: fcQButtonGroup_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qbuttongroup_types.QButtonGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQButtonGroup_staticMetaObject())
proc delete*(self: gen_qbuttongroup_types.QButtonGroup) =
  fcQButtonGroup_delete(self.h)
