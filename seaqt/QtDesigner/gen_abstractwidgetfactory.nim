import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_abstractwidgetfactory.cpp", QtDesignerCFlags).}


import ./gen_abstractwidgetfactory_types
export gen_abstractwidgetfactory_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtWidgets/gen_qlayout_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qlayout_types,
  gen_qwidget_types

type cQDesignerWidgetFactoryInterface*{.exportc: "QDesignerWidgetFactoryInterface", incompleteStruct.} = object

proc fcQDesignerWidgetFactoryInterface_metaObject(self: pointer): pointer {.importc: "QDesignerWidgetFactoryInterface_metaObject".}
proc fcQDesignerWidgetFactoryInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerWidgetFactoryInterface_metacast".}
proc fcQDesignerWidgetFactoryInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerWidgetFactoryInterface_metacall".}
proc fcQDesignerWidgetFactoryInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerWidgetFactoryInterface_tr".}
proc fcQDesignerWidgetFactoryInterface_containerOfWidget(self: pointer, w: pointer): pointer {.importc: "QDesignerWidgetFactoryInterface_containerOfWidget".}
proc fcQDesignerWidgetFactoryInterface_widgetOfContainer(self: pointer, w: pointer): pointer {.importc: "QDesignerWidgetFactoryInterface_widgetOfContainer".}
proc fcQDesignerWidgetFactoryInterface_createWidget(self: pointer, name: struct_seaqt_string, parentWidget: pointer): pointer {.importc: "QDesignerWidgetFactoryInterface_createWidget".}
proc fcQDesignerWidgetFactoryInterface_createLayout(self: pointer, widget: pointer, layout: pointer, typeVal: cint): pointer {.importc: "QDesignerWidgetFactoryInterface_createLayout".}
proc fcQDesignerWidgetFactoryInterface_isPassiveInteractor(self: pointer, widget: pointer): bool {.importc: "QDesignerWidgetFactoryInterface_isPassiveInteractor".}
proc fcQDesignerWidgetFactoryInterface_initialize(self: pointer, objectVal: pointer): void {.importc: "QDesignerWidgetFactoryInterface_initialize".}
proc fcQDesignerWidgetFactoryInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerWidgetFactoryInterface_tr2".}
proc fcQDesignerWidgetFactoryInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerWidgetFactoryInterface_tr3".}
proc fcQDesignerWidgetFactoryInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerWidgetFactoryInterface_protectedbase_sender".}
proc fcQDesignerWidgetFactoryInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerWidgetFactoryInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerWidgetFactoryInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerWidgetFactoryInterface_protectedbase_receivers".}
proc fcQDesignerWidgetFactoryInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerWidgetFactoryInterface_protectedbase_isSignalConnected".}
proc fcQDesignerWidgetFactoryInterface_staticMetaObject(): pointer {.importc: "QDesignerWidgetFactoryInterface_staticMetaObject".}
proc fcQDesignerWidgetFactoryInterface_delete(self: pointer) {.importc: "QDesignerWidgetFactoryInterface_delete".}

proc metaObject*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetFactoryInterface_metaObject(self.h))

proc metacast*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, param1: cstring): pointer =
  fcQDesignerWidgetFactoryInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerWidgetFactoryInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, s: cstring): string =
  let v_ms = fcQDesignerWidgetFactoryInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc containerOfWidget*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, w: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerWidgetFactoryInterface_containerOfWidget(self.h, w.h))

proc widgetOfContainer*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, w: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerWidgetFactoryInterface_widgetOfContainer(self.h, w.h))

proc createWidget*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, name: openArray[char], parentWidget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerWidgetFactoryInterface_createWidget(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), parentWidget.h))

proc createLayout*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, widget: gen_qwidget_types.QWidget, layout: gen_qlayout_types.QLayout, typeVal: cint): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQDesignerWidgetFactoryInterface_createLayout(self.h, widget.h, layout.h, typeVal))

proc isPassiveInteractor*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, widget: gen_qwidget_types.QWidget): bool =
  fcQDesignerWidgetFactoryInterface_isPassiveInteractor(self.h, widget.h)

proc initialize*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, objectVal: gen_qobject_types.QObject): void =
  fcQDesignerWidgetFactoryInterface_initialize(self.h, objectVal.h)

proc tr*(_: type gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerWidgetFactoryInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerWidgetFactoryInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerWidgetFactoryInterface_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface): cint =
  fcQDesignerWidgetFactoryInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, signal: cstring): cint =
  fcQDesignerWidgetFactoryInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerWidgetFactoryInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerWidgetFactoryInterface_staticMetaObject())
proc delete*(self: gen_abstractwidgetfactory_types.QDesignerWidgetFactoryInterface) =
  fcQDesignerWidgetFactoryInterface_delete(self.h)
