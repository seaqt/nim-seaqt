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
{.compile("gen_qinputmethod.cpp", cflags).}


type QInputMethodActionEnum* = distinct cint
template Click*(_: type QInputMethodActionEnum): untyped = 0
template ContextMenu*(_: type QInputMethodActionEnum): untyped = 1


import ./gen_qinputmethod_types
export gen_qinputmethod_types

import
  ../QtCore/gen_qlocale_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qtransform_types
export
  gen_qlocale_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qtransform_types

type cQInputMethod*{.exportc: "QInputMethod", incompleteStruct.} = object

proc fcQInputMethod_metaObject(self: pointer, ): pointer {.importc: "QInputMethod_metaObject".}
proc fcQInputMethod_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputMethod_metacast".}
proc fcQInputMethod_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputMethod_metacall".}
proc fcQInputMethod_tr(s: cstring): struct_miqt_string {.importc: "QInputMethod_tr".}
proc fcQInputMethod_trUtf8(s: cstring): struct_miqt_string {.importc: "QInputMethod_trUtf8".}
proc fcQInputMethod_inputItemTransform(self: pointer, ): pointer {.importc: "QInputMethod_inputItemTransform".}
proc fcQInputMethod_setInputItemTransform(self: pointer, transform: pointer): void {.importc: "QInputMethod_setInputItemTransform".}
proc fcQInputMethod_inputItemRectangle(self: pointer, ): pointer {.importc: "QInputMethod_inputItemRectangle".}
proc fcQInputMethod_setInputItemRectangle(self: pointer, rect: pointer): void {.importc: "QInputMethod_setInputItemRectangle".}
proc fcQInputMethod_cursorRectangle(self: pointer, ): pointer {.importc: "QInputMethod_cursorRectangle".}
proc fcQInputMethod_anchorRectangle(self: pointer, ): pointer {.importc: "QInputMethod_anchorRectangle".}
proc fcQInputMethod_keyboardRectangle(self: pointer, ): pointer {.importc: "QInputMethod_keyboardRectangle".}
proc fcQInputMethod_inputItemClipRectangle(self: pointer, ): pointer {.importc: "QInputMethod_inputItemClipRectangle".}
proc fcQInputMethod_isVisible(self: pointer, ): bool {.importc: "QInputMethod_isVisible".}
proc fcQInputMethod_setVisible(self: pointer, visible: bool): void {.importc: "QInputMethod_setVisible".}
proc fcQInputMethod_isAnimating(self: pointer, ): bool {.importc: "QInputMethod_isAnimating".}
proc fcQInputMethod_locale(self: pointer, ): pointer {.importc: "QInputMethod_locale".}
proc fcQInputMethod_inputDirection(self: pointer, ): cint {.importc: "QInputMethod_inputDirection".}
proc fcQInputMethod_queryFocusObject(query: cint, argument: pointer): pointer {.importc: "QInputMethod_queryFocusObject".}
proc fcQInputMethod_show(self: pointer, ): void {.importc: "QInputMethod_show".}
proc fcQInputMethod_hide(self: pointer, ): void {.importc: "QInputMethod_hide".}
proc fcQInputMethod_update(self: pointer, queries: cint): void {.importc: "QInputMethod_update".}
proc fcQInputMethod_reset(self: pointer, ): void {.importc: "QInputMethod_reset".}
proc fcQInputMethod_commit(self: pointer, ): void {.importc: "QInputMethod_commit".}
proc fcQInputMethod_invokeAction(self: pointer, a: cint, cursorPosition: cint): void {.importc: "QInputMethod_invokeAction".}
proc fcQInputMethod_cursorRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_cursorRectangleChanged".}
proc fcQInputMethod_connect_cursorRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_cursorRectangleChanged".}
proc fcQInputMethod_anchorRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_anchorRectangleChanged".}
proc fcQInputMethod_connect_anchorRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_anchorRectangleChanged".}
proc fcQInputMethod_keyboardRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_keyboardRectangleChanged".}
proc fcQInputMethod_connect_keyboardRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_keyboardRectangleChanged".}
proc fcQInputMethod_inputItemClipRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_inputItemClipRectangleChanged".}
proc fcQInputMethod_connect_inputItemClipRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_inputItemClipRectangleChanged".}
proc fcQInputMethod_visibleChanged(self: pointer, ): void {.importc: "QInputMethod_visibleChanged".}
proc fcQInputMethod_connect_visibleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_visibleChanged".}
proc fcQInputMethod_animatingChanged(self: pointer, ): void {.importc: "QInputMethod_animatingChanged".}
proc fcQInputMethod_connect_animatingChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_animatingChanged".}
proc fcQInputMethod_localeChanged(self: pointer, ): void {.importc: "QInputMethod_localeChanged".}
proc fcQInputMethod_connect_localeChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_localeChanged".}
proc fcQInputMethod_inputDirectionChanged(self: pointer, newDirection: cint): void {.importc: "QInputMethod_inputDirectionChanged".}
proc fcQInputMethod_connect_inputDirectionChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_inputDirectionChanged".}
proc fcQInputMethod_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputMethod_tr2".}
proc fcQInputMethod_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputMethod_tr3".}
proc fcQInputMethod_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputMethod_trUtf82".}
proc fcQInputMethod_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputMethod_trUtf83".}
proc fcQInputMethod_staticMetaObject(): pointer {.importc: "QInputMethod_staticMetaObject".}

