type QAuthenticator* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qauthenticator.cpp", cflags).}

proc fcQAuthenticator_delete(self: pointer) {.importc: "QAuthenticator_delete".}
proc `=destroy`(self: var QAuthenticator) =
  if self.owned: fcQAuthenticator_delete(self.h)

proc `=sink`(dest: var QAuthenticator, source: QAuthenticator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAuthenticator, source: QAuthenticator) {.error.}
proc delete*(self: sink QAuthenticator) =
  let h = self.h
  wasMoved(self)
  fcQAuthenticator_delete(h)

