type QQmlAbstractUrlInterceptor* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlabstracturlinterceptor.cpp", cflags).}

proc fcQQmlAbstractUrlInterceptor_delete(self: pointer) {.importc: "QQmlAbstractUrlInterceptor_delete".}
proc `=destroy`(self: var QQmlAbstractUrlInterceptor) =
  if self.owned: fcQQmlAbstractUrlInterceptor_delete(self.h)

proc `=sink`(dest: var QQmlAbstractUrlInterceptor, source: QQmlAbstractUrlInterceptor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlAbstractUrlInterceptor, source: QQmlAbstractUrlInterceptor) {.error.}
proc delete*(self: sink QQmlAbstractUrlInterceptor) =
  let h = self.h
  wasMoved(self)
  fcQQmlAbstractUrlInterceptor_delete(h)

