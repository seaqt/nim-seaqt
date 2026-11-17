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


import ./gen_taskmenu_types
export gen_taskmenu_types

import
  ../QtGui/gen_qaction_types
export
  gen_qaction_types

type cQDesignerTaskMenuExtension*{.exportc: "QDesignerTaskMenuExtension", incompleteStruct.} = object

proc fcQDesignerTaskMenuExtension_preferredEditAction(self: pointer): pointer {.importc: "QDesignerTaskMenuExtension_preferredEditAction".}
proc fcQDesignerTaskMenuExtension_taskActions(self: pointer): struct_seaqt_array {.importc: "QDesignerTaskMenuExtension_taskActions".}
proc fcQDesignerTaskMenuExtension_vdata(self: pointer): ptr pointer {.importc: "QDesignerTaskMenuExtension_vdata".}
proc fvdata_cQDesignerTaskMenuExtension(self: pointer): pointer {.importc: "vdata_QDesignerTaskMenuExtension".}

type cQDesignerTaskMenuExtensionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  preferredEditAction*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  taskActions*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
proc fcQDesignerTaskMenuExtension_virtualbase_preferredEditAction(self: pointer): pointer {.importc: "QDesignerTaskMenuExtension_virtualbase_preferredEditAction".}
proc fcQDesignerTaskMenuExtension_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerTaskMenuExtension {.importc: "QDesignerTaskMenuExtension_new".}

proc preferredEditAction*(self: gen_taskmenu_types.QDesignerTaskMenuExtension): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerTaskMenuExtension_preferredEditAction(self.h), owned: false)

proc taskActions*(self: gen_taskmenu_types.QDesignerTaskMenuExtension): seq[gen_qaction_types.QAction] =
  var v_ma = fcQDesignerTaskMenuExtension_taskActions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

type QDesignerTaskMenuExtensionpreferredEditActionProc* = proc(self: QDesignerTaskMenuExtension): gen_qaction_types.QAction {.raises: [], gcsafe.}
type QDesignerTaskMenuExtensiontaskActionsProc* = proc(self: QDesignerTaskMenuExtension): seq[gen_qaction_types.QAction] {.raises: [], gcsafe.}

type QDesignerTaskMenuExtensionVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerTaskMenuExtensionVTable
  preferredEditAction*: QDesignerTaskMenuExtensionpreferredEditActionProc
  taskActions*: QDesignerTaskMenuExtensiontaskActionsProc

proc QDesignerTaskMenuExtensionpreferredEditAction*(self: gen_taskmenu_types.QDesignerTaskMenuExtension): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerTaskMenuExtension_virtualbase_preferredEditAction(self.h), owned: false)


proc fcQDesignerTaskMenuExtension_vtable_callback_preferredEditAction(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerTaskMenuExtensionVTable](fcQDesignerTaskMenuExtension_vdata(self)[])
  let self = QDesignerTaskMenuExtension(h: self)
  var virtualReturn = vtbl[].preferredEditAction(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerTaskMenuExtension_vtable_callback_taskActions(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QDesignerTaskMenuExtensionVTable](fcQDesignerTaskMenuExtension_vdata(self)[])
  let self = QDesignerTaskMenuExtension(h: self)
  var virtualReturn = vtbl[].taskActions(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

type VirtualQDesignerTaskMenuExtension* {.inheritable.} = ref object of QDesignerTaskMenuExtension
  vtbl*: cQDesignerTaskMenuExtensionVTable

method preferredEditAction*(self: VirtualQDesignerTaskMenuExtension): gen_qaction_types.QAction {.base.} =
  QDesignerTaskMenuExtensionpreferredEditAction(self[])
method taskActions*(self: VirtualQDesignerTaskMenuExtension): seq[gen_qaction_types.QAction] {.base.} =
  raiseAssert("missing implementation of QDesignerTaskMenuExtension.taskActions")

proc fcQDesignerTaskMenuExtension_method_callback_preferredEditAction(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerTaskMenuExtension](fcQDesignerTaskMenuExtension_vdata(self)[])
  var virtualReturn = inst.preferredEditAction()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerTaskMenuExtension_method_callback_taskActions(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQDesignerTaskMenuExtension](fcQDesignerTaskMenuExtension_vdata(self)[])
  var virtualReturn = inst.taskActions()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))


proc create*(T: type gen_taskmenu_types.QDesignerTaskMenuExtension,
    vtbl: ref QDesignerTaskMenuExtensionVTable = nil): gen_taskmenu_types.QDesignerTaskMenuExtension =
  let vtbl = if vtbl == nil: new QDesignerTaskMenuExtensionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerTaskMenuExtensionVTable](fcQDesignerTaskMenuExtension_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].preferredEditAction):
    vtbl[].vtbl.preferredEditAction = fcQDesignerTaskMenuExtension_vtable_callback_preferredEditAction
  if not isNil(vtbl[].taskActions):
    vtbl[].vtbl.taskActions = fcQDesignerTaskMenuExtension_vtable_callback_taskActions
  let tmp = gen_taskmenu_types.QDesignerTaskMenuExtension(h: fcQDesignerTaskMenuExtension_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerTaskMenuExtension_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerTaskMenuExtension_mvtbl = cQDesignerTaskMenuExtensionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerTaskMenuExtension()[])](self.fcQDesignerTaskMenuExtension_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  preferredEditAction: fcQDesignerTaskMenuExtension_method_callback_preferredEditAction,
  taskActions: fcQDesignerTaskMenuExtension_method_callback_taskActions,
)
proc create*(T: type gen_taskmenu_types.QDesignerTaskMenuExtension,
    inst: VirtualQDesignerTaskMenuExtension) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerTaskMenuExtension_new(addr(cQDesignerTaskMenuExtension_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerTaskMenuExtension_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

