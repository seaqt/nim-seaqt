#include <QChildEvent>
#include <QEvent>
#include <QLayout>
#include <QLayoutItem>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QStackedLayout>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qstackedlayout.h>
#include "gen_qstackedlayout.h"
class VirtualQStackedLayout final : public QStackedLayout {
	const QStackedLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QStackedLayout_VTable* QStackedLayout_vtbl(const VirtualQStackedLayout* self);
	friend void* QStackedLayout_vdata(const VirtualQStackedLayout* self);
	friend void QStackedLayout_setVdata(VirtualQStackedLayout* self, void* vdata);

	VirtualQStackedLayout(const QStackedLayout_VTable* vtbl, void* vdata, QWidget* parent): QStackedLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQStackedLayout(const QStackedLayout_VTable* vtbl, void* vdata): QStackedLayout(), vtbl(vtbl), vdata(vdata) {}
	VirtualQStackedLayout(const QStackedLayout_VTable* vtbl, void* vdata, QLayout* parentLayout): QStackedLayout(parentLayout), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQStackedLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStackedLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QStackedLayout_virtualbase_metaObject(const VirtualQStackedLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStackedLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QStackedLayout_virtualbase_metacast(VirtualQStackedLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStackedLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_metacall(VirtualQStackedLayout* self, int param1, int param2, void** param3);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QStackedLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_count(const VirtualQStackedLayout* self);

	virtual void addItem(QLayoutItem* item) override {
		if (vtbl->addItem == 0) {
			QStackedLayout::addItem(item);
			return;
		}

		QLayoutItem* sigval1 = item;

		vtbl->addItem(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_addItem(VirtualQStackedLayout* self, QLayoutItem* item);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QStackedLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStackedLayout_virtualbase_sizeHint(const VirtualQStackedLayout* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QStackedLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStackedLayout_virtualbase_minimumSize(const VirtualQStackedLayout* self);

	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QStackedLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QStackedLayout_virtualbase_itemAt(const VirtualQStackedLayout* self, int param1);

	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QStackedLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QStackedLayout_virtualbase_takeAt(VirtualQStackedLayout* self, int param1);

	virtual void setGeometry(const QRect& rect) override {
		if (vtbl->setGeometry == 0) {
			QStackedLayout::setGeometry(rect);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_setGeometry(VirtualQStackedLayout* self, QRect* rect);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QStackedLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_hasHeightForWidth(const VirtualQStackedLayout* self);

	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QStackedLayout::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_heightForWidth(const VirtualQStackedLayout* self, int width);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QStackedLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QStackedLayout_virtualbase_invalidate(VirtualQStackedLayout* self);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QStackedLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QStackedLayout_virtualbase_geometry(const VirtualQStackedLayout* self);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QStackedLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_expandingDirections(const VirtualQStackedLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QStackedLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStackedLayout_virtualbase_maximumSize(const VirtualQStackedLayout* self);

	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QStackedLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_indexOf(const VirtualQStackedLayout* self, QWidget* param1);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QStackedLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_isEmpty(const VirtualQStackedLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QStackedLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_controlTypes(const VirtualQStackedLayout* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QStackedLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QStackedLayout_virtualbase_layout(VirtualQStackedLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QStackedLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_childEvent(VirtualQStackedLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStackedLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_event(VirtualQStackedLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStackedLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_eventFilter(VirtualQStackedLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStackedLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_timerEvent(VirtualQStackedLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStackedLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_customEvent(VirtualQStackedLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStackedLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_connectNotify(VirtualQStackedLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStackedLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QStackedLayout_virtualbase_disconnectNotify(VirtualQStackedLayout* self, QMetaMethod* signal);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QStackedLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_minimumHeightForWidth(const VirtualQStackedLayout* self, int param1);

	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QStackedLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QStackedLayout_virtualbase_widget(VirtualQStackedLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QStackedLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QStackedLayout_virtualbase_spacerItem(VirtualQStackedLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QStackedLayout_protectedbase_widgetEvent(VirtualQStackedLayout* self, QEvent* param1);
	friend void QStackedLayout_protectedbase_addChildLayout(VirtualQStackedLayout* self, QLayout* l);
	friend void QStackedLayout_protectedbase_addChildWidget(VirtualQStackedLayout* self, QWidget* w);
	friend bool QStackedLayout_protectedbase_adoptLayout(VirtualQStackedLayout* self, QLayout* layout);
	friend QRect* QStackedLayout_protectedbase_alignmentRect(const VirtualQStackedLayout* self, QRect* param1);
	friend QObject* QStackedLayout_protectedbase_sender(const VirtualQStackedLayout* self);
	friend int QStackedLayout_protectedbase_senderSignalIndex(const VirtualQStackedLayout* self);
	friend int QStackedLayout_protectedbase_receivers(const VirtualQStackedLayout* self, const char* signal);
	friend bool QStackedLayout_protectedbase_isSignalConnected(const VirtualQStackedLayout* self, QMetaMethod* signal);
};

VirtualQStackedLayout* QStackedLayout_new(const QStackedLayout_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQStackedLayout(vtbl, vdata, parent);
}

VirtualQStackedLayout* QStackedLayout_new2(const QStackedLayout_VTable* vtbl, void* vdata) {
	return new VirtualQStackedLayout(vtbl, vdata);
}

VirtualQStackedLayout* QStackedLayout_new3(const QStackedLayout_VTable* vtbl, void* vdata, QLayout* parentLayout) {
	return new VirtualQStackedLayout(vtbl, vdata, parentLayout);
}

void QStackedLayout_virtbase(QStackedLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QStackedLayout_metaObject(const QStackedLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStackedLayout_metacast(QStackedLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStackedLayout_metacall(QStackedLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStackedLayout_tr(const char* s) {
	QString _ret = QStackedLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf8(const char* s) {
	QString _ret = QStackedLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStackedLayout_addWidget(QStackedLayout* self, QWidget* w) {
	return self->addWidget(w);
}

int QStackedLayout_insertWidget(QStackedLayout* self, int index, QWidget* w) {
	return self->insertWidget(static_cast<int>(index), w);
}

QWidget* QStackedLayout_currentWidget(const QStackedLayout* self) {
	return self->currentWidget();
}

int QStackedLayout_currentIndex(const QStackedLayout* self) {
	return self->currentIndex();
}

QWidget* QStackedLayout_widget(const QStackedLayout* self, int param1) {
	return self->widget(static_cast<int>(param1));
}

int QStackedLayout_count(const QStackedLayout* self) {
	return self->count();
}

int QStackedLayout_stackingMode(const QStackedLayout* self) {
	QStackedLayout::StackingMode _ret = self->stackingMode();
	return static_cast<int>(_ret);
}

void QStackedLayout_setStackingMode(QStackedLayout* self, int stackingMode) {
	self->setStackingMode(static_cast<QStackedLayout::StackingMode>(stackingMode));
}

void QStackedLayout_addItem(QStackedLayout* self, QLayoutItem* item) {
	self->addItem(item);
}

QSize* QStackedLayout_sizeHint(const QStackedLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QStackedLayout_minimumSize(const QStackedLayout* self) {
	return new QSize(self->minimumSize());
}

QLayoutItem* QStackedLayout_itemAt(const QStackedLayout* self, int param1) {
	return self->itemAt(static_cast<int>(param1));
}

QLayoutItem* QStackedLayout_takeAt(QStackedLayout* self, int param1) {
	return self->takeAt(static_cast<int>(param1));
}

void QStackedLayout_setGeometry(QStackedLayout* self, QRect* rect) {
	self->setGeometry(*rect);
}

bool QStackedLayout_hasHeightForWidth(const QStackedLayout* self) {
	return self->hasHeightForWidth();
}

int QStackedLayout_heightForWidth(const QStackedLayout* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

void QStackedLayout_widgetRemoved(QStackedLayout* self, int index) {
	self->widgetRemoved(static_cast<int>(index));
}

void QStackedLayout_connect_widgetRemoved(VirtualQStackedLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedLayout::connect(self, static_cast<void (QStackedLayout::*)(int)>(&QStackedLayout::widgetRemoved), self, local_caller{slot, callback, release});
}

void QStackedLayout_currentChanged(QStackedLayout* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QStackedLayout_connect_currentChanged(VirtualQStackedLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedLayout::connect(self, static_cast<void (QStackedLayout::*)(int)>(&QStackedLayout::currentChanged), self, local_caller{slot, callback, release});
}

void QStackedLayout_setCurrentIndex(QStackedLayout* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QStackedLayout_setCurrentWidget(QStackedLayout* self, QWidget* w) {
	self->setCurrentWidget(w);
}

struct miqt_string QStackedLayout_tr2(const char* s, const char* c) {
	QString _ret = QStackedLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QStackedLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QStackedLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStackedLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStackedLayout_virtualbase_metaObject(const VirtualQStackedLayout* self) {

	return (QMetaObject*) self->QStackedLayout::metaObject();
}

void* QStackedLayout_virtualbase_metacast(VirtualQStackedLayout* self, const char* param1) {

	return self->QStackedLayout::qt_metacast(param1);
}

int QStackedLayout_virtualbase_metacall(VirtualQStackedLayout* self, int param1, int param2, void** param3) {

	return self->QStackedLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QStackedLayout_virtualbase_count(const VirtualQStackedLayout* self) {

	return self->QStackedLayout::count();
}

void QStackedLayout_virtualbase_addItem(VirtualQStackedLayout* self, QLayoutItem* item) {

	self->QStackedLayout::addItem(item);
}

QSize* QStackedLayout_virtualbase_sizeHint(const VirtualQStackedLayout* self) {

	return new QSize(self->QStackedLayout::sizeHint());
}

QSize* QStackedLayout_virtualbase_minimumSize(const VirtualQStackedLayout* self) {

	return new QSize(self->QStackedLayout::minimumSize());
}

QLayoutItem* QStackedLayout_virtualbase_itemAt(const VirtualQStackedLayout* self, int param1) {

	return self->QStackedLayout::itemAt(static_cast<int>(param1));
}

QLayoutItem* QStackedLayout_virtualbase_takeAt(VirtualQStackedLayout* self, int param1) {

	return self->QStackedLayout::takeAt(static_cast<int>(param1));
}

void QStackedLayout_virtualbase_setGeometry(VirtualQStackedLayout* self, QRect* rect) {

	self->QStackedLayout::setGeometry(*rect);
}

bool QStackedLayout_virtualbase_hasHeightForWidth(const VirtualQStackedLayout* self) {

	return self->QStackedLayout::hasHeightForWidth();
}

int QStackedLayout_virtualbase_heightForWidth(const VirtualQStackedLayout* self, int width) {

	return self->QStackedLayout::heightForWidth(static_cast<int>(width));
}

void QStackedLayout_virtualbase_invalidate(VirtualQStackedLayout* self) {

	self->QStackedLayout::invalidate();
}

QRect* QStackedLayout_virtualbase_geometry(const VirtualQStackedLayout* self) {

	return new QRect(self->QStackedLayout::geometry());
}

int QStackedLayout_virtualbase_expandingDirections(const VirtualQStackedLayout* self) {

	Qt::Orientations _ret = self->QStackedLayout::expandingDirections();
	return static_cast<int>(_ret);
}

QSize* QStackedLayout_virtualbase_maximumSize(const VirtualQStackedLayout* self) {

	return new QSize(self->QStackedLayout::maximumSize());
}

int QStackedLayout_virtualbase_indexOf(const VirtualQStackedLayout* self, QWidget* param1) {

	return self->QStackedLayout::indexOf(param1);
}

bool QStackedLayout_virtualbase_isEmpty(const VirtualQStackedLayout* self) {

	return self->QStackedLayout::isEmpty();
}

int QStackedLayout_virtualbase_controlTypes(const VirtualQStackedLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QStackedLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayout* QStackedLayout_virtualbase_layout(VirtualQStackedLayout* self) {

	return self->QStackedLayout::layout();
}

void QStackedLayout_virtualbase_childEvent(VirtualQStackedLayout* self, QChildEvent* e) {

	self->QStackedLayout::childEvent(e);
}

bool QStackedLayout_virtualbase_event(VirtualQStackedLayout* self, QEvent* event) {

	return self->QStackedLayout::event(event);
}

bool QStackedLayout_virtualbase_eventFilter(VirtualQStackedLayout* self, QObject* watched, QEvent* event) {

	return self->QStackedLayout::eventFilter(watched, event);
}

void QStackedLayout_virtualbase_timerEvent(VirtualQStackedLayout* self, QTimerEvent* event) {

	self->QStackedLayout::timerEvent(event);
}

void QStackedLayout_virtualbase_customEvent(VirtualQStackedLayout* self, QEvent* event) {

	self->QStackedLayout::customEvent(event);
}

void QStackedLayout_virtualbase_connectNotify(VirtualQStackedLayout* self, QMetaMethod* signal) {

	self->QStackedLayout::connectNotify(*signal);
}

void QStackedLayout_virtualbase_disconnectNotify(VirtualQStackedLayout* self, QMetaMethod* signal) {

	self->QStackedLayout::disconnectNotify(*signal);
}

int QStackedLayout_virtualbase_minimumHeightForWidth(const VirtualQStackedLayout* self, int param1) {

	return self->QStackedLayout::minimumHeightForWidth(static_cast<int>(param1));
}

QWidget* QStackedLayout_virtualbase_widget(VirtualQStackedLayout* self) {

	return self->QStackedLayout::widget();
}

QSpacerItem* QStackedLayout_virtualbase_spacerItem(VirtualQStackedLayout* self) {

	return self->QStackedLayout::spacerItem();
}

const QMetaObject* QStackedLayout_staticMetaObject() { return &QStackedLayout::staticMetaObject; }

const QStackedLayout_VTable* QStackedLayout_vtbl(const VirtualQStackedLayout* self) { return self->vtbl; }
void* QStackedLayout_vdata(const VirtualQStackedLayout* self) { return self->vdata; }
void QStackedLayout_setVdata(VirtualQStackedLayout* self, void* vdata) { self->vdata = vdata; }

void QStackedLayout_protectedbase_widgetEvent(VirtualQStackedLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QStackedLayout_protectedbase_addChildLayout(VirtualQStackedLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QStackedLayout_protectedbase_addChildWidget(VirtualQStackedLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QStackedLayout_protectedbase_adoptLayout(VirtualQStackedLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QStackedLayout_protectedbase_alignmentRect(const VirtualQStackedLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QStackedLayout_protectedbase_sender(const VirtualQStackedLayout* self) {
	return self->sender();
}

int QStackedLayout_protectedbase_senderSignalIndex(const VirtualQStackedLayout* self) {
	return self->senderSignalIndex();
}

int QStackedLayout_protectedbase_receivers(const VirtualQStackedLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QStackedLayout_protectedbase_isSignalConnected(const VirtualQStackedLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QStackedLayout_delete(QStackedLayout* self) {
	delete self;
}

