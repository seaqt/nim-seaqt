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
{.compile("gen_qabstractfileiconprovider.cpp", cflags).}


type QAbstractFileIconProviderIconTypeEnum* = distinct cint
template Computer*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 0
template Desktop*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 1
template Trashcan*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 2
template Network*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 3
template Drive*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 4
template Folder*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 5
template File*(_: type QAbstractFileIconProviderIconTypeEnum): untyped = 6


type QAbstractFileIconProviderOptionEnum* = distinct cint
template DontUseCustomDirectoryIcons*(_: type QAbstractFileIconProviderOptionEnum): untyped = 1


import ./gen_qabstractfileiconprovider_types
export gen_qabstractfileiconprovider_types

import
  ../QtCore/gen_qfileinfo_types,
  ./gen_qicon_types
export
  gen_qfileinfo_types,
  gen_qicon_types

type cQAbstractFileIconProvider*{.exportc: "QAbstractFileIconProvider", incompleteStruct.} = object

proc fcQAbstractFileIconProvider_new(): ptr cQAbstractFileIconProvider {.importc: "QAbstractFileIconProvider_new".}
proc fcQAbstractFileIconProvider_icon(self: pointer, param1: cint): pointer {.importc: "QAbstractFileIconProvider_icon".}
proc fcQAbstractFileIconProvider_iconWithQFileInfo(self: pointer, param1: pointer): pointer {.importc: "QAbstractFileIconProvider_iconWithQFileInfo".}
proc fcQAbstractFileIconProvider_typeX(self: pointer, param1: pointer): struct_miqt_string {.importc: "QAbstractFileIconProvider_type".}
proc fcQAbstractFileIconProvider_setOptions(self: pointer, options: cint): void {.importc: "QAbstractFileIconProvider_setOptions".}
proc fcQAbstractFileIconProvider_options(self: pointer, ): cint {.importc: "QAbstractFileIconProvider_options".}
proc fQAbstractFileIconProvider_virtualbase_icon(self: pointer, param1: cint): pointer{.importc: "QAbstractFileIconProvider_virtualbase_icon".}
proc fcQAbstractFileIconProvider_override_virtual_icon(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_icon".}
proc fQAbstractFileIconProvider_virtualbase_iconWithQFileInfo(self: pointer, param1: pointer): pointer{.importc: "QAbstractFileIconProvider_virtualbase_iconWithQFileInfo".}
proc fcQAbstractFileIconProvider_override_virtual_iconWithQFileInfo(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_iconWithQFileInfo".}
proc fQAbstractFileIconProvider_virtualbase_type(self: pointer, param1: pointer): struct_miqt_string{.importc: "QAbstractFileIconProvider_virtualbase_type".}
proc fcQAbstractFileIconProvider_override_virtual_typeX(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_type".}
proc fQAbstractFileIconProvider_virtualbase_setOptions(self: pointer, options: cint): void{.importc: "QAbstractFileIconProvider_virtualbase_setOptions".}
proc fcQAbstractFileIconProvider_override_virtual_setOptions(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_setOptions".}
proc fQAbstractFileIconProvider_virtualbase_options(self: pointer, ): cint{.importc: "QAbstractFileIconProvider_virtualbase_options".}
proc fcQAbstractFileIconProvider_override_virtual_options(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_options".}
proc fcQAbstractFileIconProvider_delete(self: pointer) {.importc: "QAbstractFileIconProvider_delete".}


func init*(T: type gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, h: ptr cQAbstractFileIconProvider): gen_qabstractfileiconprovider_types.QAbstractFileIconProvider =
  T(h: h)
proc create*(T: type gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, ): gen_qabstractfileiconprovider_types.QAbstractFileIconProvider =
  gen_qabstractfileiconprovider_types.QAbstractFileIconProvider.init(fcQAbstractFileIconProvider_new())

proc icon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractFileIconProvider_icon(self.h, cint(param1)))

proc icon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractFileIconProvider_iconWithQFileInfo(self.h, param1.h))

proc typeX*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQAbstractFileIconProvider_typeX(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, options: cint): void =
  fcQAbstractFileIconProvider_setOptions(self.h, cint(options))

proc options*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, ): cint =
  cint(fcQAbstractFileIconProvider_options(self.h))

proc QAbstractFileIconProvidericon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fQAbstractFileIconProvider_virtualbase_icon(self.h, cint(param1)))

type QAbstractFileIconProvidericonProc* = proc(param1: cint): gen_qicon_types.QIcon
proc onicon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, slot: QAbstractFileIconProvidericonProc) =
  # TODO check subclass
  var tmp = new QAbstractFileIconProvidericonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_icon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_icon(self: ptr cQAbstractFileIconProvider, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_icon ".} =
  var nimfunc = cast[ptr QAbstractFileIconProvidericonProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractFileIconProvidericon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fQAbstractFileIconProvider_virtualbase_iconWithQFileInfo(self.h, param1.h))

type QAbstractFileIconProvidericonWithQFileInfoProc* = proc(param1: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon
proc onicon*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, slot: QAbstractFileIconProvidericonWithQFileInfoProc) =
  # TODO check subclass
  var tmp = new QAbstractFileIconProvidericonWithQFileInfoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_iconWithQFileInfo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_iconWithQFileInfo(self: ptr cQAbstractFileIconProvider, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_iconWithQFileInfo ".} =
  var nimfunc = cast[ptr QAbstractFileIconProvidericonWithQFileInfoProc](cast[pointer](slot))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractFileIconProvidertypeX*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, param1: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fQAbstractFileIconProvider_virtualbase_type(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractFileIconProvidertypeXProc* = proc(param1: gen_qfileinfo_types.QFileInfo): string
proc ontypeX*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, slot: QAbstractFileIconProvidertypeXProc) =
  # TODO check subclass
  var tmp = new QAbstractFileIconProvidertypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_type(self: ptr cQAbstractFileIconProvider, slot: int, param1: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_type ".} =
  var nimfunc = cast[ptr QAbstractFileIconProvidertypeXProc](cast[pointer](slot))
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QAbstractFileIconProvidersetOptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, options: cint): void =
  fQAbstractFileIconProvider_virtualbase_setOptions(self.h, cint(options))

type QAbstractFileIconProvidersetOptionsProc* = proc(options: cint): void
proc onsetOptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, slot: QAbstractFileIconProvidersetOptionsProc) =
  # TODO check subclass
  var tmp = new QAbstractFileIconProvidersetOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_setOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_setOptions(self: ptr cQAbstractFileIconProvider, slot: int, options: cint): void {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_setOptions ".} =
  var nimfunc = cast[ptr QAbstractFileIconProvidersetOptionsProc](cast[pointer](slot))
  let slotval1 = cint(options)


  nimfunc[](slotval1)
proc QAbstractFileIconProvideroptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, ): cint =
  cint(fQAbstractFileIconProvider_virtualbase_options(self.h))

type QAbstractFileIconProvideroptionsProc* = proc(): cint
proc onoptions*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider, slot: QAbstractFileIconProvideroptionsProc) =
  # TODO check subclass
  var tmp = new QAbstractFileIconProvideroptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_options(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_options(self: ptr cQAbstractFileIconProvider, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_options ".} =
  var nimfunc = cast[ptr QAbstractFileIconProvideroptionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc delete*(self: gen_qabstractfileiconprovider_types.QAbstractFileIconProvider) =
  fcQAbstractFileIconProvider_delete(self.h)
