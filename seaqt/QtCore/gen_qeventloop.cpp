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

#ifdef __cplusplus
extern "C" {
#endif

QMetaObject* miqt_exec_callback_QEventLoop_metaObject(const QEventLoop*, intptr_t);
void* miqt_exec_callback_QEventLoop_metacast(QEventLoop*, intptr_t, const char*);
int miqt_exec_callback_QEventLoop_metacall(QEventLoop*, intptr_t, int, int, void**);
bool miqt_exec_callback_QEventLoop_event(QEventLoop*, intptr_t, QEvent*);
bool miqt_exec_callback_QEventLoop_eventFilter(QEventLoop*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QEventLoop_timerEvent(QEventLoop*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QEventLoop_childEvent(QEventLoop*, intptr_t, QChildEvent*);
void miqt_exec_callback_QEventLoop_customEvent(QEventLoop*, intptr_t, QEvent*);
void miqt_exec_callback_QEventLoop_connectNotify(QEventLoop*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QEventLoop_disconnectNotify(QEventLoop*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQEventLoop final : public QEventLoop {
public:

	VirtualQEventLoop(): QEventLoop() {};
	VirtualQEventLoop(QObject* parent): QEventLoop(parent) {};

	virtual ~VirtualQEventLoop() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QEventLoop::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QEventLoop_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QEventLoop_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QEventLoop::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QEventLoop_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QEventLoop_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QEventLoop::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QEventLoop_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QEventLoop_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QEventLoop::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QEventLoop_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QEventLoop_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QEventLoop::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QEventLoop_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QEventLoop_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QEventLoop::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QEventLoop_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QEventLoop_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QEventLoop::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QEventLoop_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QEventLoop_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QEventLoop::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QEventLoop_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QEventLoop_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QEventLoop::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QEventLoop_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QEventLoop_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QEventLoop::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QEventLoop_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QEventLoop_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QEventLoop_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QEventLoop_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QEventLoop_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QEventLoop_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QEventLoop* QEventLoop_new() {
	return new VirtualQEventLoop();
}

QEventLoop* QEventLoop_new2(QObject* parent) {
	return new VirtualQEventLoop(parent);
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

bool QEventLoop_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QEventLoop_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQEventLoop*)(self) )->QEventLoop::metaObject();

}

bool QEventLoop_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QEventLoop_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQEventLoop*)(self) )->QEventLoop::qt_metacast(param1);

}

bool QEventLoop_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QEventLoop_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQEventLoop*)(self) )->QEventLoop::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QEventLoop_override_virtual_event(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QEventLoop_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQEventLoop*)(self) )->QEventLoop::event(event);

}

bool QEventLoop_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QEventLoop_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQEventLoop*)(self) )->QEventLoop::eventFilter(watched, event);

}

bool QEventLoop_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QEventLoop_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQEventLoop*)(self) )->QEventLoop::timerEvent(event);

}

bool QEventLoop_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QEventLoop_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQEventLoop*)(self) )->QEventLoop::childEvent(event);

}

bool QEventLoop_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QEventLoop_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQEventLoop*)(self) )->QEventLoop::customEvent(event);

}

bool QEventLoop_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QEventLoop_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQEventLoop*)(self) )->QEventLoop::connectNotify(*signal);

}

bool QEventLoop_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QEventLoop_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQEventLoop*)(self) )->QEventLoop::disconnectNotify(*signal);

}

const QMetaObject* QEventLoop_staticMetaObject() { return &QEventLoop::staticMetaObject; }
QObject* QEventLoop_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QEventLoop_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QEventLoop_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QEventLoop_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQEventLoop* self_cast = dynamic_cast<VirtualQEventLoop*>( (QEventLoop*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

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