proc metaObject*(self: gen_qinputmethod_types.QInputMethod, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputMethod_metaObject(self.h))

proc metacast*(self: gen_qinputmethod_types.QInputMethod, param1: cstring): pointer =
  fcQInputMethod_metacast(self.h, param1)

proc metacall*(self: gen_qinputmethod_types.QInputMethod, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputMethod_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qinputmethod_types.QInputMethod, s: cstring): string =
  let v_ms = fcQInputMethod_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qinputmethod_types.QInputMethod, s: cstring): string =
  let v_ms = fcQInputMethod_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc inputItemTransform*(self: gen_qinputmethod_types.QInputMethod, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQInputMethod_inputItemTransform(self.h))

proc setInputItemTransform*(self: gen_qinputmethod_types.QInputMethod, transform: gen_qtransform_types.QTransform): void =
  fcQInputMethod_setInputItemTransform(self.h, transform.h)

proc inputItemRectangle*(self: gen_qinputmethod_types.QInputMethod, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQInputMethod_inputItemRectangle(self.h))

proc setInputItemRectangle*(self: gen_qinputmethod_types.QInputMethod, rect: gen_qrect_types.QRectF): void =
  fcQInputMethod_setInputItemRectangle(self.h, rect.h)

proc cursorRectangle*(self: gen_qinputmethod_types.QInputMethod, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQInputMethod_cursorRectangle(self.h))

proc anchorRectangle*(self: gen_qinputmethod_types.QInputMethod, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQInputMethod_anchorRectangle(self.h))

proc keyboardRectangle*(self: gen_qinputmethod_types.QInputMethod, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQInputMethod_keyboardRectangle(self.h))

proc inputItemClipRectangle*(self: gen_qinputmethod_types.QInputMethod, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQInputMethod_inputItemClipRectangle(self.h))

proc isVisible*(self: gen_qinputmethod_types.QInputMethod, ): bool =
  fcQInputMethod_isVisible(self.h)

proc setVisible*(self: gen_qinputmethod_types.QInputMethod, visible: bool): void =
  fcQInputMethod_setVisible(self.h, visible)

proc isAnimating*(self: gen_qinputmethod_types.QInputMethod, ): bool =
  fcQInputMethod_isAnimating(self.h)

proc locale*(self: gen_qinputmethod_types.QInputMethod, ): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQInputMethod_locale(self.h))

proc inputDirection*(self: gen_qinputmethod_types.QInputMethod, ): cint =
  cint(fcQInputMethod_inputDirection(self.h))

proc queryFocusObject*(_: type gen_qinputmethod_types.QInputMethod, query: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputMethod_queryFocusObject(cint(query), argument.h))

proc show*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_show(self.h)

proc hide*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_hide(self.h)

proc update*(self: gen_qinputmethod_types.QInputMethod, queries: cint): void =
  fcQInputMethod_update(self.h, cint(queries))

proc reset*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_reset(self.h)

proc commit*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_commit(self.h)

proc invokeAction*(self: gen_qinputmethod_types.QInputMethod, a: cint, cursorPosition: cint): void =
  fcQInputMethod_invokeAction(self.h, cint(a), cursorPosition)

proc cursorRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_cursorRectangleChanged(self.h)

type QInputMethodcursorRectangleChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_cursorRectangleChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_cursorRectangleChanged".} =
  let nimfunc = cast[ptr QInputMethodcursorRectangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncursorRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodcursorRectangleChangedSlot) =
  var tmp = new QInputMethodcursorRectangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_cursorRectangleChanged(self.h, cast[int](addr tmp[]))

proc anchorRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_anchorRectangleChanged(self.h)

type QInputMethodanchorRectangleChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_anchorRectangleChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_anchorRectangleChanged".} =
  let nimfunc = cast[ptr QInputMethodanchorRectangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onanchorRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodanchorRectangleChangedSlot) =
  var tmp = new QInputMethodanchorRectangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_anchorRectangleChanged(self.h, cast[int](addr tmp[]))

proc keyboardRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_keyboardRectangleChanged(self.h)

type QInputMethodkeyboardRectangleChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_keyboardRectangleChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_keyboardRectangleChanged".} =
  let nimfunc = cast[ptr QInputMethodkeyboardRectangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onkeyboardRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodkeyboardRectangleChangedSlot) =
  var tmp = new QInputMethodkeyboardRectangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_keyboardRectangleChanged(self.h, cast[int](addr tmp[]))

proc inputItemClipRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_inputItemClipRectangleChanged(self.h)

type QInputMethodinputItemClipRectangleChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_inputItemClipRectangleChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_inputItemClipRectangleChanged".} =
  let nimfunc = cast[ptr QInputMethodinputItemClipRectangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oninputItemClipRectangleChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodinputItemClipRectangleChangedSlot) =
  var tmp = new QInputMethodinputItemClipRectangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_inputItemClipRectangleChanged(self.h, cast[int](addr tmp[]))

proc visibleChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_visibleChanged(self.h)

type QInputMethodvisibleChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_visibleChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_visibleChanged".} =
  let nimfunc = cast[ptr QInputMethodvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvisibleChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodvisibleChangedSlot) =
  var tmp = new QInputMethodvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_visibleChanged(self.h, cast[int](addr tmp[]))

proc animatingChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_animatingChanged(self.h)

type QInputMethodanimatingChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_animatingChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_animatingChanged".} =
  let nimfunc = cast[ptr QInputMethodanimatingChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onanimatingChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodanimatingChangedSlot) =
  var tmp = new QInputMethodanimatingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_animatingChanged(self.h, cast[int](addr tmp[]))

proc localeChanged*(self: gen_qinputmethod_types.QInputMethod, ): void =
  fcQInputMethod_localeChanged(self.h)

type QInputMethodlocaleChangedSlot* = proc()
proc miqt_exec_callback_cQInputMethod_localeChanged(slot: int) {.exportc: "miqt_exec_callback_QInputMethod_localeChanged".} =
  let nimfunc = cast[ptr QInputMethodlocaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlocaleChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodlocaleChangedSlot) =
  var tmp = new QInputMethodlocaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_localeChanged(self.h, cast[int](addr tmp[]))

proc inputDirectionChanged*(self: gen_qinputmethod_types.QInputMethod, newDirection: cint): void =
  fcQInputMethod_inputDirectionChanged(self.h, cint(newDirection))

type QInputMethodinputDirectionChangedSlot* = proc(newDirection: cint)
proc miqt_exec_callback_cQInputMethod_inputDirectionChanged(slot: int, newDirection: cint) {.exportc: "miqt_exec_callback_QInputMethod_inputDirectionChanged".} =
  let nimfunc = cast[ptr QInputMethodinputDirectionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newDirection)

  nimfunc[](slotval1)

proc oninputDirectionChanged*(self: gen_qinputmethod_types.QInputMethod, slot: QInputMethodinputDirectionChangedSlot) =
  var tmp = new QInputMethodinputDirectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethod_connect_inputDirectionChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qinputmethod_types.QInputMethod, s: cstring, c: cstring): string =
  let v_ms = fcQInputMethod_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qinputmethod_types.QInputMethod, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputMethod_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qinputmethod_types.QInputMethod, s: cstring, c: cstring): string =
  let v_ms = fcQInputMethod_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qinputmethod_types.QInputMethod, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputMethod_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qinputmethod_types.QInputMethod): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputMethod_staticMetaObject())
