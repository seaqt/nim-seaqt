import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgmaterialshader.cpp", cflags).}


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

proc fcQSGMaterialShader_activate(self: pointer, ): void {.importc: "QSGMaterialShader_activate".}
proc fcQSGMaterialShader_deactivate(self: pointer, ): void {.importc: "QSGMaterialShader_deactivate".}
proc fcQSGMaterialShader_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialShader_updateState".}
proc fcQSGMaterialShader_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialShader_attributeNames".}
type cQSGMaterialShaderVTable = object
  destructor*: proc(vtbl: ptr cQSGMaterialShaderVTable, self: ptr cQSGMaterialShader) {.cdecl, raises:[], gcsafe.}
  activate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  deactivate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl, raises: [], gcsafe.}
  attributeNames*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  compile*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  initialize*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  vertexShader*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  fragmentShader*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
proc fcQSGMaterialShader_virtualbase_activate(self: pointer, ): void {.importc: "QSGMaterialShader_virtualbase_activate".}
proc fcQSGMaterialShader_virtualbase_deactivate(self: pointer, ): void {.importc: "QSGMaterialShader_virtualbase_deactivate".}
proc fcQSGMaterialShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialShader_virtualbase_updateState".}
proc fcQSGMaterialShader_virtualbase_compile(self: pointer, ): void {.importc: "QSGMaterialShader_virtualbase_compile".}
proc fcQSGMaterialShader_virtualbase_initialize(self: pointer, ): void {.importc: "QSGMaterialShader_virtualbase_initialize".}
proc fcQSGMaterialShader_virtualbase_vertexShader(self: pointer, ): cstring {.importc: "QSGMaterialShader_virtualbase_vertexShader".}
proc fcQSGMaterialShader_virtualbase_fragmentShader(self: pointer, ): cstring {.importc: "QSGMaterialShader_virtualbase_fragmentShader".}
proc fcQSGMaterialShader_protectedbase_setShaderSourceFile(self: pointer, typeVal: cQOpenGLShaderShaderType, sourceFile: struct_miqt_string): void {.importc: "QSGMaterialShader_protectedbase_setShaderSourceFile".}
proc fcQSGMaterialShader_protectedbase_setShaderSourceFiles(self: pointer, typeVal: cQOpenGLShaderShaderType, sourceFiles: struct_miqt_array): void {.importc: "QSGMaterialShader_protectedbase_setShaderSourceFiles".}
proc fcQSGMaterialShader_new(vtbl: pointer, ): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
proc fcQSGMaterialShader_delete(self: pointer) {.importc: "QSGMaterialShader_delete".}
proc fcQSGMaterialShaderRenderState_dirtyStates(self: pointer, ): cint {.importc: "QSGMaterialShader__RenderState_dirtyStates".}
proc fcQSGMaterialShaderRenderState_isMatrixDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialShaderRenderState_isOpacityDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialShaderRenderState_isCachedMaterialDataDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isCachedMaterialDataDirty".}
proc fcQSGMaterialShaderRenderState_opacity(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_opacity".}
proc fcQSGMaterialShaderRenderState_combinedMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_combinedMatrix".}
proc fcQSGMaterialShaderRenderState_modelViewMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialShaderRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_projectionMatrix".}
proc fcQSGMaterialShaderRenderState_viewportRect(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_viewportRect".}
proc fcQSGMaterialShaderRenderState_deviceRect(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_deviceRect".}
proc fcQSGMaterialShaderRenderState_determinant(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_determinant".}
proc fcQSGMaterialShaderRenderState_devicePixelRatio(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialShader__RenderState_delete".}

proc activate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_activate(self.h)

proc deactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_deactivate(self.h)

proc updateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGMaterialShader_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc attributeNames*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cstring =
  (fcQSGMaterialShader_attributeNames(self.h))

type QSGMaterialShaderactivateProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShaderdeactivateProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShaderupdateStateProc* = proc(self: QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void {.raises: [], gcsafe.}
type QSGMaterialShaderattributeNamesProc* = proc(self: QSGMaterialShader): cstring {.raises: [], gcsafe.}
type QSGMaterialShadercompileProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShaderinitializeProc* = proc(self: QSGMaterialShader): void {.raises: [], gcsafe.}
type QSGMaterialShadervertexShaderProc* = proc(self: QSGMaterialShader): cstring {.raises: [], gcsafe.}
type QSGMaterialShaderfragmentShaderProc* = proc(self: QSGMaterialShader): cstring {.raises: [], gcsafe.}
type QSGMaterialShaderVTable* = object
  vtbl: cQSGMaterialShaderVTable
  activate*: QSGMaterialShaderactivateProc
  deactivate*: QSGMaterialShaderdeactivateProc
  updateState*: QSGMaterialShaderupdateStateProc
  attributeNames*: QSGMaterialShaderattributeNamesProc
  compile*: QSGMaterialShadercompileProc
  initialize*: QSGMaterialShaderinitializeProc
  vertexShader*: QSGMaterialShadervertexShaderProc
  fragmentShader*: QSGMaterialShaderfragmentShaderProc
proc QSGMaterialShaderactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_virtualbase_activate(self.h)

proc miqt_exec_callback_cQSGMaterialShader_activate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  vtbl[].activate(self)

proc QSGMaterialShaderdeactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_virtualbase_deactivate(self.h)

proc miqt_exec_callback_cQSGMaterialShader_deactivate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  vtbl[].deactivate(self)

proc QSGMaterialShaderupdateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGMaterialShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc miqt_exec_callback_cQSGMaterialShader_updateState(vtbl: pointer, self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)
  vtbl[].updateState(self, slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQSGMaterialShader_attributeNames(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  var virtualReturn = vtbl[].attributeNames(self)
  virtualReturn

proc QSGMaterialShadercompile*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_virtualbase_compile(self.h)

proc miqt_exec_callback_cQSGMaterialShader_compile(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  vtbl[].compile(self)

proc QSGMaterialShaderinitialize*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_virtualbase_initialize(self.h)

proc miqt_exec_callback_cQSGMaterialShader_initialize(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  vtbl[].initialize(self)

proc QSGMaterialShadervertexShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cstring =
  (fcQSGMaterialShader_virtualbase_vertexShader(self.h))

proc miqt_exec_callback_cQSGMaterialShader_vertexShader(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  var virtualReturn = vtbl[].vertexShader(self)
  virtualReturn

proc QSGMaterialShaderfragmentShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cstring =
  (fcQSGMaterialShader_virtualbase_fragmentShader(self.h))

proc miqt_exec_callback_cQSGMaterialShader_fragmentShader(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](vtbl)
  let self = QSGMaterialShader(h: self)
  var virtualReturn = vtbl[].fragmentShader(self)
  virtualReturn

proc setShaderSourceFile*(self: gen_qsgmaterialshader_types.QSGMaterialShader, typeVal: QOpenGLShaderShaderType, sourceFile: string): void =
  fcQSGMaterialShader_protectedbase_setShaderSourceFile(self.h, typeVal, struct_miqt_string(data: sourceFile, len: csize_t(len(sourceFile))))

proc setShaderSourceFiles*(self: gen_qsgmaterialshader_types.QSGMaterialShader, typeVal: QOpenGLShaderShaderType, sourceFiles: seq[string]): void =
  var sourceFiles_CArray = newSeq[struct_miqt_string](len(sourceFiles))
  for i in 0..<len(sourceFiles):
    sourceFiles_CArray[i] = struct_miqt_string(data: sourceFiles[i], len: csize_t(len(sourceFiles[i])))

  fcQSGMaterialShader_protectedbase_setShaderSourceFiles(self.h, typeVal, struct_miqt_array(len: csize_t(len(sourceFiles)), data: if len(sourceFiles) == 0: nil else: addr(sourceFiles_CArray[0])))

proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader,
    vtbl: ref QSGMaterialShaderVTable = nil): gen_qsgmaterialshader_types.QSGMaterialShader =
  let vtbl = if vtbl == nil: new QSGMaterialShaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGMaterialShaderVTable, _: ptr cQSGMaterialShader) {.cdecl.} =
    let vtbl = cast[ref QSGMaterialShaderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.activate):
    vtbl[].vtbl.activate = miqt_exec_callback_cQSGMaterialShader_activate
  if not isNil(vtbl.deactivate):
    vtbl[].vtbl.deactivate = miqt_exec_callback_cQSGMaterialShader_deactivate
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQSGMaterialShader_updateState
  if not isNil(vtbl.attributeNames):
    vtbl[].vtbl.attributeNames = miqt_exec_callback_cQSGMaterialShader_attributeNames
  if not isNil(vtbl.compile):
    vtbl[].vtbl.compile = miqt_exec_callback_cQSGMaterialShader_compile
  if not isNil(vtbl.initialize):
    vtbl[].vtbl.initialize = miqt_exec_callback_cQSGMaterialShader_initialize
  if not isNil(vtbl.vertexShader):
    vtbl[].vtbl.vertexShader = miqt_exec_callback_cQSGMaterialShader_vertexShader
  if not isNil(vtbl.fragmentShader):
    vtbl[].vtbl.fragmentShader = miqt_exec_callback_cQSGMaterialShader_fragmentShader
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterialShader_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgmaterialshader_types.QSGMaterialShader) =
  fcQSGMaterialShader_delete(self.h)
proc dirtyStates*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): cint =
  cint(fcQSGMaterialShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): bool =
  fcQSGMaterialShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): bool =
  fcQSGMaterialShaderRenderState_isOpacityDirty(self.h)

proc isCachedMaterialDataDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): bool =
  fcQSGMaterialShaderRenderState_isCachedMaterialDataDirty(self.h)

proc opacity*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): float32 =
  fcQSGMaterialShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_combinedMatrix(self.h))

proc modelViewMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_modelViewMatrix(self.h))

proc projectionMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_projectionMatrix(self.h))

proc viewportRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_viewportRect(self.h))

proc deviceRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_deviceRect(self.h))

proc determinant*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): float32 =
  fcQSGMaterialShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): float32 =
  fcQSGMaterialShaderRenderState_devicePixelRatio(self.h)

proc delete*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState) =
  fcQSGMaterialShaderRenderState_delete(self.h)
