#include <QBoxLayout>
#include <QChildEvent>
#include <QEvent>
#include <QHBoxLayout>
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
#include <QVBoxLayout>
#include <QWidget>
#include <qboxlayout.h>
#include "gen_qboxlayout.h"
class VirtualQBoxLayout final : public QBoxLayout {
	const QBoxLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QBoxLayout_VTable* QBoxLayout_vtbl(const VirtualQBoxLayout* self);
	friend void* QBoxLayout_vdata(const VirtualQBoxLayout* self);
	friend void QBoxLayout_setVdata(VirtualQBoxLayout* self, void* vdata);

	VirtualQBoxLayout(const QBoxLayout_VTable* vtbl, void* vdata, QBoxLayout::Direction param1): QBoxLayout(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQBoxLayout(const QBoxLayout_VTable* vtbl, void* vdata, QBoxLayout::Direction param1, QWidget* parent): QBoxLayout(param1, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQBoxLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QBoxLayout_virtualbase_metaObject(const VirtualQBoxLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QBoxLayout_virtualbase_metacast(VirtualQBoxLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QBoxLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_metacall(VirtualQBoxLayout* self, int param1, int param2, void** param3);

	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_addItem(VirtualQBoxLayout* self, QLayoutItem* param1);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QBoxLayout_virtualbase_sizeHint(const VirtualQBoxLayout* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QBoxLayout_virtualbase_minimumSize(const VirtualQBoxLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QBoxLayout_virtualbase_maximumSize(const VirtualQBoxLayout* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_hasHeightForWidth(const VirtualQBoxLayout* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_heightForWidth(const VirtualQBoxLayout* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQBoxLayout* self, int param1);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_expandingDirections(const VirtualQBoxLayout* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QBoxLayout_virtualbase_invalidate(VirtualQBoxLayout* self);

	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QBoxLayout_virtualbase_itemAt(const VirtualQBoxLayout* self, int param1);

	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QBoxLayout_virtualbase_takeAt(VirtualQBoxLayout* self, int param1);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QBoxLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_count(const VirtualQBoxLayout* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_setGeometry(VirtualQBoxLayout* self, QRect* geometry);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QBoxLayout_virtualbase_geometry(const VirtualQBoxLayout* self);

	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_indexOf(const VirtualQBoxLayout* self, QWidget* param1);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_isEmpty(const VirtualQBoxLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_controlTypes(const VirtualQBoxLayout* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QBoxLayout_virtualbase_layout(VirtualQBoxLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_childEvent(VirtualQBoxLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_event(VirtualQBoxLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_eventFilter(VirtualQBoxLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_timerEvent(VirtualQBoxLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_customEvent(VirtualQBoxLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_connectNotify(VirtualQBoxLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QBoxLayout_virtualbase_disconnectNotify(VirtualQBoxLayout* self, QMetaMethod* signal);

	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QBoxLayout_virtualbase_widget(VirtualQBoxLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QBoxLayout_virtualbase_spacerItem(VirtualQBoxLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QBoxLayout_protectedbase_widgetEvent(VirtualQBoxLayout* self, QEvent* param1);
	friend void QBoxLayout_protectedbase_addChildLayout(VirtualQBoxLayout* self, QLayout* l);
	friend void QBoxLayout_protectedbase_addChildWidget(VirtualQBoxLayout* self, QWidget* w);
	friend bool QBoxLayout_protectedbase_adoptLayout(VirtualQBoxLayout* self, QLayout* layout);
	friend QRect* QBoxLayout_protectedbase_alignmentRect(const VirtualQBoxLayout* self, QRect* param1);
	friend QObject* QBoxLayout_protectedbase_sender(const VirtualQBoxLayout* self);
	friend int QBoxLayout_protectedbase_senderSignalIndex(const VirtualQBoxLayout* self);
	friend int QBoxLayout_protectedbase_receivers(const VirtualQBoxLayout* self, const char* signal);
	friend bool QBoxLayout_protectedbase_isSignalConnected(const VirtualQBoxLayout* self, QMetaMethod* signal);
};

VirtualQBoxLayout* QBoxLayout_new(const QBoxLayout_VTable* vtbl, void* vdata, int param1) {
	return new VirtualQBoxLayout(vtbl, vdata, static_cast<QBoxLayout::Direction>(param1));
}

VirtualQBoxLayout* QBoxLayout_new2(const QBoxLayout_VTable* vtbl, void* vdata, int param1, QWidget* parent) {
	return new VirtualQBoxLayout(vtbl, vdata, static_cast<QBoxLayout::Direction>(param1), parent);
}

void QBoxLayout_virtbase(QBoxLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QBoxLayout_metaObject(const QBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QBoxLayout_metacast(QBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QBoxLayout_metacall(QBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QBoxLayout_tr(const char* s) {
	QString _ret = QBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_trUtf8(const char* s) {
	QString _ret = QBoxLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QBoxLayout_direction(const QBoxLayout* self) {
	QBoxLayout::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

void QBoxLayout_setDirection(QBoxLayout* self, int direction) {
	self->setDirection(static_cast<QBoxLayout::Direction>(direction));
}

void QBoxLayout_addSpacing(QBoxLayout* self, int size) {
	self->addSpacing(static_cast<int>(size));
}

void QBoxLayout_addStretch(QBoxLayout* self) {
	self->addStretch();
}

void QBoxLayout_addSpacerItem(QBoxLayout* self, QSpacerItem* spacerItem) {
	self->addSpacerItem(spacerItem);
}

void QBoxLayout_addWidget(QBoxLayout* self, QWidget* param1) {
	self->addWidget(param1);
}

void QBoxLayout_addLayout(QBoxLayout* self, QLayout* layout) {
	self->addLayout(layout);
}

void QBoxLayout_addStrut(QBoxLayout* self, int param1) {
	self->addStrut(static_cast<int>(param1));
}

void QBoxLayout_addItem(QBoxLayout* self, QLayoutItem* param1) {
	self->addItem(param1);
}

void QBoxLayout_insertSpacing(QBoxLayout* self, int index, int size) {
	self->insertSpacing(static_cast<int>(index), static_cast<int>(size));
}

void QBoxLayout_insertStretch(QBoxLayout* self, int index) {
	self->insertStretch(static_cast<int>(index));
}

void QBoxLayout_insertSpacerItem(QBoxLayout* self, int index, QSpacerItem* spacerItem) {
	self->insertSpacerItem(static_cast<int>(index), spacerItem);
}

void QBoxLayout_insertWidget(QBoxLayout* self, int index, QWidget* widget) {
	self->insertWidget(static_cast<int>(index), widget);
}

void QBoxLayout_insertLayout(QBoxLayout* self, int index, QLayout* layout) {
	self->insertLayout(static_cast<int>(index), layout);
}

void QBoxLayout_insertItem(QBoxLayout* self, int index, QLayoutItem* param2) {
	self->insertItem(static_cast<int>(index), param2);
}

int QBoxLayout_spacing(const QBoxLayout* self) {
	return self->spacing();
}

void QBoxLayout_setSpacing(QBoxLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

bool QBoxLayout_setStretchFactor(QBoxLayout* self, QWidget* w, int stretch) {
	return self->setStretchFactor(w, static_cast<int>(stretch));
}

bool QBoxLayout_setStretchFactor2(QBoxLayout* self, QLayout* l, int stretch) {
	return self->setStretchFactor(l, static_cast<int>(stretch));
}

void QBoxLayout_setStretch(QBoxLayout* self, int index, int stretch) {
	self->setStretch(static_cast<int>(index), static_cast<int>(stretch));
}

int QBoxLayout_stretch(const QBoxLayout* self, int index) {
	return self->stretch(static_cast<int>(index));
}

QSize* QBoxLayout_sizeHint(const QBoxLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QBoxLayout_minimumSize(const QBoxLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QBoxLayout_maximumSize(const QBoxLayout* self) {
	return new QSize(self->maximumSize());
}

bool QBoxLayout_hasHeightForWidth(const QBoxLayout* self) {
	return self->hasHeightForWidth();
}

int QBoxLayout_heightForWidth(const QBoxLayout* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QBoxLayout_minimumHeightForWidth(const QBoxLayout* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

int QBoxLayout_expandingDirections(const QBoxLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

void QBoxLayout_invalidate(QBoxLayout* self) {
	self->invalidate();
}

QLayoutItem* QBoxLayout_itemAt(const QBoxLayout* self, int param1) {
	return self->itemAt(static_cast<int>(param1));
}

QLayoutItem* QBoxLayout_takeAt(QBoxLayout* self, int param1) {
	return self->takeAt(static_cast<int>(param1));
}

int QBoxLayout_count(const QBoxLayout* self) {
	return self->count();
}

void QBoxLayout_setGeometry(QBoxLayout* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

struct miqt_string QBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QBoxLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QBoxLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QBoxLayout_addStretch1(QBoxLayout* self, int stretch) {
	self->addStretch(static_cast<int>(stretch));
}

void QBoxLayout_addWidget2(QBoxLayout* self, QWidget* param1, int stretch) {
	self->addWidget(param1, static_cast<int>(stretch));
}

void QBoxLayout_addWidget3(QBoxLayout* self, QWidget* param1, int stretch, int alignment) {
	self->addWidget(param1, static_cast<int>(stretch), static_cast<Qt::Alignment>(alignment));
}

void QBoxLayout_addLayout2(QBoxLayout* self, QLayout* layout, int stretch) {
	self->addLayout(layout, static_cast<int>(stretch));
}

void QBoxLayout_insertStretch2(QBoxLayout* self, int index, int stretch) {
	self->insertStretch(static_cast<int>(index), static_cast<int>(stretch));
}

void QBoxLayout_insertWidget3(QBoxLayout* self, int index, QWidget* widget, int stretch) {
	self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch));
}

void QBoxLayout_insertWidget4(QBoxLayout* self, int index, QWidget* widget, int stretch, int alignment) {
	self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch), static_cast<Qt::Alignment>(alignment));
}

void QBoxLayout_insertLayout3(QBoxLayout* self, int index, QLayout* layout, int stretch) {
	self->insertLayout(static_cast<int>(index), layout, static_cast<int>(stretch));
}

QMetaObject* QBoxLayout_virtualbase_metaObject(const VirtualQBoxLayout* self) {

	return (QMetaObject*) self->QBoxLayout::metaObject();
}

void* QBoxLayout_virtualbase_metacast(VirtualQBoxLayout* self, const char* param1) {

	return self->QBoxLayout::qt_metacast(param1);
}

int QBoxLayout_virtualbase_metacall(VirtualQBoxLayout* self, int param1, int param2, void** param3) {

	return self->QBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QBoxLayout_virtualbase_addItem(VirtualQBoxLayout* self, QLayoutItem* param1) {

	self->QBoxLayout::addItem(param1);
}

QSize* QBoxLayout_virtualbase_sizeHint(const VirtualQBoxLayout* self) {

	return new QSize(self->QBoxLayout::sizeHint());
}

QSize* QBoxLayout_virtualbase_minimumSize(const VirtualQBoxLayout* self) {

	return new QSize(self->QBoxLayout::minimumSize());
}

QSize* QBoxLayout_virtualbase_maximumSize(const VirtualQBoxLayout* self) {

	return new QSize(self->QBoxLayout::maximumSize());
}

bool QBoxLayout_virtualbase_hasHeightForWidth(const VirtualQBoxLayout* self) {

	return self->QBoxLayout::hasHeightForWidth();
}

int QBoxLayout_virtualbase_heightForWidth(const VirtualQBoxLayout* self, int param1) {

	return self->QBoxLayout::heightForWidth(static_cast<int>(param1));
}

int QBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQBoxLayout* self, int param1) {

	return self->QBoxLayout::minimumHeightForWidth(static_cast<int>(param1));
}

int QBoxLayout_virtualbase_expandingDirections(const VirtualQBoxLayout* self) {

	Qt::Orientations _ret = self->QBoxLayout::expandingDirections();
	return static_cast<int>(_ret);
}

void QBoxLayout_virtualbase_invalidate(VirtualQBoxLayout* self) {

	self->QBoxLayout::invalidate();
}

QLayoutItem* QBoxLayout_virtualbase_itemAt(const VirtualQBoxLayout* self, int param1) {

	return self->QBoxLayout::itemAt(static_cast<int>(param1));
}

QLayoutItem* QBoxLayout_virtualbase_takeAt(VirtualQBoxLayout* self, int param1) {

	return self->QBoxLayout::takeAt(static_cast<int>(param1));
}

int QBoxLayout_virtualbase_count(const VirtualQBoxLayout* self) {

	return self->QBoxLayout::count();
}

void QBoxLayout_virtualbase_setGeometry(VirtualQBoxLayout* self, QRect* geometry) {

	self->QBoxLayout::setGeometry(*geometry);
}

QRect* QBoxLayout_virtualbase_geometry(const VirtualQBoxLayout* self) {

	return new QRect(self->QBoxLayout::geometry());
}

int QBoxLayout_virtualbase_indexOf(const VirtualQBoxLayout* self, QWidget* param1) {

	return self->QBoxLayout::indexOf(param1);
}

bool QBoxLayout_virtualbase_isEmpty(const VirtualQBoxLayout* self) {

	return self->QBoxLayout::isEmpty();
}

int QBoxLayout_virtualbase_controlTypes(const VirtualQBoxLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QBoxLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayout* QBoxLayout_virtualbase_layout(VirtualQBoxLayout* self) {

	return self->QBoxLayout::layout();
}

void QBoxLayout_virtualbase_childEvent(VirtualQBoxLayout* self, QChildEvent* e) {

	self->QBoxLayout::childEvent(e);
}

bool QBoxLayout_virtualbase_event(VirtualQBoxLayout* self, QEvent* event) {

	return self->QBoxLayout::event(event);
}

bool QBoxLayout_virtualbase_eventFilter(VirtualQBoxLayout* self, QObject* watched, QEvent* event) {

	return self->QBoxLayout::eventFilter(watched, event);
}

void QBoxLayout_virtualbase_timerEvent(VirtualQBoxLayout* self, QTimerEvent* event) {

	self->QBoxLayout::timerEvent(event);
}

void QBoxLayout_virtualbase_customEvent(VirtualQBoxLayout* self, QEvent* event) {

	self->QBoxLayout::customEvent(event);
}

void QBoxLayout_virtualbase_connectNotify(VirtualQBoxLayout* self, QMetaMethod* signal) {

	self->QBoxLayout::connectNotify(*signal);
}

void QBoxLayout_virtualbase_disconnectNotify(VirtualQBoxLayout* self, QMetaMethod* signal) {

	self->QBoxLayout::disconnectNotify(*signal);
}

QWidget* QBoxLayout_virtualbase_widget(VirtualQBoxLayout* self) {

	return self->QBoxLayout::widget();
}

QSpacerItem* QBoxLayout_virtualbase_spacerItem(VirtualQBoxLayout* self) {

	return self->QBoxLayout::spacerItem();
}

const QMetaObject* QBoxLayout_staticMetaObject() { return &QBoxLayout::staticMetaObject; }

const QBoxLayout_VTable* QBoxLayout_vtbl(const VirtualQBoxLayout* self) { return self->vtbl; }
void* QBoxLayout_vdata(const VirtualQBoxLayout* self) { return self->vdata; }
void QBoxLayout_setVdata(VirtualQBoxLayout* self, void* vdata) { self->vdata = vdata; }

void QBoxLayout_protectedbase_widgetEvent(VirtualQBoxLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QBoxLayout_protectedbase_addChildLayout(VirtualQBoxLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QBoxLayout_protectedbase_addChildWidget(VirtualQBoxLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QBoxLayout_protectedbase_adoptLayout(VirtualQBoxLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QBoxLayout_protectedbase_alignmentRect(const VirtualQBoxLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QBoxLayout_protectedbase_sender(const VirtualQBoxLayout* self) {
	return self->sender();
}

int QBoxLayout_protectedbase_senderSignalIndex(const VirtualQBoxLayout* self) {
	return self->senderSignalIndex();
}

int QBoxLayout_protectedbase_receivers(const VirtualQBoxLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QBoxLayout_protectedbase_isSignalConnected(const VirtualQBoxLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QBoxLayout_delete(QBoxLayout* self) {
	delete self;
}

class VirtualQHBoxLayout final : public QHBoxLayout {
	const QHBoxLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QHBoxLayout_VTable* QHBoxLayout_vtbl(const VirtualQHBoxLayout* self);
	friend void* QHBoxLayout_vdata(const VirtualQHBoxLayout* self);
	friend void QHBoxLayout_setVdata(VirtualQHBoxLayout* self, void* vdata);

	VirtualQHBoxLayout(const QHBoxLayout_VTable* vtbl, void* vdata, QWidget* parent): QHBoxLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQHBoxLayout(const QHBoxLayout_VTable* vtbl, void* vdata): QHBoxLayout(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQHBoxLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QHBoxLayout_virtualbase_metaObject(const VirtualQHBoxLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QHBoxLayout_virtualbase_metacast(VirtualQHBoxLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHBoxLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_metacall(VirtualQHBoxLayout* self, int param1, int param2, void** param3);

	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QHBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_addItem(VirtualQHBoxLayout* self, QLayoutItem* param1);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QHBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHBoxLayout_virtualbase_sizeHint(const VirtualQHBoxLayout* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QHBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHBoxLayout_virtualbase_minimumSize(const VirtualQHBoxLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QHBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHBoxLayout_virtualbase_maximumSize(const VirtualQHBoxLayout* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QHBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_hasHeightForWidth(const VirtualQHBoxLayout* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QHBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_heightForWidth(const VirtualQHBoxLayout* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QHBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQHBoxLayout* self, int param1);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QHBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_expandingDirections(const VirtualQHBoxLayout* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QHBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QHBoxLayout_virtualbase_invalidate(VirtualQHBoxLayout* self);

	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QHBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QHBoxLayout_virtualbase_itemAt(const VirtualQHBoxLayout* self, int param1);

	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QHBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QHBoxLayout_virtualbase_takeAt(VirtualQHBoxLayout* self, int param1);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QHBoxLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_count(const VirtualQHBoxLayout* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QHBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_setGeometry(VirtualQHBoxLayout* self, QRect* geometry);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QHBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QHBoxLayout_virtualbase_geometry(const VirtualQHBoxLayout* self);

	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QHBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_indexOf(const VirtualQHBoxLayout* self, QWidget* param1);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QHBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_isEmpty(const VirtualQHBoxLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QHBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_controlTypes(const VirtualQHBoxLayout* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QHBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QHBoxLayout_virtualbase_layout(VirtualQHBoxLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QHBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_childEvent(VirtualQHBoxLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QHBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_event(VirtualQHBoxLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_eventFilter(VirtualQHBoxLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_timerEvent(VirtualQHBoxLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_customEvent(VirtualQHBoxLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_connectNotify(VirtualQHBoxLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_disconnectNotify(VirtualQHBoxLayout* self, QMetaMethod* signal);

	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QHBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QHBoxLayout_virtualbase_widget(VirtualQHBoxLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QHBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QHBoxLayout_virtualbase_spacerItem(VirtualQHBoxLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QHBoxLayout_protectedbase_widgetEvent(VirtualQHBoxLayout* self, QEvent* param1);
	friend void QHBoxLayout_protectedbase_addChildLayout(VirtualQHBoxLayout* self, QLayout* l);
	friend void QHBoxLayout_protectedbase_addChildWidget(VirtualQHBoxLayout* self, QWidget* w);
	friend bool QHBoxLayout_protectedbase_adoptLayout(VirtualQHBoxLayout* self, QLayout* layout);
	friend QRect* QHBoxLayout_protectedbase_alignmentRect(const VirtualQHBoxLayout* self, QRect* param1);
	friend QObject* QHBoxLayout_protectedbase_sender(const VirtualQHBoxLayout* self);
	friend int QHBoxLayout_protectedbase_senderSignalIndex(const VirtualQHBoxLayout* self);
	friend int QHBoxLayout_protectedbase_receivers(const VirtualQHBoxLayout* self, const char* signal);
	friend bool QHBoxLayout_protectedbase_isSignalConnected(const VirtualQHBoxLayout* self, QMetaMethod* signal);
};

VirtualQHBoxLayout* QHBoxLayout_new(const QHBoxLayout_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQHBoxLayout(vtbl, vdata, parent);
}

VirtualQHBoxLayout* QHBoxLayout_new2(const QHBoxLayout_VTable* vtbl, void* vdata) {
	return new VirtualQHBoxLayout(vtbl, vdata);
}

void QHBoxLayout_virtbase(QHBoxLayout* src, QBoxLayout** outptr_QBoxLayout) {
	*outptr_QBoxLayout = static_cast<QBoxLayout*>(src);
}

QMetaObject* QHBoxLayout_metaObject(const QHBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHBoxLayout_metacast(QHBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHBoxLayout_metacall(QHBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHBoxLayout_tr(const char* s) {
	QString _ret = QHBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_trUtf8(const char* s) {
	QString _ret = QHBoxLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QHBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QHBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QHBoxLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QHBoxLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHBoxLayout_virtualbase_metaObject(const VirtualQHBoxLayout* self) {

	return (QMetaObject*) self->QHBoxLayout::metaObject();
}

void* QHBoxLayout_virtualbase_metacast(VirtualQHBoxLayout* self, const char* param1) {

	return self->QHBoxLayout::qt_metacast(param1);
}

int QHBoxLayout_virtualbase_metacall(VirtualQHBoxLayout* self, int param1, int param2, void** param3) {

	return self->QHBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QHBoxLayout_virtualbase_addItem(VirtualQHBoxLayout* self, QLayoutItem* param1) {

	self->QHBoxLayout::addItem(param1);
}

QSize* QHBoxLayout_virtualbase_sizeHint(const VirtualQHBoxLayout* self) {

	return new QSize(self->QHBoxLayout::sizeHint());
}

QSize* QHBoxLayout_virtualbase_minimumSize(const VirtualQHBoxLayout* self) {

	return new QSize(self->QHBoxLayout::minimumSize());
}

QSize* QHBoxLayout_virtualbase_maximumSize(const VirtualQHBoxLayout* self) {

	return new QSize(self->QHBoxLayout::maximumSize());
}

bool QHBoxLayout_virtualbase_hasHeightForWidth(const VirtualQHBoxLayout* self) {

	return self->QHBoxLayout::hasHeightForWidth();
}

int QHBoxLayout_virtualbase_heightForWidth(const VirtualQHBoxLayout* self, int param1) {

	return self->QHBoxLayout::heightForWidth(static_cast<int>(param1));
}

int QHBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQHBoxLayout* self, int param1) {

	return self->QHBoxLayout::minimumHeightForWidth(static_cast<int>(param1));
}

int QHBoxLayout_virtualbase_expandingDirections(const VirtualQHBoxLayout* self) {

	Qt::Orientations _ret = self->QHBoxLayout::expandingDirections();
	return static_cast<int>(_ret);
}

void QHBoxLayout_virtualbase_invalidate(VirtualQHBoxLayout* self) {

	self->QHBoxLayout::invalidate();
}

QLayoutItem* QHBoxLayout_virtualbase_itemAt(const VirtualQHBoxLayout* self, int param1) {

	return self->QHBoxLayout::itemAt(static_cast<int>(param1));
}

QLayoutItem* QHBoxLayout_virtualbase_takeAt(VirtualQHBoxLayout* self, int param1) {

	return self->QHBoxLayout::takeAt(static_cast<int>(param1));
}

int QHBoxLayout_virtualbase_count(const VirtualQHBoxLayout* self) {

	return self->QHBoxLayout::count();
}

void QHBoxLayout_virtualbase_setGeometry(VirtualQHBoxLayout* self, QRect* geometry) {

	self->QHBoxLayout::setGeometry(*geometry);
}

QRect* QHBoxLayout_virtualbase_geometry(const VirtualQHBoxLayout* self) {

	return new QRect(self->QHBoxLayout::geometry());
}

int QHBoxLayout_virtualbase_indexOf(const VirtualQHBoxLayout* self, QWidget* param1) {

	return self->QHBoxLayout::indexOf(param1);
}

bool QHBoxLayout_virtualbase_isEmpty(const VirtualQHBoxLayout* self) {

	return self->QHBoxLayout::isEmpty();
}

int QHBoxLayout_virtualbase_controlTypes(const VirtualQHBoxLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QHBoxLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayout* QHBoxLayout_virtualbase_layout(VirtualQHBoxLayout* self) {

	return self->QHBoxLayout::layout();
}

void QHBoxLayout_virtualbase_childEvent(VirtualQHBoxLayout* self, QChildEvent* e) {

	self->QHBoxLayout::childEvent(e);
}

bool QHBoxLayout_virtualbase_event(VirtualQHBoxLayout* self, QEvent* event) {

	return self->QHBoxLayout::event(event);
}

bool QHBoxLayout_virtualbase_eventFilter(VirtualQHBoxLayout* self, QObject* watched, QEvent* event) {

	return self->QHBoxLayout::eventFilter(watched, event);
}

void QHBoxLayout_virtualbase_timerEvent(VirtualQHBoxLayout* self, QTimerEvent* event) {

	self->QHBoxLayout::timerEvent(event);
}

void QHBoxLayout_virtualbase_customEvent(VirtualQHBoxLayout* self, QEvent* event) {

	self->QHBoxLayout::customEvent(event);
}

void QHBoxLayout_virtualbase_connectNotify(VirtualQHBoxLayout* self, QMetaMethod* signal) {

	self->QHBoxLayout::connectNotify(*signal);
}

void QHBoxLayout_virtualbase_disconnectNotify(VirtualQHBoxLayout* self, QMetaMethod* signal) {

	self->QHBoxLayout::disconnectNotify(*signal);
}

QWidget* QHBoxLayout_virtualbase_widget(VirtualQHBoxLayout* self) {

	return self->QHBoxLayout::widget();
}

QSpacerItem* QHBoxLayout_virtualbase_spacerItem(VirtualQHBoxLayout* self) {

	return self->QHBoxLayout::spacerItem();
}

const QMetaObject* QHBoxLayout_staticMetaObject() { return &QHBoxLayout::staticMetaObject; }

const QHBoxLayout_VTable* QHBoxLayout_vtbl(const VirtualQHBoxLayout* self) { return self->vtbl; }
void* QHBoxLayout_vdata(const VirtualQHBoxLayout* self) { return self->vdata; }
void QHBoxLayout_setVdata(VirtualQHBoxLayout* self, void* vdata) { self->vdata = vdata; }

void QHBoxLayout_protectedbase_widgetEvent(VirtualQHBoxLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QHBoxLayout_protectedbase_addChildLayout(VirtualQHBoxLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QHBoxLayout_protectedbase_addChildWidget(VirtualQHBoxLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QHBoxLayout_protectedbase_adoptLayout(VirtualQHBoxLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QHBoxLayout_protectedbase_alignmentRect(const VirtualQHBoxLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QHBoxLayout_protectedbase_sender(const VirtualQHBoxLayout* self) {
	return self->sender();
}

int QHBoxLayout_protectedbase_senderSignalIndex(const VirtualQHBoxLayout* self) {
	return self->senderSignalIndex();
}

int QHBoxLayout_protectedbase_receivers(const VirtualQHBoxLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QHBoxLayout_protectedbase_isSignalConnected(const VirtualQHBoxLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QHBoxLayout_delete(QHBoxLayout* self) {
	delete self;
}

class VirtualQVBoxLayout final : public QVBoxLayout {
	const QVBoxLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QVBoxLayout_VTable* QVBoxLayout_vtbl(const VirtualQVBoxLayout* self);
	friend void* QVBoxLayout_vdata(const VirtualQVBoxLayout* self);
	friend void QVBoxLayout_setVdata(VirtualQVBoxLayout* self, void* vdata);

	VirtualQVBoxLayout(const QVBoxLayout_VTable* vtbl, void* vdata, QWidget* parent): QVBoxLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQVBoxLayout(const QVBoxLayout_VTable* vtbl, void* vdata): QVBoxLayout(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQVBoxLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QVBoxLayout_virtualbase_metaObject(const VirtualQVBoxLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QVBoxLayout_virtualbase_metacast(VirtualQVBoxLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVBoxLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_metacall(VirtualQVBoxLayout* self, int param1, int param2, void** param3);

	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QVBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_addItem(VirtualQVBoxLayout* self, QLayoutItem* param1);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QVBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QVBoxLayout_virtualbase_sizeHint(const VirtualQVBoxLayout* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QVBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QVBoxLayout_virtualbase_minimumSize(const VirtualQVBoxLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QVBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QVBoxLayout_virtualbase_maximumSize(const VirtualQVBoxLayout* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QVBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_hasHeightForWidth(const VirtualQVBoxLayout* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QVBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_heightForWidth(const VirtualQVBoxLayout* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QVBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQVBoxLayout* self, int param1);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QVBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_expandingDirections(const VirtualQVBoxLayout* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QVBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QVBoxLayout_virtualbase_invalidate(VirtualQVBoxLayout* self);

	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QVBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QVBoxLayout_virtualbase_itemAt(const VirtualQVBoxLayout* self, int param1);

	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QVBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QVBoxLayout_virtualbase_takeAt(VirtualQVBoxLayout* self, int param1);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QVBoxLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_count(const VirtualQVBoxLayout* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QVBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_setGeometry(VirtualQVBoxLayout* self, QRect* geometry);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QVBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QVBoxLayout_virtualbase_geometry(const VirtualQVBoxLayout* self);

	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QVBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_indexOf(const VirtualQVBoxLayout* self, QWidget* param1);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QVBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_isEmpty(const VirtualQVBoxLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QVBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_controlTypes(const VirtualQVBoxLayout* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QVBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QVBoxLayout_virtualbase_layout(VirtualQVBoxLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QVBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_childEvent(VirtualQVBoxLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_event(VirtualQVBoxLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_eventFilter(VirtualQVBoxLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_timerEvent(VirtualQVBoxLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_customEvent(VirtualQVBoxLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_connectNotify(VirtualQVBoxLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_disconnectNotify(VirtualQVBoxLayout* self, QMetaMethod* signal);

	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QVBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QVBoxLayout_virtualbase_widget(VirtualQVBoxLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QVBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QVBoxLayout_virtualbase_spacerItem(VirtualQVBoxLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QVBoxLayout_protectedbase_widgetEvent(VirtualQVBoxLayout* self, QEvent* param1);
	friend void QVBoxLayout_protectedbase_addChildLayout(VirtualQVBoxLayout* self, QLayout* l);
	friend void QVBoxLayout_protectedbase_addChildWidget(VirtualQVBoxLayout* self, QWidget* w);
	friend bool QVBoxLayout_protectedbase_adoptLayout(VirtualQVBoxLayout* self, QLayout* layout);
	friend QRect* QVBoxLayout_protectedbase_alignmentRect(const VirtualQVBoxLayout* self, QRect* param1);
	friend QObject* QVBoxLayout_protectedbase_sender(const VirtualQVBoxLayout* self);
	friend int QVBoxLayout_protectedbase_senderSignalIndex(const VirtualQVBoxLayout* self);
	friend int QVBoxLayout_protectedbase_receivers(const VirtualQVBoxLayout* self, const char* signal);
	friend bool QVBoxLayout_protectedbase_isSignalConnected(const VirtualQVBoxLayout* self, QMetaMethod* signal);
};

VirtualQVBoxLayout* QVBoxLayout_new(const QVBoxLayout_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQVBoxLayout(vtbl, vdata, parent);
}

VirtualQVBoxLayout* QVBoxLayout_new2(const QVBoxLayout_VTable* vtbl, void* vdata) {
	return new VirtualQVBoxLayout(vtbl, vdata);
}

void QVBoxLayout_virtbase(QVBoxLayout* src, QBoxLayout** outptr_QBoxLayout) {
	*outptr_QBoxLayout = static_cast<QBoxLayout*>(src);
}

QMetaObject* QVBoxLayout_metaObject(const QVBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVBoxLayout_metacast(QVBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVBoxLayout_metacall(QVBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVBoxLayout_tr(const char* s) {
	QString _ret = QVBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_trUtf8(const char* s) {
	QString _ret = QVBoxLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QVBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QVBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QVBoxLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVBoxLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVBoxLayout_virtualbase_metaObject(const VirtualQVBoxLayout* self) {

	return (QMetaObject*) self->QVBoxLayout::metaObject();
}

void* QVBoxLayout_virtualbase_metacast(VirtualQVBoxLayout* self, const char* param1) {

	return self->QVBoxLayout::qt_metacast(param1);
}

int QVBoxLayout_virtualbase_metacall(VirtualQVBoxLayout* self, int param1, int param2, void** param3) {

	return self->QVBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QVBoxLayout_virtualbase_addItem(VirtualQVBoxLayout* self, QLayoutItem* param1) {

	self->QVBoxLayout::addItem(param1);
}

QSize* QVBoxLayout_virtualbase_sizeHint(const VirtualQVBoxLayout* self) {

	return new QSize(self->QVBoxLayout::sizeHint());
}

QSize* QVBoxLayout_virtualbase_minimumSize(const VirtualQVBoxLayout* self) {

	return new QSize(self->QVBoxLayout::minimumSize());
}

QSize* QVBoxLayout_virtualbase_maximumSize(const VirtualQVBoxLayout* self) {

	return new QSize(self->QVBoxLayout::maximumSize());
}

bool QVBoxLayout_virtualbase_hasHeightForWidth(const VirtualQVBoxLayout* self) {

	return self->QVBoxLayout::hasHeightForWidth();
}

int QVBoxLayout_virtualbase_heightForWidth(const VirtualQVBoxLayout* self, int param1) {

	return self->QVBoxLayout::heightForWidth(static_cast<int>(param1));
}

int QVBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQVBoxLayout* self, int param1) {

	return self->QVBoxLayout::minimumHeightForWidth(static_cast<int>(param1));
}

int QVBoxLayout_virtualbase_expandingDirections(const VirtualQVBoxLayout* self) {

	Qt::Orientations _ret = self->QVBoxLayout::expandingDirections();
	return static_cast<int>(_ret);
}

void QVBoxLayout_virtualbase_invalidate(VirtualQVBoxLayout* self) {

	self->QVBoxLayout::invalidate();
}

QLayoutItem* QVBoxLayout_virtualbase_itemAt(const VirtualQVBoxLayout* self, int param1) {

	return self->QVBoxLayout::itemAt(static_cast<int>(param1));
}

QLayoutItem* QVBoxLayout_virtualbase_takeAt(VirtualQVBoxLayout* self, int param1) {

	return self->QVBoxLayout::takeAt(static_cast<int>(param1));
}

int QVBoxLayout_virtualbase_count(const VirtualQVBoxLayout* self) {

	return self->QVBoxLayout::count();
}

void QVBoxLayout_virtualbase_setGeometry(VirtualQVBoxLayout* self, QRect* geometry) {

	self->QVBoxLayout::setGeometry(*geometry);
}

QRect* QVBoxLayout_virtualbase_geometry(const VirtualQVBoxLayout* self) {

	return new QRect(self->QVBoxLayout::geometry());
}

int QVBoxLayout_virtualbase_indexOf(const VirtualQVBoxLayout* self, QWidget* param1) {

	return self->QVBoxLayout::indexOf(param1);
}

bool QVBoxLayout_virtualbase_isEmpty(const VirtualQVBoxLayout* self) {

	return self->QVBoxLayout::isEmpty();
}

int QVBoxLayout_virtualbase_controlTypes(const VirtualQVBoxLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QVBoxLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayout* QVBoxLayout_virtualbase_layout(VirtualQVBoxLayout* self) {

	return self->QVBoxLayout::layout();
}

void QVBoxLayout_virtualbase_childEvent(VirtualQVBoxLayout* self, QChildEvent* e) {

	self->QVBoxLayout::childEvent(e);
}

bool QVBoxLayout_virtualbase_event(VirtualQVBoxLayout* self, QEvent* event) {

	return self->QVBoxLayout::event(event);
}

bool QVBoxLayout_virtualbase_eventFilter(VirtualQVBoxLayout* self, QObject* watched, QEvent* event) {

	return self->QVBoxLayout::eventFilter(watched, event);
}

void QVBoxLayout_virtualbase_timerEvent(VirtualQVBoxLayout* self, QTimerEvent* event) {

	self->QVBoxLayout::timerEvent(event);
}

void QVBoxLayout_virtualbase_customEvent(VirtualQVBoxLayout* self, QEvent* event) {

	self->QVBoxLayout::customEvent(event);
}

void QVBoxLayout_virtualbase_connectNotify(VirtualQVBoxLayout* self, QMetaMethod* signal) {

	self->QVBoxLayout::connectNotify(*signal);
}

void QVBoxLayout_virtualbase_disconnectNotify(VirtualQVBoxLayout* self, QMetaMethod* signal) {

	self->QVBoxLayout::disconnectNotify(*signal);
}

QWidget* QVBoxLayout_virtualbase_widget(VirtualQVBoxLayout* self) {

	return self->QVBoxLayout::widget();
}

QSpacerItem* QVBoxLayout_virtualbase_spacerItem(VirtualQVBoxLayout* self) {

	return self->QVBoxLayout::spacerItem();
}

const QMetaObject* QVBoxLayout_staticMetaObject() { return &QVBoxLayout::staticMetaObject; }

const QVBoxLayout_VTable* QVBoxLayout_vtbl(const VirtualQVBoxLayout* self) { return self->vtbl; }
void* QVBoxLayout_vdata(const VirtualQVBoxLayout* self) { return self->vdata; }
void QVBoxLayout_setVdata(VirtualQVBoxLayout* self, void* vdata) { self->vdata = vdata; }

void QVBoxLayout_protectedbase_widgetEvent(VirtualQVBoxLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QVBoxLayout_protectedbase_addChildLayout(VirtualQVBoxLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QVBoxLayout_protectedbase_addChildWidget(VirtualQVBoxLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QVBoxLayout_protectedbase_adoptLayout(VirtualQVBoxLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QVBoxLayout_protectedbase_alignmentRect(const VirtualQVBoxLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QVBoxLayout_protectedbase_sender(const VirtualQVBoxLayout* self) {
	return self->sender();
}

int QVBoxLayout_protectedbase_senderSignalIndex(const VirtualQVBoxLayout* self) {
	return self->senderSignalIndex();
}

int QVBoxLayout_protectedbase_receivers(const VirtualQVBoxLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QVBoxLayout_protectedbase_isSignalConnected(const VirtualQVBoxLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QVBoxLayout_delete(QVBoxLayout* self) {
	delete self;
}

