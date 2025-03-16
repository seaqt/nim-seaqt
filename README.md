# nim-seaqt

`nim-seaqt` is a set of [Nim](https://nim-lang.org) bindings for [Qt](https://www.qt.io/) generated by [`seaqt-gen`](https://github.com/seaqt/seaqt-gen). See `seaqt-gen` for more information.

The bindings are still going through significant changes, including in naming and structure - this repository is a preview intended for feedback.

The code may occasionally be **rebased** before the dust settles on a generally useful initial release.

The repository contains both `Nim` and `C` code - see [`seeqt`](https://github.com/seaqt/seaqt) for a `C` version that can be used stand-alone or as a base for other languages.

## Using the bindings

Bindings are available from `nimble` with each supported Qt version in its own branch:

```nim
requires "https://github.com/seaqt/nim-seaqt.git@#qt-6.4"
```

With that and a copy of Qt itself in place, you're good to go for your first Qt application:

```nim
import std/strformat, seaqt/[qapplication, qpushbutton]

let
  _ = QApplication.create() # Initialize the Qt library
  btn = QPushButton.create("Hello seaqt!")

btn.setFixedWidth(320)

var counter = 0
btn.onPressed(
  proc() =
    counter += 1
    btn.setText(&"You have clicked the button {counter} time(s)")
)

btn.show()

quit QApplication.exec().int
```

### Qt versions

Bindings are generated for each Qt release into a separate branch named after the Qt `major.minor` version.

Bindings for a specific minor version can generally be used with all minor Qt versions following it - ie the `6.4` bindings are compatible with `6.5` etc but not with `6.2` and `7.0`. Use the lowest `minor` version that provides the functionality you need, for maximum compatibility!

| Qt Version | Branch |
| ---------- | ------ |
| 5.15+      | https://github.com/seaqt/nim-seaqt/tree/qt-5.15 |
| 6.4+       | https://github.com/seaqt/nim-seaqt/tree/qt-6.4  |

### Finding Qt

Qt gets located using `pkg-config` - use `PKG_CONFIG_PATH` to point to a specific Qt installation:

```sh
export PKG_CONFIG_PATH="/opt/Qt5.2.1/5.2.1/gcc_64/lib/pkgconfig/:$PKG_CONFIG_PATH"
```

### Imports

Similar to Qt, imports are directly derived from the type name, in lowercase:

```nim
# To use [`QListView`](https://doc.qt.io/qt-6/qlistview.html):
import seaqt/qlistview
```

In case of ambiguity, imports are further divided by their Qt module name and derived from their `.h`-based include file, where you'll also find imports for symbols that are not covered by the top-level modules:

```nim
# This time with a `gen_` prefix - this may change in the future:
import seaqt/QtWidgets/gen_qlistview
```

### Memory management

Each bound Qt type is made of two parts - a C++-based implementation and a Nim-based "handle" type, similar to the [`pimpl`](https://en.cppreference.com/w/cpp/language/pimpl) idiom in C++.

The lifetime of the C++ instance generally follows that of the Nim instance - to gain better control over lifetimes, put the handle type in a `ref` wrapper.

Some Qt functions take ownership of the instance passed to them - these are typically functions that make widgets part of the `QObject` / `QWidget` [ownership trees](https://doc.qt.io/qt-6/objecttrees.html). When calling such functions, you must reset the `owned` flag of the Nim instance or the instance will be deleted twice:

```nim
var
  btn = QPushButton.create("button")
  toolbar = QToolBar.create()

# `adddWidget` "takes ownership" according to https://doc.qt.io/qt-6/qtoolbar.html#addWidget
discard toolbar.addWidget(btn)
btn.owned = false # Update `owned` flag of Nim instance
```

### Inheritance

Some types such as [`QAbstractListModel`](https://doc.qt.io/qt-6/qabstractlistmodel.html) use inheritance to customise their behavior. To override virtual functions, inherit from the type as you would in C++, albeit with a `Virtual` prefix. Overrides of virtual functions are then provided using Nim [methods](https://nim-lang.org/docs/manual.html#methods):

```nim
type MyList = ref object of VirtualQAbstractListModel
  myField: int # Nim fields to accompany the underlying C++ list

method rowCount(self: Model, idx: QModelIndex): cint =
  1000

# Instances must be "attached" to C++ using `create`:
let model = Model()
QAbstractListModel.create(model)

# Dereference the model to access the underlying `QAbstractListModel` wrapper
let v = QListView.create()
v.setModel(model[])
```

### Signals and slots

Signal connections are done using the `on<SignalName>` helpers:

```nim
let btn = QPushButton.create("Hello world!")
btn.onPressed(
  proc() =
    echo "Button pressed"
)
```

## Alternatives for Nim+Qt

* [nimqt](https://github.com/jerous86/nimqt/) - Bindings that generate C++ code on the fly and use [verdigris](https://github.com/woboq/verdigris) for meta-object integration - require `nim cpp`
* [nimqml](https://github.com/filcuc/nimqml) - QML-focused bindings with `nim c` support based on [DOtherSide](https://github.com/filcuc/dotherside/)
* [seaqt-nimqml](https://github.com/seaqt/nimqml-seaqt) - drop-in replacement of `nimqml` using `seaqt` backend (for full Qt access)

## wip

Broadly, the aim is to support the majority of functionality Qt offers, albeit with adaptations for Nim.

General work in progress includes:

* Multiple inheritance - needs emulation in Nim to be developed
* Macros for deriving custom QObject-based types, including signals, slots and properties
* QML integration
