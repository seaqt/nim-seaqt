import ./qtwidgets_pkg

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


{.compile("gen_qaccessiblewidget.cpp", QtWidgetsCFlags).}


import ./gen_qaccessiblewidget_types
export gen_qaccessiblewidget_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qaccessible_base_types,
  ../QtGui/gen_qaccessible_types,
  ../QtGui/gen_qaccessibleobject,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qwindow_types,
  ./gen_qwidget_types
export
  gen_qobject_types,
  gen_qrect_types,
  gen_qaccessible_base_types,
  gen_qaccessible_types,
  gen_qaccessibleobject,
  gen_qcolor_types,
  gen_qwindow_types,
  gen_qwidget_types

type cQAccessibleWidget*{.exportc: "QAccessibleWidget", incompleteStruct.} = object

proc fcQAccessibleWidget_isValid(self: pointer): bool {.importc: "QAccessibleWidget_isValid".}
proc fcQAccessibleWidget_window(self: pointer): pointer {.importc: "QAccessibleWidget_window".}
proc fcQAccessibleWidget_childCount(self: pointer): cint {.importc: "QAccessibleWidget_childCount".}
proc fcQAccessibleWidget_indexOfChild(self: pointer, child: pointer): cint {.importc: "QAccessibleWidget_indexOfChild".}
proc fcQAccessibleWidget_relations(self: pointer, match: cint): struct_miqt_array {.importc: "QAccessibleWidget_relations".}
proc fcQAccessibleWidget_focusChild(self: pointer): pointer {.importc: "QAccessibleWidget_focusChild".}
proc fcQAccessibleWidget_rect(self: pointer): pointer {.importc: "QAccessibleWidget_rect".}
proc fcQAccessibleWidget_parent(self: pointer): pointer {.importc: "QAccessibleWidget_parent".}
proc fcQAccessibleWidget_child(self: pointer, index: cint): pointer {.importc: "QAccessibleWidget_child".}
proc fcQAccessibleWidget_text(self: pointer, t: cint): struct_miqt_string {.importc: "QAccessibleWidget_text".}
proc fcQAccessibleWidget_role(self: pointer): cint {.importc: "QAccessibleWidget_role".}
proc fcQAccessibleWidget_state(self: pointer): pointer {.importc: "QAccessibleWidget_state".}
proc fcQAccessibleWidget_foregroundColor(self: pointer): pointer {.importc: "QAccessibleWidget_foregroundColor".}
proc fcQAccessibleWidget_backgroundColor(self: pointer): pointer {.importc: "QAccessibleWidget_backgroundColor".}
proc fcQAccessibleWidget_interfaceCast(self: pointer, t: cint): pointer {.importc: "QAccessibleWidget_interfaceCast".}
proc fcQAccessibleWidget_actionNames(self: pointer): struct_miqt_array {.importc: "QAccessibleWidget_actionNames".}
proc fcQAccessibleWidget_doAction(self: pointer, actionName: struct_miqt_string): void {.importc: "QAccessibleWidget_doAction".}
proc fcQAccessibleWidget_keyBindingsForAction(self: pointer, actionName: struct_miqt_string): struct_miqt_array {.importc: "QAccessibleWidget_keyBindingsForAction".}
proc fcQAccessibleWidget_protectedbase_widget(self: pointer): pointer {.importc: "QAccessibleWidget_protectedbase_widget".}
proc fcQAccessibleWidget_protectedbase_parentObject(self: pointer): pointer {.importc: "QAccessibleWidget_protectedbase_parentObject".}
proc fcQAccessibleWidget_protectedbase_addControllingSignal(self: pointer, signal: struct_miqt_string): void {.importc: "QAccessibleWidget_protectedbase_addControllingSignal".}
proc fcQAccessibleWidget_new(o: pointer): ptr cQAccessibleWidget {.importc: "QAccessibleWidget_new".}
proc fcQAccessibleWidget_new2(o: pointer, r: cint): ptr cQAccessibleWidget {.importc: "QAccessibleWidget_new2".}
proc fcQAccessibleWidget_new3(o: pointer, r: cint, name: struct_miqt_string): ptr cQAccessibleWidget {.importc: "QAccessibleWidget_new3".}

proc isValid*(self: gen_qaccessiblewidget_types.QAccessibleWidget): bool =
  fcQAccessibleWidget_isValid(self.h)

proc window*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQAccessibleWidget_window(self.h), owned: false)

proc childCount*(self: gen_qaccessiblewidget_types.QAccessibleWidget): cint =
  fcQAccessibleWidget_childCount(self.h)

