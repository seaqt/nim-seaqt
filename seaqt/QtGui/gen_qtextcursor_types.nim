type QTextCursor* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qtextcursor.cpp", cflags).}

proc fcQTextCursor_delete(self: pointer) {.importc: "QTextCursor_delete".}
proc `=destroy`(self: var QTextCursor) =
  if self.owned: fcQTextCursor_delete(self.h)

proc `=sink`(dest: var QTextCursor, source: QTextCursor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextCursor, source: QTextCursor) {.error.}
proc delete*(self: sink QTextCursor) =
  let h = self.h
  wasMoved(self)
  fcQTextCursor_delete(h)

