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


import ./gen_membersheet_types
export gen_membersheet_types


type cQDesignerMemberSheetExtension*{.exportc: "QDesignerMemberSheetExtension", incompleteStruct.} = object

proc fcQDesignerMemberSheetExtension_count(self: pointer): cint {.importc: "QDesignerMemberSheetExtension_count".}
proc fcQDesignerMemberSheetExtension_indexOf(self: pointer, name: struct_seaqt_string): cint {.importc: "QDesignerMemberSheetExtension_indexOf".}
proc fcQDesignerMemberSheetExtension_memberName(self: pointer, index: cint): struct_seaqt_string {.importc: "QDesignerMemberSheetExtension_memberName".}
proc fcQDesignerMemberSheetExtension_memberGroup(self: pointer, index: cint): struct_seaqt_string {.importc: "QDesignerMemberSheetExtension_memberGroup".}
proc fcQDesignerMemberSheetExtension_setMemberGroup(self: pointer, index: cint, group: struct_seaqt_string): void {.importc: "QDesignerMemberSheetExtension_setMemberGroup".}
proc fcQDesignerMemberSheetExtension_isVisible(self: pointer, index: cint): bool {.importc: "QDesignerMemberSheetExtension_isVisible".}
proc fcQDesignerMemberSheetExtension_setVisible(self: pointer, index: cint, b: bool): void {.importc: "QDesignerMemberSheetExtension_setVisible".}
proc fcQDesignerMemberSheetExtension_isSignal(self: pointer, index: cint): bool {.importc: "QDesignerMemberSheetExtension_isSignal".}
proc fcQDesignerMemberSheetExtension_isSlot(self: pointer, index: cint): bool {.importc: "QDesignerMemberSheetExtension_isSlot".}
proc fcQDesignerMemberSheetExtension_inheritedFromWidget(self: pointer, index: cint): bool {.importc: "QDesignerMemberSheetExtension_inheritedFromWidget".}
proc fcQDesignerMemberSheetExtension_declaredInClass(self: pointer, index: cint): struct_seaqt_string {.importc: "QDesignerMemberSheetExtension_declaredInClass".}
proc fcQDesignerMemberSheetExtension_signature(self: pointer, index: cint): struct_seaqt_string {.importc: "QDesignerMemberSheetExtension_signature".}
proc fcQDesignerMemberSheetExtension_parameterTypes(self: pointer, index: cint): struct_seaqt_array {.importc: "QDesignerMemberSheetExtension_parameterTypes".}
proc fcQDesignerMemberSheetExtension_parameterNames(self: pointer, index: cint): struct_seaqt_array {.importc: "QDesignerMemberSheetExtension_parameterNames".}
proc fcQDesignerMemberSheetExtension_vdata(self: pointer): ptr pointer {.importc: "QDesignerMemberSheetExtension_vdata".}
proc fvdata_cQDesignerMemberSheetExtension(self: pointer): pointer {.importc: "vdata_QDesignerMemberSheetExtension".}

type cQDesignerMemberSheetExtensionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, name: struct_seaqt_string): cint {.cdecl, raises: [], gcsafe.}
  memberName*: proc(self: pointer, index: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  memberGroup*: proc(self: pointer, index: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setMemberGroup*: proc(self: pointer, index: cint, group: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  isVisible*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, index: cint, b: bool): void {.cdecl, raises: [], gcsafe.}
  isSignal*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  isSlot*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  inheritedFromWidget*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  declaredInClass*: proc(self: pointer, index: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  signature*: proc(self: pointer, index: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  parameterTypes*: proc(self: pointer, index: cint): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  parameterNames*: proc(self: pointer, index: cint): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
proc fcQDesignerMemberSheetExtension_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerMemberSheetExtension {.importc: "QDesignerMemberSheetExtension_new".}
proc fcQDesignerMemberSheetExtension_delete(self: pointer) {.importc: "QDesignerMemberSheetExtension_delete".}

proc count*(self: gen_membersheet_types.QDesignerMemberSheetExtension): cint =
  fcQDesignerMemberSheetExtension_count(self.h)

proc indexOf*(self: gen_membersheet_types.QDesignerMemberSheetExtension, name: openArray[char]): cint =
  fcQDesignerMemberSheetExtension_indexOf(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc memberName*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): string =
  let v_ms = fcQDesignerMemberSheetExtension_memberName(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc memberGroup*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): string =
  let v_ms = fcQDesignerMemberSheetExtension_memberGroup(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setMemberGroup*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint, group: openArray[char]): void =
  fcQDesignerMemberSheetExtension_setMemberGroup(self.h, index, struct_seaqt_string(data: if len(group) > 0: addr group[0] else: nil, len: csize_t(len(group))))

proc isVisible*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): bool =
  fcQDesignerMemberSheetExtension_isVisible(self.h, index)

proc setVisible*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint, b: bool): void =
  fcQDesignerMemberSheetExtension_setVisible(self.h, index, b)

proc isSignal*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): bool =
  fcQDesignerMemberSheetExtension_isSignal(self.h, index)

proc isSlot*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): bool =
  fcQDesignerMemberSheetExtension_isSlot(self.h, index)

