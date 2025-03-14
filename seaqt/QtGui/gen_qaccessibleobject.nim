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


{.compile("gen_qaccessibleobject.cpp", QtGuiCFlags).}


import ./gen_qaccessibleobject_types
export gen_qaccessibleobject_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qrect_types,
  ./gen_qaccessible,
  ./gen_qwindow_types
export
  gen_qobject_types,
  gen_qrect_types,
  gen_qaccessible,
  gen_qwindow_types

type cQAccessibleObject*{.exportc: "QAccessibleObject", incompleteStruct.} = object
type cQAccessibleApplication*{.exportc: "QAccessibleApplication", incompleteStruct.} = object

proc fcQAccessibleObject_isValid(self: pointer): bool {.importc: "QAccessibleObject_isValid".}
proc fcQAccessibleObject_objectX(self: pointer): pointer {.importc: "QAccessibleObject_object".}
proc fcQAccessibleObject_rect(self: pointer): pointer {.importc: "QAccessibleObject_rect".}
proc fcQAccessibleObject_setText(self: pointer, t: cint, text: struct_miqt_string): void {.importc: "QAccessibleObject_setText".}
proc fcQAccessibleObject_childAt(self: pointer, x: cint, y: cint): pointer {.importc: "QAccessibleObject_childAt".}
proc fcQAccessibleApplication_window(self: pointer): pointer {.importc: "QAccessibleApplication_window".}
proc fcQAccessibleApplication_childCount(self: pointer): cint {.importc: "QAccessibleApplication_childCount".}
proc fcQAccessibleApplication_indexOfChild(self: pointer, param1: pointer): cint {.importc: "QAccessibleApplication_indexOfChild".}
proc fcQAccessibleApplication_focusChild(self: pointer): pointer {.importc: "QAccessibleApplication_focusChild".}
proc fcQAccessibleApplication_parent(self: pointer): pointer {.importc: "QAccessibleApplication_parent".}
proc fcQAccessibleApplication_child(self: pointer, index: cint): pointer {.importc: "QAccessibleApplication_child".}
proc fcQAccessibleApplication_text(self: pointer, t: cint): struct_miqt_string {.importc: "QAccessibleApplication_text".}
proc fcQAccessibleApplication_role(self: pointer): cint {.importc: "QAccessibleApplication_role".}
proc fcQAccessibleApplication_state(self: pointer): pointer {.importc: "QAccessibleApplication_state".}
proc fcQAccessibleApplication_new(): ptr cQAccessibleApplication {.importc: "QAccessibleApplication_new".}

proc isValid*(self: gen_qaccessibleobject_types.QAccessibleObject): bool =
  fcQAccessibleObject_isValid(self.h)

proc objectX*(self: gen_qaccessibleobject_types.QAccessibleObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibleObject_objectX(self.h), owned: false)

proc rect*(self: gen_qaccessibleobject_types.QAccessibleObject): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAccessibleObject_rect(self.h), owned: true)

proc setText*(self: gen_qaccessibleobject_types.QAccessibleObject, t: cint, text: openArray[char]): void =
  fcQAccessibleObject_setText(self.h, cint(t), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc childAt*(self: gen_qaccessibleobject_types.QAccessibleObject, x: cint, y: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleObject_childAt(self.h, x, y), owned: false)

proc window*(self: gen_qaccessibleobject_types.QAccessibleApplication): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQAccessibleApplication_window(self.h), owned: false)

proc childCount*(self: gen_qaccessibleobject_types.QAccessibleApplication): cint =
  fcQAccessibleApplication_childCount(self.h)

proc indexOfChild*(self: gen_qaccessibleobject_types.QAccessibleApplication, param1: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQAccessibleApplication_indexOfChild(self.h, param1.h)

proc focusChild*(self: gen_qaccessibleobject_types.QAccessibleApplication): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleApplication_focusChild(self.h), owned: false)

proc parent*(self: gen_qaccessibleobject_types.QAccessibleApplication): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleApplication_parent(self.h), owned: false)

proc child*(self: gen_qaccessibleobject_types.QAccessibleApplication, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleApplication_child(self.h, index), owned: false)

proc text*(self: gen_qaccessibleobject_types.QAccessibleApplication, t: cint): string =
  let v_ms = fcQAccessibleApplication_text(self.h, cint(t))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc role*(self: gen_qaccessibleobject_types.QAccessibleApplication): cint =
  cint(fcQAccessibleApplication_role(self.h))

proc state*(self: gen_qaccessibleobject_types.QAccessibleApplication): gen_qaccessible_types.QAccessibleState =
  gen_qaccessible_types.QAccessibleState(h: fcQAccessibleApplication_state(self.h), owned: true)

proc create*(T: type gen_qaccessibleobject_types.QAccessibleApplication): gen_qaccessibleobject_types.QAccessibleApplication =
  gen_qaccessibleobject_types.QAccessibleApplication(h: fcQAccessibleApplication_new(), owned: true)

