import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgtexture_platform.cpp", cflags).}


import ./gen_qsgtexture_platform_types
export gen_qsgtexture_platform_types


type cQNativeInterfaceQSGOpenGLTexture*{.exportc: "QNativeInterface__QSGOpenGLTexture", incompleteStruct.} = object
type cQNativeInterfaceQSGVulkanTexture*{.exportc: "QNativeInterface__QSGVulkanTexture", incompleteStruct.} = object

proc fcQNativeInterfaceQSGOpenGLTexture_new(): ptr cQNativeInterfaceQSGOpenGLTexture {.importc: "QNativeInterface__QSGOpenGLTexture_new".}
proc fcQNativeInterfaceQSGVulkanTexture_new(): ptr cQNativeInterfaceQSGVulkanTexture {.importc: "QNativeInterface__QSGVulkanTexture_new".}

proc create*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture): gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture =
  gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture(h: fcQNativeInterfaceQSGOpenGLTexture_new())

proc create*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture): gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture =
  gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture(h: fcQNativeInterfaceQSGVulkanTexture_new())

