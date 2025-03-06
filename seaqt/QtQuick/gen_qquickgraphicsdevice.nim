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


import ./gen_qquickgraphicsdevice_types
export gen_qquickgraphicsdevice_types


type cQQuickGraphicsDevice*{.exportc: "QQuickGraphicsDevice", incompleteStruct.} = object

proc fcQQuickGraphicsDevice_operatorAssign(self: pointer, other: pointer): void {.importc: "QQuickGraphicsDevice_operatorAssign".}
proc fcQQuickGraphicsDevice_isNull(self: pointer, ): bool {.importc: "QQuickGraphicsDevice_isNull".}
proc fcQQuickGraphicsDevice_fromPhysicalDevice(physicalDevice: cVkPhysicalDevice): pointer {.importc: "QQuickGraphicsDevice_fromPhysicalDevice".}
proc fcQQuickGraphicsDevice_fromDeviceObjects(physicalDevice: cVkPhysicalDevice, device: cVkDevice, queueFamilyIndex: cint): pointer {.importc: "QQuickGraphicsDevice_fromDeviceObjects".}
proc fcQQuickGraphicsDevice_fromDeviceObjects4(physicalDevice: cVkPhysicalDevice, device: cVkDevice, queueFamilyIndex: cint, queueIndex: cint): pointer {.importc: "QQuickGraphicsDevice_fromDeviceObjects4".}
proc fcQQuickGraphicsDevice_new(): ptr cQQuickGraphicsDevice {.importc: "QQuickGraphicsDevice_new".}
proc fcQQuickGraphicsDevice_new2(other: pointer): ptr cQQuickGraphicsDevice {.importc: "QQuickGraphicsDevice_new2".}

proc operatorAssign*(self: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice, other: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): void =
  fcQQuickGraphicsDevice_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice, ): bool =
  fcQQuickGraphicsDevice_isNull(self.h)

proc fromPhysicalDevice*(_: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice, physicalDevice: VkPhysicalDevice): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_fromPhysicalDevice(physicalDevice), owned: true)

proc fromDeviceObjects*(_: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice, physicalDevice: VkPhysicalDevice, device: VkDevice, queueFamilyIndex: cint): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_fromDeviceObjects(physicalDevice, device, queueFamilyIndex), owned: true)

proc fromDeviceObjects*(_: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice, physicalDevice: VkPhysicalDevice, device: VkDevice, queueFamilyIndex: cint, queueIndex: cint): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_fromDeviceObjects4(physicalDevice, device, queueFamilyIndex, queueIndex), owned: true)

proc create*(T: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_new(), owned: true)

proc create*(T: type gen_qquickgraphicsdevice_types.QQuickGraphicsDevice,
    other: gen_qquickgraphicsdevice_types.QQuickGraphicsDevice): gen_qquickgraphicsdevice_types.QQuickGraphicsDevice =
  gen_qquickgraphicsdevice_types.QQuickGraphicsDevice(h: fcQQuickGraphicsDevice_new2(other.h), owned: true)

