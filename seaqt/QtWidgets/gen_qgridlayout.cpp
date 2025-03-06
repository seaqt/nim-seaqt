#include <QChildEvent>
#include <QEvent>
#include <QGridLayout>
#include <QLayout>
#include <QLayoutItem>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qgridlayout.h>
#include "gen_qgridlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGridLayout final : public QGridLayout {
	struct QGridLayout_VTable* vtbl;
public:

	VirtualQGridLayout(struct QGridLayout_VTable* vtbl, QWidget* parent): QGridLayout(parent), vtbl(vtbl) {};
	VirtualQGridLayout(struct QGridLayout_VTable* vtbl): QGridLayout(), vtbl(vtbl) {};

	virtual ~VirtualQGridLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGridLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGridLayout_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGridLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGridLayout_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGridLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QGridLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGridLayout_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QGridLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGridLayout_virtualbase_minimumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QGridLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGridLayout_virtualbase_maximumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QGridLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QGridLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QGridLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QGridLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_expandingDirections(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGridLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QGridLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return QGridLayout::itemAt(index);
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QGridLayout_virtualbase_itemAt(const void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int index) override {
		if (vtbl->takeAt == 0) {
			return QGridLayout::takeAt(index);
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QGridLayout_virtualbase_takeAt(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QGridLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_count(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QGridLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_setGeometry(void* self, QRect* geometry);

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItemWithQLayoutItem == 0) {
			QGridLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItemWithQLayoutItem(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_addItemWithQLayoutItem(void* self, QLayoutItem* param1);

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QGridLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QGridLayout_virtualbase_geometry(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QGridLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_indexOf(const void* self, QWidget* param1);

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QGridLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_isEmpty(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QGridLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_controlTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QGridLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	friend QLayout* QGridLayout_virtualbase_layout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QGridLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_childEvent(void* self, QChildEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGridLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGridLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGridLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGridLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGridLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGridLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGridLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QGridLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	friend QWidget* QGridLayout_virtualbase_widget(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QGridLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	friend QSpacerItem* QGridLayout_virtualbase_spacerItem(void* self);

	// Wrappers to allow calling protected methods:
	friend void QGridLayout_protectedbase_widgetEvent(void* self, QEvent* param1);
	friend void QGridLayout_protectedbase_addChildLayout(void* self, QLayout* l);
	friend void QGridLayout_protectedbase_addChildWidget(void* self, QWidget* w);
	friend bool QGridLayout_protectedbase_adoptLayout(void* self, QLayout* layout);
	friend QRect* QGridLayout_protectedbase_alignmentRect(const void* self, QRect* param1);
	friend QObject* QGridLayout_protectedbase_sender(const void* self);
	friend int QGridLayout_protectedbase_senderSignalIndex(const void* self);
	friend int QGridLayout_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGridLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGridLayout* QGridLayout_new(struct QGridLayout_VTable* vtbl, QWidget* parent) {
	return new VirtualQGridLayout(vtbl, parent);
}

QGridLayout* QGridLayout_new2(struct QGridLayout_VTable* vtbl) {
	return new VirtualQGridLayout(vtbl);
}

void QGridLayout_virtbase(QGridLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QGridLayout_metaObject(const QGridLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGridLayout_metacast(QGridLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGridLayout_metacall(QGridLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGridLayout_tr(const char* s) {
	QString _ret = QGridLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGridLayout_trUtf8(const char* s) {
	QString _ret = QGridLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QGridLayout_sizeHint(const QGridLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QGridLayout_minimumSize(const QGridLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QGridLayout_maximumSize(const QGridLayout* self) {
	return new QSize(self->maximumSize());
}

void QGridLayout_setHorizontalSpacing(QGridLayout* self, int spacing) {
	self->setHorizontalSpacing(static_cast<int>(spacing));
}

int QGridLayout_horizontalSpacing(const QGridLayout* self) {
	return self->horizontalSpacing();
}

void QGridLayout_setVerticalSpacing(QGridLayout* self, int spacing) {
	self->setVerticalSpacing(static_cast<int>(spacing));
}

int QGridLayout_verticalSpacing(const QGridLayout* self) {
	return self->verticalSpacing();
}

void QGridLayout_setSpacing(QGridLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

int QGridLayout_spacing(const QGridLayout* self) {
	return self->spacing();
}

void QGridLayout_setRowStretch(QGridLayout* self, int row, int stretch) {
	self->setRowStretch(static_cast<int>(row), static_cast<int>(stretch));
}

void QGridLayout_setColumnStretch(QGridLayout* self, int column, int stretch) {
	self->setColumnStretch(static_cast<int>(column), static_cast<int>(stretch));
}

int QGridLayout_rowStretch(const QGridLayout* self, int row) {
	return self->rowStretch(static_cast<int>(row));
}

int QGridLayout_columnStretch(const QGridLayout* self, int column) {
	return self->columnStretch(static_cast<int>(column));
}

void QGridLayout_setRowMinimumHeight(QGridLayout* self, int row, int minSize) {
	self->setRowMinimumHeight(static_cast<int>(row), static_cast<int>(minSize));
}

void QGridLayout_setColumnMinimumWidth(QGridLayout* self, int column, int minSize) {
	self->setColumnMinimumWidth(static_cast<int>(column), static_cast<int>(minSize));
}

int QGridLayout_rowMinimumHeight(const QGridLayout* self, int row) {
	return self->rowMinimumHeight(static_cast<int>(row));
}

int QGridLayout_columnMinimumWidth(const QGridLayout* self, int column) {
	return self->columnMinimumWidth(static_cast<int>(column));
}

int QGridLayout_columnCount(const QGridLayout* self) {
	return self->columnCount();
}

int QGridLayout_rowCount(const QGridLayout* self) {
	return self->rowCount();
}

QRect* QGridLayout_cellRect(const QGridLayout* self, int row, int column) {
	return new QRect(self->cellRect(static_cast<int>(row), static_cast<int>(column)));
}

bool QGridLayout_hasHeightForWidth(const QGridLayout* self) {
	return self->hasHeightForWidth();
}

int QGridLayout_heightForWidth(const QGridLayout* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QGridLayout_minimumHeightForWidth(const QGridLayout* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

int QGridLayout_expandingDirections(const QGridLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

void QGridLayout_invalidate(QGridLayout* self) {
	self->invalidate();
}

void QGridLayout_addWidget(QGridLayout* self, QWidget* w) {
	self->addWidget(w);
}

void QGridLayout_addWidget2(QGridLayout* self, QWidget* param1, int row, int column) {
	self->addWidget(param1, static_cast<int>(row), static_cast<int>(column));
}

void QGridLayout_addWidget3(QGridLayout* self, QWidget* param1, int row, int column, int rowSpan, int columnSpan) {
	self->addWidget(param1, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan));
}

void QGridLayout_addLayout(QGridLayout* self, QLayout* param1, int row, int column) {
	self->addLayout(param1, static_cast<int>(row), static_cast<int>(column));
}

void QGridLayout_addLayout2(QGridLayout* self, QLayout* param1, int row, int column, int rowSpan, int columnSpan) {
	self->addLayout(param1, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan));
}

void QGridLayout_setOriginCorner(QGridLayout* self, int originCorner) {
	self->setOriginCorner(static_cast<Qt::Corner>(originCorner));
}

int QGridLayout_originCorner(const QGridLayout* self) {
	Qt::Corner _ret = self->originCorner();
	return static_cast<int>(_ret);
}

QLayoutItem* QGridLayout_itemAt(const QGridLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

QLayoutItem* QGridLayout_itemAtPosition(const QGridLayout* self, int row, int column) {
	return self->itemAtPosition(static_cast<int>(row), static_cast<int>(column));
}

QLayoutItem* QGridLayout_takeAt(QGridLayout* self, int index) {
	return self->takeAt(static_cast<int>(index));
}

int QGridLayout_count(const QGridLayout* self) {
	return self->count();
}

void QGridLayout_setGeometry(QGridLayout* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

void QGridLayout_addItem(QGridLayout* self, QLayoutItem* item, int row, int column) {
	self->addItem(item, static_cast<int>(row), static_cast<int>(column));
}

void QGridLayout_setDefaultPositioning(QGridLayout* self, int n, int orient) {
	self->setDefaultPositioning(static_cast<int>(n), static_cast<Qt::Orientation>(orient));
}

void QGridLayout_getItemPosition(const QGridLayout* self, int idx, int* row, int* column, int* rowSpan, int* columnSpan) {
	self->getItemPosition(static_cast<int>(idx), static_cast<int*>(row), static_cast<int*>(column), static_cast<int*>(rowSpan), static_cast<int*>(columnSpan));
}

struct miqt_string QGridLayout_tr2(const char* s, const char* c) {
	QString _ret = QGridLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGridLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QGridLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGridLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QGridLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGridLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGridLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGridLayout_addWidget4(QGridLayout* self, QWidget* param1, int row, int column, int param4) {
	self->addWidget(param1, static_cast<int>(row), static_cast<int>(column), static_cast<Qt::Alignment>(param4));
}

void QGridLayout_addWidget6(QGridLayout* self, QWidget* param1, int row, int column, int rowSpan, int columnSpan, int param6) {
	self->addWidget(param1, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan), static_cast<Qt::Alignment>(param6));
}

void QGridLayout_addLayout4(QGridLayout* self, QLayout* param1, int row, int column, int param4) {
	self->addLayout(param1, static_cast<int>(row), static_cast<int>(column), static_cast<Qt::Alignment>(param4));
}

void QGridLayout_addLayout6(QGridLayout* self, QLayout* param1, int row, int column, int rowSpan, int columnSpan, int param6) {
	self->addLayout(param1, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan), static_cast<Qt::Alignment>(param6));
}

void QGridLayout_addItem4(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan) {
	self->addItem(item, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan));
}

void QGridLayout_addItem5(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan, int columnSpan) {
	self->addItem(item, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan));
}

void QGridLayout_addItem6(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan, int columnSpan, int param6) {
	self->addItem(item, static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan), static_cast<Qt::Alignment>(param6));
}

QMetaObject* QGridLayout_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGridLayout*)(self) )->QGridLayout::metaObject();

}

void* QGridLayout_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::qt_metacast(param1);

}

int QGridLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QGridLayout_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQGridLayout*)(self) )->QGridLayout::sizeHint());

}

QSize* QGridLayout_virtualbase_minimumSize(const void* self) {

	return new QSize(( (const VirtualQGridLayout*)(self) )->QGridLayout::minimumSize());

}

QSize* QGridLayout_virtualbase_maximumSize(const void* self) {

	return new QSize(( (const VirtualQGridLayout*)(self) )->QGridLayout::maximumSize());

}

bool QGridLayout_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::hasHeightForWidth();

}

int QGridLayout_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::heightForWidth(static_cast<int>(param1));

}

int QGridLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::minimumHeightForWidth(static_cast<int>(param1));

}

int QGridLayout_virtualbase_expandingDirections(const void* self) {

	Qt::Orientations _ret = ( (const VirtualQGridLayout*)(self) )->QGridLayout::expandingDirections();
	return static_cast<int>(_ret);

}

void QGridLayout_virtualbase_invalidate(void* self) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::invalidate();

}

QLayoutItem* QGridLayout_virtualbase_itemAt(const void* self, int index) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::itemAt(static_cast<int>(index));

}

QLayoutItem* QGridLayout_virtualbase_takeAt(void* self, int index) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::takeAt(static_cast<int>(index));

}

int QGridLayout_virtualbase_count(const void* self) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::count();

}

void QGridLayout_virtualbase_setGeometry(void* self, QRect* geometry) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::setGeometry(*geometry);

}

void QGridLayout_virtualbase_addItemWithQLayoutItem(void* self, QLayoutItem* param1) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::addItem(param1);

}

QRect* QGridLayout_virtualbase_geometry(const void* self) {

	return new QRect(( (const VirtualQGridLayout*)(self) )->QGridLayout::geometry());

}

int QGridLayout_virtualbase_indexOf(const void* self, QWidget* param1) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::indexOf(param1);

}

