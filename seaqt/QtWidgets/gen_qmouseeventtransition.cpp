#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEventTransition>
#include <QObject>
#include <QPainterPath>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qmouseeventtransition.h>
#include "gen_qmouseeventtransition.h"
class VirtualQMouseEventTransition final : public QMouseEventTransition {
	const QMouseEventTransition_VTable* vtbl;
	void* vdata;
public:
	friend const QMouseEventTransition_VTable* QMouseEventTransition_vtbl(const VirtualQMouseEventTransition* self);
	friend void* QMouseEventTransition_vdata(const VirtualQMouseEventTransition* self);
	friend void QMouseEventTransition_setVdata(VirtualQMouseEventTransition* self, void* vdata);

	VirtualQMouseEventTransition(const QMouseEventTransition_VTable* vtbl, void* vdata): QMouseEventTransition(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEventTransition(const QMouseEventTransition_VTable* vtbl, void* vdata, QObject* object, QEvent::Type type, Qt::MouseButton button): QMouseEventTransition(object, type, button), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEventTransition(const QMouseEventTransition_VTable* vtbl, void* vdata, QState* sourceState): QMouseEventTransition(sourceState), vtbl(vtbl), vdata(vdata) {}
	VirtualQMouseEventTransition(const QMouseEventTransition_VTable* vtbl, void* vdata, QObject* object, QEvent::Type type, Qt::MouseButton button, QState* sourceState): QMouseEventTransition(object, type, button, sourceState), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMouseEventTransition() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMouseEventTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMouseEventTransition_virtualbase_metaObject(const VirtualQMouseEventTransition* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMouseEventTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMouseEventTransition_virtualbase_metacast(VirtualQMouseEventTransition* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMouseEventTransition::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMouseEventTransition_virtualbase_metacall(VirtualQMouseEventTransition* self, int param1, int param2, void** param3);

	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			QMouseEventTransition::onTransition(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_onTransition(VirtualQMouseEventTransition* self, QEvent* event);

	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return QMouseEventTransition::eventTest(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(this, sigval1);

		return callback_return_value;
	}

	friend bool QMouseEventTransition_virtualbase_eventTest(VirtualQMouseEventTransition* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QMouseEventTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMouseEventTransition_virtualbase_event(VirtualQMouseEventTransition* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMouseEventTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMouseEventTransition_virtualbase_eventFilter(VirtualQMouseEventTransition* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMouseEventTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_timerEvent(VirtualQMouseEventTransition* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMouseEventTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_childEvent(VirtualQMouseEventTransition* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMouseEventTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_customEvent(VirtualQMouseEventTransition* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMouseEventTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_connectNotify(VirtualQMouseEventTransition* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMouseEventTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_disconnectNotify(VirtualQMouseEventTransition* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMouseEventTransition_protectedbase_sender(const VirtualQMouseEventTransition* self);
	friend int QMouseEventTransition_protectedbase_senderSignalIndex(const VirtualQMouseEventTransition* self);
	friend int QMouseEventTransition_protectedbase_receivers(const VirtualQMouseEventTransition* self, const char* signal);
	friend bool QMouseEventTransition_protectedbase_isSignalConnected(const VirtualQMouseEventTransition* self, QMetaMethod* signal);
};

VirtualQMouseEventTransition* QMouseEventTransition_new(const QMouseEventTransition_VTable* vtbl, void* vdata) {
	return new VirtualQMouseEventTransition(vtbl, vdata);
}

VirtualQMouseEventTransition* QMouseEventTransition_new2(const QMouseEventTransition_VTable* vtbl, void* vdata, QObject* object, int type, int button) {
	return new VirtualQMouseEventTransition(vtbl, vdata, object, static_cast<QEvent::Type>(type), static_cast<Qt::MouseButton>(button));
}

VirtualQMouseEventTransition* QMouseEventTransition_new3(const QMouseEventTransition_VTable* vtbl, void* vdata, QState* sourceState) {
	return new VirtualQMouseEventTransition(vtbl, vdata, sourceState);
}

VirtualQMouseEventTransition* QMouseEventTransition_new4(const QMouseEventTransition_VTable* vtbl, void* vdata, QObject* object, int type, int button, QState* sourceState) {
	return new VirtualQMouseEventTransition(vtbl, vdata, object, static_cast<QEvent::Type>(type), static_cast<Qt::MouseButton>(button), sourceState);
}

void QMouseEventTransition_virtbase(QMouseEventTransition* src, QEventTransition** outptr_QEventTransition) {
	*outptr_QEventTransition = static_cast<QEventTransition*>(src);
}

QMetaObject* QMouseEventTransition_metaObject(const QMouseEventTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMouseEventTransition_metacast(QMouseEventTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMouseEventTransition_metacall(QMouseEventTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMouseEventTransition_tr(const char* s) {
	QString _ret = QMouseEventTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_trUtf8(const char* s) {
	QString _ret = QMouseEventTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMouseEventTransition_button(const QMouseEventTransition* self) {
	Qt::MouseButton _ret = self->button();
	return static_cast<int>(_ret);
}

void QMouseEventTransition_setButton(QMouseEventTransition* self, int button) {
	self->setButton(static_cast<Qt::MouseButton>(button));
}

int QMouseEventTransition_modifierMask(const QMouseEventTransition* self) {
	Qt::KeyboardModifiers _ret = self->modifierMask();
	return static_cast<int>(_ret);
}

void QMouseEventTransition_setModifierMask(QMouseEventTransition* self, int modifiers) {
	self->setModifierMask(static_cast<Qt::KeyboardModifiers>(modifiers));
}

QPainterPath* QMouseEventTransition_hitTestPath(const QMouseEventTransition* self) {
	return new QPainterPath(self->hitTestPath());
}

void QMouseEventTransition_setHitTestPath(QMouseEventTransition* self, QPainterPath* path) {
	self->setHitTestPath(*path);
}

struct miqt_string QMouseEventTransition_tr2(const char* s, const char* c) {
	QString _ret = QMouseEventTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QMouseEventTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QMouseEventTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMouseEventTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMouseEventTransition_virtualbase_metaObject(const VirtualQMouseEventTransition* self) {

	return (QMetaObject*) self->QMouseEventTransition::metaObject();
}

void* QMouseEventTransition_virtualbase_metacast(VirtualQMouseEventTransition* self, const char* param1) {

	return self->QMouseEventTransition::qt_metacast(param1);
}

int QMouseEventTransition_virtualbase_metacall(VirtualQMouseEventTransition* self, int param1, int param2, void** param3) {

	return self->QMouseEventTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QMouseEventTransition_virtualbase_onTransition(VirtualQMouseEventTransition* self, QEvent* event) {

	self->QMouseEventTransition::onTransition(event);
}

bool QMouseEventTransition_virtualbase_eventTest(VirtualQMouseEventTransition* self, QEvent* event) {

	return self->QMouseEventTransition::eventTest(event);
}

bool QMouseEventTransition_virtualbase_event(VirtualQMouseEventTransition* self, QEvent* e) {

	return self->QMouseEventTransition::event(e);
}

bool QMouseEventTransition_virtualbase_eventFilter(VirtualQMouseEventTransition* self, QObject* watched, QEvent* event) {

	return self->QMouseEventTransition::eventFilter(watched, event);
}

void QMouseEventTransition_virtualbase_timerEvent(VirtualQMouseEventTransition* self, QTimerEvent* event) {

	self->QMouseEventTransition::timerEvent(event);
}

void QMouseEventTransition_virtualbase_childEvent(VirtualQMouseEventTransition* self, QChildEvent* event) {

	self->QMouseEventTransition::childEvent(event);
}

void QMouseEventTransition_virtualbase_customEvent(VirtualQMouseEventTransition* self, QEvent* event) {

	self->QMouseEventTransition::customEvent(event);
}

void QMouseEventTransition_virtualbase_connectNotify(VirtualQMouseEventTransition* self, QMetaMethod* signal) {

	self->QMouseEventTransition::connectNotify(*signal);
}

void QMouseEventTransition_virtualbase_disconnectNotify(VirtualQMouseEventTransition* self, QMetaMethod* signal) {

	self->QMouseEventTransition::disconnectNotify(*signal);
}

const QMetaObject* QMouseEventTransition_staticMetaObject() { return &QMouseEventTransition::staticMetaObject; }

const QMouseEventTransition_VTable* QMouseEventTransition_vtbl(const VirtualQMouseEventTransition* self) { return self->vtbl; }
void* QMouseEventTransition_vdata(const VirtualQMouseEventTransition* self) { return self->vdata; }
void QMouseEventTransition_setVdata(VirtualQMouseEventTransition* self, void* vdata) { self->vdata = vdata; }

QObject* QMouseEventTransition_protectedbase_sender(const VirtualQMouseEventTransition* self) {
	return self->sender();
}

int QMouseEventTransition_protectedbase_senderSignalIndex(const VirtualQMouseEventTransition* self) {
	return self->senderSignalIndex();
}

int QMouseEventTransition_protectedbase_receivers(const VirtualQMouseEventTransition* self, const char* signal) {
	return self->receivers(signal);
}

bool QMouseEventTransition_protectedbase_isSignalConnected(const VirtualQMouseEventTransition* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMouseEventTransition_delete(QMouseEventTransition* self) {
	delete self;
}

