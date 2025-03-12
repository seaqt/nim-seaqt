#include <QChildEvent>
#include <QEvent>
#include <QEventLoop>
#include <QEventLoopLocker>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <qeventloop.h>
#include "gen_qeventloop.h"
class VirtualQEventLoop final : public QEventLoop {
	const QEventLoop_VTable* vtbl;
	void* vdata;
public:
	friend const QEventLoop_VTable* QEventLoop_vtbl(const VirtualQEventLoop* self);
	friend void* QEventLoop_vdata(const VirtualQEventLoop* self);
	friend void QEventLoop_setVdata(VirtualQEventLoop* self, void* vdata);

	VirtualQEventLoop(const QEventLoop_VTable* vtbl, void* vdata): QEventLoop(), vtbl(vtbl), vdata(vdata) {}
	VirtualQEventLoop(const QEventLoop_VTable* vtbl, void* vdata, QObject* parent): QEventLoop(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQEventLoop() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QEventLoop::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QEventLoop_virtualbase_metaObject(const VirtualQEventLoop* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QEventLoop::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QEventLoop_virtualbase_metacast(VirtualQEventLoop* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QEventLoop::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QEventLoop_virtualbase_metacall(VirtualQEventLoop* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QEventLoop::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QEventLoop_virtualbase_event(VirtualQEventLoop* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QEventLoop::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QEventLoop_virtualbase_eventFilter(VirtualQEventLoop* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QEventLoop::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QEventLoop_virtualbase_timerEvent(VirtualQEventLoop* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QEventLoop::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QEventLoop_virtualbase_childEvent(VirtualQEventLoop* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QEventLoop::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QEventLoop_virtualbase_customEvent(VirtualQEventLoop* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QEventLoop::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QEventLoop_virtualbase_connectNotify(VirtualQEventLoop* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QEventLoop::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QEventLoop_virtualbase_disconnectNotify(VirtualQEventLoop* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QEventLoop_protectedbase_sender(const VirtualQEventLoop* self);
	friend int QEventLoop_protectedbase_senderSignalIndex(const VirtualQEventLoop* self);
	friend int QEventLoop_protectedbase_receivers(const VirtualQEventLoop* self, const char* signal);
	friend bool QEventLoop_protectedbase_isSignalConnected(const VirtualQEventLoop* self, QMetaMethod* signal);
};

VirtualQEventLoop* QEventLoop_new(const QEventLoop_VTable* vtbl, void* vdata) {
	return new VirtualQEventLoop(vtbl, vdata);
}

VirtualQEventLoop* QEventLoop_new2(const QEventLoop_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQEventLoop(vtbl, vdata, parent);
}

void QEventLoop_virtbase(QEventLoop* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QEventLoop_metaObject(const QEventLoop* self) {
	return (QMetaObject*) self->metaObject();
}

void* QEventLoop_metacast(QEventLoop* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QEventLoop_metacall(QEventLoop* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QEventLoop_tr(const char* s) {
	QString _ret = QEventLoop::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventLoop_trUtf8(const char* s) {
	QString _ret = QEventLoop::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QEventLoop_processEvents(QEventLoop* self) {
	return self->processEvents();
}

void QEventLoop_processEvents2(QEventLoop* self, int flags, int maximumTime) {
	self->processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags), static_cast<int>(maximumTime));
}

int QEventLoop_exec(QEventLoop* self) {
	return self->exec();
}

void QEventLoop_exit(QEventLoop* self) {
	self->exit();
}

bool QEventLoop_isRunning(const QEventLoop* self) {
	return self->isRunning();
}

void QEventLoop_wakeUp(QEventLoop* self) {
	self->wakeUp();
}

bool QEventLoop_event(QEventLoop* self, QEvent* event) {
	return self->event(event);
}

void QEventLoop_quit(QEventLoop* self) {
	self->quit();
}

struct miqt_string QEventLoop_tr2(const char* s, const char* c) {
	QString _ret = QEventLoop::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventLoop_tr3(const char* s, const char* c, int n) {
	QString _ret = QEventLoop::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventLoop_trUtf82(const char* s, const char* c) {
	QString _ret = QEventLoop::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QEventLoop_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QEventLoop::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QEventLoop_processEvents1(QEventLoop* self, int flags) {
	return self->processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

int QEventLoop_exec1(QEventLoop* self, int flags) {
	return self->exec(static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

void QEventLoop_exit1(QEventLoop* self, int returnCode) {
	self->exit(static_cast<int>(returnCode));
}

QMetaObject* QEventLoop_virtualbase_metaObject(const VirtualQEventLoop* self) {

	return (QMetaObject*) self->QEventLoop::metaObject();
}

void* QEventLoop_virtualbase_metacast(VirtualQEventLoop* self, const char* param1) {

	return self->QEventLoop::qt_metacast(param1);
}

int QEventLoop_virtualbase_metacall(VirtualQEventLoop* self, int param1, int param2, void** param3) {

	return self->QEventLoop::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QEventLoop_virtualbase_event(VirtualQEventLoop* self, QEvent* event) {

	return self->QEventLoop::event(event);
}

bool QEventLoop_virtualbase_eventFilter(VirtualQEventLoop* self, QObject* watched, QEvent* event) {

	return self->QEventLoop::eventFilter(watched, event);
}

void QEventLoop_virtualbase_timerEvent(VirtualQEventLoop* self, QTimerEvent* event) {

	self->QEventLoop::timerEvent(event);
}

void QEventLoop_virtualbase_childEvent(VirtualQEventLoop* self, QChildEvent* event) {

	self->QEventLoop::childEvent(event);
}

void QEventLoop_virtualbase_customEvent(VirtualQEventLoop* self, QEvent* event) {

	self->QEventLoop::customEvent(event);
}

void QEventLoop_virtualbase_connectNotify(VirtualQEventLoop* self, QMetaMethod* signal) {

	self->QEventLoop::connectNotify(*signal);
}

void QEventLoop_virtualbase_disconnectNotify(VirtualQEventLoop* self, QMetaMethod* signal) {

	self->QEventLoop::disconnectNotify(*signal);
}

const QMetaObject* QEventLoop_staticMetaObject() { return &QEventLoop::staticMetaObject; }

const QEventLoop_VTable* QEventLoop_vtbl(const VirtualQEventLoop* self) { return self->vtbl; }
void* QEventLoop_vdata(const VirtualQEventLoop* self) { return self->vdata; }
void QEventLoop_setVdata(VirtualQEventLoop* self, void* vdata) { self->vdata = vdata; }

QObject* QEventLoop_protectedbase_sender(const VirtualQEventLoop* self) {
	return self->sender();
}

int QEventLoop_protectedbase_senderSignalIndex(const VirtualQEventLoop* self) {
	return self->senderSignalIndex();
}

int QEventLoop_protectedbase_receivers(const VirtualQEventLoop* self, const char* signal) {
	return self->receivers(signal);
}

bool QEventLoop_protectedbase_isSignalConnected(const VirtualQEventLoop* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QEventLoop_delete(QEventLoop* self) {
	delete self;
}

QEventLoopLocker* QEventLoopLocker_new() {
	return new QEventLoopLocker();
}

QEventLoopLocker* QEventLoopLocker_new2(QEventLoop* loop) {
	return new QEventLoopLocker(loop);
}

QEventLoopLocker* QEventLoopLocker_new3(QThread* thread) {
	return new QEventLoopLocker(thread);
}

void QEventLoopLocker_delete(QEventLoopLocker* self) {
	delete self;
}

