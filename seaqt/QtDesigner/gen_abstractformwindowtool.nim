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


{.compile("gen_abstractformwindowtool.cpp", QtDesignerCFlags).}


import ./gen_abstractformwindowtool_types
export gen_abstractformwindowtool_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qaction_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_abstractformwindow_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaction_types,
  gen_qwidget_types,
  gen_abstractformwindow_types

type cQDesignerFormWindowToolInterface*{.exportc: "QDesignerFormWindowToolInterface", incompleteStruct.} = object

proc fcQDesignerFormWindowToolInterface_metaObject(self: pointer): pointer {.importc: "QDesignerFormWindowToolInterface_metaObject".}
proc fcQDesignerFormWindowToolInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerFormWindowToolInterface_metacast".}
proc fcQDesignerFormWindowToolInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerFormWindowToolInterface_metacall".}
proc fcQDesignerFormWindowToolInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerFormWindowToolInterface_tr".}
proc fcQDesignerFormWindowToolInterface_formWindow(self: pointer): pointer {.importc: "QDesignerFormWindowToolInterface_formWindow".}
proc fcQDesignerFormWindowToolInterface_editor(self: pointer): pointer {.importc: "QDesignerFormWindowToolInterface_editor".}
proc fcQDesignerFormWindowToolInterface_action(self: pointer): pointer {.importc: "QDesignerFormWindowToolInterface_action".}
proc fcQDesignerFormWindowToolInterface_activated(self: pointer): void {.importc: "QDesignerFormWindowToolInterface_activated".}
proc fcQDesignerFormWindowToolInterface_deactivated(self: pointer): void {.importc: "QDesignerFormWindowToolInterface_deactivated".}
proc fcQDesignerFormWindowToolInterface_handleEvent(self: pointer, widget: pointer, managedWidget: pointer, event: pointer): bool {.importc: "QDesignerFormWindowToolInterface_handleEvent".}
proc fcQDesignerFormWindowToolInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerFormWindowToolInterface_tr2".}
proc fcQDesignerFormWindowToolInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerFormWindowToolInterface_tr3".}
proc fcQDesignerFormWindowToolInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerFormWindowToolInterface_protectedbase_sender".}
proc fcQDesignerFormWindowToolInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerFormWindowToolInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerFormWindowToolInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerFormWindowToolInterface_protectedbase_receivers".}
proc fcQDesignerFormWindowToolInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerFormWindowToolInterface_protectedbase_isSignalConnected".}
proc fcQDesignerFormWindowToolInterface_staticMetaObject(): pointer {.importc: "QDesignerFormWindowToolInterface_staticMetaObject".}

proc metaObject*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerFormWindowToolInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, param1: cstring): pointer =
  fcQDesignerFormWindowToolInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerFormWindowToolInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, s: cstring): string =
  let v_ms = fcQDesignerFormWindowToolInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formWindow*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowToolInterface_formWindow(self.h), owned: false)

proc editor*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerFormWindowToolInterface_editor(self.h), owned: false)

proc action*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowToolInterface_action(self.h), owned: false)

proc activated*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): void =
  fcQDesignerFormWindowToolInterface_activated(self.h)

proc deactivated*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): void =
  fcQDesignerFormWindowToolInterface_deactivated(self.h)

proc handleEvent*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, widget: gen_qwidget_types.QWidget, managedWidget: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerFormWindowToolInterface_handleEvent(self.h, widget.h, managedWidget.h, event.h)

proc tr*(_: type gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerFormWindowToolInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerFormWindowToolInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerFormWindowToolInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): cint =
  fcQDesignerFormWindowToolInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, signal: cstring): cint =
  fcQDesignerFormWindowToolInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerFormWindowToolInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractformwindowtool_types.QDesignerFormWindowToolInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerFormWindowToolInterface_staticMetaObject())
