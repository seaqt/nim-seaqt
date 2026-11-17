import ./qtwidgets_pkg

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


import ./gen_qwhatsthis_types
export gen_qwhatsthis_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qpoint_types,
  ../QtGui/gen_qaction_types,
  ./gen_qwidget_types
export
  gen_qobject_types,
  gen_qpoint_types,
  gen_qaction_types,
  gen_qwidget_types

type cQWhatsThis*{.exportc: "QWhatsThis", incompleteStruct.} = object

proc fcQWhatsThis_enterWhatsThisMode(): void {.importc: "QWhatsThis_enterWhatsThisMode".}
proc fcQWhatsThis_inWhatsThisMode(): bool {.importc: "QWhatsThis_inWhatsThisMode".}
proc fcQWhatsThis_leaveWhatsThisMode(): void {.importc: "QWhatsThis_leaveWhatsThisMode".}
proc fcQWhatsThis_showTextPosText(pos: pointer, text: struct_seaqt_string): void {.importc: "QWhatsThis_showText_pos_text".}
proc fcQWhatsThis_hideText(): void {.importc: "QWhatsThis_hideText".}
proc fcQWhatsThis_createAction(): pointer {.importc: "QWhatsThis_createAction".}
proc fcQWhatsThis_showTextPosTextW(pos: pointer, text: struct_seaqt_string, w: pointer): void {.importc: "QWhatsThis_showText_pos_text_w".}
proc fcQWhatsThis_createActionParent(parent: pointer): pointer {.importc: "QWhatsThis_createAction_parent".}

proc enterWhatsThisMode*(_: type gen_qwhatsthis_types.QWhatsThis): void =
  fcQWhatsThis_enterWhatsThisMode()

proc inWhatsThisMode*(_: type gen_qwhatsthis_types.QWhatsThis): bool =
  fcQWhatsThis_inWhatsThisMode()

proc leaveWhatsThisMode*(_: type gen_qwhatsthis_types.QWhatsThis): void =
  fcQWhatsThis_leaveWhatsThisMode()

proc showText*(_: type gen_qwhatsthis_types.QWhatsThis, pos: gen_qpoint_types.QPoint, text: openArray[char]): void =
  fcQWhatsThis_showTextPosText(pos.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc hideText*(_: type gen_qwhatsthis_types.QWhatsThis): void =
  fcQWhatsThis_hideText()

proc createAction*(_: type gen_qwhatsthis_types.QWhatsThis): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWhatsThis_createAction(), owned: false)

proc showText*(_: type gen_qwhatsthis_types.QWhatsThis, pos: gen_qpoint_types.QPoint, text: openArray[char], w: gen_qwidget_types.QWidget): void =
  fcQWhatsThis_showTextPosTextW(pos.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), w.h)

proc createAction*(_: type gen_qwhatsthis_types.QWhatsThis, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWhatsThis_createActionParent(parent.h), owned: false)

