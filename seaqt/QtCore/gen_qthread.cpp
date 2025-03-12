#include <QAbstractEventDispatcher>
#include <QChildEvent>
#include <QDeadlineTimer>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <qthread.h>
#include "gen_qthread.h"
class VirtualQThread final : public QThread {
	const QThread_VTable* vtbl;
	void* vdata;
public:
	friend const QThread_VTable* QThread_vtbl(const VirtualQThread* self);
	friend void* QThread_vdata(const VirtualQThread* self);
	friend void QThread_setVdata(VirtualQThread* self, void* vdata);

	VirtualQThread(const QThread_VTable* vtbl, void* vdata): QThread(), vtbl(vtbl), vdata(vdata) {}
	VirtualQThread(const QThread_VTable* vtbl, void* vdata, QObject* parent): QThread(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQThread() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QThread::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QThread_virtualbase_metaObject(const VirtualQThread* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QThread::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QThread_virtualbase_metacast(VirtualQThread* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QThread::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QThread_virtualbase_metacall(VirtualQThread* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QThread::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QThread_virtualbase_event(VirtualQThread* self, QEvent* event);

	virtual void run() override {
		if (vtbl->run == 0) {
			QThread::run();
			return;
		}


		vtbl->run(this);

	}

	friend void QThread_virtualbase_run(VirtualQThread* self);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QThread::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QThread_virtualbase_eventFilter(VirtualQThread* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QThread::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QThread_virtualbase_timerEvent(VirtualQThread* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QThread::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QThread_virtualbase_childEvent(VirtualQThread* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QThread::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QThread_virtualbase_customEvent(VirtualQThread* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QThread::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QThread_virtualbase_connectNotify(VirtualQThread* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QThread::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QThread_virtualbase_disconnectNotify(VirtualQThread* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend int QThread_protectedbase_exec(VirtualQThread* self);
	friend QObject* QThread_protectedbase_sender(const VirtualQThread* self);
	friend int QThread_protectedbase_senderSignalIndex(const VirtualQThread* self);
	friend int QThread_protectedbase_receivers(const VirtualQThread* self, const char* signal);
	friend bool QThread_protectedbase_isSignalConnected(const VirtualQThread* self, QMetaMethod* signal);
};

VirtualQThread* QThread_new(const QThread_VTable* vtbl, void* vdata) {
	return new VirtualQThread(vtbl, vdata);
}

VirtualQThread* QThread_new2(const QThread_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQThread(vtbl, vdata, parent);
}

void QThread_virtbase(QThread* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QThread_metaObject(const QThread* self) {
	return (QMetaObject*) self->metaObject();
}

void* QThread_metacast(QThread* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QThread_metacall(QThread* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QThread_tr(const char* s) {
	QString _ret = QThread::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void* QThread_currentThreadId() {
	Qt::HANDLE _ret = QThread::currentThreadId();
	return static_cast<void*>(_ret);
}

QThread* QThread_currentThread() {
	return QThread::currentThread();
}

int QThread_idealThreadCount() {
	return QThread::idealThreadCount();
}

void QThread_yieldCurrentThread() {
	QThread::yieldCurrentThread();
}

void QThread_setPriority(QThread* self, int priority) {
	self->setPriority(static_cast<QThread::Priority>(priority));
}

int QThread_priority(const QThread* self) {
	QThread::Priority _ret = self->priority();
	return static_cast<int>(_ret);
}

bool QThread_isFinished(const QThread* self) {
	return self->isFinished();
}

bool QThread_isRunning(const QThread* self) {
	return self->isRunning();
}

void QThread_requestInterruption(QThread* self) {
	self->requestInterruption();
}

bool QThread_isInterruptionRequested(const QThread* self) {
	return self->isInterruptionRequested();
}

void QThread_setStackSize(QThread* self, unsigned int stackSize) {
	self->setStackSize(static_cast<uint>(stackSize));
}

unsigned int QThread_stackSize(const QThread* self) {
	uint _ret = self->stackSize();
	return static_cast<unsigned int>(_ret);
}

QAbstractEventDispatcher* QThread_eventDispatcher(const QThread* self) {
	return self->eventDispatcher();
}

void QThread_setEventDispatcher(QThread* self, QAbstractEventDispatcher* eventDispatcher) {
	self->setEventDispatcher(eventDispatcher);
}

bool QThread_event(QThread* self, QEvent* event) {
	return self->event(event);
}

int QThread_loopLevel(const QThread* self) {
	return self->loopLevel();
}

void QThread_start(QThread* self) {
	self->start();
}

void QThread_terminate(QThread* self) {
	self->terminate();
}

void QThread_exit(QThread* self) {
	self->exit();
}

void QThread_quit(QThread* self) {
	self->quit();
}

bool QThread_wait(QThread* self) {
	return self->wait();
}

bool QThread_waitWithTime(QThread* self, unsigned long time) {
	return self->wait(static_cast<unsigned long>(time));
}

void QThread_sleep(unsigned long param1) {
	QThread::sleep(static_cast<unsigned long>(param1));
}

void QThread_msleep(unsigned long param1) {
	QThread::msleep(static_cast<unsigned long>(param1));
}

void QThread_usleep(unsigned long param1) {
	QThread::usleep(static_cast<unsigned long>(param1));
}

struct miqt_string QThread_tr2(const char* s, const char* c) {
	QString _ret = QThread::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThread_tr3(const char* s, const char* c, int n) {
	QString _ret = QThread::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QThread_start1(QThread* self, int param1) {
	self->start(static_cast<QThread::Priority>(param1));
}

void QThread_exit1(QThread* self, int retcode) {
	self->exit(static_cast<int>(retcode));
}

bool QThread_wait1(QThread* self, QDeadlineTimer* deadline) {
	return self->wait(*deadline);
}

QMetaObject* QThread_virtualbase_metaObject(const VirtualQThread* self) {

	return (QMetaObject*) self->QThread::metaObject();
}

void* QThread_virtualbase_metacast(VirtualQThread* self, const char* param1) {

	return self->QThread::qt_metacast(param1);
}

int QThread_virtualbase_metacall(VirtualQThread* self, int param1, int param2, void** param3) {

	return self->QThread::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QThread_virtualbase_event(VirtualQThread* self, QEvent* event) {

	return self->QThread::event(event);
}

void QThread_virtualbase_run(VirtualQThread* self) {

	self->QThread::run();
}

bool QThread_virtualbase_eventFilter(VirtualQThread* self, QObject* watched, QEvent* event) {

	return self->QThread::eventFilter(watched, event);
}

void QThread_virtualbase_timerEvent(VirtualQThread* self, QTimerEvent* event) {

	self->QThread::timerEvent(event);
}

void QThread_virtualbase_childEvent(VirtualQThread* self, QChildEvent* event) {

	self->QThread::childEvent(event);
}

void QThread_virtualbase_customEvent(VirtualQThread* self, QEvent* event) {

	self->QThread::customEvent(event);
}

void QThread_virtualbase_connectNotify(VirtualQThread* self, QMetaMethod* signal) {

	self->QThread::connectNotify(*signal);
}

void QThread_virtualbase_disconnectNotify(VirtualQThread* self, QMetaMethod* signal) {

	self->QThread::disconnectNotify(*signal);
}

const QMetaObject* QThread_staticMetaObject() { return &QThread::staticMetaObject; }

const QThread_VTable* QThread_vtbl(const VirtualQThread* self) { return self->vtbl; }
void* QThread_vdata(const VirtualQThread* self) { return self->vdata; }
void QThread_setVdata(VirtualQThread* self, void* vdata) { self->vdata = vdata; }

int QThread_protectedbase_exec(VirtualQThread* self) {
	return self->exec();
}

QObject* QThread_protectedbase_sender(const VirtualQThread* self) {
	return self->sender();
}

int QThread_protectedbase_senderSignalIndex(const VirtualQThread* self) {
	return self->senderSignalIndex();
}

int QThread_protectedbase_receivers(const VirtualQThread* self, const char* signal) {
	return self->receivers(signal);
}

bool QThread_protectedbase_isSignalConnected(const VirtualQThread* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QThread_delete(QThread* self) {
	delete self;
}

