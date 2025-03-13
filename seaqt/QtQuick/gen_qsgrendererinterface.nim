import ./Qt5Quick_libs

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


type QSGRendererInterfaceGraphicsApiEnum* = distinct cint
template Unknown*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 0
template Software*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 1
template OpenGL*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 2
template Direct3D12*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 3
template OpenVG*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 4
template OpenGLRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 5
template Direct3D11Rhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 6
template VulkanRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 7
template MetalRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 8
template NullRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 9


type QSGRendererInterfaceResourceEnum* = distinct cint
template DeviceResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 0
template CommandQueueResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 1
template CommandListResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 2
template PainterResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 3
template RhiResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 4
template PhysicalDeviceResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 5
template OpenGLContextResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 6
template DeviceContextResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 7
template CommandEncoderResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 8
template VulkanInstanceResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 9
template RenderPassResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 10


type QSGRendererInterfaceShaderTypeEnum* = distinct cint
template UnknownShadingLanguage*(_: type QSGRendererInterfaceShaderTypeEnum): untyped = 0
template GLSL*(_: type QSGRendererInterfaceShaderTypeEnum): untyped = 1
template HLSL*(_: type QSGRendererInterfaceShaderTypeEnum): untyped = 2
template RhiShader*(_: type QSGRendererInterfaceShaderTypeEnum): untyped = 3


type QSGRendererInterfaceShaderCompilationTypeEnum* = distinct cint
template RuntimeCompilation*(_: type QSGRendererInterfaceShaderCompilationTypeEnum): untyped = 1
template OfflineCompilation*(_: type QSGRendererInterfaceShaderCompilationTypeEnum): untyped = 2


type QSGRendererInterfaceShaderSourceTypeEnum* = distinct cint
template ShaderSourceString*(_: type QSGRendererInterfaceShaderSourceTypeEnum): untyped = 1
template ShaderSourceFile*(_: type QSGRendererInterfaceShaderSourceTypeEnum): untyped = 2
template ShaderByteCode*(_: type QSGRendererInterfaceShaderSourceTypeEnum): untyped = 4


import ./gen_qsgrendererinterface_types
export gen_qsgrendererinterface_types

import
  ./gen_qquickwindow_types
export
  gen_qquickwindow_types

type cQSGRendererInterface*{.exportc: "QSGRendererInterface", incompleteStruct.} = object

proc fcQSGRendererInterface_graphicsApi(self: pointer): cint {.importc: "QSGRendererInterface_graphicsApi".}
proc fcQSGRendererInterface_getResource(self: pointer, window: pointer, resource: cint): pointer {.importc: "QSGRendererInterface_getResource".}
proc fcQSGRendererInterface_getResource2(self: pointer, window: pointer, resource: cstring): pointer {.importc: "QSGRendererInterface_getResource2".}
proc fcQSGRendererInterface_shaderType(self: pointer): cint {.importc: "QSGRendererInterface_shaderType".}
proc fcQSGRendererInterface_shaderCompilationType(self: pointer): cint {.importc: "QSGRendererInterface_shaderCompilationType".}
proc fcQSGRendererInterface_shaderSourceType(self: pointer): cint {.importc: "QSGRendererInterface_shaderSourceType".}
proc fcQSGRendererInterface_isApiRhiBased(api: cint): bool {.importc: "QSGRendererInterface_isApiRhiBased".}
proc fcQSGRendererInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGRendererInterface_operatorAssign".}

proc graphicsApi*(self: gen_qsgrendererinterface_types.QSGRendererInterface): cint =
  cint(fcQSGRendererInterface_graphicsApi(self.h))

proc getResource*(self: gen_qsgrendererinterface_types.QSGRendererInterface, window: gen_qquickwindow_types.QQuickWindow, resource: cint): pointer =
  fcQSGRendererInterface_getResource(self.h, window.h, cint(resource))

proc getResource*(self: gen_qsgrendererinterface_types.QSGRendererInterface, window: gen_qquickwindow_types.QQuickWindow, resource: cstring): pointer =
  fcQSGRendererInterface_getResource2(self.h, window.h, resource)

proc shaderType*(self: gen_qsgrendererinterface_types.QSGRendererInterface): cint =
  cint(fcQSGRendererInterface_shaderType(self.h))

proc shaderCompilationType*(self: gen_qsgrendererinterface_types.QSGRendererInterface): cint =
  cint(fcQSGRendererInterface_shaderCompilationType(self.h))

proc shaderSourceType*(self: gen_qsgrendererinterface_types.QSGRendererInterface): cint =
  cint(fcQSGRendererInterface_shaderSourceType(self.h))

proc isApiRhiBased*(_: type gen_qsgrendererinterface_types.QSGRendererInterface, api: cint): bool =
  fcQSGRendererInterface_isApiRhiBased(cint(api))

proc operatorAssign*(self: gen_qsgrendererinterface_types.QSGRendererInterface, param1: gen_qsgrendererinterface_types.QSGRendererInterface): void =
  fcQSGRendererInterface_operatorAssign(self.h, param1.h)

