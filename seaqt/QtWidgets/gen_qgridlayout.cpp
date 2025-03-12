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
class VirtualQGridLayout final : public QGridLayout {
	const QGridLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QGridLayout_VTable* QGridLayout_vtbl(const VirtualQGridLayout* self);
	friend void* QGridLayout_vdata(const VirtualQGridLayout* self);
	friend void QGridLayout_setVdata(VirtualQGridLayout* self, void* vdata);

	VirtualQGridLayout(const QGridLayout_VTable* vtbl, void* vdata, QWidget* parent): QGridLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGridLayout(const QGridLayout_VTable* vtbl, void* vdata): QGridLayout(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGridLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGridLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGridLayout_virtualbase_metaObject(const VirtualQGridLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGridLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGridLayout_virtualbase_metacast(VirtualQGridLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGridLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_metacall(VirtualQGridLayout* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QGridLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGridLayout_virtualbase_sizeHint(const VirtualQGridLayout* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QGridLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGridLayout_virtualbase_minimumSize(const VirtualQGridLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QGridLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGridLayout_virtualbase_maximumSize(const VirtualQGridLayout* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QGridLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_hasHeightForWidth(const VirtualQGridLayout* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QGridLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_heightForWidth(const VirtualQGridLayout* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QGridLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_minimumHeightForWidth(const VirtualQGridLayout* self, int param1);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QGridLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_expandingDirections(const VirtualQGridLayout* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGridLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QGridLayout_virtualbase_invalidate(VirtualQGridLayout* self);

	virtual QLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return QGridLayout::itemAt(index);
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QGridLayout_virtualbase_itemAt(const VirtualQGridLayout* self, int index);

	virtual QLayoutItem* takeAt(int index) override {
		if (vtbl->takeAt == 0) {
			return QGridLayout::takeAt(index);
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QGridLayout_virtualbase_takeAt(VirtualQGridLayout* self, int index);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QGridLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_count(const VirtualQGridLayout* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QGridLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGridLayout_virtualbase_setGeometry(VirtualQGridLayout* self, QRect* geometry);

	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItemWithQLayoutItem == 0) {
			QGridLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItemWithQLayoutItem(this, sigval1);

	}

	friend void QGridLayout_virtualbase_addItemWithQLayoutItem(VirtualQGridLayout* self, QLayoutItem* param1);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QGridLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QGridLayout_virtualbase_geometry(const VirtualQGridLayout* self);

	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QGridLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_indexOf(const VirtualQGridLayout* self, QWidget* param1);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QGridLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_isEmpty(const VirtualQGridLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QGridLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QGridLayout_virtualbase_controlTypes(const VirtualQGridLayout* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QGridLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QGridLayout_virtualbase_layout(VirtualQGridLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QGridLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGridLayout_virtualbase_childEvent(VirtualQGridLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGridLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_event(VirtualQGridLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGridLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGridLayout_virtualbase_eventFilter(VirtualQGridLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGridLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGridLayout_virtualbase_timerEvent(VirtualQGridLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGridLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGridLayout_virtualbase_customEvent(VirtualQGridLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGridLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGridLayout_virtualbase_connectNotify(VirtualQGridLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGridLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGridLayout_virtualbase_disconnectNotify(VirtualQGridLayout* self, QMetaMethod* signal);

	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QGridLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QGridLayout_virtualbase_widget(VirtualQGridLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QGridLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QGridLayout_virtualbase_spacerItem(VirtualQGridLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QGridLayout_protectedbase_widgetEvent(VirtualQGridLayout* self, QEvent* param1);
	friend void QGridLayout_protectedbase_addChildLayout(VirtualQGridLayout* self, QLayout* l);
	friend void QGridLayout_protectedbase_addChildWidget(VirtualQGridLayout* self, QWidget* w);
	friend bool QGridLayout_protectedbase_adoptLayout(VirtualQGridLayout* self, QLayout* layout);
	friend QRect* QGridLayout_protectedbase_alignmentRect(const VirtualQGridLayout* self, QRect* param1);
	friend QObject* QGridLayout_protectedbase_sender(const VirtualQGridLayout* self);
	friend int QGridLayout_protectedbase_senderSignalIndex(const VirtualQGridLayout* self);
	friend int QGridLayout_protectedbase_receivers(const VirtualQGridLayout* self, const char* signal);
	friend bool QGridLayout_protectedbase_isSignalConnected(const VirtualQGridLayout* self, QMetaMethod* signal);
};

VirtualQGridLayout* QGridLayout_new(const QGridLayout_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQGridLayout(vtbl, vdata, parent);
}

VirtualQGridLayout* QGridLayout_new2(const QGridLayout_VTable* vtbl, void* vdata) {
	return new VirtualQGridLayout(vtbl, vdata);
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

QMetaObject* QGridLayout_virtualbase_metaObject(const VirtualQGridLayout* self) {

	return (QMetaObject*) self->QGridLayout::metaObject();
}

void* QGridLayout_virtualbase_metacast(VirtualQGridLayout* self, const char* param1) {

	return self->QGridLayout::qt_metacast(param1);
}

int QGridLayout_virtualbase_metacall(VirtualQGridLayout* self, int param1, int param2, void** param3) {

	return self->QGridLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QGridLayout_virtualbase_sizeHint(const VirtualQGridLayout* self) {

	return new QSize(self->QGridLayout::sizeHint());
}

QSize* QGridLayout_virtualbase_minimumSize(const VirtualQGridLayout* self) {

	return new QSize(self->QGridLayout::minimumSize());
}

QSize* QGridLayout_virtualbase_maximumSize(const VirtualQGridLayout* self) {

	return new QSize(self->QGridLayout::maximumSize());
}

bool QGridLayout_virtualbase_hasHeightForWidth(const VirtualQGridLayout* self) {

	return self->QGridLayout::hasHeightForWidth();
}

int QGridLayout_virtualbase_heightForWidth(const VirtualQGridLayout* self, int param1) {

	return self->QGridLayout::heightForWidth(static_cast<int>(param1));
}

int QGridLayout_virtualbase_minimumHeightForWidth(const VirtualQGridLayout* self, int param1) {

	return self->QGridLayout::minimumHeightForWidth(static_cast<int>(param1));
}

int QGridLayout_virtualbase_expandingDirections(const VirtualQGridLayout* self) {

	Qt::Orientations _ret = self->QGridLayout::expandingDirections();
	return static_cast<int>(_ret);
}

void QGridLayout_virtualbase_invalidate(VirtualQGridLayout* self) {

	self->QGridLayout::invalidate();
}

QLayoutItem* QGridLayout_virtualbase_itemAt(const VirtualQGridLayout* self, int index) {

	return self->QGridLayout::itemAt(static_cast<int>(index));
}

QLayoutItem* QGridLayout_virtualbase_takeAt(VirtualQGridLayout* self, int index) {

	return self->QGridLayout::takeAt(static_cast<int>(index));
}

int QGridLayout_virtualbase_count(const VirtualQGridLayout* self) {

	return self->QGridLayout::count();
}

void QGridLayout_virtualbase_setGeometry(VirtualQGridLayout* self, QRect* geometry) {

	self->QGridLayout::setGeometry(*geometry);
}

void QGridLayout_virtualbase_addItemWithQLayoutItem(VirtualQGridLayout* self, QLayoutItem* param1) {

	self->QGridLayout::addItem(param1);
}

QRect* QGridLayout_virtualbase_geometry(const VirtualQGridLayout* self) {

	return new QRect(self->QGridLayout::geometry());
}

int QGridLayout_virtualbase_indexOf(const VirtualQGridLayout* self, QWidget* param1) {

	return self->QGridLayout::indexOf(param1);
}

bool QGridLayout_virtualbase_isEmpty(const VirtualQGridLayout* self) {

	return self->QGridLayout::isEmpty();
}

int QGridLayout_virtualbase_controlTypes(const VirtualQGridLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QGridLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayout* QGridLayout_virtualbase_layout(VirtualQGridLayout* self) {

	return self->QGridLayout::layout();
}

void QGridLayout_virtualbase_childEvent(VirtualQGridLayout* self, QChildEvent* e) {

	self->QGridLayout::childEvent(e);
}

bool QGridLayout_virtualbase_event(VirtualQGridLayout* self, QEvent* event) {

	return self->QGridLayout::event(event);
}

bool QGridLayout_virtualbase_eventFilter(VirtualQGridLayout* self, QObject* watched, QEvent* event) {

	return self->QGridLayout::eventFilter(watched, event);
}

void QGridLayout_virtualbase_timerEvent(VirtualQGridLayout* self, QTimerEvent* event) {

	self->QGridLayout::timerEvent(event);
}

void QGridLayout_virtualbase_customEvent(VirtualQGridLayout* self, QEvent* event) {

	self->QGridLayout::customEvent(event);
}

void QGridLayout_virtualbase_connectNotify(VirtualQGridLayout* self, QMetaMethod* signal) {

	self->QGridLayout::connectNotify(*signal);
}

void QGridLayout_virtualbase_disconnectNotify(VirtualQGridLayout* self, QMetaMethod* signal) {

	self->QGridLayout::disconnectNotify(*signal);
}

QWidget* QGridLayout_virtualbase_widget(VirtualQGridLayout* self) {

	return self->QGridLayout::widget();
}

QSpacerItem* QGridLayout_virtualbase_spacerItem(VirtualQGridLayout* self) {

	return self->QGridLayout::spacerItem();
}

const QMetaObject* QGridLayout_staticMetaObject() { return &QGridLayout::staticMetaObject; }

const QGridLayout_VTable* QGridLayout_vtbl(const VirtualQGridLayout* self) { return self->vtbl; }
void* QGridLayout_vdata(const VirtualQGridLayout* self) { return self->vdata; }
void QGridLayout_setVdata(VirtualQGridLayout* self, void* vdata) { self->vdata = vdata; }

void QGridLayout_protectedbase_widgetEvent(VirtualQGridLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QGridLayout_protectedbase_addChildLayout(VirtualQGridLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QGridLayout_protectedbase_addChildWidget(VirtualQGridLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QGridLayout_protectedbase_adoptLayout(VirtualQGridLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QGridLayout_protectedbase_alignmentRect(const VirtualQGridLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QGridLayout_protectedbase_sender(const VirtualQGridLayout* self) {
	return self->sender();
}

int QGridLayout_protectedbase_senderSignalIndex(const VirtualQGridLayout* self) {
	return self->senderSignalIndex();
}

int QGridLayout_protectedbase_receivers(const VirtualQGridLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QGridLayout_protectedbase_isSignalConnected(const VirtualQGridLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGridLayout_delete(QGridLayout* self) {
	delete self;
}

