type QFontMetrics* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qfontmetrics.cpp", cflags).}

proc fcQFontMetrics_delete(self: pointer) {.importc: "QFontMetrics_delete".}
proc `=destroy`(self: var QFontMetrics) =
  if self.owned: fcQFontMetrics_delete(self.h)

proc `=sink`(dest: var QFontMetrics, source: QFontMetrics) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFontMetrics, source: QFontMetrics) {.error.}
proc delete*(self: sink QFontMetrics) =
  let h = self.h
  wasMoved(self)
  fcQFontMetrics_delete(h)

type QFontMetricsF* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQFontMetricsF_delete(self: pointer) {.importc: "QFontMetricsF_delete".}
proc `=destroy`(self: var QFontMetricsF) =
  if self.owned: fcQFontMetricsF_delete(self.h)

proc `=sink`(dest: var QFontMetricsF, source: QFontMetricsF) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFontMetricsF, source: QFontMetricsF) {.error.}
proc delete*(self: sink QFontMetricsF) =
  let h = self.h
  wasMoved(self)
  fcQFontMetricsF_delete(h)

