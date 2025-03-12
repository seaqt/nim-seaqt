#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSignalTransition>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsignaltransition.h>
#include "gen_qsignaltransition.h"
class VirtualQSignalTransition final : public QSignalTransition {
	const QSignalTransition_VTable* vtbl;
	void* vdata;
public:
	friend const QSignalTransition_VTable* QSignalTransition_vtbl(const VirtualQSignalTransition* self);
	friend void* QSignalTransition_vdata(const VirtualQSignalTransition* self);
	friend void QSignalTransition_setVdata(VirtualQSignalTransition* self, void* vdata);

	VirtualQSignalTransition(const QSignalTransition_VTable* vtbl, void* vdata): QSignalTransition(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSignalTransition(const QSignalTransition_VTable* vtbl, void* vdata, const QObject* sender, const char* signal): QSignalTransition(sender, signal), vtbl(vtbl), vdata(vdata) {}
	VirtualQSignalTransition(const QSignalTransition_VTable* vtbl, void* vdata, QState* sourceState): QSignalTransition(sourceState), vtbl(vtbl), vdata(vdata) {}
	VirtualQSignalTransition(const QSignalTransition_VTable* vtbl, void* vdata, const QObject* sender, const char* signal, QState* sourceState): QSignalTransition(sender, signal, sourceState), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSignalTransition() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSignalTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSignalTransition_virtualbase_metaObject(const VirtualQSignalTransition* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSignalTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSignalTransition_virtualbase_metacast(VirtualQSignalTransition* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSignalTransition::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSignalTransition_virtualbase_metacall(VirtualQSignalTransition* self, int param1, int param2, void** param3);

	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return QSignalTransition::eventTest(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(this, sigval1);

		return callback_return_value;
	}

	friend bool QSignalTransition_virtualbase_eventTest(VirtualQSignalTransition* self, QEvent* event);

	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			QSignalTransition::onTransition(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(this, sigval1);

	}

	friend void QSignalTransition_virtualbase_onTransition(VirtualQSignalTransition* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QSignalTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSignalTransition_virtualbase_event(VirtualQSignalTransition* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSignalTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSignalTransition_virtualbase_eventFilter(VirtualQSignalTransition* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSignalTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSignalTransition_virtualbase_timerEvent(VirtualQSignalTransition* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSignalTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSignalTransition_virtualbase_childEvent(VirtualQSignalTransition* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSignalTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSignalTransition_virtualbase_customEvent(VirtualQSignalTransition* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSignalTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSignalTransition_virtualbase_connectNotify(VirtualQSignalTransition* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSignalTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSignalTransition_virtualbase_disconnectNotify(VirtualQSignalTransition* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSignalTransition_protectedbase_sender(const VirtualQSignalTransition* self);
	friend int QSignalTransition_protectedbase_senderSignalIndex(const VirtualQSignalTransition* self);
	friend int QSignalTransition_protectedbase_receivers(const VirtualQSignalTransition* self, const char* signal);
	friend bool QSignalTransition_protectedbase_isSignalConnected(const VirtualQSignalTransition* self, QMetaMethod* signal);
};

VirtualQSignalTransition* QSignalTransition_new(const QSignalTransition_VTable* vtbl, void* vdata) {
	return new VirtualQSignalTransition(vtbl, vdata);
}

VirtualQSignalTransition* QSignalTransition_new2(const QSignalTransition_VTable* vtbl, void* vdata, QObject* sender, const char* signal) {
	return new VirtualQSignalTransition(vtbl, vdata, sender, signal);
}

VirtualQSignalTransition* QSignalTransition_new3(const QSignalTransition_VTable* vtbl, void* vdata, QState* sourceState) {
	return new VirtualQSignalTransition(vtbl, vdata, sourceState);
}

VirtualQSignalTransition* QSignalTransition_new4(const QSignalTransition_VTable* vtbl, void* vdata, QObject* sender, const char* signal, QState* sourceState) {
	return new VirtualQSignalTransition(vtbl, vdata, sender, signal, sourceState);
}

void QSignalTransition_virtbase(QSignalTransition* src, QAbstractTransition** outptr_QAbstractTransition) {
	*outptr_QAbstractTransition = static_cast<QAbstractTransition*>(src);
}

QMetaObject* QSignalTransition_metaObject(const QSignalTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSignalTransition_metacast(QSignalTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSignalTransition_metacall(QSignalTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSignalTransition_tr(const char* s) {
	QString _ret = QSignalTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_trUtf8(const char* s) {
	QString _ret = QSignalTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QSignalTransition_senderObject(const QSignalTransition* self) {
	return self->senderObject();
}

void QSignalTransition_setSenderObject(QSignalTransition* self, QObject* sender) {
	self->setSenderObject(sender);
}

struct miqt_string QSignalTransition_signal(const QSignalTransition* self) {
	QByteArray _qb = self->signal();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSignalTransition_setSignal(QSignalTransition* self, struct miqt_string signal) {
	QByteArray signal_QByteArray(signal.data, signal.len);
	self->setSignal(signal_QByteArray);
}

struct miqt_string QSignalTransition_tr2(const char* s, const char* c) {
	QString _ret = QSignalTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QSignalTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QSignalTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSignalTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSignalTransition_virtualbase_metaObject(const VirtualQSignalTransition* self) {

	return (QMetaObject*) self->QSignalTransition::metaObject();
}

void* QSignalTransition_virtualbase_metacast(VirtualQSignalTransition* self, const char* param1) {

	return self->QSignalTransition::qt_metacast(param1);
}

int QSignalTransition_virtualbase_metacall(VirtualQSignalTransition* self, int param1, int param2, void** param3) {

	return self->QSignalTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSignalTransition_virtualbase_eventTest(VirtualQSignalTransition* self, QEvent* event) {

	return self->QSignalTransition::eventTest(event);
}

void QSignalTransition_virtualbase_onTransition(VirtualQSignalTransition* self, QEvent* event) {

	self->QSignalTransition::onTransition(event);
}

bool QSignalTransition_virtualbase_event(VirtualQSignalTransition* self, QEvent* e) {

	return self->QSignalTransition::event(e);
}

bool QSignalTransition_virtualbase_eventFilter(VirtualQSignalTransition* self, QObject* watched, QEvent* event) {

	return self->QSignalTransition::eventFilter(watched, event);
}

void QSignalTransition_virtualbase_timerEvent(VirtualQSignalTransition* self, QTimerEvent* event) {

	self->QSignalTransition::timerEvent(event);
}

void QSignalTransition_virtualbase_childEvent(VirtualQSignalTransition* self, QChildEvent* event) {

	self->QSignalTransition::childEvent(event);
}

void QSignalTransition_virtualbase_customEvent(VirtualQSignalTransition* self, QEvent* event) {

	self->QSignalTransition::customEvent(event);
}

void QSignalTransition_virtualbase_connectNotify(VirtualQSignalTransition* self, QMetaMethod* signal) {

	self->QSignalTransition::connectNotify(*signal);
}

void QSignalTransition_virtualbase_disconnectNotify(VirtualQSignalTransition* self, QMetaMethod* signal) {

	self->QSignalTransition::disconnectNotify(*signal);
}

const QMetaObject* QSignalTransition_staticMetaObject() { return &QSignalTransition::staticMetaObject; }

const QSignalTransition_VTable* QSignalTransition_vtbl(const VirtualQSignalTransition* self) { return self->vtbl; }
void* QSignalTransition_vdata(const VirtualQSignalTransition* self) { return self->vdata; }
void QSignalTransition_setVdata(VirtualQSignalTransition* self, void* vdata) { self->vdata = vdata; }

QObject* QSignalTransition_protectedbase_sender(const VirtualQSignalTransition* self) {
	return self->sender();
}

int QSignalTransition_protectedbase_senderSignalIndex(const VirtualQSignalTransition* self) {
	return self->senderSignalIndex();
}

int QSignalTransition_protectedbase_receivers(const VirtualQSignalTransition* self, const char* signal) {
	return self->receivers(signal);
}

bool QSignalTransition_protectedbase_isSignalConnected(const VirtualQSignalTransition* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSignalTransition_delete(QSignalTransition* self) {
	delete self;
}

