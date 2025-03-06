#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSctpServer>
#include <QSctpSocket>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpServer>
#include <QTcpSocket>
#include <QTimerEvent>
#include <qsctpserver.h>
#include "gen_qsctpserver.h"

#ifdef __cplusplus
extern "C" {
#endif

QMetaObject* miqt_exec_callback_QSctpServer_metaObject(const QSctpServer*, intptr_t);
void* miqt_exec_callback_QSctpServer_metacast(QSctpServer*, intptr_t, const char*);
int miqt_exec_callback_QSctpServer_metacall(QSctpServer*, intptr_t, int, int, void**);
void miqt_exec_callback_QSctpServer_incomingConnection(QSctpServer*, intptr_t, intptr_t);
bool miqt_exec_callback_QSctpServer_hasPendingConnections(const QSctpServer*, intptr_t);
QTcpSocket* miqt_exec_callback_QSctpServer_nextPendingConnection(QSctpServer*, intptr_t);
bool miqt_exec_callback_QSctpServer_event(QSctpServer*, intptr_t, QEvent*);
bool miqt_exec_callback_QSctpServer_eventFilter(QSctpServer*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QSctpServer_timerEvent(QSctpServer*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QSctpServer_childEvent(QSctpServer*, intptr_t, QChildEvent*);
void miqt_exec_callback_QSctpServer_customEvent(QSctpServer*, intptr_t, QEvent*);
void miqt_exec_callback_QSctpServer_connectNotify(QSctpServer*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QSctpServer_disconnectNotify(QSctpServer*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSctpServer final : public QSctpServer {
public:

	VirtualQSctpServer(): QSctpServer() {};
	VirtualQSctpServer(QObject* parent): QSctpServer(parent) {};

	virtual ~VirtualQSctpServer() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QSctpServer::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QSctpServer_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QSctpServer_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QSctpServer::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QSctpServer_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QSctpServer_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QSctpServer::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QSctpServer_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSctpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__incomingConnection = 0;

	// Subclass to allow providing a Go implementation
	virtual void incomingConnection(qintptr handle) override {
		if (handle__incomingConnection == 0) {
			QSctpServer::incomingConnection(handle);
			return;
		}
		
		qintptr handle_ret = handle;
		intptr_t sigval1 = (intptr_t)(handle_ret);

		miqt_exec_callback_QSctpServer_incomingConnection(this, handle__incomingConnection, sigval1);

		
	}

	friend void QSctpServer_virtualbase_incomingConnection(void* self, intptr_t handle);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hasPendingConnections = 0;

	// Subclass to allow providing a Go implementation
	virtual bool hasPendingConnections() const override {
		if (handle__hasPendingConnections == 0) {
			return QSctpServer::hasPendingConnections();
		}
		

		bool callback_return_value = miqt_exec_callback_QSctpServer_hasPendingConnections(this, handle__hasPendingConnections);

		return callback_return_value;
	}

	friend bool QSctpServer_virtualbase_hasPendingConnections(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__nextPendingConnection = 0;

	// Subclass to allow providing a Go implementation
	virtual QTcpSocket* nextPendingConnection() override {
		if (handle__nextPendingConnection == 0) {
			return QSctpServer::nextPendingConnection();
		}
		

		QTcpSocket* callback_return_value = miqt_exec_callback_QSctpServer_nextPendingConnection(this, handle__nextPendingConnection);

		return callback_return_value;
	}

	friend QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QSctpServer::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QSctpServer_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QSctpServer_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QSctpServer::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QSctpServer_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSctpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QSctpServer::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QSctpServer_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QSctpServer_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QSctpServer::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QSctpServer_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QSctpServer_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QSctpServer::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QSctpServer_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QSctpServer_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QSctpServer::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QSctpServer_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QSctpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QSctpServer::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QSctpServer_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QSctpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSctpServer_protectedbase_addPendingConnection(bool* _dynamic_cast_ok, void* self, QTcpSocket* socket);
	friend QObject* QSctpServer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSctpServer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSctpServer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSctpServer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSctpServer* QSctpServer_new() {
	return new VirtualQSctpServer();
}

QSctpServer* QSctpServer_new2(QObject* parent) {
	return new VirtualQSctpServer(parent);
}

void QSctpServer_virtbase(QSctpServer* src, QTcpServer** outptr_QTcpServer) {
	*outptr_QTcpServer = static_cast<QTcpServer*>(src);
}

QMetaObject* QSctpServer_metaObject(const QSctpServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSctpServer_metacast(QSctpServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSctpServer_metacall(QSctpServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSctpServer_tr(const char* s) {
	QString _ret = QSctpServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSctpServer_setMaximumChannelCount(QSctpServer* self, int count) {
	self->setMaximumChannelCount(static_cast<int>(count));
}

int QSctpServer_maximumChannelCount(const QSctpServer* self) {
	return self->maximumChannelCount();
}

QSctpSocket* QSctpServer_nextPendingDatagramConnection(QSctpServer* self) {
	return self->nextPendingDatagramConnection();
}

struct miqt_string QSctpServer_tr2(const char* s, const char* c) {
	QString _ret = QSctpServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSctpServer_tr3(const char* s, const char* c, int n) {
	QString _ret = QSctpServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSctpServer_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QSctpServer_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSctpServer*)(self) )->QSctpServer::metaObject();

}

bool QSctpServer_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QSctpServer_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSctpServer*)(self) )->QSctpServer::qt_metacast(param1);

}

bool QSctpServer_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QSctpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSctpServer*)(self) )->QSctpServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSctpServer_override_virtual_incomingConnection(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__incomingConnection = slot;
	return true;
}

void QSctpServer_virtualbase_incomingConnection(void* self, intptr_t handle) {

	( (VirtualQSctpServer*)(self) )->QSctpServer::incomingConnection((qintptr)(handle));

}

bool QSctpServer_override_virtual_hasPendingConnections(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hasPendingConnections = slot;
	return true;
}

bool QSctpServer_virtualbase_hasPendingConnections(const void* self) {

	return ( (const VirtualQSctpServer*)(self) )->QSctpServer::hasPendingConnections();

}

bool QSctpServer_override_virtual_nextPendingConnection(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__nextPendingConnection = slot;
	return true;
}

QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(void* self) {

	return ( (VirtualQSctpServer*)(self) )->QSctpServer::nextPendingConnection();

}

bool QSctpServer_override_virtual_event(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QSctpServer_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSctpServer*)(self) )->QSctpServer::event(event);

}

bool QSctpServer_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QSctpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSctpServer*)(self) )->QSctpServer::eventFilter(watched, event);

}

bool QSctpServer_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QSctpServer_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSctpServer*)(self) )->QSctpServer::timerEvent(event);

}

bool QSctpServer_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QSctpServer_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSctpServer*)(self) )->QSctpServer::childEvent(event);

}

bool QSctpServer_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QSctpServer_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSctpServer*)(self) )->QSctpServer::customEvent(event);

}

bool QSctpServer_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QSctpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSctpServer*)(self) )->QSctpServer::connectNotify(*signal);

}

bool QSctpServer_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QSctpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSctpServer*)(self) )->QSctpServer::disconnectNotify(*signal);

}

const QMetaObject* QSctpServer_staticMetaObject() { return &QSctpServer::staticMetaObject; }
void QSctpServer_protectedbase_addPendingConnection(bool* _dynamic_cast_ok, void* self, QTcpSocket* socket) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addPendingConnection(socket);

}

QObject* QSctpServer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSctpServer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSctpServer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSctpServer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSctpServer* self_cast = dynamic_cast<VirtualQSctpServer*>( (QSctpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSctpServer_delete(QSctpServer* self) {
	delete self;
}

