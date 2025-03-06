import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgrendererinterface.cpp", cflags).}


type QSGRendererInterfaceGraphicsApiEnum* = distinct cint
template Unknown*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 0
template Software*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 1
template OpenVG*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 2
template OpenGL*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 3
template Direct3D11*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 4
template Vulkan*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 5
template Metal*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 6
template Null*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 7
template OpenGLRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 3
template Direct3D11Rhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 4
template VulkanRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 5
template MetalRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 6
template NullRhi*(_: type QSGRendererInterfaceGraphicsApiEnum): untyped = 7


type QSGRendererInterfaceResourceEnum* = distinct cint
template DeviceResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 0
template CommandQueueResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 1
template CommandListResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 2
template PainterResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 3
template RhiResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 4
template RhiSwapchainResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 5
template RhiRedirectCommandBuffer*(_: type QSGRendererInterfaceResourceEnum): untyped = 6
template RhiRedirectRenderTarget*(_: type QSGRendererInterfaceResourceEnum): untyped = 7
template PhysicalDeviceResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 8
template OpenGLContextResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 9
template DeviceContextResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 10
template CommandEncoderResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 11
template VulkanInstanceResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 12
template RenderPassResource*(_: type QSGRendererInterfaceResourceEnum): untyped = 13
template RedirectPaintDevice*(_: type QSGRendererInterfaceResourceEnum): untyped = 14


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


type QSGRendererInterfaceRenderModeEnum* = distinct cint
template RenderMode2D*(_: type QSGRendererInterfaceRenderModeEnum): untyped = 0
template RenderMode2DNoDepthBuffer*(_: type QSGRendererInterfaceRenderModeEnum): untyped = 1
template RenderMode3D*(_: type QSGRendererInterfaceRenderModeEnum): untyped = 2


import ./gen_qsgrendererinterface_types
export gen_qsgrendererinterface_types

import
  ./gen_qquickwindow_types
export
  gen_qquickwindow_types

type cQSGRendererInterface*{.exportc: "QSGRendererInterface", incompleteStruct.} = object

proc fcQSGRendererInterface_graphicsApi(self: pointer, ): cint {.importc: "QSGRendererInterface_graphicsApi".}
proc fcQSGRendererInterface_getResource(self: pointer, window: pointer, resource: cint): pointer {.importc: "QSGRendererInterface_getResource".}
proc fcQSGRendererInterface_getResource2(self: pointer, window: pointer, resource: cstring): pointer {.importc: "QSGRendererInterface_getResource2".}
proc fcQSGRendererInterface_shaderType(self: pointer, ): cint {.importc: "QSGRendererInterface_shaderType".}
proc fcQSGRendererInterface_shaderCompilationType(self: pointer, ): cint {.importc: "QSGRendererInterface_shaderCompilationType".}
proc fcQSGRendererInterface_shaderSourceType(self: pointer, ): cint {.importc: "QSGRendererInterface_shaderSourceType".}
proc fcQSGRendererInterface_isApiRhiBased(api: cint): bool {.importc: "QSGRendererInterface_isApiRhiBased".}
proc fcQSGRendererInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGRendererInterface_operatorAssign".}
proc fcQSGRendererInterface_delete(self: pointer) {.importc: "QSGRendererInterface_delete".}

proc graphicsApi*(self: gen_qsgrendererinterface_types.QSGRendererInterface, ): cint =
  cint(fcQSGRendererInterface_graphicsApi(self.h))

proc getResource*(self: gen_qsgrendererinterface_types.QSGRendererInterface, window: gen_qquickwindow_types.QQuickWindow, resource: cint): pointer =
  fcQSGRendererInterface_getResource(self.h, window.h, cint(resource))

proc getResource*(self: gen_qsgrendererinterface_types.QSGRendererInterface, window: gen_qquickwindow_types.QQuickWindow, resource: cstring): pointer =
  fcQSGRendererInterface_getResource2(self.h, window.h, resource)

proc shaderType*(self: gen_qsgrendererinterface_types.QSGRendererInterface, ): cint =
  cint(fcQSGRendererInterface_shaderType(self.h))

proc shaderCompilationType*(self: gen_qsgrendererinterface_types.QSGRendererInterface, ): cint =
  cint(fcQSGRendererInterface_shaderCompilationType(self.h))

proc shaderSourceType*(self: gen_qsgrendererinterface_types.QSGRendererInterface, ): cint =
  cint(fcQSGRendererInterface_shaderSourceType(self.h))

proc isApiRhiBased*(_: type gen_qsgrendererinterface_types.QSGRendererInterface, api: cint): bool =
  fcQSGRendererInterface_isApiRhiBased(cint(api))

proc operatorAssign*(self: gen_qsgrendererinterface_types.QSGRendererInterface, param1: gen_qsgrendererinterface_types.QSGRendererInterface): void =
  fcQSGRendererInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qsgrendererinterface_types.QSGRendererInterface) =
  fcQSGRendererInterface_delete(self.h)
