type QAnyStringView* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qanystringview.cpp", cflags).}

proc fcQAnyStringView_delete(self: pointer) {.importc: "QAnyStringView_delete".}
proc `=destroy`(self: var QAnyStringView) =
  if self.owned: fcQAnyStringView_delete(self.h)

proc `=sink`(dest: var QAnyStringView, source: QAnyStringView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAnyStringView, source: QAnyStringView) {.error.}
proc delete*(self: sink QAnyStringView) =
  let h = self.h
  wasMoved(self)
  fcQAnyStringView_delete(h)

