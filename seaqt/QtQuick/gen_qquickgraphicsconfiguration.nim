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
{.compile("gen_qquickgraphicsconfiguration.cpp", cflags).}


import ./gen_qquickgraphicsconfiguration_types
export gen_qquickgraphicsconfiguration_types


type cQQuickGraphicsConfiguration*{.exportc: "QQuickGraphicsConfiguration", incompleteStruct.} = object

proc fcQQuickGraphicsConfiguration_operatorAssign(self: pointer, other: pointer): void {.importc: "QQuickGraphicsConfiguration_operatorAssign".}
proc fcQQuickGraphicsConfiguration_setDepthBufferFor2D(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setDepthBufferFor2D".}
proc fcQQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(self: pointer, ): bool {.importc: "QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D".}
proc fcQQuickGraphicsConfiguration_new(): ptr cQQuickGraphicsConfiguration {.importc: "QQuickGraphicsConfiguration_new".}
proc fcQQuickGraphicsConfiguration_new2(other: pointer): ptr cQQuickGraphicsConfiguration {.importc: "QQuickGraphicsConfiguration_new2".}
proc fcQQuickGraphicsConfiguration_delete(self: pointer) {.importc: "QQuickGraphicsConfiguration_delete".}

proc operatorAssign*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, other: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): void =
  fcQQuickGraphicsConfiguration_operatorAssign(self.h, other.h)

proc setDepthBufferFor2D*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setDepthBufferFor2D(self.h, enable)

proc isDepthBufferEnabledFor2D*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, ): bool =
  fcQQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(self.h)

proc create*(T: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickGraphicsConfiguration_new())

proc create*(T: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration,
    other: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickGraphicsConfiguration_new2(other.h))

proc delete*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration) =
  fcQQuickGraphicsConfiguration_delete(self.h)
