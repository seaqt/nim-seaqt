import ./qtwebenginequick_pkg

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


{.compile("gen_qquickwebengine_accessible.cpp", QtWebEngineQuickCFlags).}


import ./gen_qquickwebengine_accessible_types
export gen_qquickwebengine_accessible_types

import
  ../QtGui/gen_qaccessible_base_types,
  ../QtGui/gen_qaccessible_types,
  ../QtGui/gen_qaccessibleobject
export
  gen_qaccessible_base_types,
  gen_qaccessible_types,
  gen_qaccessibleobject

type cQQuickWebEngineViewAccessible*{.exportc: "QQuickWebEngineViewAccessible", incompleteStruct.} = object
type cQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible*{.exportc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible", incompleteStruct.} = object

proc fcQQuickWebEngineViewAccessible_isValid(self: pointer): bool {.importc: "QQuickWebEngineViewAccessible_isValid".}
proc fcQQuickWebEngineViewAccessible_parent(self: pointer): pointer {.importc: "QQuickWebEngineViewAccessible_parent".}
proc fcQQuickWebEngineViewAccessible_focusChild(self: pointer): pointer {.importc: "QQuickWebEngineViewAccessible_focusChild".}
proc fcQQuickWebEngineViewAccessible_childCount(self: pointer): cint {.importc: "QQuickWebEngineViewAccessible_childCount".}
proc fcQQuickWebEngineViewAccessible_child(self: pointer, index: cint): pointer {.importc: "QQuickWebEngineViewAccessible_child".}
proc fcQQuickWebEngineViewAccessible_indexOfChild(self: pointer, param1: pointer): cint {.importc: "QQuickWebEngineViewAccessible_indexOfChild".}
proc fcQQuickWebEngineViewAccessible_text(self: pointer, param1: cint): struct_seaqt_string {.importc: "QQuickWebEngineViewAccessible_text".}
proc fcQQuickWebEngineViewAccessible_role(self: pointer): cint {.importc: "QQuickWebEngineViewAccessible_role".}
proc fcQQuickWebEngineViewAccessible_state(self: pointer): pointer {.importc: "QQuickWebEngineViewAccessible_state".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_isValid(self: pointer): bool {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_isValid".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_parent(self: pointer): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_parent".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_text(self: pointer, t: cint): struct_seaqt_string {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_text".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_role(self: pointer): cint {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_role".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_state(self: pointer): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_state".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_focusChild(self: pointer): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_focusChild".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_childCount(self: pointer): cint {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_childCount".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_child(self: pointer, index: cint): pointer {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_child".}
proc fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_indexOfChild(self: pointer, param1: pointer): cint {.importc: "QtWebEngineCore__RenderWidgetHostViewQtDelegateQuickAccessible_indexOfChild".}

proc isValid*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible): bool =
  fcQQuickWebEngineViewAccessible_isValid(self.h)

proc parent*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickWebEngineViewAccessible_parent(self.h), owned: false)

proc focusChild*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickWebEngineViewAccessible_focusChild(self.h), owned: false)

proc childCount*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible): cint =
  fcQQuickWebEngineViewAccessible_childCount(self.h)

proc child*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQQuickWebEngineViewAccessible_child(self.h, index), owned: false)

proc indexOfChild*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible, param1: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQQuickWebEngineViewAccessible_indexOfChild(self.h, param1.h)

proc text*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible, param1: cint): string =
  let v_ms = fcQQuickWebEngineViewAccessible_text(self.h, cint(param1))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc role*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible): cint =
  cint(fcQQuickWebEngineViewAccessible_role(self.h))

proc state*(self: gen_qquickwebengine_accessible_types.QQuickWebEngineViewAccessible): gen_qaccessible_base_types.QAccessibleState =
  gen_qaccessible_base_types.QAccessibleState(h: fcQQuickWebEngineViewAccessible_state(self.h), owned: true)

proc isValid*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible): bool =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_isValid(self.h)

proc parent*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_parent(self.h), owned: false)

proc text*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible, t: cint): string =
  let v_ms = fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_text(self.h, cint(t))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc role*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible): cint =
  cint(fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_role(self.h))

proc state*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible): gen_qaccessible_base_types.QAccessibleState =
  gen_qaccessible_base_types.QAccessibleState(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_state(self.h), owned: true)

proc focusChild*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_focusChild(self.h), owned: false)

proc childCount*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible): cint =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_childCount(self.h)

proc child*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_child(self.h, index), owned: false)

proc indexOfChild*(self: gen_qquickwebengine_accessible_types.QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible, param1: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible_indexOfChild(self.h, param1.h)

