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


import ./gen_abstractoptionspage_types
export gen_abstractoptionspage_types

import
  ../QtWidgets/gen_qwidget_types
export
  gen_qwidget_types

type cQDesignerOptionsPageInterface*{.exportc: "QDesignerOptionsPageInterface", incompleteStruct.} = object

proc fcQDesignerOptionsPageInterface_name(self: pointer): struct_seaqt_string {.importc: "QDesignerOptionsPageInterface_name".}
proc fcQDesignerOptionsPageInterface_createPage(self: pointer, parent: pointer): pointer {.importc: "QDesignerOptionsPageInterface_createPage".}
proc fcQDesignerOptionsPageInterface_apply(self: pointer): void {.importc: "QDesignerOptionsPageInterface_apply".}
proc fcQDesignerOptionsPageInterface_finish(self: pointer): void {.importc: "QDesignerOptionsPageInterface_finish".}
proc fcQDesignerOptionsPageInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerOptionsPageInterface_vdata".}
proc fvdata_cQDesignerOptionsPageInterface(self: pointer): pointer {.importc: "vdata_QDesignerOptionsPageInterface".}

type cQDesignerOptionsPageInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  name*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  createPage*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  apply*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  finish*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerOptionsPageInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerOptionsPageInterface {.importc: "QDesignerOptionsPageInterface_new".}

proc name*(self: gen_abstractoptionspage_types.QDesignerOptionsPageInterface): string =
  let v_ms = fcQDesignerOptionsPageInterface_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createPage*(self: gen_abstractoptionspage_types.QDesignerOptionsPageInterface, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerOptionsPageInterface_createPage(self.h, parent.h), owned: false)

proc apply*(self: gen_abstractoptionspage_types.QDesignerOptionsPageInterface): void =
  fcQDesignerOptionsPageInterface_apply(self.h)

proc finish*(self: gen_abstractoptionspage_types.QDesignerOptionsPageInterface): void =
  fcQDesignerOptionsPageInterface_finish(self.h)

type QDesignerOptionsPageInterfacenameProc* = proc(self: QDesignerOptionsPageInterface): string {.raises: [], gcsafe.}
type QDesignerOptionsPageInterfacecreatePageProc* = proc(self: QDesignerOptionsPageInterface, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QDesignerOptionsPageInterfaceapplyProc* = proc(self: QDesignerOptionsPageInterface): void {.raises: [], gcsafe.}
type QDesignerOptionsPageInterfacefinishProc* = proc(self: QDesignerOptionsPageInterface): void {.raises: [], gcsafe.}

type QDesignerOptionsPageInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerOptionsPageInterfaceVTable
  name*: QDesignerOptionsPageInterfacenameProc
  createPage*: QDesignerOptionsPageInterfacecreatePageProc
  apply*: QDesignerOptionsPageInterfaceapplyProc
  finish*: QDesignerOptionsPageInterfacefinishProc


proc fcQDesignerOptionsPageInterface_vtable_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerOptionsPageInterfaceVTable](fcQDesignerOptionsPageInterface_vdata(self)[])
  let self = QDesignerOptionsPageInterface(h: self)
  var virtualReturn = vtbl[].name(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerOptionsPageInterface_vtable_callback_createPage(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerOptionsPageInterfaceVTable](fcQDesignerOptionsPageInterface_vdata(self)[])
  let self = QDesignerOptionsPageInterface(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  var virtualReturn = vtbl[].createPage(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerOptionsPageInterface_vtable_callback_apply(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerOptionsPageInterfaceVTable](fcQDesignerOptionsPageInterface_vdata(self)[])
  let self = QDesignerOptionsPageInterface(h: self)
  vtbl[].apply(self)

proc fcQDesignerOptionsPageInterface_vtable_callback_finish(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerOptionsPageInterfaceVTable](fcQDesignerOptionsPageInterface_vdata(self)[])
  let self = QDesignerOptionsPageInterface(h: self)
  vtbl[].finish(self)

type VirtualQDesignerOptionsPageInterface* {.inheritable.} = ref object of QDesignerOptionsPageInterface
  vtbl*: cQDesignerOptionsPageInterfaceVTable

method name*(self: VirtualQDesignerOptionsPageInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerOptionsPageInterface.name")
method createPage*(self: VirtualQDesignerOptionsPageInterface, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.base.} =
  raiseAssert("missing implementation of QDesignerOptionsPageInterface.createPage")
method apply*(self: VirtualQDesignerOptionsPageInterface): void {.base.} =
  raiseAssert("missing implementation of QDesignerOptionsPageInterface.apply")
method finish*(self: VirtualQDesignerOptionsPageInterface): void {.base.} =
  raiseAssert("missing implementation of QDesignerOptionsPageInterface.finish")

proc fcQDesignerOptionsPageInterface_method_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerOptionsPageInterface](fcQDesignerOptionsPageInterface_vdata(self)[])
  var virtualReturn = inst.name()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerOptionsPageInterface_method_callback_createPage(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerOptionsPageInterface](fcQDesignerOptionsPageInterface_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  var virtualReturn = inst.createPage(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerOptionsPageInterface_method_callback_apply(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerOptionsPageInterface](fcQDesignerOptionsPageInterface_vdata(self)[])
  inst.apply()

proc fcQDesignerOptionsPageInterface_method_callback_finish(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerOptionsPageInterface](fcQDesignerOptionsPageInterface_vdata(self)[])
  inst.finish()


proc create*(T: type gen_abstractoptionspage_types.QDesignerOptionsPageInterface,
    vtbl: ref QDesignerOptionsPageInterfaceVTable = nil): gen_abstractoptionspage_types.QDesignerOptionsPageInterface =
  let vtbl = if vtbl == nil: new QDesignerOptionsPageInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerOptionsPageInterfaceVTable](fcQDesignerOptionsPageInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].name):
    vtbl[].vtbl.name = fcQDesignerOptionsPageInterface_vtable_callback_name
  if not isNil(vtbl[].createPage):
    vtbl[].vtbl.createPage = fcQDesignerOptionsPageInterface_vtable_callback_createPage
  if not isNil(vtbl[].apply):
    vtbl[].vtbl.apply = fcQDesignerOptionsPageInterface_vtable_callback_apply
  if not isNil(vtbl[].finish):
    vtbl[].vtbl.finish = fcQDesignerOptionsPageInterface_vtable_callback_finish
  let tmp = gen_abstractoptionspage_types.QDesignerOptionsPageInterface(h: fcQDesignerOptionsPageInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerOptionsPageInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerOptionsPageInterface_mvtbl = cQDesignerOptionsPageInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerOptionsPageInterface()[])](self.fcQDesignerOptionsPageInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  name: fcQDesignerOptionsPageInterface_method_callback_name,
  createPage: fcQDesignerOptionsPageInterface_method_callback_createPage,
  apply: fcQDesignerOptionsPageInterface_method_callback_apply,
  finish: fcQDesignerOptionsPageInterface_method_callback_finish,
)
proc create*(T: type gen_abstractoptionspage_types.QDesignerOptionsPageInterface,
    inst: VirtualQDesignerOptionsPageInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerOptionsPageInterface_new(addr(cQDesignerOptionsPageInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerOptionsPageInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

