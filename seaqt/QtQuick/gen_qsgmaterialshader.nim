import ./qtquick_pkg

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


type QSGMaterialShaderRenderStateDirtyStateEnum* = distinct cint
template DirtyMatrix*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 1
template DirtyOpacity*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 2
template DirtyCachedMaterialData*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 4
template DirtyAll*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 65535


import ./gen_qsgmaterialshader_types
export gen_qsgmaterialshader_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qmatrix4x4_types,
  ./gen_qsgmaterial_types
export
  gen_qrect_types,
  gen_qmatrix4x4_types,
  gen_qsgmaterial_types

type cQSGMaterialShader*{.exportc: "QSGMaterialShader", incompleteStruct.} = object
type cQSGMaterialShaderRenderState*{.exportc: "QSGMaterialShader__RenderState", incompleteStruct.} = object

proc fcQSGMaterialShader_activate(self: pointer): void {.importc: "QSGMaterialShader_activate".}
proc fcQSGMaterialShader_deactivate(self: pointer): void {.importc: "QSGMaterialShader_deactivate".}
proc fcQSGMaterialShader_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialShader_updateState".}
proc fcQSGMaterialShader_attributeNames(self: pointer): cstring {.importc: "QSGMaterialShader_attributeNames".}
proc fcQSGMaterialShader_vtbl(self: pointer): pointer {.importc: "QSGMaterialShader_vtbl".}
proc fcQSGMaterialShader_vdata(self: pointer): pointer {.importc: "QSGMaterialShader_vdata".}

type cQSGMaterialShaderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  activate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  deactivate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl, raises: [], gcsafe.}
  attributeNames*: proc(self: pointer): cstring {.cdecl, raises: [], gcsafe.}
  compile*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  initialize*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  vertexShader*: proc(self: pointer): cstring {.cdecl, raises: [], gcsafe.}
  fragmentShader*: proc(self: pointer): cstring {.cdecl, raises: [], gcsafe.}
proc fcQSGMaterialShader_virtualbase_activate(self: pointer): void {.importc: "QSGMaterialShader_virtualbase_activate".}
proc fcQSGMaterialShader_virtualbase_deactivate(self: pointer): void {.importc: "QSGMaterialShader_virtualbase_deactivate".}
proc fcQSGMaterialShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialShader_virtualbase_updateState".}
proc fcQSGMaterialShader_virtualbase_compile(self: pointer): void {.importc: "QSGMaterialShader_virtualbase_compile".}
proc fcQSGMaterialShader_virtualbase_initialize(self: pointer): void {.importc: "QSGMaterialShader_virtualbase_initialize".}
proc fcQSGMaterialShader_virtualbase_vertexShader(self: pointer): cstring {.importc: "QSGMaterialShader_virtualbase_vertexShader".}
proc fcQSGMaterialShader_virtualbase_fragmentShader(self: pointer): cstring {.importc: "QSGMaterialShader_virtualbase_fragmentShader".}
proc fcQSGMaterialShader_protectedbase_setShaderSourceFile(self: pointer, typeVal: cQOpenGLShaderShaderType, sourceFile: struct_miqt_string): void {.importc: "QSGMaterialShader_protectedbase_setShaderSourceFile".}
proc fcQSGMaterialShader_protectedbase_setShaderSourceFiles(self: pointer, typeVal: cQOpenGLShaderShaderType, sourceFiles: struct_miqt_array): void {.importc: "QSGMaterialShader_protectedbase_setShaderSourceFiles".}
proc fcQSGMaterialShader_new(vtbl, vdata: pointer): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
proc fcQSGMaterialShaderRenderState_dirtyStates(self: pointer): cint {.importc: "QSGMaterialShader__RenderState_dirtyStates".}
proc fcQSGMaterialShaderRenderState_isMatrixDirty(self: pointer): bool {.importc: "QSGMaterialShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialShaderRenderState_isOpacityDirty(self: pointer): bool {.importc: "QSGMaterialShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialShaderRenderState_isCachedMaterialDataDirty(self: pointer): bool {.importc: "QSGMaterialShader__RenderState_isCachedMaterialDataDirty".}
proc fcQSGMaterialShaderRenderState_opacity(self: pointer): float32 {.importc: "QSGMaterialShader__RenderState_opacity".}
proc fcQSGMaterialShaderRenderState_combinedMatrix(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_combinedMatrix".}
proc fcQSGMaterialShaderRenderState_modelViewMatrix(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialShaderRenderState_projectionMatrix(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_projectionMatrix".}
proc fcQSGMaterialShaderRenderState_viewportRect(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_viewportRect".}
proc fcQSGMaterialShaderRenderState_deviceRect(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_deviceRect".}
proc fcQSGMaterialShaderRenderState_determinant(self: pointer): float32 {.importc: "QSGMaterialShader__RenderState_determinant".}
proc fcQSGMaterialShaderRenderState_devicePixelRatio(self: pointer): float32 {.importc: "QSGMaterialShader__RenderState_devicePixelRatio".}

proc activate*(self: gen_qsgmaterialshader_types.QSGMaterialShader): void =
  fcQSGMaterialShader_activate(self.h)

proc deactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader): void =
  fcQSGMaterialShader_deactivate(self.h)

proc updateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGMaterialShader_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc attributeNames*(self: gen_qsgmaterialshader_types.QSGMaterialShader): cstring =
  (fcQSGMaterialShader_attributeNames(self.h))

type QSGMaterialShaderactivateProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShaderdeactivateProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShaderupdateStateProc* = proc(self: QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void {.raises: [], gcsafe.}
type QSGMaterialShaderattributeNamesProc* = proc(self: QSGMaterialShader): cstring {.raises: [], gcsafe.}
type QSGMaterialShadercompileProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShaderinitializeProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShadervertexShaderProc* = proc(self: QSGMaterialShader): cstring {.raises: [], gcsafe.}
type QSGMaterialShaderfragmentShaderProc* = proc(self: QSGMaterialShader): cstring {.raises: [], gcsafe.}

type QSGMaterialShaderVTable* {.inheritable, pure.} = object
  vtbl: cQSGMaterialShaderVTable
  activate*: QSGMaterialShaderactivateProc
  deactivate*: QSGMaterialShaderdeactivateProc
  updateState*: QSGMaterialShaderupdateStateProc
  attributeNames*: QSGMaterialShaderattributeNamesProc
  compile*: QSGMaterialShadercompileProc
  initialize*: QSGMaterialShaderinitializeProc
  vertexShader*: QSGMaterialShadervertexShaderProc
  fragmentShader*: QSGMaterialShaderfragmentShaderProc

proc QSGMaterialShaderactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader): void =
  fcQSGMaterialShader_virtualbase_activate(self.h)

proc QSGMaterialShaderdeactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader): void =
  fcQSGMaterialShader_virtualbase_deactivate(self.h)

proc QSGMaterialShaderupdateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGMaterialShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc QSGMaterialShadercompile*(self: gen_qsgmaterialshader_types.QSGMaterialShader): void =
  fcQSGMaterialShader_virtualbase_compile(self.h)

proc QSGMaterialShaderinitialize*(self: gen_qsgmaterialshader_types.QSGMaterialShader): void =
  fcQSGMaterialShader_virtualbase_initialize(self.h)

proc QSGMaterialShadervertexShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader): cstring =
  (fcQSGMaterialShader_virtualbase_vertexShader(self.h))

proc QSGMaterialShaderfragmentShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader): cstring =
  (fcQSGMaterialShader_virtualbase_fragmentShader(self.h))


proc fcQSGMaterialShader_vtable_callback_activate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  vtbl[].activate(self)

proc fcQSGMaterialShader_vtable_callback_deactivate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  vtbl[].deactivate(self)

proc fcQSGMaterialShader_vtable_callback_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state, owned: false)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial, owned: false)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial, owned: false)
  vtbl[].updateState(self, slotval1, slotval2, slotval3)

