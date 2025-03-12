#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qeventtransition.h>
#include "gen_qeventtransition.h"
class VirtualQEventTransition final : public QEventTransition {
	const QEventTransition_VTable* vtbl;
	void* vdata;
public:
	friend const QEventTransition_VTable* QEventTransition_vtbl(const VirtualQEventTransition* self);
	friend void* QEventTransition_vdata(const VirtualQEventTransition* self);
	friend void QEventTransition_setVdata(VirtualQEventTransition* self, void* vdata);

	VirtualQEventTransition(const QEventTransition_VTable* vtbl, void* vdata): QEventTransition(), vtbl(vtbl), vdata(vdata) {}
	VirtualQEventTransition(const QEventTransition_VTable* vtbl, void* vdata, QObject* object, QEvent::Type type): QEventTransition(object, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQEventTransition(const QEventTransition_VTable* vtbl, void* vdata, QState* sourceState): QEventTransition(sourceState), vtbl(vtbl), vdata(vdata) {}
	VirtualQEventTransition(const QEventTransition_VTable* vtbl, void* vdata, QObject* object, QEvent::Type type, QState* sourceState): QEventTransition(object, type, sourceState), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQEventTransition() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QEventTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QEventTransition_virtualbase_metaObject(const VirtualQEventTransition* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QEventTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QEventTransition_virtualbase_metacast(VirtualQEventTransition* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QEventTransition::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QEventTransition_virtualbase_metacall(VirtualQEventTransition* self, int param1, int param2, void** param3);

	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return QEventTransition::eventTest(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(this, sigval1);

		return callback_return_value;
	}

	friend bool QEventTransition_virtualbase_eventTest(VirtualQEventTransition* self, QEvent* event);

	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			QEventTransition::onTransition(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(this, sigval1);

	}

	friend void QEventTransition_virtualbase_onTransition(VirtualQEventTransition* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QEventTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QEventTransition_virtualbase_event(VirtualQEventTransition* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QEventTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QEventTransition_virtualbase_eventFilter(VirtualQEventTransition* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QEventTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QEventTransition_virtualbase_timerEvent(VirtualQEventTransition* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QEventTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QEventTransition_virtualbase_childEvent(VirtualQEventTransition* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QEventTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QEventTransition_virtualbase_customEvent(VirtualQEventTransition* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QEventTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QEventTransition_virtualbase_connectNotify(VirtualQEventTransition* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QEventTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QEventTransition_virtualbase_disconnectNotify(VirtualQEventTransition* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QEventTransition_protectedbase_sender(const VirtualQEventTransition* self);
	friend int QEventTransition_protectedbase_senderSignalIndex(const VirtualQEventTransition* self);
	friend int QEventTransition_protectedbase_receivers(const VirtualQEventTransition* self, const char* signal);
	friend bool QEventTransition_protectedbase_isSignalConnected(const VirtualQEventTransition* self, QMetaMethod* signal);
};

VirtualQEventTransition* QEventTransition_new(const QEventTransition_VTable* vtbl, void* vdata) {
	return new VirtualQEventTransition(vtbl, vdata);
}

VirtualQEventTransition* QEventTransition_new2(const QEventTransition_VTable* vtbl, void* vdata, QObject* object, int type) {
	return new VirtualQEventTransition(vtbl, vdata, object, static_cast<QEvent::Type>(type));
}

VirtualQEventTransition* QEventTransition_new3(const QEventTransition_VTable* vtbl, void* vdata, QState* sourceState) {
	return new VirtualQEventTransition(vtbl, vdata, sourceState);
}

VirtualQEventTransition* QEventTransition_new4(const QEventTransition_VTable* vtbl, void* vdata, QObject* object, int type, QState* sourceState) {
	return new VirtualQEventTransition(vtbl, vdata, object, static_cast<QEvent::Type>(type), sourceState);
}

void QEventTransition_virtbase(QEventTransition* src, QAbstractTransition** outptr_QAbstractTransition) {
	*outptr_QAbstractTransition = static_cast<QAbstractTransition*>(src);
}

QMetaObject* QEventTransition_metaObject(const QEventTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QEventTransition_metacast(QEventTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QEventTransition_metacall(QEventTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QEventTransition_tr(const char* s) {
	QString _ret = QEventTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventTransition_trUtf8(const char* s) {
	QString _ret = QEventTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QEventTransition_eventSource(const QEventTransition* self) {
	return self->eventSource();
}

void QEventTransition_setEventSource(QEventTransition* self, QObject* object) {
	self->setEventSource(object);
}

int QEventTransition_eventType(const QEventTransition* self) {
	QEvent::Type _ret = self->eventType();
	return static_cast<int>(_ret);
}

void QEventTransition_setEventType(QEventTransition* self, int type) {
	self->setEventType(static_cast<QEvent::Type>(type));
}

struct miqt_string QEventTransition_tr2(const char* s, const char* c) {
	QString _ret = QEventTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QEventTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QEventTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QEventTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QEventTransition_virtualbase_metaObject(const VirtualQEventTransition* self) {

	return (QMetaObject*) self->QEventTransition::metaObject();
}

void* QEventTransition_virtualbase_metacast(VirtualQEventTransition* self, const char* param1) {

	return self->QEventTransition::qt_metacast(param1);
}

int QEventTransition_virtualbase_metacall(VirtualQEventTransition* self, int param1, int param2, void** param3) {

	return self->QEventTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QEventTransition_virtualbase_eventTest(VirtualQEventTransition* self, QEvent* event) {

	return self->QEventTransition::eventTest(event);
}

void QEventTransition_virtualbase_onTransition(VirtualQEventTransition* self, QEvent* event) {

	self->QEventTransition::onTransition(event);
}

bool QEventTransition_virtualbase_event(VirtualQEventTransition* self, QEvent* e) {

	return self->QEventTransition::event(e);
}

bool QEventTransition_virtualbase_eventFilter(VirtualQEventTransition* self, QObject* watched, QEvent* event) {

	return self->QEventTransition::eventFilter(watched, event);
}

void QEventTransition_virtualbase_timerEvent(VirtualQEventTransition* self, QTimerEvent* event) {

	self->QEventTransition::timerEvent(event);
}

void QEventTransition_virtualbase_childEvent(VirtualQEventTransition* self, QChildEvent* event) {

	self->QEventTransition::childEvent(event);
}

void QEventTransition_virtualbase_customEvent(VirtualQEventTransition* self, QEvent* event) {

	self->QEventTransition::customEvent(event);
}

void QEventTransition_virtualbase_connectNotify(VirtualQEventTransition* self, QMetaMethod* signal) {

	self->QEventTransition::connectNotify(*signal);
}

void QEventTransition_virtualbase_disconnectNotify(VirtualQEventTransition* self, QMetaMethod* signal) {

	self->QEventTransition::disconnectNotify(*signal);
}

const QMetaObject* QEventTransition_staticMetaObject() { return &QEventTransition::staticMetaObject; }

const QEventTransition_VTable* QEventTransition_vtbl(const VirtualQEventTransition* self) { return self->vtbl; }
void* QEventTransition_vdata(const VirtualQEventTransition* self) { return self->vdata; }
void QEventTransition_setVdata(VirtualQEventTransition* self, void* vdata) { self->vdata = vdata; }

QObject* QEventTransition_protectedbase_sender(const VirtualQEventTransition* self) {
	return self->sender();
}

int QEventTransition_protectedbase_senderSignalIndex(const VirtualQEventTransition* self) {
	return self->senderSignalIndex();
}

int QEventTransition_protectedbase_receivers(const VirtualQEventTransition* self, const char* signal) {
	return self->receivers(signal);
}

bool QEventTransition_protectedbase_isSignalConnected(const VirtualQEventTransition* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QEventTransition_delete(QEventTransition* self) {
	delete self;
}

