import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qdesktopservices.cpp", cflags).}


import ./gen_qdesktopservices_types
export gen_qdesktopservices_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qurl_types
export
  gen_qobject_types,
  gen_qurl_types

type cQDesktopServices*{.exportc: "QDesktopServices", incompleteStruct.} = object

proc fcQDesktopServices_openUrl(url: pointer): bool {.importc: "QDesktopServices_openUrl".}
proc fcQDesktopServices_setUrlHandler(scheme: struct_miqt_string, receiver: pointer, methodVal: cstring): void {.importc: "QDesktopServices_setUrlHandler".}
proc fcQDesktopServices_unsetUrlHandler(scheme: struct_miqt_string): void {.importc: "QDesktopServices_unsetUrlHandler".}
proc fcQDesktopServices_delete(self: pointer) {.importc: "QDesktopServices_delete".}

proc openUrl*(_: type gen_qdesktopservices_types.QDesktopServices, url: gen_qurl_types.QUrl): bool =
  fcQDesktopServices_openUrl(url.h)

proc setUrlHandler*(_: type gen_qdesktopservices_types.QDesktopServices, scheme: string, receiver: gen_qobject_types.QObject, methodVal: cstring): void =
  fcQDesktopServices_setUrlHandler(struct_miqt_string(data: scheme, len: csize_t(len(scheme))), receiver.h, methodVal)

proc unsetUrlHandler*(_: type gen_qdesktopservices_types.QDesktopServices, scheme: string): void =
  fcQDesktopServices_unsetUrlHandler(struct_miqt_string(data: scheme, len: csize_t(len(scheme))))

proc delete*(self: gen_qdesktopservices_types.QDesktopServices) =
  fcQDesktopServices_delete(self.h)
