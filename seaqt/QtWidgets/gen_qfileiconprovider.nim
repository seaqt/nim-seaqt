import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qfileiconprovider.cpp", cflags).}


type QFileIconProviderIconTypeEnum* = distinct cint
template Computer*(_: type QFileIconProviderIconTypeEnum): untyped = 0
template Desktop*(_: type QFileIconProviderIconTypeEnum): untyped = 1
template Trashcan*(_: type QFileIconProviderIconTypeEnum): untyped = 2
template Network*(_: type QFileIconProviderIconTypeEnum): untyped = 3
template Drive*(_: type QFileIconProviderIconTypeEnum): untyped = 4
template Folder*(_: type QFileIconProviderIconTypeEnum): untyped = 5
template File*(_: type QFileIconProviderIconTypeEnum): untyped = 6


type QFileIconProviderOptionEnum* = distinct cint
template DontUseCustomDirectoryIcons*(_: type QFileIconProviderOptionEnum): untyped = 1


import ./gen_qfileiconprovider_types
export gen_qfileiconprovider_types

import
  ../QtCore/gen_qfileinfo_types,
  ../QtGui/gen_qicon_types
export
  gen_qfileinfo_types,
  gen_qicon_types

type cQFileIconProvider*{.exportc: "QFileIconProvider", incompleteStruct.} = object

proc fcQFileIconProvider_new(): ptr cQFileIconProvider {.importc: "QFileIconProvider_new".}
proc fcQFileIconProvider_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_icon".}
proc fcQFileIconProvider_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_iconWithInfo".}
proc fcQFileIconProvider_typeX(self: pointer, info: pointer): struct_miqt_string {.importc: "QFileIconProvider_type".}
proc fcQFileIconProvider_setOptions(self: pointer, options: cint): void {.importc: "QFileIconProvider_setOptions".}
proc fcQFileIconProvider_options(self: pointer, ): cint {.importc: "QFileIconProvider_options".}
proc fQFileIconProvider_virtualbase_icon(self: pointer, typeVal: cint): pointer{.importc: "QFileIconProvider_virtualbase_icon".}
proc fcQFileIconProvider_override_virtual_icon(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_icon".}
proc fQFileIconProvider_virtualbase_iconWithInfo(self: pointer, info: pointer): pointer{.importc: "QFileIconProvider_virtualbase_iconWithInfo".}
proc fcQFileIconProvider_override_virtual_iconWithInfo(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_iconWithInfo".}
proc fQFileIconProvider_virtualbase_type(self: pointer, info: pointer): struct_miqt_string{.importc: "QFileIconProvider_virtualbase_type".}
proc fcQFileIconProvider_override_virtual_typeX(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_type".}
proc fcQFileIconProvider_delete(self: pointer) {.importc: "QFileIconProvider_delete".}


func init*(T: type gen_qfileiconprovider_types.QFileIconProvider, h: ptr cQFileIconProvider): gen_qfileiconprovider_types.QFileIconProvider =
  T(h: h)
proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider, ): gen_qfileiconprovider_types.QFileIconProvider =
  gen_qfileiconprovider_types.QFileIconProvider.init(fcQFileIconProvider_new())

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_icon(self.h, cint(typeVal)))

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_iconWithInfo(self.h, info.h))

proc typeX*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_typeX(self.h, info.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOptions*(self: gen_qfileiconprovider_types.QFileIconProvider, options: cint): void =
  fcQFileIconProvider_setOptions(self.h, cint(options))

proc options*(self: gen_qfileiconprovider_types.QFileIconProvider, ): cint =
  cint(fcQFileIconProvider_options(self.h))

proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fQFileIconProvider_virtualbase_icon(self.h, cint(typeVal)))

type QFileIconProvidericonProc* = proc(typeVal: cint): gen_qicon_types.QIcon
proc onicon*(self: gen_qfileiconprovider_types.QFileIconProvider, slot: QFileIconProvidericonProc) =
  # TODO check subclass
  var tmp = new QFileIconProvidericonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_icon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_icon(self: ptr cQFileIconProvider, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QFileIconProvider_icon ".} =
  var nimfunc = cast[ptr QFileIconProvidericonProc](cast[pointer](slot))
  let slotval1 = cint(typeVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fQFileIconProvider_virtualbase_iconWithInfo(self.h, info.h))

type QFileIconProvidericonWithInfoProc* = proc(info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon
proc onicon*(self: gen_qfileiconprovider_types.QFileIconProvider, slot: QFileIconProvidericonWithInfoProc) =
  # TODO check subclass
  var tmp = new QFileIconProvidericonWithInfoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_iconWithInfo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_iconWithInfo(self: ptr cQFileIconProvider, slot: int, info: pointer): pointer {.exportc: "miqt_exec_callback_QFileIconProvider_iconWithInfo ".} =
  var nimfunc = cast[ptr QFileIconProvidericonWithInfoProc](cast[pointer](slot))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFileIconProvidertypeX*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fQFileIconProvider_virtualbase_type(self.h, info.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFileIconProvidertypeXProc* = proc(info: gen_qfileinfo_types.QFileInfo): string
proc ontypeX*(self: gen_qfileiconprovider_types.QFileIconProvider, slot: QFileIconProvidertypeXProc) =
  # TODO check subclass
  var tmp = new QFileIconProvidertypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_type(self: ptr cQFileIconProvider, slot: int, info: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QFileIconProvider_type ".} =
  var nimfunc = cast[ptr QFileIconProvidertypeXProc](cast[pointer](slot))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info)


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc delete*(self: gen_qfileiconprovider_types.QFileIconProvider) =
  fcQFileIconProvider_delete(self.h)
