import ./Qt6Quick_libs

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


import ./gen_qquickgraphicsconfiguration_types
export gen_qquickgraphicsconfiguration_types


type cQQuickGraphicsConfiguration*{.exportc: "QQuickGraphicsConfiguration", incompleteStruct.} = object

proc fcQQuickGraphicsConfiguration_operatorAssign(self: pointer, other: pointer): void {.importc: "QQuickGraphicsConfiguration_operatorAssign".}
proc fcQQuickGraphicsConfiguration_setDepthBufferFor2D(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setDepthBufferFor2D".}
proc fcQQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D".}
proc fcQQuickGraphicsConfiguration_new(): ptr cQQuickGraphicsConfiguration {.importc: "QQuickGraphicsConfiguration_new".}
proc fcQQuickGraphicsConfiguration_new2(other: pointer): ptr cQQuickGraphicsConfiguration {.importc: "QQuickGraphicsConfiguration_new2".}

proc operatorAssign*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, other: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): void =
  fcQQuickGraphicsConfiguration_operatorAssign(self.h, other.h)

proc setDepthBufferFor2D*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setDepthBufferFor2D(self.h, enable)

proc isDepthBufferEnabledFor2D*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(self.h)

proc create*(T: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickGraphicsConfiguration_new(), owned: true)

proc create*(T: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration,
    other: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickGraphicsConfiguration_new2(other.h), owned: true)

