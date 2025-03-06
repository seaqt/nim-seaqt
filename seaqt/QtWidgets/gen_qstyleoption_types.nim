type QStyleOption* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qstyleoption.cpp", cflags).}

proc fcQStyleOption_delete(self: pointer) {.importc: "QStyleOption_delete".}
proc `=destroy`(self: var QStyleOption) =
  if self.owned: fcQStyleOption_delete(self.h)

proc `=sink`(dest: var QStyleOption, source: QStyleOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStyleOption, source: QStyleOption) {.error.}
proc delete*(self: sink QStyleOption) =
  let h = self.h
  wasMoved(self)
  fcQStyleOption_delete(h)

type QStyleOptionFocusRect* = object of QStyleOption
type QStyleOptionFrame* = object of QStyleOption
type QStyleOptionTabWidgetFrame* = object of QStyleOption
type QStyleOptionTabBarBase* = object of QStyleOption
type QStyleOptionHeader* = object of QStyleOption
type QStyleOptionButton* = object of QStyleOption
type QStyleOptionTab* = object of QStyleOption
type QStyleOptionTabV4* = object of QStyleOptionTab
type QStyleOptionToolBar* = object of QStyleOption
type QStyleOptionProgressBar* = object of QStyleOption
type QStyleOptionMenuItem* = object of QStyleOption
type QStyleOptionDockWidget* = object of QStyleOption
type QStyleOptionViewItem* = object of QStyleOption
type QStyleOptionToolBox* = object of QStyleOption
type QStyleOptionRubberBand* = object of QStyleOption
type QStyleOptionComplex* = object of QStyleOption
type QStyleOptionSlider* = object of QStyleOptionComplex
type QStyleOptionSpinBox* = object of QStyleOptionComplex
type QStyleOptionToolButton* = object of QStyleOptionComplex
type QStyleOptionComboBox* = object of QStyleOptionComplex
type QStyleOptionTitleBar* = object of QStyleOptionComplex
type QStyleOptionGroupBox* = object of QStyleOptionComplex
type QStyleOptionSizeGrip* = object of QStyleOptionComplex
type QStyleOptionGraphicsItem* = object of QStyleOption
type QStyleHintReturn* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQStyleHintReturn_delete(self: pointer) {.importc: "QStyleHintReturn_delete".}
proc `=destroy`(self: var QStyleHintReturn) =
  if self.owned: fcQStyleHintReturn_delete(self.h)

proc `=sink`(dest: var QStyleHintReturn, source: QStyleHintReturn) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStyleHintReturn, source: QStyleHintReturn) {.error.}
proc delete*(self: sink QStyleHintReturn) =
  let h = self.h
  wasMoved(self)
  fcQStyleHintReturn_delete(h)

type QStyleHintReturnMask* = object of QStyleHintReturn
type QStyleHintReturnVariant* = object of QStyleHintReturn
