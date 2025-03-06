type QLinkedListData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qlinkedlist.cpp", cflags).}

proc fcQLinkedListData_delete(self: pointer) {.importc: "QLinkedListData_delete".}
proc `=destroy`(self: var QLinkedListData) =
  if self.owned: fcQLinkedListData_delete(self.h)

proc `=sink`(dest: var QLinkedListData, source: QLinkedListData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLinkedListData, source: QLinkedListData) {.error.}
proc delete*(self: sink QLinkedListData) =
  let h = self.h
  wasMoved(self)
  fcQLinkedListData_delete(h)

