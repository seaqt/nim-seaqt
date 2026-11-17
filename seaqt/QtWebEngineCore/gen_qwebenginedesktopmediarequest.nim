import ./qtwebenginecore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


import ./gen_qwebenginedesktopmediarequest_types
export gen_qwebenginedesktopmediarequest_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qabstractitemmodel_types,
  gen_qobjectdefs_types

type cQWebEngineDesktopMediaRequest*{.exportc: "QWebEngineDesktopMediaRequest", incompleteStruct.} = object

proc fcQWebEngineDesktopMediaRequest_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QWebEngineDesktopMediaRequest_operatorAssign".}
proc fcQWebEngineDesktopMediaRequest_swap(self: pointer, other: pointer): void {.importc: "QWebEngineDesktopMediaRequest_swap".}
proc fcQWebEngineDesktopMediaRequest_screensModel(self: pointer): pointer {.importc: "QWebEngineDesktopMediaRequest_screensModel".}
proc fcQWebEngineDesktopMediaRequest_windowsModel(self: pointer): pointer {.importc: "QWebEngineDesktopMediaRequest_windowsModel".}
proc fcQWebEngineDesktopMediaRequest_selectScreen(self: pointer, index: pointer): void {.importc: "QWebEngineDesktopMediaRequest_selectScreen".}
proc fcQWebEngineDesktopMediaRequest_selectWindow(self: pointer, index: pointer): void {.importc: "QWebEngineDesktopMediaRequest_selectWindow".}
proc fcQWebEngineDesktopMediaRequest_cancel(self: pointer): void {.importc: "QWebEngineDesktopMediaRequest_cancel".}
proc fcQWebEngineDesktopMediaRequest_new(): ptr cQWebEngineDesktopMediaRequest {.importc: "QWebEngineDesktopMediaRequest_new".}
proc fcQWebEngineDesktopMediaRequest_new2(fromVal: pointer): ptr cQWebEngineDesktopMediaRequest {.importc: "QWebEngineDesktopMediaRequest_new_from".}
proc fcQWebEngineDesktopMediaRequest_staticMetaObject(): pointer {.importc: "QWebEngineDesktopMediaRequest_staticMetaObject".}

proc operatorAssign*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest, fromVal: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): void =
  fcQWebEngineDesktopMediaRequest_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest, other: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): void =
  fcQWebEngineDesktopMediaRequest_swap(self.h, other.h)

proc screensModel*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): gen_qabstractitemmodel_types.QAbstractListModel =
  gen_qabstractitemmodel_types.QAbstractListModel(h: fcQWebEngineDesktopMediaRequest_screensModel(self.h), owned: false)

proc windowsModel*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): gen_qabstractitemmodel_types.QAbstractListModel =
  gen_qabstractitemmodel_types.QAbstractListModel(h: fcQWebEngineDesktopMediaRequest_windowsModel(self.h), owned: false)

proc selectScreen*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQWebEngineDesktopMediaRequest_selectScreen(self.h, index.h)

proc selectWindow*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQWebEngineDesktopMediaRequest_selectWindow(self.h, index.h)

proc cancel*(self: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): void =
  fcQWebEngineDesktopMediaRequest_cancel(self.h)

proc create*(T: type gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest =
  let tmp = gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest(h: fcQWebEngineDesktopMediaRequest_new(), owned: true)
  tmp
proc create*(T: type gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest,
    fromVal: gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest =
  let tmp = gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest(h: fcQWebEngineDesktopMediaRequest_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qwebenginedesktopmediarequest_types.QWebEngineDesktopMediaRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineDesktopMediaRequest_staticMetaObject())
