import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)


import ./gen_qitemeditorfactory_types
export gen_qitemeditorfactory_types

import
  ./gen_qwidget_types
export
  gen_qwidget_types

type cQItemEditorCreatorBase*{.exportc: "QItemEditorCreatorBase", incompleteStruct.} = object
type cQItemEditorFactory*{.exportc: "QItemEditorFactory", incompleteStruct.} = object

proc fcQItemEditorCreatorBase_createWidget(self: pointer, parent: pointer): pointer {.importc: "QItemEditorCreatorBase_createWidget".}
proc fcQItemEditorCreatorBase_valuePropertyName(self: pointer): struct_miqt_string {.importc: "QItemEditorCreatorBase_valuePropertyName".}
proc fcQItemEditorCreatorBase_operatorAssign(self: pointer, param1: pointer): void {.importc: "QItemEditorCreatorBase_operatorAssign".}
proc fcQItemEditorFactory_createEditor(self: pointer, userType: cint, parent: pointer): pointer {.importc: "QItemEditorFactory_createEditor".}
proc fcQItemEditorFactory_valuePropertyName(self: pointer, userType: cint): struct_miqt_string {.importc: "QItemEditorFactory_valuePropertyName".}
proc fcQItemEditorFactory_registerEditor(self: pointer, userType: cint, creator: pointer): void {.importc: "QItemEditorFactory_registerEditor".}
proc fcQItemEditorFactory_defaultFactory(): pointer {.importc: "QItemEditorFactory_defaultFactory".}
proc fcQItemEditorFactory_setDefaultFactory(factory: pointer): void {.importc: "QItemEditorFactory_setDefaultFactory".}
proc fcQItemEditorFactory_vtbl(self: pointer): pointer {.importc: "QItemEditorFactory_vtbl".}
proc fcQItemEditorFactory_vdata(self: pointer): pointer {.importc: "QItemEditorFactory_vdata".}
type cQItemEditorFactoryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  createEditor*: proc(self: pointer, userType: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  valuePropertyName*: proc(self: pointer, userType: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
proc fcQItemEditorFactory_virtualbase_createEditor(self: pointer, userType: cint, parent: pointer): pointer {.importc: "QItemEditorFactory_virtualbase_createEditor".}
proc fcQItemEditorFactory_virtualbase_valuePropertyName(self: pointer, userType: cint): struct_miqt_string {.importc: "QItemEditorFactory_virtualbase_valuePropertyName".}
proc fcQItemEditorFactory_new(vtbl, vdata: pointer): ptr cQItemEditorFactory {.importc: "QItemEditorFactory_new".}
proc fcQItemEditorFactory_new2(vtbl, vdata: pointer, param1: pointer): ptr cQItemEditorFactory {.importc: "QItemEditorFactory_new2".}

proc createWidget*(self: gen_qitemeditorfactory_types.QItemEditorCreatorBase, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQItemEditorCreatorBase_createWidget(self.h, parent.h), owned: false)

proc valuePropertyName*(self: gen_qitemeditorfactory_types.QItemEditorCreatorBase): seq[byte] =
  var v_bytearray = fcQItemEditorCreatorBase_valuePropertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc operatorAssign*(self: gen_qitemeditorfactory_types.QItemEditorCreatorBase, param1: gen_qitemeditorfactory_types.QItemEditorCreatorBase): void =
  fcQItemEditorCreatorBase_operatorAssign(self.h, param1.h)

proc createEditor*(self: gen_qitemeditorfactory_types.QItemEditorFactory, userType: cint, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQItemEditorFactory_createEditor(self.h, userType, parent.h), owned: false)

proc valuePropertyName*(self: gen_qitemeditorfactory_types.QItemEditorFactory, userType: cint): seq[byte] =
  var v_bytearray = fcQItemEditorFactory_valuePropertyName(self.h, userType)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc registerEditor*(self: gen_qitemeditorfactory_types.QItemEditorFactory, userType: cint, creator: gen_qitemeditorfactory_types.QItemEditorCreatorBase): void =
  fcQItemEditorFactory_registerEditor(self.h, userType, creator.h)

proc defaultFactory*(_: type gen_qitemeditorfactory_types.QItemEditorFactory): gen_qitemeditorfactory_types.QItemEditorFactory =
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQItemEditorFactory_defaultFactory(), owned: false)

proc setDefaultFactory*(_: type gen_qitemeditorfactory_types.QItemEditorFactory, factory: gen_qitemeditorfactory_types.QItemEditorFactory): void =
  fcQItemEditorFactory_setDefaultFactory(factory.h)

type QItemEditorFactorycreateEditorProc* = proc(self: QItemEditorFactory, userType: cint, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QItemEditorFactoryvaluePropertyNameProc* = proc(self: QItemEditorFactory, userType: cint): seq[byte] {.raises: [], gcsafe.}
type QItemEditorFactoryVTable* {.inheritable, pure.} = object
  vtbl: cQItemEditorFactoryVTable
  createEditor*: QItemEditorFactorycreateEditorProc
  valuePropertyName*: QItemEditorFactoryvaluePropertyNameProc
proc QItemEditorFactorycreateEditor*(self: gen_qitemeditorfactory_types.QItemEditorFactory, userType: cint, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQItemEditorFactory_virtualbase_createEditor(self.h, userType, parent.h), owned: false)

proc cQItemEditorFactory_vtable_callback_createEditor(self: pointer, userType: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemEditorFactoryVTable](fcQItemEditorFactory_vdata(self))
  let self = QItemEditorFactory(h: self)
  let slotval1 = userType
  let slotval2 = gen_qwidget_types.QWidget(h: parent, owned: false)
  var virtualReturn = vtbl[].createEditor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QItemEditorFactoryvaluePropertyName*(self: gen_qitemeditorfactory_types.QItemEditorFactory, userType: cint): seq[byte] =
  var v_bytearray = fcQItemEditorFactory_virtualbase_valuePropertyName(self.h, userType)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc cQItemEditorFactory_vtable_callback_valuePropertyName(self: pointer, userType: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QItemEditorFactoryVTable](fcQItemEditorFactory_vdata(self))
  let self = QItemEditorFactory(h: self)
  let slotval1 = userType
  var virtualReturn = vtbl[].valuePropertyName(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

type VirtualQItemEditorFactory* {.inheritable.} = ref object of QItemEditorFactory
  vtbl*: cQItemEditorFactoryVTable
method createEditor*(self: VirtualQItemEditorFactory, userType: cint, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.base.} =
  QItemEditorFactorycreateEditor(self[], userType, parent)
proc cQItemEditorFactory_method_callback_createEditor(self: pointer, userType: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQItemEditorFactory](fcQItemEditorFactory_vdata(self))
  let slotval1 = userType
  let slotval2 = gen_qwidget_types.QWidget(h: parent, owned: false)
  var virtualReturn = inst.createEditor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method valuePropertyName*(self: VirtualQItemEditorFactory, userType: cint): seq[byte] {.base.} =
  QItemEditorFactoryvaluePropertyName(self[], userType)
proc cQItemEditorFactory_method_callback_valuePropertyName(self: pointer, userType: cint): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQItemEditorFactory](fcQItemEditorFactory_vdata(self))
  let slotval1 = userType
  var virtualReturn = inst.valuePropertyName(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc create*(T: type gen_qitemeditorfactory_types.QItemEditorFactory,
    vtbl: ref QItemEditorFactoryVTable = nil): gen_qitemeditorfactory_types.QItemEditorFactory =
  let vtbl = if vtbl == nil: new QItemEditorFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemEditorFactoryVTable](fcQItemEditorFactory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = cQItemEditorFactory_vtable_callback_createEditor
  if not isNil(vtbl[].valuePropertyName):
    vtbl[].vtbl.valuePropertyName = cQItemEditorFactory_vtable_callback_valuePropertyName
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQItemEditorFactory_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qitemeditorfactory_types.QItemEditorFactory,
    param1: gen_qitemeditorfactory_types.QItemEditorFactory,
    vtbl: ref QItemEditorFactoryVTable = nil): gen_qitemeditorfactory_types.QItemEditorFactory =
  let vtbl = if vtbl == nil: new QItemEditorFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemEditorFactoryVTable](fcQItemEditorFactory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].createEditor):
    vtbl[].vtbl.createEditor = cQItemEditorFactory_vtable_callback_createEditor
  if not isNil(vtbl[].valuePropertyName):
    vtbl[].vtbl.valuePropertyName = cQItemEditorFactory_vtable_callback_valuePropertyName
  gen_qitemeditorfactory_types.QItemEditorFactory(h: fcQItemEditorFactory_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

const cQItemEditorFactory_mvtbl = cQItemEditorFactoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQItemEditorFactory()[])](self.fcQItemEditorFactory_vtbl())
    inst[].h = nil
    inst[].owned = false,
  createEditor: cQItemEditorFactory_method_callback_createEditor,
  valuePropertyName: cQItemEditorFactory_method_callback_valuePropertyName,
)
proc create*(T: type gen_qitemeditorfactory_types.QItemEditorFactory,
    inst: VirtualQItemEditorFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemEditorFactory_new(addr(cQItemEditorFactory_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qitemeditorfactory_types.QItemEditorFactory,
    param1: gen_qitemeditorfactory_types.QItemEditorFactory,
    inst: VirtualQItemEditorFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemEditorFactory_new2(addr(cQItemEditorFactory_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

