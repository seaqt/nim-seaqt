import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qrgba64.cpp", cflags).}


import ./gen_qrgba64_types
export gen_qrgba64_types


type cQRgba64*{.exportc: "QRgba64", incompleteStruct.} = object

proc fcQRgba64_fromRgba64(c: culonglong): pointer {.importc: "QRgba64_fromRgba64".}
proc fcQRgba64_fromRgba642(red: cushort, green: cushort, blue: cushort, alpha: cushort): pointer {.importc: "QRgba64_fromRgba642".}
proc fcQRgba64_fromRgba(red: uint8, green: uint8, blue: uint8, alpha: uint8): pointer {.importc: "QRgba64_fromRgba".}
proc fcQRgba64_fromArgb32(rgb: cuint): pointer {.importc: "QRgba64_fromArgb32".}
proc fcQRgba64_isOpaque(self: pointer, ): bool {.importc: "QRgba64_isOpaque".}
proc fcQRgba64_isTransparent(self: pointer, ): bool {.importc: "QRgba64_isTransparent".}
proc fcQRgba64_red(self: pointer, ): cushort {.importc: "QRgba64_red".}
proc fcQRgba64_green(self: pointer, ): cushort {.importc: "QRgba64_green".}
proc fcQRgba64_blue(self: pointer, ): cushort {.importc: "QRgba64_blue".}
proc fcQRgba64_alpha(self: pointer, ): cushort {.importc: "QRgba64_alpha".}
proc fcQRgba64_setRed(self: pointer, x_red: cushort): void {.importc: "QRgba64_setRed".}
proc fcQRgba64_setGreen(self: pointer, x_green: cushort): void {.importc: "QRgba64_setGreen".}
proc fcQRgba64_setBlue(self: pointer, x_blue: cushort): void {.importc: "QRgba64_setBlue".}
proc fcQRgba64_setAlpha(self: pointer, x_alpha: cushort): void {.importc: "QRgba64_setAlpha".}
proc fcQRgba64_red8(self: pointer, ): uint8 {.importc: "QRgba64_red8".}
proc fcQRgba64_green8(self: pointer, ): uint8 {.importc: "QRgba64_green8".}
proc fcQRgba64_blue8(self: pointer, ): uint8 {.importc: "QRgba64_blue8".}
proc fcQRgba64_alpha8(self: pointer, ): uint8 {.importc: "QRgba64_alpha8".}
proc fcQRgba64_toArgb32(self: pointer, ): cuint {.importc: "QRgba64_toArgb32".}
proc fcQRgba64_toRgb16(self: pointer, ): cushort {.importc: "QRgba64_toRgb16".}
proc fcQRgba64_premultiplied(self: pointer, ): pointer {.importc: "QRgba64_premultiplied".}
proc fcQRgba64_unpremultiplied(self: pointer, ): pointer {.importc: "QRgba64_unpremultiplied".}
proc fcQRgba64_ToUnsignedLongLong(self: pointer, ): culonglong {.importc: "QRgba64_ToUnsignedLongLong".}
proc fcQRgba64_operatorAssign(self: pointer, x_rgba: culonglong): void {.importc: "QRgba64_operatorAssign".}
proc fcQRgba64_new(): ptr cQRgba64 {.importc: "QRgba64_new".}
proc fcQRgba64_new2(param1: pointer): ptr cQRgba64 {.importc: "QRgba64_new2".}
proc fcQRgba64_delete(self: pointer) {.importc: "QRgba64_delete".}

proc fromRgba64*(_: type gen_qrgba64_types.QRgba64, c: culonglong): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_fromRgba64(c))

proc fromRgba64*(_: type gen_qrgba64_types.QRgba64, red: cushort, green: cushort, blue: cushort, alpha: cushort): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_fromRgba642(red, green, blue, alpha))

proc fromRgba*(_: type gen_qrgba64_types.QRgba64, red: uint8, green: uint8, blue: uint8, alpha: uint8): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_fromRgba(red, green, blue, alpha))

proc fromArgb32*(_: type gen_qrgba64_types.QRgba64, rgb: cuint): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_fromArgb32(rgb))

proc isOpaque*(self: gen_qrgba64_types.QRgba64, ): bool =
  fcQRgba64_isOpaque(self.h)

proc isTransparent*(self: gen_qrgba64_types.QRgba64, ): bool =
  fcQRgba64_isTransparent(self.h)

proc red*(self: gen_qrgba64_types.QRgba64, ): cushort =
  fcQRgba64_red(self.h)

proc green*(self: gen_qrgba64_types.QRgba64, ): cushort =
  fcQRgba64_green(self.h)

proc blue*(self: gen_qrgba64_types.QRgba64, ): cushort =
  fcQRgba64_blue(self.h)

proc alpha*(self: gen_qrgba64_types.QRgba64, ): cushort =
  fcQRgba64_alpha(self.h)

proc setRed*(self: gen_qrgba64_types.QRgba64, x_red: cushort): void =
  fcQRgba64_setRed(self.h, x_red)

proc setGreen*(self: gen_qrgba64_types.QRgba64, x_green: cushort): void =
  fcQRgba64_setGreen(self.h, x_green)

proc setBlue*(self: gen_qrgba64_types.QRgba64, x_blue: cushort): void =
  fcQRgba64_setBlue(self.h, x_blue)

proc setAlpha*(self: gen_qrgba64_types.QRgba64, x_alpha: cushort): void =
  fcQRgba64_setAlpha(self.h, x_alpha)

proc red8*(self: gen_qrgba64_types.QRgba64, ): uint8 =
  fcQRgba64_red8(self.h)

proc green8*(self: gen_qrgba64_types.QRgba64, ): uint8 =
  fcQRgba64_green8(self.h)

proc blue8*(self: gen_qrgba64_types.QRgba64, ): uint8 =
  fcQRgba64_blue8(self.h)

proc alpha8*(self: gen_qrgba64_types.QRgba64, ): uint8 =
  fcQRgba64_alpha8(self.h)

proc toArgb32*(self: gen_qrgba64_types.QRgba64, ): cuint =
  fcQRgba64_toArgb32(self.h)

proc toRgb16*(self: gen_qrgba64_types.QRgba64, ): cushort =
  fcQRgba64_toRgb16(self.h)

proc premultiplied*(self: gen_qrgba64_types.QRgba64, ): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_premultiplied(self.h))

proc unpremultiplied*(self: gen_qrgba64_types.QRgba64, ): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_unpremultiplied(self.h))

proc ToUnsignedLongLong*(self: gen_qrgba64_types.QRgba64, ): culonglong =
  fcQRgba64_ToUnsignedLongLong(self.h)

proc operatorAssign*(self: gen_qrgba64_types.QRgba64, x_rgba: culonglong): void =
  fcQRgba64_operatorAssign(self.h, x_rgba)

proc create*(T: type gen_qrgba64_types.QRgba64): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_new())

proc create*(T: type gen_qrgba64_types.QRgba64,
    param1: gen_qrgba64_types.QRgba64): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQRgba64_new2(param1.h))

proc delete*(self: gen_qrgba64_types.QRgba64) =
  fcQRgba64_delete(self.h)
