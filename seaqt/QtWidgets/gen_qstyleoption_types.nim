type QStyleOption* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qstyleoption.cpp", QtWidgetsCFlags).}

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
proc `=copy`(dest: var QStyleOptionFocusRect, source: QStyleOptionFocusRect) {.error.}
proc `=sink`(dest: var QStyleOptionFocusRect, source: QStyleOptionFocusRect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionFrame* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionFrame, source: QStyleOptionFrame) {.error.}
proc `=sink`(dest: var QStyleOptionFrame, source: QStyleOptionFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionTabWidgetFrame* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionTabWidgetFrame, source: QStyleOptionTabWidgetFrame) {.error.}
proc `=sink`(dest: var QStyleOptionTabWidgetFrame, source: QStyleOptionTabWidgetFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionTabBarBase* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionTabBarBase, source: QStyleOptionTabBarBase) {.error.}
proc `=sink`(dest: var QStyleOptionTabBarBase, source: QStyleOptionTabBarBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionHeader* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionHeader, source: QStyleOptionHeader) {.error.}
proc `=sink`(dest: var QStyleOptionHeader, source: QStyleOptionHeader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionButton* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionButton, source: QStyleOptionButton) {.error.}
proc `=sink`(dest: var QStyleOptionButton, source: QStyleOptionButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionTab* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionTab, source: QStyleOptionTab) {.error.}
proc `=sink`(dest: var QStyleOptionTab, source: QStyleOptionTab) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionTabV4* = object of QStyleOptionTab
proc `=copy`(dest: var QStyleOptionTabV4, source: QStyleOptionTabV4) {.error.}
proc `=sink`(dest: var QStyleOptionTabV4, source: QStyleOptionTabV4) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionToolBar* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionToolBar, source: QStyleOptionToolBar) {.error.}
proc `=sink`(dest: var QStyleOptionToolBar, source: QStyleOptionToolBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionProgressBar* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionProgressBar, source: QStyleOptionProgressBar) {.error.}
proc `=sink`(dest: var QStyleOptionProgressBar, source: QStyleOptionProgressBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionMenuItem* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionMenuItem, source: QStyleOptionMenuItem) {.error.}
proc `=sink`(dest: var QStyleOptionMenuItem, source: QStyleOptionMenuItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionDockWidget* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionDockWidget, source: QStyleOptionDockWidget) {.error.}
proc `=sink`(dest: var QStyleOptionDockWidget, source: QStyleOptionDockWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionViewItem* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionViewItem, source: QStyleOptionViewItem) {.error.}
proc `=sink`(dest: var QStyleOptionViewItem, source: QStyleOptionViewItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionToolBox* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionToolBox, source: QStyleOptionToolBox) {.error.}
proc `=sink`(dest: var QStyleOptionToolBox, source: QStyleOptionToolBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionRubberBand* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionRubberBand, source: QStyleOptionRubberBand) {.error.}
proc `=sink`(dest: var QStyleOptionRubberBand, source: QStyleOptionRubberBand) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionComplex* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionComplex, source: QStyleOptionComplex) {.error.}
proc `=sink`(dest: var QStyleOptionComplex, source: QStyleOptionComplex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionSlider* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionSlider, source: QStyleOptionSlider) {.error.}
proc `=sink`(dest: var QStyleOptionSlider, source: QStyleOptionSlider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionSpinBox* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionSpinBox, source: QStyleOptionSpinBox) {.error.}
proc `=sink`(dest: var QStyleOptionSpinBox, source: QStyleOptionSpinBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionToolButton* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionToolButton, source: QStyleOptionToolButton) {.error.}
proc `=sink`(dest: var QStyleOptionToolButton, source: QStyleOptionToolButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionComboBox* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionComboBox, source: QStyleOptionComboBox) {.error.}
proc `=sink`(dest: var QStyleOptionComboBox, source: QStyleOptionComboBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionTitleBar* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionTitleBar, source: QStyleOptionTitleBar) {.error.}
proc `=sink`(dest: var QStyleOptionTitleBar, source: QStyleOptionTitleBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionGroupBox* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionGroupBox, source: QStyleOptionGroupBox) {.error.}
proc `=sink`(dest: var QStyleOptionGroupBox, source: QStyleOptionGroupBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionSizeGrip* = object of QStyleOptionComplex
proc `=copy`(dest: var QStyleOptionSizeGrip, source: QStyleOptionSizeGrip) {.error.}
proc `=sink`(dest: var QStyleOptionSizeGrip, source: QStyleOptionSizeGrip) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleOptionGraphicsItem* = object of QStyleOption
proc `=copy`(dest: var QStyleOptionGraphicsItem, source: QStyleOptionGraphicsItem) {.error.}
proc `=sink`(dest: var QStyleOptionGraphicsItem, source: QStyleOptionGraphicsItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

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
proc `=copy`(dest: var QStyleHintReturnMask, source: QStyleHintReturnMask) {.error.}
proc `=sink`(dest: var QStyleHintReturnMask, source: QStyleHintReturnMask) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStyleHintReturnVariant* = object of QStyleHintReturn
proc `=copy`(dest: var QStyleHintReturnVariant, source: QStyleHintReturnVariant) {.error.}
proc `=sink`(dest: var QStyleHintReturnVariant, source: QStyleHintReturnVariant) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

