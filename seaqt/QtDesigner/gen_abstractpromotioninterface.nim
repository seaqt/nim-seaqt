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


import ./gen_abstractpromotioninterface_types
export gen_abstractpromotioninterface_types

import
  ./gen_abstractwidgetdatabase_types,
  std/sets
export
  gen_abstractwidgetdatabase_types

type cQDesignerPromotionInterface*{.exportc: "QDesignerPromotionInterface", incompleteStruct.} = object
type cQDesignerPromotionInterfacePromotedClass*{.exportc: "QDesignerPromotionInterface__PromotedClass", incompleteStruct.} = object

proc fcQDesignerPromotionInterface_promotedClasses(self: pointer): struct_seaqt_array {.importc: "QDesignerPromotionInterface_promotedClasses".}
proc fcQDesignerPromotionInterface_referencedPromotedClassNames(self: pointer): HashSet[struct_seaqt_string] {.importc: "QDesignerPromotionInterface_referencedPromotedClassNames".}
proc fcQDesignerPromotionInterface_promotionBaseClasses(self: pointer): struct_seaqt_array {.importc: "QDesignerPromotionInterface_promotionBaseClasses".}
proc fcQDesignerPromotionInterface_delete(self: pointer) {.importc: "QDesignerPromotionInterface_delete".}
proc fcQDesignerPromotionInterfacePromotedClass_baseItem(self: pointer): pointer {.importc: "QDesignerPromotionInterface__PromotedClass_baseItem".}
proc fcQDesignerPromotionInterfacePromotedClass_setBaseItem(self: pointer, baseItem: pointer): void {.importc: "QDesignerPromotionInterface__PromotedClass_setBaseItem".}
proc fcQDesignerPromotionInterfacePromotedClass_promotedItem(self: pointer): pointer {.importc: "QDesignerPromotionInterface__PromotedClass_promotedItem".}
proc fcQDesignerPromotionInterfacePromotedClass_setPromotedItem(self: pointer, promotedItem: pointer): void {.importc: "QDesignerPromotionInterface__PromotedClass_setPromotedItem".}
proc fcQDesignerPromotionInterfacePromotedClass_delete(self: pointer) {.importc: "QDesignerPromotionInterface__PromotedClass_delete".}

proc promotedClasses*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterface): seq[gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass] =
  var v_ma = fcQDesignerPromotionInterface_promotedClasses(self.h)
  var vx_ret = newSeq[gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc referencedPromotedClassNames*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterface): HashSet[string] =
  var v_ma = fcQDesignerPromotionInterface_referencedPromotedClassNames(self.h)
  vx_ret: HashSet[string])
  v_outCast = cast[ptr UncheckedArray[struct_seaqt_string](v_ma.data))
  for i in 0..<v_ma.len:
    let vx_sv_ms = v_outCast[i]
    let vx_svx_ret = string.fromBytes(vx_sv_ms)
    c_free(vx_sv_ms.data)
    vx_ret.incl vx_svx_ret
  vx_ret

proc promotionBaseClasses*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterface): seq[gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface] =
  var v_ma = fcQDesignerPromotionInterface_promotionBaseClasses(self.h)
  var vx_ret = newSeq[gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc delete*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterface) =
  fcQDesignerPromotionInterface_delete(self.h)
proc baseItem*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface =
  gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: fcQDesignerPromotionInterfacePromotedClass_baseItem(self.h))

proc setBaseItem*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass, baseItem: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void =
  fcQDesignerPromotionInterfacePromotedClass_setBaseItem(self.h, baseItem.h)

proc promotedItem*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass): gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface =
  gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface(h: fcQDesignerPromotionInterfacePromotedClass_promotedItem(self.h))

proc setPromotedItem*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass, promotedItem: gen_abstractwidgetdatabase_types.QDesignerWidgetDataBaseItemInterface): void =
  fcQDesignerPromotionInterfacePromotedClass_setPromotedItem(self.h, promotedItem.h)

proc delete*(self: gen_abstractpromotioninterface_types.QDesignerPromotionInterfacePromotedClass) =
  fcQDesignerPromotionInterfacePromotedClass_delete(self.h)