proc inheritedFromWidget*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): bool =
  fcQDesignerMemberSheetExtension_inheritedFromWidget(self.h, index)

proc declaredInClass*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): string =
  let v_ms = fcQDesignerMemberSheetExtension_declaredInClass(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc signature*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): string =
  let v_ms = fcQDesignerMemberSheetExtension_signature(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc parameterTypes*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): seq[seq[byte]] =
  var v_ma = fcQDesignerMemberSheetExtension_parameterTypes(self.h, index)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc parameterNames*(self: gen_membersheet_types.QDesignerMemberSheetExtension, index: cint): seq[seq[byte]] =
  var v_ma = fcQDesignerMemberSheetExtension_parameterNames(self.h, index)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

type QDesignerMemberSheetExtensioncountProc* = proc(self: QDesignerMemberSheetExtension): cint {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionindexOfProc* = proc(self: QDesignerMemberSheetExtension, name: openArray[char]): cint {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionmemberNameProc* = proc(self: QDesignerMemberSheetExtension, index: cint): string {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionmemberGroupProc* = proc(self: QDesignerMemberSheetExtension, index: cint): string {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionsetMemberGroupProc* = proc(self: QDesignerMemberSheetExtension, index: cint, group: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionisVisibleProc* = proc(self: QDesignerMemberSheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionsetVisibleProc* = proc(self: QDesignerMemberSheetExtension, index: cint, b: bool): void {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionisSignalProc* = proc(self: QDesignerMemberSheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionisSlotProc* = proc(self: QDesignerMemberSheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensioninheritedFromWidgetProc* = proc(self: QDesignerMemberSheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensiondeclaredInClassProc* = proc(self: QDesignerMemberSheetExtension, index: cint): string {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionsignatureProc* = proc(self: QDesignerMemberSheetExtension, index: cint): string {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionparameterTypesProc* = proc(self: QDesignerMemberSheetExtension, index: cint): seq[seq[byte]] {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionparameterNamesProc* = proc(self: QDesignerMemberSheetExtension, index: cint): seq[seq[byte]] {.raises: [], gcsafe.}
type QDesignerMemberSheetExtensionVTable* = object
  vtbl: cQDesignerMemberSheetExtensionVTable
  count*: QDesignerMemberSheetExtensioncountProc
  indexOf*: QDesignerMemberSheetExtensionindexOfProc
  memberName*: QDesignerMemberSheetExtensionmemberNameProc
  memberGroup*: QDesignerMemberSheetExtensionmemberGroupProc
  setMemberGroup*: QDesignerMemberSheetExtensionsetMemberGroupProc
  isVisible*: QDesignerMemberSheetExtensionisVisibleProc
  setVisible*: QDesignerMemberSheetExtensionsetVisibleProc
  isSignal*: QDesignerMemberSheetExtensionisSignalProc
  isSlot*: QDesignerMemberSheetExtensionisSlotProc
  inheritedFromWidget*: QDesignerMemberSheetExtensioninheritedFromWidgetProc
  declaredInClass*: QDesignerMemberSheetExtensiondeclaredInClassProc
  signature*: QDesignerMemberSheetExtensionsignatureProc
  parameterTypes*: QDesignerMemberSheetExtensionparameterTypesProc
  parameterNames*: QDesignerMemberSheetExtensionparameterNamesProc


proc fcQDesignerMemberSheetExtension_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQDesignerMemberSheetExtension_vtable_callback_indexOf(self: pointer, name: struct_seaqt_string): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_vtable_callback_memberName(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].memberName(self, slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_vtable_callback_memberGroup(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].memberGroup(self, slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_vtable_callback_setMemberGroup(self: pointer, index: cint, group: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  let vgroup_ms = group
  let vgroupx_ret = string.fromBytes(vgroup_ms)
  c_free(vgroup_ms.data)
  let slotval2 = vgroupx_ret
  vtbl[].setMemberGroup(self, slotval1, slotval2)

proc fcQDesignerMemberSheetExtension_vtable_callback_isVisible(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isVisible(self, slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_vtable_callback_setVisible(self: pointer, index: cint, b: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  let slotval2 = b
  vtbl[].setVisible(self, slotval1, slotval2)

proc fcQDesignerMemberSheetExtension_vtable_callback_isSignal(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isSignal(self, slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_vtable_callback_isSlot(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isSlot(self, slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_vtable_callback_inheritedFromWidget(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].inheritedFromWidget(self, slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_vtable_callback_declaredInClass(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].declaredInClass(self, slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_vtable_callback_signature(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].signature(self, slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_vtable_callback_parameterTypes(self: pointer, index: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].parameterTypes(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDesignerMemberSheetExtension_vtable_callback_parameterNames(self: pointer, index: cint): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
  let self = QDesignerMemberSheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].parameterNames(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

type VirtualQDesignerMemberSheetExtension* {.inheritable.} = ref object of QDesignerMemberSheetExtension
  vtbl*: cQDesignerMemberSheetExtensionVTable

method count*(self: VirtualQDesignerMemberSheetExtension): cint {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.count")
method indexOf*(self: VirtualQDesignerMemberSheetExtension, name: openArray[char]): cint {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.indexOf")
method memberName*(self: VirtualQDesignerMemberSheetExtension, index: cint): string {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.memberName")
method memberGroup*(self: VirtualQDesignerMemberSheetExtension, index: cint): string {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.memberGroup")
method setMemberGroup*(self: VirtualQDesignerMemberSheetExtension, index: cint, group: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.setMemberGroup")
method isVisible*(self: VirtualQDesignerMemberSheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.isVisible")
method setVisible*(self: VirtualQDesignerMemberSheetExtension, index: cint, b: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.setVisible")
method isSignal*(self: VirtualQDesignerMemberSheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.isSignal")
method isSlot*(self: VirtualQDesignerMemberSheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.isSlot")
method inheritedFromWidget*(self: VirtualQDesignerMemberSheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.inheritedFromWidget")
method declaredInClass*(self: VirtualQDesignerMemberSheetExtension, index: cint): string {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.declaredInClass")
method signature*(self: VirtualQDesignerMemberSheetExtension, index: cint): string {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.signature")
method parameterTypes*(self: VirtualQDesignerMemberSheetExtension, index: cint): seq[seq[byte]] {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.parameterTypes")
method parameterNames*(self: VirtualQDesignerMemberSheetExtension, index: cint): seq[seq[byte]] {.base.} =
  raiseAssert("missing implementation of QDesignerMemberSheetExtension.parameterNames")

proc fcQDesignerMemberSheetExtension_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  var virtualReturn = inst.count()
  virtualReturn

proc fcQDesignerMemberSheetExtension_method_callback_indexOf(self: pointer, name: struct_seaqt_string): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_method_callback_memberName(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.memberName(slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_method_callback_memberGroup(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.memberGroup(slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_method_callback_setMemberGroup(self: pointer, index: cint, group: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  let vgroup_ms = group
  let vgroupx_ret = string.fromBytes(vgroup_ms)
  c_free(vgroup_ms.data)
  let slotval2 = vgroupx_ret
  inst.setMemberGroup(slotval1, slotval2)

proc fcQDesignerMemberSheetExtension_method_callback_isVisible(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isVisible(slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_method_callback_setVisible(self: pointer, index: cint, b: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  let slotval2 = b
  inst.setVisible(slotval1, slotval2)

proc fcQDesignerMemberSheetExtension_method_callback_isSignal(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isSignal(slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_method_callback_isSlot(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isSlot(slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_method_callback_inheritedFromWidget(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.inheritedFromWidget(slotval1)
  virtualReturn

proc fcQDesignerMemberSheetExtension_method_callback_declaredInClass(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.declaredInClass(slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_method_callback_signature(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.signature(slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMemberSheetExtension_method_callback_parameterTypes(self: pointer, index: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.parameterTypes(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDesignerMemberSheetExtension_method_callback_parameterNames(self: pointer, index: cint): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQDesignerMemberSheetExtension](fcQDesignerMemberSheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.parameterNames(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))


proc create*(T: type gen_membersheet_types.QDesignerMemberSheetExtension,
    vtbl: ref QDesignerMemberSheetExtensionVTable = nil): gen_membersheet_types.QDesignerMemberSheetExtension =
  let vtbl = if vtbl == nil: new QDesignerMemberSheetExtensionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerMemberSheetExtensionVTable](fcQDesignerMemberSheetExtension_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQDesignerMemberSheetExtension_vtable_callback_count
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQDesignerMemberSheetExtension_vtable_callback_indexOf
  if not isNil(vtbl[].memberName):
    vtbl[].vtbl.memberName = fcQDesignerMemberSheetExtension_vtable_callback_memberName
  if not isNil(vtbl[].memberGroup):
    vtbl[].vtbl.memberGroup = fcQDesignerMemberSheetExtension_vtable_callback_memberGroup
  if not isNil(vtbl[].setMemberGroup):
    vtbl[].vtbl.setMemberGroup = fcQDesignerMemberSheetExtension_vtable_callback_setMemberGroup
  if not isNil(vtbl[].isVisible):
    vtbl[].vtbl.isVisible = fcQDesignerMemberSheetExtension_vtable_callback_isVisible
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerMemberSheetExtension_vtable_callback_setVisible
  if not isNil(vtbl[].isSignal):
    vtbl[].vtbl.isSignal = fcQDesignerMemberSheetExtension_vtable_callback_isSignal
  if not isNil(vtbl[].isSlot):
    vtbl[].vtbl.isSlot = fcQDesignerMemberSheetExtension_vtable_callback_isSlot
  if not isNil(vtbl[].inheritedFromWidget):
    vtbl[].vtbl.inheritedFromWidget = fcQDesignerMemberSheetExtension_vtable_callback_inheritedFromWidget
  if not isNil(vtbl[].declaredInClass):
    vtbl[].vtbl.declaredInClass = fcQDesignerMemberSheetExtension_vtable_callback_declaredInClass
  if not isNil(vtbl[].signature):
    vtbl[].vtbl.signature = fcQDesignerMemberSheetExtension_vtable_callback_signature
  if not isNil(vtbl[].parameterTypes):
    vtbl[].vtbl.parameterTypes = fcQDesignerMemberSheetExtension_vtable_callback_parameterTypes
  if not isNil(vtbl[].parameterNames):
    vtbl[].vtbl.parameterNames = fcQDesignerMemberSheetExtension_vtable_callback_parameterNames
  let tmp = gen_membersheet_types.QDesignerMemberSheetExtension(h: fcQDesignerMemberSheetExtension_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQDesignerMemberSheetExtension_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerMemberSheetExtension_mvtbl = cQDesignerMemberSheetExtensionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerMemberSheetExtension()[])](self.fcQDesignerMemberSheetExtension_vdata()[])
    inst[].h = nil,

  count: fcQDesignerMemberSheetExtension_method_callback_count,
  indexOf: fcQDesignerMemberSheetExtension_method_callback_indexOf,
  memberName: fcQDesignerMemberSheetExtension_method_callback_memberName,
  memberGroup: fcQDesignerMemberSheetExtension_method_callback_memberGroup,
  setMemberGroup: fcQDesignerMemberSheetExtension_method_callback_setMemberGroup,
  isVisible: fcQDesignerMemberSheetExtension_method_callback_isVisible,
  setVisible: fcQDesignerMemberSheetExtension_method_callback_setVisible,
  isSignal: fcQDesignerMemberSheetExtension_method_callback_isSignal,
  isSlot: fcQDesignerMemberSheetExtension_method_callback_isSlot,
  inheritedFromWidget: fcQDesignerMemberSheetExtension_method_callback_inheritedFromWidget,
  declaredInClass: fcQDesignerMemberSheetExtension_method_callback_declaredInClass,
  signature: fcQDesignerMemberSheetExtension_method_callback_signature,
  parameterTypes: fcQDesignerMemberSheetExtension_method_callback_parameterTypes,
  parameterNames: fcQDesignerMemberSheetExtension_method_callback_parameterNames,
)
proc create*(T: type gen_membersheet_types.QDesignerMemberSheetExtension,
    inst: VirtualQDesignerMemberSheetExtension) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerMemberSheetExtension_new(addr(cQDesignerMemberSheetExtension_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerMemberSheetExtension_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_membersheet_types.QDesignerMemberSheetExtension) =
  fcQDesignerMemberSheetExtension_delete(self.h)
