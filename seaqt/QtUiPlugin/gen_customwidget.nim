import ./qtuiplugin_pkg

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


import ./gen_customwidget_types
export gen_customwidget_types

import
  ../QtGui/gen_qicon_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qicon_types,
  gen_qwidget_types

type cQDesignerCustomWidgetInterface*{.exportc: "QDesignerCustomWidgetInterface", incompleteStruct.} = object
type cQDesignerCustomWidgetCollectionInterface*{.exportc: "QDesignerCustomWidgetCollectionInterface", incompleteStruct.} = object

proc fcQDesignerCustomWidgetInterface_name(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_name".}
proc fcQDesignerCustomWidgetInterface_group(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_group".}
proc fcQDesignerCustomWidgetInterface_toolTip(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_toolTip".}
proc fcQDesignerCustomWidgetInterface_whatsThis(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_whatsThis".}
proc fcQDesignerCustomWidgetInterface_includeFile(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_includeFile".}
proc fcQDesignerCustomWidgetInterface_icon(self: pointer): pointer {.importc: "QDesignerCustomWidgetInterface_icon".}
proc fcQDesignerCustomWidgetInterface_isContainer(self: pointer): bool {.importc: "QDesignerCustomWidgetInterface_isContainer".}
proc fcQDesignerCustomWidgetInterface_createWidget(self: pointer, parent: pointer): pointer {.importc: "QDesignerCustomWidgetInterface_createWidget".}
proc fcQDesignerCustomWidgetInterface_isInitialized(self: pointer): bool {.importc: "QDesignerCustomWidgetInterface_isInitialized".}
proc fcQDesignerCustomWidgetInterface_domXml(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_domXml".}
proc fcQDesignerCustomWidgetInterface_codeTemplate(self: pointer): struct_seaqt_string {.importc: "QDesignerCustomWidgetInterface_codeTemplate".}
proc fcQDesignerCustomWidgetCollectionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDesignerCustomWidgetCollectionInterface_operatorAssign".}

proc name*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc group*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_group(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toolTip*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_toolTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc whatsThis*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc includeFile*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_includeFile(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc icon*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQDesignerCustomWidgetInterface_icon(self.h), owned: true)

proc isContainer*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): bool =
  fcQDesignerCustomWidgetInterface_isContainer(self.h)

proc createWidget*(self: gen_customwidget_types.QDesignerCustomWidgetInterface, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerCustomWidgetInterface_createWidget(self.h, parent.h), owned: false)

proc isInitialized*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): bool =
  fcQDesignerCustomWidgetInterface_isInitialized(self.h)

proc domXml*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_domXml(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc codeTemplate*(self: gen_customwidget_types.QDesignerCustomWidgetInterface): string =
  let v_ms = fcQDesignerCustomWidgetInterface_codeTemplate(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_customwidget_types.QDesignerCustomWidgetCollectionInterface, param1: gen_customwidget_types.QDesignerCustomWidgetCollectionInterface): void =
  fcQDesignerCustomWidgetCollectionInterface_operatorAssign(self.h, param1.h)

