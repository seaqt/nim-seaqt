import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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

proc fcQButtonGroup_new(): ptr cQButtonGroup {.importc: "QButtonGroup_new".}
proc fcQButtonGroup_new2(parent: pointer): ptr cQButtonGroup {.importc: "QButtonGroup_new2".}
proc fcQButtonGroup_metaObject(self: pointer, ): pointer {.importc: "QButtonGroup_metaObject".}
proc fcQButtonGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QButtonGroup_metacast".}
proc fcQButtonGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QButtonGroup_metacall".}
proc fcQButtonGroup_tr(s: cstring): struct_miqt_string {.importc: "QButtonGroup_tr".}
proc fcQButtonGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QButtonGroup_trUtf8".}
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
proc fcQButtonGroup_connect_buttonClicked(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonClicked".}
proc fcQButtonGroup_buttonPressed(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonPressed".}
proc fcQButtonGroup_connect_buttonPressed(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonPressed".}
proc fcQButtonGroup_buttonReleased(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonReleased".}
proc fcQButtonGroup_connect_buttonReleased(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonReleased".}
proc fcQButtonGroup_buttonToggled(self: pointer, param1: pointer, param2: bool): void {.importc: "QButtonGroup_buttonToggled".}
proc fcQButtonGroup_connect_buttonToggled(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonToggled".}
proc fcQButtonGroup_idClicked(self: pointer, param1: cint): void {.importc: "QButtonGroup_idClicked".}
proc fcQButtonGroup_connect_idClicked(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idClicked".}
proc fcQButtonGroup_idPressed(self: pointer, param1: cint): void {.importc: "QButtonGroup_idPressed".}
proc fcQButtonGroup_connect_idPressed(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idPressed".}
proc fcQButtonGroup_idReleased(self: pointer, param1: cint): void {.importc: "QButtonGroup_idReleased".}
proc fcQButtonGroup_connect_idReleased(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idReleased".}
proc fcQButtonGroup_idToggled(self: pointer, param1: cint, param2: bool): void {.importc: "QButtonGroup_idToggled".}
proc fcQButtonGroup_connect_idToggled(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idToggled".}
proc fcQButtonGroup_buttonClickedWithInt(self: pointer, param1: cint): void {.importc: "QButtonGroup_buttonClickedWithInt".}
proc fcQButtonGroup_connect_buttonClickedWithInt(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonClickedWithInt".}
proc fcQButtonGroup_buttonPressedWithInt(self: pointer, param1: cint): void {.importc: "QButtonGroup_buttonPressedWithInt".}
proc fcQButtonGroup_connect_buttonPressedWithInt(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonPressedWithInt".}
proc fcQButtonGroup_buttonReleasedWithInt(self: pointer, param1: cint): void {.importc: "QButtonGroup_buttonReleasedWithInt".}
proc fcQButtonGroup_connect_buttonReleasedWithInt(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonReleasedWithInt".}
proc fcQButtonGroup_buttonToggled2(self: pointer, param1: cint, param2: bool): void {.importc: "QButtonGroup_buttonToggled2".}
proc fcQButtonGroup_connect_buttonToggled2(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonToggled2".}
proc fcQButtonGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QButtonGroup_tr2".}
proc fcQButtonGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QButtonGroup_tr3".}
proc fcQButtonGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QButtonGroup_trUtf82".}
proc fcQButtonGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QButtonGroup_trUtf83".}
proc fcQButtonGroup_addButton2(self: pointer, param1: pointer, id: cint): void {.importc: "QButtonGroup_addButton2".}
proc fQButtonGroup_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QButtonGroup_virtualbase_metaObject".}
proc fcQButtonGroup_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_metaObject".}
proc fQButtonGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QButtonGroup_virtualbase_metacast".}
proc fcQButtonGroup_override_virtual_metacast(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_metacast".}
proc fQButtonGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QButtonGroup_virtualbase_metacall".}
proc fcQButtonGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_metacall".}
proc fQButtonGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QButtonGroup_virtualbase_event".}
proc fcQButtonGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_event".}
proc fQButtonGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QButtonGroup_virtualbase_eventFilter".}
proc fcQButtonGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_eventFilter".}
proc fQButtonGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QButtonGroup_virtualbase_timerEvent".}
proc fcQButtonGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_timerEvent".}
proc fQButtonGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QButtonGroup_virtualbase_childEvent".}
proc fcQButtonGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_childEvent".}
proc fQButtonGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QButtonGroup_virtualbase_customEvent".}
proc fcQButtonGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_customEvent".}
proc fQButtonGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QButtonGroup_virtualbase_connectNotify".}
proc fcQButtonGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_connectNotify".}
proc fQButtonGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QButtonGroup_virtualbase_disconnectNotify".}
proc fcQButtonGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_disconnectNotify".}
proc fcQButtonGroup_staticMetaObject(): pointer {.importc: "QButtonGroup_staticMetaObject".}
proc fcQButtonGroup_delete(self: pointer) {.importc: "QButtonGroup_delete".}


func init*(T: type gen_qbuttongroup_types.QButtonGroup, h: ptr cQButtonGroup): gen_qbuttongroup_types.QButtonGroup =
  T(h: h)
proc create*(T: type gen_qbuttongroup_types.QButtonGroup, ): gen_qbuttongroup_types.QButtonGroup =
  gen_qbuttongroup_types.QButtonGroup.init(fcQButtonGroup_new())

proc create*(T: type gen_qbuttongroup_types.QButtonGroup, parent: gen_qobject_types.QObject): gen_qbuttongroup_types.QButtonGroup =
  gen_qbuttongroup_types.QButtonGroup.init(fcQButtonGroup_new2(parent.h))

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

proc trUtf8*(_: type gen_qbuttongroup_types.QButtonGroup, s: cstring): string =
  let v_ms = fcQButtonGroup_trUtf8(s)
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
proc miqt_exec_callback_QButtonGroup_buttonClicked(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  nimfunc[](slotval1)

proc onbuttonClicked*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonClickedSlot) =
  var tmp = new QButtonGroupbuttonClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonClicked(self.h, cast[int](addr tmp[]))

proc buttonPressed*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_buttonPressed(self.h, param1.h)

type QButtonGroupbuttonPressedSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_QButtonGroup_buttonPressed(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  nimfunc[](slotval1)

proc onbuttonPressed*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonPressedSlot) =
  var tmp = new QButtonGroupbuttonPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonPressed(self.h, cast[int](addr tmp[]))

proc buttonReleased*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton): void =
  fcQButtonGroup_buttonReleased(self.h, param1.h)

type QButtonGroupbuttonReleasedSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_QButtonGroup_buttonReleased(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonReleasedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  nimfunc[](slotval1)

proc onbuttonReleased*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonReleasedSlot) =
  var tmp = new QButtonGroupbuttonReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonReleased(self.h, cast[int](addr tmp[]))

proc buttonToggled*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton, param2: bool): void =
  fcQButtonGroup_buttonToggled(self.h, param1.h, param2)

type QButtonGroupbuttonToggledSlot* = proc(param1: gen_qabstractbutton_types.QAbstractButton, param2: bool)
proc miqt_exec_callback_QButtonGroup_buttonToggled(slot: int, param1: pointer, param2: bool) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonToggledSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: param1)

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc onbuttonToggled*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonToggledSlot) =
  var tmp = new QButtonGroupbuttonToggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonToggled(self.h, cast[int](addr tmp[]))

proc idClicked*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_idClicked(self.h, param1)

type QButtonGroupidClickedSlot* = proc(param1: cint)
proc miqt_exec_callback_QButtonGroup_idClicked(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupidClickedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onidClicked*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidClickedSlot) =
  var tmp = new QButtonGroupidClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idClicked(self.h, cast[int](addr tmp[]))

proc idPressed*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_idPressed(self.h, param1)

type QButtonGroupidPressedSlot* = proc(param1: cint)
proc miqt_exec_callback_QButtonGroup_idPressed(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupidPressedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onidPressed*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidPressedSlot) =
  var tmp = new QButtonGroupidPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idPressed(self.h, cast[int](addr tmp[]))

proc idReleased*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_idReleased(self.h, param1)

type QButtonGroupidReleasedSlot* = proc(param1: cint)
proc miqt_exec_callback_QButtonGroup_idReleased(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupidReleasedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onidReleased*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidReleasedSlot) =
  var tmp = new QButtonGroupidReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idReleased(self.h, cast[int](addr tmp[]))

proc idToggled*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint, param2: bool): void =
  fcQButtonGroup_idToggled(self.h, param1, param2)

type QButtonGroupidToggledSlot* = proc(param1: cint, param2: bool)
proc miqt_exec_callback_QButtonGroup_idToggled(slot: int, param1: cint, param2: bool) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupidToggledSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc onidToggled*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupidToggledSlot) =
  var tmp = new QButtonGroupidToggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_idToggled(self.h, cast[int](addr tmp[]))

proc buttonClicked*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_buttonClickedWithInt(self.h, param1)

type QButtonGroupbuttonClickedWithIntSlot* = proc(param1: cint)
proc miqt_exec_callback_QButtonGroup_buttonClickedWithInt(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonClickedWithIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onbuttonClicked*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonClickedWithIntSlot) =
  var tmp = new QButtonGroupbuttonClickedWithIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonClickedWithInt(self.h, cast[int](addr tmp[]))

proc buttonPressed*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_buttonPressedWithInt(self.h, param1)

type QButtonGroupbuttonPressedWithIntSlot* = proc(param1: cint)
proc miqt_exec_callback_QButtonGroup_buttonPressedWithInt(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonPressedWithIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onbuttonPressed*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonPressedWithIntSlot) =
  var tmp = new QButtonGroupbuttonPressedWithIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonPressedWithInt(self.h, cast[int](addr tmp[]))

proc buttonReleased*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint): void =
  fcQButtonGroup_buttonReleasedWithInt(self.h, param1)

type QButtonGroupbuttonReleasedWithIntSlot* = proc(param1: cint)
proc miqt_exec_callback_QButtonGroup_buttonReleasedWithInt(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonReleasedWithIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onbuttonReleased*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonReleasedWithIntSlot) =
  var tmp = new QButtonGroupbuttonReleasedWithIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonReleasedWithInt(self.h, cast[int](addr tmp[]))

proc buttonToggled*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint, param2: bool): void =
  fcQButtonGroup_buttonToggled2(self.h, param1, param2)

type QButtonGroupbuttonToggled2Slot* = proc(param1: cint, param2: bool)
proc miqt_exec_callback_QButtonGroup_buttonToggled2(slot: int, param1: cint, param2: bool) {.exportc.} =
  let nimfunc = cast[ptr QButtonGroupbuttonToggled2Slot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc onbuttonToggled*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupbuttonToggled2Slot) =
  var tmp = new QButtonGroupbuttonToggled2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_connect_buttonToggled2(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qbuttongroup_types.QButtonGroup, s: cstring, c: cstring): string =
  let v_ms = fcQButtonGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qbuttongroup_types.QButtonGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQButtonGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addButton*(self: gen_qbuttongroup_types.QButtonGroup, param1: gen_qabstractbutton_types.QAbstractButton, id: cint): void =
  fcQButtonGroup_addButton2(self.h, param1.h, id)

proc QButtonGroupmetaObject*(self: gen_qbuttongroup_types.QButtonGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQButtonGroup_virtualbase_metaObject(self.h))

type QButtonGroupmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupmetaObjectProc) =
  # TODO check subclass
  var tmp = new QButtonGroupmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_metaObject(self: ptr cQButtonGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QButtonGroup_metaObject ".} =
  var nimfunc = cast[ptr QButtonGroupmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QButtonGroupmetacast*(self: gen_qbuttongroup_types.QButtonGroup, param1: cstring): pointer =
  fQButtonGroup_virtualbase_metacast(self.h, param1)

type QButtonGroupmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupmetacastProc) =
  # TODO check subclass
  var tmp = new QButtonGroupmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_metacast(self: ptr cQButtonGroup, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QButtonGroup_metacast ".} =
  var nimfunc = cast[ptr QButtonGroupmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QButtonGroupmetacall*(self: gen_qbuttongroup_types.QButtonGroup, param1: cint, param2: cint, param3: pointer): cint =
  fQButtonGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QButtonGroupmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupmetacallProc) =
  # TODO check subclass
  var tmp = new QButtonGroupmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_metacall(self: ptr cQButtonGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QButtonGroup_metacall ".} =
  var nimfunc = cast[ptr QButtonGroupmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QButtonGroupevent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QEvent): bool =
  fQButtonGroup_virtualbase_event(self.h, event.h)

type QButtonGroupeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupeventProc) =
  # TODO check subclass
  var tmp = new QButtonGroupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_event(self: ptr cQButtonGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QButtonGroup_event ".} =
  var nimfunc = cast[ptr QButtonGroupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QButtonGroupeventFilter*(self: gen_qbuttongroup_types.QButtonGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQButtonGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QButtonGroupeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupeventFilterProc) =
  # TODO check subclass
  var tmp = new QButtonGroupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_eventFilter(self: ptr cQButtonGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QButtonGroup_eventFilter ".} =
  var nimfunc = cast[ptr QButtonGroupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QButtonGrouptimerEvent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fQButtonGroup_virtualbase_timerEvent(self.h, event.h)

type QButtonGrouptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGrouptimerEventProc) =
  # TODO check subclass
  var tmp = new QButtonGrouptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_timerEvent(self: ptr cQButtonGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_timerEvent ".} =
  var nimfunc = cast[ptr QButtonGrouptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QButtonGroupchildEvent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fQButtonGroup_virtualbase_childEvent(self.h, event.h)

type QButtonGroupchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupchildEventProc) =
  # TODO check subclass
  var tmp = new QButtonGroupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_childEvent(self: ptr cQButtonGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_childEvent ".} =
  var nimfunc = cast[ptr QButtonGroupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QButtonGroupcustomEvent*(self: gen_qbuttongroup_types.QButtonGroup, event: gen_qcoreevent_types.QEvent): void =
  fQButtonGroup_virtualbase_customEvent(self.h, event.h)

type QButtonGroupcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupcustomEventProc) =
  # TODO check subclass
  var tmp = new QButtonGroupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_customEvent(self: ptr cQButtonGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_customEvent ".} =
  var nimfunc = cast[ptr QButtonGroupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QButtonGroupconnectNotify*(self: gen_qbuttongroup_types.QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQButtonGroup_virtualbase_connectNotify(self.h, signal.h)

type QButtonGroupconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QButtonGroupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_connectNotify(self: ptr cQButtonGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_connectNotify ".} =
  var nimfunc = cast[ptr QButtonGroupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QButtonGroupdisconnectNotify*(self: gen_qbuttongroup_types.QButtonGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQButtonGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QButtonGroupdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qbuttongroup_types.QButtonGroup, slot: QButtonGroupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QButtonGroupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_disconnectNotify(self: ptr cQButtonGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_disconnectNotify ".} =
  var nimfunc = cast[ptr QButtonGroupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qbuttongroup_types.QButtonGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQButtonGroup_staticMetaObject())
proc delete*(self: gen_qbuttongroup_types.QButtonGroup) =
  fcQButtonGroup_delete(self.h)