bool QGridLayout_virtualbase_isEmpty(const void* self) {

	return ( (const VirtualQGridLayout*)(self) )->QGridLayout::isEmpty();

}

int QGridLayout_virtualbase_controlTypes(const void* self) {

	QSizePolicy::ControlTypes _ret = ( (const VirtualQGridLayout*)(self) )->QGridLayout::controlTypes();
	return static_cast<int>(_ret);

}

QLayout* QGridLayout_virtualbase_layout(void* self) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::layout();

}

void QGridLayout_virtualbase_childEvent(void* self, QChildEvent* e) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::childEvent(e);

}

bool QGridLayout_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::event(event);

}

bool QGridLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::eventFilter(watched, event);

}

void QGridLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::timerEvent(event);

}

void QGridLayout_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::customEvent(event);

}

void QGridLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::connectNotify(*signal);

}

void QGridLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGridLayout*)(self) )->QGridLayout::disconnectNotify(*signal);

}

QWidget* QGridLayout_virtualbase_widget(void* self) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::widget();

}

QSpacerItem* QGridLayout_virtualbase_spacerItem(void* self) {

	return ( (VirtualQGridLayout*)(self) )->QGridLayout::spacerItem();

}

const QMetaObject* QGridLayout_staticMetaObject() { return &QGridLayout::staticMetaObject; }
void QGridLayout_protectedbase_widgetEvent(void* self, QEvent* param1) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	self_cast->widgetEvent(param1);

}

void QGridLayout_protectedbase_addChildLayout(void* self, QLayout* l) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	self_cast->addChildLayout(l);

}

void QGridLayout_protectedbase_addChildWidget(void* self, QWidget* w) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	self_cast->addChildWidget(w);

}

bool QGridLayout_protectedbase_adoptLayout(void* self, QLayout* layout) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	return self_cast->adoptLayout(layout);

}

QRect* QGridLayout_protectedbase_alignmentRect(const void* self, QRect* param1) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QGridLayout_protectedbase_sender(const void* self) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	return self_cast->sender();

}

int QGridLayout_protectedbase_senderSignalIndex(const void* self) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGridLayout_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGridLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQGridLayout* self_cast = static_cast<VirtualQGridLayout*>( (QGridLayout*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGridLayout_delete(QGridLayout* self) {
	delete self;
}

