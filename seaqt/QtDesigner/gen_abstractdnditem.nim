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


type QDesignerDnDItemInterfaceDropTypeEnum* = distinct cint
template MoveDrop*(_: type QDesignerDnDItemInterfaceDropTypeEnum): untyped = 0
template CopyDrop*(_: type QDesignerDnDItemInterfaceDropTypeEnum): untyped = 1


import ./gen_abstractdnditem_types
export gen_abstractdnditem_types

import
  ../QtCore/gen_qpoint_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qpoint_types,
  gen_qwidget_types

type cQDesignerDnDItemInterface*{.exportc: "QDesignerDnDItemInterface", incompleteStruct.} = object

proc fcQDesignerDnDItemInterface_widget(self: pointer): pointer {.importc: "QDesignerDnDItemInterface_widget".}
proc fcQDesignerDnDItemInterface_decoration(self: pointer): pointer {.importc: "QDesignerDnDItemInterface_decoration".}
proc fcQDesignerDnDItemInterface_hotSpot(self: pointer): pointer {.importc: "QDesignerDnDItemInterface_hotSpot".}
proc fcQDesignerDnDItemInterface_typeX(self: pointer): cint {.importc: "QDesignerDnDItemInterface_type".}
proc fcQDesignerDnDItemInterface_source(self: pointer): pointer {.importc: "QDesignerDnDItemInterface_source".}
proc fcQDesignerDnDItemInterface_delete(self: pointer) {.importc: "QDesignerDnDItemInterface_delete".}

proc widget*(self: gen_abstractdnditem_types.QDesignerDnDItemInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerDnDItemInterface_widget(self.h))

proc decoration*(self: gen_abstractdnditem_types.QDesignerDnDItemInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerDnDItemInterface_decoration(self.h))

proc hotSpot*(self: gen_abstractdnditem_types.QDesignerDnDItemInterface): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDesignerDnDItemInterface_hotSpot(self.h))

proc typeX*(self: gen_abstractdnditem_types.QDesignerDnDItemInterface): cint =
  cint(fcQDesignerDnDItemInterface_typeX(self.h))

proc source*(self: gen_abstractdnditem_types.QDesignerDnDItemInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerDnDItemInterface_source(self.h))

proc delete*(self: gen_abstractdnditem_types.QDesignerDnDItemInterface) =
  fcQDesignerDnDItemInterface_delete(self.h)
