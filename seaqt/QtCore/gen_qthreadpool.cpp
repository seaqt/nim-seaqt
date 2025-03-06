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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQThreadPool final : public QThreadPool {
	struct QThreadPool_VTable* vtbl;
public:

	VirtualQThreadPool(struct QThreadPool_VTable* vtbl): QThreadPool(), vtbl(vtbl) {};
	VirtualQThreadPool(struct QThreadPool_VTable* vtbl, QObject* parent): QThreadPool(parent), vtbl(vtbl) {};

	virtual ~VirtualQThreadPool() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QThreadPool::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QThreadPool_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QThreadPool::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QThreadPool_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QThreadPool::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QThreadPool_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QThreadPool::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QThreadPool_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QThreadPool::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QThreadPool_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QThreadPool::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QThreadPool_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QThreadPool::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QThreadPool_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QThreadPool::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QThreadPool_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QThreadPool::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QThreadPool_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QThreadPool::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QThreadPool_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QThreadPool_protectedbase_sender(const void* self);
	friend int QThreadPool_protectedbase_senderSignalIndex(const void* self);
	friend int QThreadPool_protectedbase_receivers(const void* self, const char* signal);
	friend bool QThreadPool_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QThreadPool* QThreadPool_new(struct QThreadPool_VTable* vtbl) {
	return new VirtualQThreadPool(vtbl);
}

QThreadPool* QThreadPool_new2(struct QThreadPool_VTable* vtbl, QObject* parent) {
	return new VirtualQThreadPool(vtbl, parent);
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

struct miqt_string QThreadPool_tr(const char* s) {
	QString _ret = QThreadPool::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThreadPool_trUtf8(const char* s) {
	QString _ret = QThreadPool::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QThreadPool* QThreadPool_globalInstance() {
	return QThreadPool::globalInstance();
}

void QThreadPool_start(QThreadPool* self, QRunnable* runnable) {
	self->start(runnable);
}

bool QThreadPool_tryStart(QThreadPool* self, QRunnable* runnable) {
	return self->tryStart(runnable);
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

void QThreadPool_cancel(QThreadPool* self, QRunnable* runnable) {
	self->cancel(runnable);
}

bool QThreadPool_tryTake(QThreadPool* self, QRunnable* runnable) {
	return self->tryTake(runnable);
}

struct miqt_string QThreadPool_tr2(const char* s, const char* c) {
	QString _ret = QThreadPool::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThreadPool_tr3(const char* s, const char* c, int n) {
	QString _ret = QThreadPool::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThreadPool_trUtf82(const char* s, const char* c) {
	QString _ret = QThreadPool::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThreadPool_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QThreadPool::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QThreadPool_start2(QThreadPool* self, QRunnable* runnable, int priority) {
	self->start(runnable, static_cast<int>(priority));
}

bool QThreadPool_waitForDone1(QThreadPool* self, int msecs) {
	return self->waitForDone(static_cast<int>(msecs));
}

QMetaObject* QThreadPool_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQThreadPool*)(self) )->QThreadPool::metaObject();

}

void* QThreadPool_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQThreadPool*)(self) )->QThreadPool::qt_metacast(param1);

}

int QThreadPool_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQThreadPool*)(self) )->QThreadPool::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QThreadPool_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQThreadPool*)(self) )->QThreadPool::event(event);

}

bool QThreadPool_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQThreadPool*)(self) )->QThreadPool::eventFilter(watched, event);

}

void QThreadPool_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQThreadPool*)(self) )->QThreadPool::timerEvent(event);

}

void QThreadPool_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQThreadPool*)(self) )->QThreadPool::childEvent(event);

}

void QThreadPool_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQThreadPool*)(self) )->QThreadPool::customEvent(event);

}

void QThreadPool_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQThreadPool*)(self) )->QThreadPool::connectNotify(*signal);

}

void QThreadPool_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQThreadPool*)(self) )->QThreadPool::disconnectNotify(*signal);

}

const QMetaObject* QThreadPool_staticMetaObject() { return &QThreadPool::staticMetaObject; }
QObject* QThreadPool_protectedbase_sender(const void* self) {
	VirtualQThreadPool* self_cast = static_cast<VirtualQThreadPool*>( (QThreadPool*)(self) );
	
	return self_cast->sender();

}

int QThreadPool_protectedbase_senderSignalIndex(const void* self) {
	VirtualQThreadPool* self_cast = static_cast<VirtualQThreadPool*>( (QThreadPool*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QThreadPool_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQThreadPool* self_cast = static_cast<VirtualQThreadPool*>( (QThreadPool*)(self) );
	
	return self_cast->receivers(signal);

}

bool QThreadPool_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQThreadPool* self_cast = static_cast<VirtualQThreadPool*>( (QThreadPool*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QThreadPool_delete(QThreadPool* self) {
	delete self;
}

