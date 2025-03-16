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


import ./gen_qquickgraphicsdevice_types
export gen_qquickgraphicsdevice_types


type cQQuickGraphicsDevice*{.exportc: "QQuickGraphicsDevice", incompleteStruct.} = object

proc fcQQuickGraphicsDevice_operatorAssign(self: pointer, other: pointer): void {.importc: "QQuickGraphicsDevice_operatorAssign".}
proc fcQQuickGraphicsDevice_isNull(self: pointer): bool {.importc: "QQuickGraphicsDevice_isNull".}
proc fcQQuickGraphicsDevice_new(): ptr cQQuickGraphicsDevice {.importc: "QQuickGraphicsDevice_new".}
proc fcQQuickGraphicsDevice_new2(other: pointer): ptr cQQuickGraphicsDevice {.importc: "QQuickGraphicsDevice_new2".}

proc operatorAssign*(self: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice, other: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): void =
  fcQQuickGraphicsDevice_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): bool =
  fcQQuickGraphicsDevice_isNull(self.h)

proc create*(T: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_new(), owned: true)

proc create*(T: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice,
    other: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_new2(other.h), owned: true)

