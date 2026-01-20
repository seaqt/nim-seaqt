#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRunnable>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QThreadPool>
#include <QTimerEvent>
#include <qthreadpool.h>
#include "gen_qthreadpool.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQThreadPool final : public QThreadPool {
	const QThreadPool_VTable* vtbl;
public:
	friend void* QThreadPool_vdata(VirtualQThreadPool* self);
	friend VirtualQThreadPool* vdata_QThreadPool(void* vdata);

	VirtualQThreadPool(const QThreadPool_VTable* vtbl): QThreadPool(), vtbl(vtbl) {}
	VirtualQThreadPool(const QThreadPool_VTable* vtbl, QObject* parent): QThreadPool(parent), vtbl(vtbl) {}

	virtual ~VirtualQThreadPool() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QThreadPool::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QThreadPool_virtualbase_metaObject(const VirtualQThreadPool* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QThreadPool::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QThreadPool_virtualbase_metacast(VirtualQThreadPool* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QThreadPool::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QThreadPool_virtualbase_metacall(VirtualQThreadPool* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QThreadPool::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QThreadPool_virtualbase_event(VirtualQThreadPool* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QThreadPool::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QThreadPool_virtualbase_eventFilter(VirtualQThreadPool* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QThreadPool::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QThreadPool_virtualbase_timerEvent(VirtualQThreadPool* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QThreadPool::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QThreadPool_virtualbase_childEvent(VirtualQThreadPool* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QThreadPool::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QThreadPool_virtualbase_customEvent(VirtualQThreadPool* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QThreadPool::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QThreadPool_virtualbase_connectNotify(VirtualQThreadPool* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QThreadPool::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QThreadPool_virtualbase_disconnectNotify(VirtualQThreadPool* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QThreadPool_protectedbase_sender(const VirtualQThreadPool* self);
	friend int QThreadPool_protectedbase_senderSignalIndex(const VirtualQThreadPool* self);
	friend int QThreadPool_protectedbase_receivers(const VirtualQThreadPool* self, const char* signal);
	friend bool QThreadPool_protectedbase_isSignalConnected(const VirtualQThreadPool* self, QMetaMethod* signal);
};

VirtualQThreadPool* QThreadPool_new(const QThreadPool_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQThreadPool>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQThreadPool(vtbl) : nullptr;
}

VirtualQThreadPool* QThreadPool_new_parent(const QThreadPool_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQThreadPool>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQThreadPool(vtbl, parent) : nullptr;
}

void QThreadPool_virtbase(QThreadPool* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QThreadPool_metaObject(const QThreadPool* self) {
	return (QMetaObject*) self->metaObject();
}

void* QThreadPool_metacast(QThreadPool* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QThreadPool_metacall(QThreadPool* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QThreadPool_tr_s(const char* s) {
	QString _ret = QThreadPool::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QThreadPool* QThreadPool_globalInstance() {
	return QThreadPool::globalInstance();
}

void QThreadPool_start_runnable(QThreadPool* self, QRunnable* runnable) {
	self->start(runnable);
}

bool QThreadPool_tryStart_runnable(QThreadPool* self, QRunnable* runnable) {
	return self->tryStart(runnable);
}

void QThreadPool_startOnReservedThread_runnable(QThreadPool* self, QRunnable* runnable) {
	self->startOnReservedThread(runnable);
}

int QThreadPool_expiryTimeout(const QThreadPool* self) {
	return self->expiryTimeout();
}

void QThreadPool_setExpiryTimeout(QThreadPool* self, int expiryTimeout) {
	self->setExpiryTimeout(static_cast<int>(expiryTimeout));
}

int QThreadPool_maxThreadCount(const QThreadPool* self) {
	return self->maxThreadCount();
}

void QThreadPool_setMaxThreadCount(QThreadPool* self, int maxThreadCount) {
	self->setMaxThreadCount(static_cast<int>(maxThreadCount));
}

int QThreadPool_activeThreadCount(const QThreadPool* self) {
	return self->activeThreadCount();
}

void QThreadPool_setStackSize(QThreadPool* self, unsigned int stackSize) {
	self->setStackSize(static_cast<uint>(stackSize));
}

unsigned int QThreadPool_stackSize(const QThreadPool* self) {
	uint _ret = self->stackSize();
	return static_cast<unsigned int>(_ret);
}

void QThreadPool_setThreadPriority(QThreadPool* self, int priority) {
	self->setThreadPriority(static_cast<QThread::Priority>(priority));
}

int QThreadPool_threadPriority(const QThreadPool* self) {
	QThread::Priority _ret = self->threadPriority();
	return static_cast<int>(_ret);
}

void QThreadPool_reserveThread(QThreadPool* self) {
	self->reserveThread();
}

void QThreadPool_releaseThread(QThreadPool* self) {
	self->releaseThread();
}

bool QThreadPool_waitForDone(QThreadPool* self) {
	return self->waitForDone();
}

void QThreadPool_clear(QThreadPool* self) {
	self->clear();
}

bool QThreadPool_contains(const QThreadPool* self, QThread* thread) {
	return self->contains(thread);
}

bool QThreadPool_tryTake(QThreadPool* self, QRunnable* runnable) {
	return self->tryTake(runnable);
}

struct seaqt_string QThreadPool_tr_s_c(const char* s, const char* c) {
	QString _ret = QThreadPool::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QThreadPool_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QThreadPool::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QThreadPool_start_runnable_priority(QThreadPool* self, QRunnable* runnable, int priority) {
	self->start(runnable, static_cast<int>(priority));
}

bool QThreadPool_waitForDone_msecs(QThreadPool* self, int msecs) {
	return self->waitForDone(static_cast<int>(msecs));
}

const QMetaObject* QThreadPool_staticMetaObject() { return &QThreadPool::staticMetaObject; }
void* QThreadPool_vdata(VirtualQThreadPool* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQThreadPool>()); }
VirtualQThreadPool* vdata_QThreadPool(void* vdata) { return reinterpret_cast<VirtualQThreadPool*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQThreadPool>()); }

QMetaObject* QThreadPool_virtualbase_metaObject(const VirtualQThreadPool* self) {

	return (QMetaObject*) self->QThreadPool::metaObject();
}

void* QThreadPool_virtualbase_metacast(VirtualQThreadPool* self, const char* param1) {

	return self->QThreadPool::qt_metacast(param1);
}

int QThreadPool_virtualbase_metacall(VirtualQThreadPool* self, int param1, int param2, void** param3) {

	return self->QThreadPool::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QThreadPool_virtualbase_event(VirtualQThreadPool* self, QEvent* event) {

	return self->QThreadPool::event(event);
}

bool QThreadPool_virtualbase_eventFilter(VirtualQThreadPool* self, QObject* watched, QEvent* event) {

	return self->QThreadPool::eventFilter(watched, event);
}

void QThreadPool_virtualbase_timerEvent(VirtualQThreadPool* self, QTimerEvent* event) {

	self->QThreadPool::timerEvent(event);
}

void QThreadPool_virtualbase_childEvent(VirtualQThreadPool* self, QChildEvent* event) {

	self->QThreadPool::childEvent(event);
}

void QThreadPool_virtualbase_customEvent(VirtualQThreadPool* self, QEvent* event) {

	self->QThreadPool::customEvent(event);
}

void QThreadPool_virtualbase_connectNotify(VirtualQThreadPool* self, QMetaMethod* signal) {

	self->QThreadPool::connectNotify(*signal);
}

void QThreadPool_virtualbase_disconnectNotify(VirtualQThreadPool* self, QMetaMethod* signal) {

	self->QThreadPool::disconnectNotify(*signal);
}

QObject* QThreadPool_protectedbase_sender(const VirtualQThreadPool* self) {
	return self->sender();
}

int QThreadPool_protectedbase_senderSignalIndex(const VirtualQThreadPool* self) {
	return self->senderSignalIndex();
}

int QThreadPool_protectedbase_receivers(const VirtualQThreadPool* self, const char* signal) {
	return self->receivers(signal);
}

bool QThreadPool_protectedbase_isSignalConnected(const VirtualQThreadPool* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QThreadPool_delete(QThreadPool* self) {
	delete self;
}

