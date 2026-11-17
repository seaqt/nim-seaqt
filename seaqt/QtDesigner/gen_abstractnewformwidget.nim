import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_abstractnewformwidget.cpp", QtDesignerCFlags).}


import ./gen_abstractnewformwidget_types
export gen_abstractnewformwidget_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtWidgets/gen_qwidget
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qwidget

type cQDesignerNewFormWidgetInterface*{.exportc: "QDesignerNewFormWidgetInterface", incompleteStruct.} = object

proc fcQDesignerNewFormWidgetInterface_metaObject(self: pointer): pointer {.importc: "QDesignerNewFormWidgetInterface_metaObject".}
proc fcQDesignerNewFormWidgetInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerNewFormWidgetInterface_metacast".}
proc fcQDesignerNewFormWidgetInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerNewFormWidgetInterface_metacall".}
proc fcQDesignerNewFormWidgetInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerNewFormWidgetInterface_tr".}
proc fcQDesignerNewFormWidgetInterface_hasCurrentTemplate(self: pointer): bool {.importc: "QDesignerNewFormWidgetInterface_hasCurrentTemplate".}
proc fcQDesignerNewFormWidgetInterface_templateActivated(self: pointer): void {.importc: "QDesignerNewFormWidgetInterface_templateActivated".}
proc fcQDesignerNewFormWidgetInterface_connect_templateActivated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerNewFormWidgetInterface_connect_templateActivated".}
proc fcQDesignerNewFormWidgetInterface_currentTemplateChanged(self: pointer, templateSelected: bool): void {.importc: "QDesignerNewFormWidgetInterface_currentTemplateChanged".}
proc fcQDesignerNewFormWidgetInterface_connect_currentTemplateChanged(self: pointer, slot: int, callback: proc (slot: int, templateSelected: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerNewFormWidgetInterface_connect_currentTemplateChanged".}
proc fcQDesignerNewFormWidgetInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerNewFormWidgetInterface_tr2".}
proc fcQDesignerNewFormWidgetInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerNewFormWidgetInterface_tr3".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerNewFormWidgetInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerNewFormWidgetInterface_protectedbase_create".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerNewFormWidgetInterface_protectedbase_destroy".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerNewFormWidgetInterface_protectedbase_focusNextChild".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerNewFormWidgetInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerNewFormWidgetInterface_protectedbase_sender".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerNewFormWidgetInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerNewFormWidgetInterface_protectedbase_receivers".}
proc fcQDesignerNewFormWidgetInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerNewFormWidgetInterface_protectedbase_isSignalConnected".}
proc fcQDesignerNewFormWidgetInterface_staticMetaObject(): pointer {.importc: "QDesignerNewFormWidgetInterface_staticMetaObject".}

proc metaObject*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerNewFormWidgetInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, param1: cstring): pointer =
  fcQDesignerNewFormWidgetInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerNewFormWidgetInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, s: cstring): string =
  let v_ms = fcQDesignerNewFormWidgetInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasCurrentTemplate*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): bool =
  fcQDesignerNewFormWidgetInterface_hasCurrentTemplate(self.h)

proc templateActivated*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): void =
  fcQDesignerNewFormWidgetInterface_templateActivated(self.h)

type QDesignerNewFormWidgetInterfacetemplateActivatedSlot* = proc()
proc fcQDesignerNewFormWidgetInterface_slot_callback_templateActivated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerNewFormWidgetInterfacetemplateActivatedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerNewFormWidgetInterface_slot_callback_templateActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerNewFormWidgetInterfacetemplateActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTemplateActivated*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, slot: QDesignerNewFormWidgetInterfacetemplateActivatedSlot) =
  var tmp = new QDesignerNewFormWidgetInterfacetemplateActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerNewFormWidgetInterface_connect_templateActivated(self.h, cast[int](addr tmp[]), fcQDesignerNewFormWidgetInterface_slot_callback_templateActivated, fcQDesignerNewFormWidgetInterface_slot_callback_templateActivated_release)

proc currentTemplateChanged*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, templateSelected: bool): void =
  fcQDesignerNewFormWidgetInterface_currentTemplateChanged(self.h, templateSelected)

type QDesignerNewFormWidgetInterfacecurrentTemplateChangedSlot* = proc(templateSelected: bool)
proc fcQDesignerNewFormWidgetInterface_slot_callback_currentTemplateChanged(slot: int, templateSelected: bool) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerNewFormWidgetInterfacecurrentTemplateChangedSlot](cast[pointer](slot))
  let slotval1 = templateSelected

  nimfunc[](slotval1)

proc fcQDesignerNewFormWidgetInterface_slot_callback_currentTemplateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerNewFormWidgetInterfacecurrentTemplateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentTemplateChanged*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, slot: QDesignerNewFormWidgetInterfacecurrentTemplateChangedSlot) =
  var tmp = new QDesignerNewFormWidgetInterfacecurrentTemplateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerNewFormWidgetInterface_connect_currentTemplateChanged(self.h, cast[int](addr tmp[]), fcQDesignerNewFormWidgetInterface_slot_callback_currentTemplateChanged, fcQDesignerNewFormWidgetInterface_slot_callback_currentTemplateChanged_release)

proc tr*(_: type gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerNewFormWidgetInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerNewFormWidgetInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc updateMicroFocus*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): void =
  fcQDesignerNewFormWidgetInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): void =
  fcQDesignerNewFormWidgetInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): void =
  fcQDesignerNewFormWidgetInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): bool =
  fcQDesignerNewFormWidgetInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): bool =
  fcQDesignerNewFormWidgetInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerNewFormWidgetInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): cint =
  fcQDesignerNewFormWidgetInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, signal: cstring): cint =
  fcQDesignerNewFormWidgetInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerNewFormWidgetInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractnewformwidget_types.QDesignerNewFormWidgetInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerNewFormWidgetInterface_staticMetaObject())