proc fcQSGMaterialShader_vtable_callback_attributeNames(self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  var virtualReturn = vtbl[].attributeNames(self)
  virtualReturn

proc fcQSGMaterialShader_vtable_callback_compile(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  vtbl[].compile(self)

proc fcQSGMaterialShader_vtable_callback_initialize(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  vtbl[].initialize(self)

proc fcQSGMaterialShader_vtable_callback_vertexShader(self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  var virtualReturn = vtbl[].vertexShader(self)
  virtualReturn

proc fcQSGMaterialShader_vtable_callback_fragmentShader(self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  var virtualReturn = vtbl[].fragmentShader(self)
  virtualReturn

type VirtualQSGMaterialShader* {.inheritable.} = ref object of QSGMaterialShader
  vtbl*: cQSGMaterialShaderVTable

method activate*(self: VirtualQSGMaterialShader): void {.base.} =
  QSGMaterialShaderactivate(self[])
method deactivate*(self: VirtualQSGMaterialShader): void {.base.} =
  QSGMaterialShaderdeactivate(self[])
method updateState*(self: VirtualQSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void {.base.} =
  QSGMaterialShaderupdateState(self[], state, newMaterial, oldMaterial)
method attributeNames*(self: VirtualQSGMaterialShader): cstring {.base.} =
  raiseAssert("missing implementation of QSGMaterialShader.attributeNames")
method compile*(self: VirtualQSGMaterialShader): void {.base.} =
  QSGMaterialShadercompile(self[])
method initialize*(self: VirtualQSGMaterialShader): void {.base.} =
  QSGMaterialShaderinitialize(self[])
method vertexShader*(self: VirtualQSGMaterialShader): cstring {.base.} =
  QSGMaterialShadervertexShader(self[])
method fragmentShader*(self: VirtualQSGMaterialShader): cstring {.base.} =
  QSGMaterialShaderfragmentShader(self[])

proc fcQSGMaterialShader_method_callback_activate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  inst.activate()

proc fcQSGMaterialShader_method_callback_deactivate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  inst.deactivate()

proc fcQSGMaterialShader_method_callback_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state, owned: false)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial, owned: false)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial, owned: false)
  inst.updateState(slotval1, slotval2, slotval3)

proc fcQSGMaterialShader_method_callback_attributeNames(self: pointer): cstring {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  var virtualReturn = inst.attributeNames()
  virtualReturn

proc fcQSGMaterialShader_method_callback_compile(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  inst.compile()

proc fcQSGMaterialShader_method_callback_initialize(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  inst.initialize()

proc fcQSGMaterialShader_method_callback_vertexShader(self: pointer): cstring {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  var virtualReturn = inst.vertexShader()
  virtualReturn

proc fcQSGMaterialShader_method_callback_fragmentShader(self: pointer): cstring {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  var virtualReturn = inst.fragmentShader()
  virtualReturn


proc setShaderSourceFile*(self: gen_qsgmaterialshader_types.QSGMaterialShader, typeVal: QOpenGLShaderShaderType, sourceFile: openArray[char]): void =
  fcQSGMaterialShader_protectedbase_setShaderSourceFile(self.h, typeVal, struct_miqt_string(data: if len(sourceFile) > 0: addr sourceFile[0] else: nil, len: csize_t(len(sourceFile))))

proc setShaderSourceFiles*(self: gen_qsgmaterialshader_types.QSGMaterialShader, typeVal: QOpenGLShaderShaderType, sourceFiles: openArray[string]): void =
  var sourceFiles_CArray = newSeq[struct_miqt_string](len(sourceFiles))
  for i in 0..<len(sourceFiles):
    sourceFiles_CArray[i] = struct_miqt_string(data: if len(sourceFiles[i]) > 0: addr sourceFiles[i][0] else: nil, len: csize_t(len(sourceFiles[i])))

  fcQSGMaterialShader_protectedbase_setShaderSourceFiles(self.h, typeVal, struct_miqt_array(len: csize_t(len(sourceFiles)), data: if len(sourceFiles) == 0: nil else: addr(sourceFiles_CArray[0])))

proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader,
    vtbl: ref QSGMaterialShaderVTable = nil): gen_qsgmaterialshader_types.QSGMaterialShader =
  let vtbl = if vtbl == nil: new QSGMaterialShaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].activate):
    vtbl[].vtbl.activate = fcQSGMaterialShader_vtable_callback_activate
  if not isNil(vtbl[].deactivate):
    vtbl[].vtbl.deactivate = fcQSGMaterialShader_vtable_callback_deactivate
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = fcQSGMaterialShader_vtable_callback_updateState
  if not isNil(vtbl[].attributeNames):
    vtbl[].vtbl.attributeNames = fcQSGMaterialShader_vtable_callback_attributeNames
  if not isNil(vtbl[].compile):
    vtbl[].vtbl.compile = fcQSGMaterialShader_vtable_callback_compile
  if not isNil(vtbl[].initialize):
    vtbl[].vtbl.initialize = fcQSGMaterialShader_vtable_callback_initialize
  if not isNil(vtbl[].vertexShader):
    vtbl[].vtbl.vertexShader = fcQSGMaterialShader_vtable_callback_vertexShader
  if not isNil(vtbl[].fragmentShader):
    vtbl[].vtbl.fragmentShader = fcQSGMaterialShader_vtable_callback_fragmentShader
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterialShader_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGMaterialShader_mvtbl = cQSGMaterialShaderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGMaterialShader()[])](self.fcQSGMaterialShader_vdata())
    inst[].h = nil
    inst[].owned = false,

  activate: fcQSGMaterialShader_method_callback_activate,
  deactivate: fcQSGMaterialShader_method_callback_deactivate,
  updateState: fcQSGMaterialShader_method_callback_updateState,
  attributeNames: fcQSGMaterialShader_method_callback_attributeNames,
  compile: fcQSGMaterialShader_method_callback_compile,
  initialize: fcQSGMaterialShader_method_callback_initialize,
  vertexShader: fcQSGMaterialShader_method_callback_vertexShader,
  fragmentShader: fcQSGMaterialShader_method_callback_fragmentShader,
)
proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader,
    inst: VirtualQSGMaterialShader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGMaterialShader_new(addr(cQSGMaterialShader_mvtbl), addr(inst[]))
  inst[].owned = true

proc dirtyStates*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): cint =
  cint(fcQSGMaterialShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): bool =
  fcQSGMaterialShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): bool =
  fcQSGMaterialShaderRenderState_isOpacityDirty(self.h)

proc isCachedMaterialDataDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): bool =
  fcQSGMaterialShaderRenderState_isCachedMaterialDataDirty(self.h)

proc opacity*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): float32 =
  fcQSGMaterialShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_combinedMatrix(self.h), owned: true)

proc modelViewMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_modelViewMatrix(self.h), owned: true)

proc projectionMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_projectionMatrix(self.h), owned: true)

proc viewportRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_viewportRect(self.h), owned: true)

proc deviceRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_deviceRect(self.h), owned: true)

proc determinant*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): float32 =
  fcQSGMaterialShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): float32 =
  fcQSGMaterialShaderRenderState_devicePixelRatio(self.h)

