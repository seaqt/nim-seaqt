import ./qtwebenginewidgets_pkg

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


{.compile("gen_qwebengine_accessible.cpp", QtWebEngineWidgetsCFlags).}


import ./gen_qwebengine_accessible_types
export gen_qwebengine_accessible_types

import
  ../QtCore/gen_qobject_types,
  ../QtGui/gen_qaccessible_types,
  ../QtWidgets/gen_qaccessiblewidget,
  ../QtWidgets/gen_qwidget_types,
  ./gen_qwebengineview_types
export
  gen_qobject_types,
  gen_qaccessible_types,
  gen_qaccessiblewidget,
  gen_qwidget_types,
  gen_qwebengineview_types

type cQWebEngineViewAccessible*{.exportc: "QWebEngineViewAccessible", incompleteStruct.} = object
type cQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible*{.exportc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible", incompleteStruct.} = object

proc fcQWebEngineViewAccessible_isValid(self: pointer): bool {.importc: "QWebEngineViewAccessible_isValid".}
proc fcQWebEngineViewAccessible_focusChild(self: pointer): pointer {.importc: "QWebEngineViewAccessible_focusChild".}
proc fcQWebEngineViewAccessible_childCount(self: pointer): cint {.importc: "QWebEngineViewAccessible_childCount".}
proc fcQWebEngineViewAccessible_child(self: pointer, index: cint): pointer {.importc: "QWebEngineViewAccessible_child".}
proc fcQWebEngineViewAccessible_indexOfChild(self: pointer, child: pointer): cint {.importc: "QWebEngineViewAccessible_indexOfChild".}
proc fcQWebEngineViewAccessible_protectedbase_widget(self: pointer): pointer {.importc: "QWebEngineViewAccessible_protectedbase_widget".}
proc fcQWebEngineViewAccessible_protectedbase_parentObject(self: pointer): pointer {.importc: "QWebEngineViewAccessible_protectedbase_parentObject".}
proc fcQWebEngineViewAccessible_protectedbase_addControllingSignal(self: pointer, signal: struct_seaqt_string): void {.importc: "QWebEngineViewAccessible_protectedbase_addControllingSignal".}
proc fcQWebEngineViewAccessible_new(o: pointer): ptr cQWebEngineViewAccessible {.importc: "QWebEngineViewAccessible_new".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_isValid(self: pointer): bool {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_isValid".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_focusChild(self: pointer): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_focusChild".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_childCount(self: pointer): cint {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_childCount".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_child(self: pointer, index: cint): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_child".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_indexOfChild(self: pointer, child: pointer): cint {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_indexOfChild".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_widget(self: pointer): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_widget".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_parentObject(self: pointer): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_parentObject".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_addControllingSignal(self: pointer, signal: struct_seaqt_string): void {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_addControllingSignal".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_new(o: pointer, view: pointer): ptr cQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateWidgetAccessible_new".}

proc isValid*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible): bool =
  fcQWebEngineViewAccessible_isValid(self.h)

proc focusChild*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQWebEngineViewAccessible_focusChild(self.h), owned: false)

proc childCount*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible): cint =
  fcQWebEngineViewAccessible_childCount(self.h)

proc child*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQWebEngineViewAccessible_child(self.h, index), owned: false)

proc indexOfChild*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible, child: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQWebEngineViewAccessible_indexOfChild(self.h, child.h)

proc widget*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWebEngineViewAccessible_protectedbase_widget(self.h), owned: false)

proc parentObject*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineViewAccessible_protectedbase_parentObject(self.h), owned: false)

proc addControllingSignal*(self: gen_qwebengine_accessible_types.QWebEngineViewAccessible, signal: openArray[char]): void =
  fcQWebEngineViewAccessible_protectedbase_addControllingSignal(self.h, struct_seaqt_string(data: if len(signal) > 0: addr signal[0] else: nil, len: csize_t(len(signal))))

proc create*(T: type gen_qwebengine_accessible_types.QWebEngineViewAccessible,
    o: gen_qwebengineview_types.QWebEngineView): gen_qwebengine_accessible_types.QWebEngineViewAccessible =
  let tmp = gen_qwebengine_accessible_types.QWebEngineViewAccessible(h: fcQWebEngineViewAccessible_new(o.h), owned: true)
  tmp
proc isValid*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible): bool =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_isValid(self.h)

proc focusChild*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_focusChild(self.h), owned: false)

proc childCount*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible): cint =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_childCount(self.h)

proc child*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_child(self.h, index), owned: false)

proc indexOfChild*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible, child: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_indexOfChild(self.h, child.h)

proc widget*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_widget(self.h), owned: false)

proc parentObject*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_parentObject(self.h), owned: false)

proc addControllingSignal*(self: gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible, signal: openArray[char]): void =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_protectedbase_addControllingSignal(self.h, struct_seaqt_string(data: if len(signal) > 0: addr signal[0] else: nil, len: csize_t(len(signal))))

proc create*(T: type gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible,
    o: gen_qwidget_types.QWidget, view: gen_qwebengineview_types.QWebEngineView): gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible =
  let tmp = gen_qwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible_new(o.h, view.h), owned: true)
  tmp
