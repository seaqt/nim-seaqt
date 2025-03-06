import ./Qt5Quick_libs

{.push raises: [].}

from system/ansi_c import c_free

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

proc fcQSGMaterialShader_new(): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
proc fcQSGMaterialShader_activate(self: pointer, ): void {.importc: "QSGMaterialShader_activate".}
proc fcQSGMaterialShader_deactivate(self: pointer, ): void {.importc: "QSGMaterialShader_deactivate".}
proc fcQSGMaterialShader_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialShader_updateState".}
proc fcQSGMaterialShader_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialShader_attributeNames".}
proc fQSGMaterialShader_virtualbase_activate(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_activate".}
proc fcQSGMaterialShader_override_virtual_activate(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_activate".}
proc fQSGMaterialShader_virtualbase_deactivate(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_deactivate".}
proc fcQSGMaterialShader_override_virtual_deactivate(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_deactivate".}
proc fQSGMaterialShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void{.importc: "QSGMaterialShader_virtualbase_updateState".}
proc fcQSGMaterialShader_override_virtual_updateState(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_updateState".}
proc fcQSGMaterialShader_override_virtual_attributeNames(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_attributeNames".}
proc fQSGMaterialShader_virtualbase_compile(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_compile".}
proc fcQSGMaterialShader_override_virtual_compile(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_compile".}
proc fQSGMaterialShader_virtualbase_initialize(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_initialize".}
proc fcQSGMaterialShader_override_virtual_initialize(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_initialize".}
proc fQSGMaterialShader_virtualbase_vertexShader(self: pointer, ): cstring{.importc: "QSGMaterialShader_virtualbase_vertexShader".}
proc fcQSGMaterialShader_override_virtual_vertexShader(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_vertexShader".}
proc fQSGMaterialShader_virtualbase_fragmentShader(self: pointer, ): cstring{.importc: "QSGMaterialShader_virtualbase_fragmentShader".}
proc fcQSGMaterialShader_override_virtual_fragmentShader(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_fragmentShader".}
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


func init*(T: type gen_qsgmaterialshader_types.QSGMaterialShader, h: ptr cQSGMaterialShader): gen_qsgmaterialshader_types.QSGMaterialShader =
  T(h: h)
proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader.init(fcQSGMaterialShader_new())

proc activate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_activate(self.h)

proc deactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fcQSGMaterialShader_deactivate(self.h)

proc updateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGMaterialShader_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc attributeNames*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cstring =
  (fcQSGMaterialShader_attributeNames(self.h))

proc QSGMaterialShaderactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fQSGMaterialShader_virtualbase_activate(self.h)

type QSGMaterialShaderactivateProc* = proc(): void
proc onactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderactivateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderactivateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_activate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_activate(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_activate ".} =
  var nimfunc = cast[ptr QSGMaterialShaderactivateProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialShaderdeactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fQSGMaterialShader_virtualbase_deactivate(self.h)

type QSGMaterialShaderdeactivateProc* = proc(): void
proc ondeactivate*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderdeactivateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderdeactivateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_deactivate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_deactivate(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_deactivate ".} =
  var nimfunc = cast[ptr QSGMaterialShaderdeactivateProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialShaderupdateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fQSGMaterialShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialShaderupdateStateProc* = proc(state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void
proc onupdateState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderupdateStateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_updateState(self: ptr cQSGMaterialShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.exportc: "miqt_exec_callback_QSGMaterialShader_updateState ".} =
  var nimfunc = cast[ptr QSGMaterialShaderupdateStateProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)


  nimfunc[](slotval1, slotval2, slotval3)
type QSGMaterialShaderattributeNamesProc* = proc(): cstring
proc onattributeNames*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderattributeNamesProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderattributeNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_attributeNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_attributeNames(self: ptr cQSGMaterialShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialShader_attributeNames ".} =
  var nimfunc = cast[ptr QSGMaterialShaderattributeNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGMaterialShadercompile*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fQSGMaterialShader_virtualbase_compile(self.h)

type QSGMaterialShadercompileProc* = proc(): void
proc oncompile*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShadercompileProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShadercompileProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_compile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_compile(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_compile ".} =
  var nimfunc = cast[ptr QSGMaterialShadercompileProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialShaderinitialize*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): void =
  fQSGMaterialShader_virtualbase_initialize(self.h)

type QSGMaterialShaderinitializeProc* = proc(): void
proc oninitialize*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderinitializeProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderinitializeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_initialize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_initialize(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_initialize ".} =
  var nimfunc = cast[ptr QSGMaterialShaderinitializeProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialShadervertexShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cstring =
  (fQSGMaterialShader_virtualbase_vertexShader(self.h))

type QSGMaterialShadervertexShaderProc* = proc(): cstring
proc onvertexShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShadervertexShaderProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShadervertexShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_vertexShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_vertexShader(self: ptr cQSGMaterialShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialShader_vertexShader ".} =
  var nimfunc = cast[ptr QSGMaterialShadervertexShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGMaterialShaderfragmentShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cstring =
  (fQSGMaterialShader_virtualbase_fragmentShader(self.h))

type QSGMaterialShaderfragmentShaderProc* = proc(): cstring
proc onfragmentShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderfragmentShaderProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderfragmentShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_fragmentShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_fragmentShader(self: ptr cQSGMaterialShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialShader_fragmentShader ".} =
  var nimfunc = cast[ptr QSGMaterialShaderfragmentShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc delete*(self: gen_qsgmaterialshader_types.QSGMaterialShader) =
  fcQSGMaterialShader_delete(self.h)

func init*(T: type gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, h: ptr cQSGMaterialShaderRenderState): gen_qsgmaterialshader_types.QSGMaterialShaderRenderState =
  T(h: h)
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