proc indexOfChild*(self: gen_qaccessiblewidget_types.QAccessibleWidget, child: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQAccessibleWidget_indexOfChild(self.h, child.h)

proc relations*(self: gen_qaccessiblewidget_types.QAccessibleWidget, match: cint): seq[tuple[first: gen_qaccessible_types.QAccessibleInterface, second: cint]] =
  var v_ma = fcQAccessibleWidget_relations(self.h, cint(match))
  var vx_ret = newSeq[tuple[first: gen_qaccessible_types.QAccessibleInterface, second: cint]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[cint]](vx_lv_mm.values)
    var vx_lv_entry_First = gen_qaccessible_types.QAccessibleInterface(h: vx_lv_First_CArray[0], owned: false)

    var vx_lv_entry_Second = cint(vx_lv_Second_CArray[0])

    c_free(vx_lv_mm.keys)
    c_free(vx_lv_mm.values)
    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  c_free(v_ma.data)
  vx_ret

proc focusChild*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleWidget_focusChild(self.h), owned: false)

proc rect*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAccessibleWidget_rect(self.h), owned: true)

proc parent*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleWidget_parent(self.h), owned: false)

proc child*(self: gen_qaccessiblewidget_types.QAccessibleWidget, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleWidget_child(self.h, index), owned: false)

proc text*(self: gen_qaccessiblewidget_types.QAccessibleWidget, t: cint): string =
  let v_ms = fcQAccessibleWidget_text(self.h, cint(t))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc role*(self: gen_qaccessiblewidget_types.QAccessibleWidget): cint =
  cint(fcQAccessibleWidget_role(self.h))

proc state*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qaccessible_base_types.QAccessibleState =
  gen_qaccessible_base_types.QAccessibleState(h: fcQAccessibleWidget_state(self.h), owned: true)

proc foregroundColor*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQAccessibleWidget_foregroundColor(self.h), owned: true)

proc backgroundColor*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQAccessibleWidget_backgroundColor(self.h), owned: true)

proc interfaceCast*(self: gen_qaccessiblewidget_types.QAccessibleWidget, t: cint): pointer =
  fcQAccessibleWidget_interfaceCast(self.h, cint(t))

proc actionNames*(self: gen_qaccessiblewidget_types.QAccessibleWidget): seq[string] =
  var v_ma = fcQAccessibleWidget_actionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc doAction*(self: gen_qaccessiblewidget_types.QAccessibleWidget, actionName: openArray[char]): void =
  fcQAccessibleWidget_doAction(self.h, struct_miqt_string(data: if len(actionName) > 0: addr actionName[0] else: nil, len: csize_t(len(actionName))))

proc keyBindingsForAction*(self: gen_qaccessiblewidget_types.QAccessibleWidget, actionName: openArray[char]): seq[string] =
  var v_ma = fcQAccessibleWidget_keyBindingsForAction(self.h, struct_miqt_string(data: if len(actionName) > 0: addr actionName[0] else: nil, len: csize_t(len(actionName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc widget*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAccessibleWidget_protectedbase_widget(self.h), owned: false)

proc parentObject*(self: gen_qaccessiblewidget_types.QAccessibleWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibleWidget_protectedbase_parentObject(self.h), owned: false)

proc addControllingSignal*(self: gen_qaccessiblewidget_types.QAccessibleWidget, signal: openArray[char]): void =
  fcQAccessibleWidget_protectedbase_addControllingSignal(self.h, struct_miqt_string(data: if len(signal) > 0: addr signal[0] else: nil, len: csize_t(len(signal))))

proc create*(T: type gen_qaccessiblewidget_types.QAccessibleWidget,
    o: gen_qwidget_types.QWidget): gen_qaccessiblewidget_types.QAccessibleWidget =
  gen_qaccessiblewidget_types.QAccessibleWidget(h: fcQAccessibleWidget_new(o.h), owned: true)

proc create*(T: type gen_qaccessiblewidget_types.QAccessibleWidget,
    o: gen_qwidget_types.QWidget, r: cint): gen_qaccessiblewidget_types.QAccessibleWidget =
  gen_qaccessiblewidget_types.QAccessibleWidget(h: fcQAccessibleWidget_new2(o.h, cint(r)), owned: true)

proc create*(T: type gen_qaccessiblewidget_types.QAccessibleWidget,
    o: gen_qwidget_types.QWidget, r: cint, name: openArray[char]): gen_qaccessiblewidget_types.QAccessibleWidget =
  gen_qaccessiblewidget_types.QAccessibleWidget(h: fcQAccessibleWidget_new3(o.h, cint(r), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

