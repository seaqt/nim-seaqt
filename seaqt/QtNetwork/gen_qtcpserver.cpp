#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkProxy>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpServer>
#include <QTcpSocket>
#include <QTimerEvent>
#include <qtcpserver.h>
#include "gen_qtcpserver.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTcpServer final : public QTcpServer {
	struct QTcpServer_VTable* vtbl;
public:

	VirtualQTcpServer(struct QTcpServer_VTable* vtbl): QTcpServer(), vtbl(vtbl) {};
	VirtualQTcpServer(struct QTcpServer_VTable* vtbl, QObject* parent): QTcpServer(parent), vtbl(vtbl) {};

	virtual ~VirtualQTcpServer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTcpServer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTcpServer_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTcpServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTcpServer_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTcpServer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTcpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool hasPendingConnections() const override {
		if (vtbl->hasPendingConnections == 0) {
			return QTcpServer::hasPendingConnections();
		}


		bool callback_return_value = vtbl->hasPendingConnections(vtbl, this);

		return callback_return_value;
	}

	friend bool QTcpServer_virtualbase_hasPendingConnections(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QTcpSocket* nextPendingConnection() override {
		if (vtbl->nextPendingConnection == 0) {
			return QTcpServer::nextPendingConnection();
		}


		QTcpSocket* callback_return_value = vtbl->nextPendingConnection(vtbl, this);

		return callback_return_value;
	}

	friend QTcpSocket* QTcpServer_virtualbase_nextPendingConnection(void* self);

	// Subclass to allow providing a Go implementation
	virtual void incomingConnection(qintptr handle) override {
		if (vtbl->incomingConnection == 0) {
			QTcpServer::incomingConnection(handle);
			return;
		}

		qintptr handle_ret = handle;
		intptr_t sigval1 = (intptr_t)(handle_ret);

		vtbl->incomingConnection(vtbl, this, sigval1);

	}

	friend void QTcpServer_virtualbase_incomingConnection(void* self, intptr_t handle);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTcpServer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpServer_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTcpServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTcpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTcpServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTcpServer_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTcpServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTcpServer_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTcpServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTcpServer_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTcpServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTcpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTcpServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTcpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTcpServer_protectedbase_addPendingConnection(bool* _dynamic_cast_ok, void* self, QTcpSocket* socket);
	friend QObject* QTcpServer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTcpServer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTcpServer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTcpServer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTcpServer* QTcpServer_new(struct QTcpServer_VTable* vtbl) {
	return new VirtualQTcpServer(vtbl);
}

QTcpServer* QTcpServer_new2(struct QTcpServer_VTable* vtbl, QObject* parent) {
	return new VirtualQTcpServer(vtbl, parent);
}

void QTcpServer_virtbase(QTcpServer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QTcpServer_metaObject(const QTcpServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTcpServer_metacast(QTcpServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTcpServer_metacall(QTcpServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTcpServer_tr(const char* s) {
	QString _ret = QTcpServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTcpServer_listen(QTcpServer* self) {
	return self->listen();
}

void QTcpServer_close(QTcpServer* self) {
	self->close();
}

bool QTcpServer_isListening(const QTcpServer* self) {
	return self->isListening();
}

void QTcpServer_setMaxPendingConnections(QTcpServer* self, int numConnections) {
	self->setMaxPendingConnections(static_cast<int>(numConnections));
}

int QTcpServer_maxPendingConnections(const QTcpServer* self) {
	return self->maxPendingConnections();
}

void QTcpServer_setListenBacklogSize(QTcpServer* self, int size) {
	self->setListenBacklogSize(static_cast<int>(size));
}

int QTcpServer_listenBacklogSize(const QTcpServer* self) {
	return self->listenBacklogSize();
}

uint16_t QTcpServer_serverPort(const QTcpServer* self) {
	quint16 _ret = self->serverPort();
	return static_cast<uint16_t>(_ret);
}

QHostAddress* QTcpServer_serverAddress(const QTcpServer* self) {
	return new QHostAddress(self->serverAddress());
}

intptr_t QTcpServer_socketDescriptor(const QTcpServer* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

bool QTcpServer_setSocketDescriptor(QTcpServer* self, intptr_t socketDescriptor) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor));
}

bool QTcpServer_waitForNewConnection(QTcpServer* self) {
	return self->waitForNewConnection();
}

bool QTcpServer_hasPendingConnections(const QTcpServer* self) {
	return self->hasPendingConnections();
}

QTcpSocket* QTcpServer_nextPendingConnection(QTcpServer* self) {
	return self->nextPendingConnection();
}

int QTcpServer_serverError(const QTcpServer* self) {
	QAbstractSocket::SocketError _ret = self->serverError();
	return static_cast<int>(_ret);
}

struct miqt_string QTcpServer_errorString(const QTcpServer* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTcpServer_pauseAccepting(QTcpServer* self) {
	self->pauseAccepting();
}

void QTcpServer_resumeAccepting(QTcpServer* self) {
	self->resumeAccepting();
}

void QTcpServer_setProxy(QTcpServer* self, QNetworkProxy* networkProxy) {
	self->setProxy(*networkProxy);
}

QNetworkProxy* QTcpServer_proxy(const QTcpServer* self) {
	return new QNetworkProxy(self->proxy());
}

void QTcpServer_newConnection(QTcpServer* self) {
	self->newConnection();
}

void QTcpServer_connect_newConnection(QTcpServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTcpServer::connect(self, static_cast<void (QTcpServer::*)()>(&QTcpServer::newConnection), self, local_caller{slot, callback, release});
}

void QTcpServer_acceptError(QTcpServer* self, int socketError) {
	self->acceptError(static_cast<QAbstractSocket::SocketError>(socketError));
}

void QTcpServer_connect_acceptError(QTcpServer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAbstractSocket::SocketError socketError) {
			QAbstractSocket::SocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQTcpServer::connect(self, static_cast<void (QTcpServer::*)(QAbstractSocket::SocketError)>(&QTcpServer::acceptError), self, local_caller{slot, callback, release});
}

struct miqt_string QTcpServer_tr2(const char* s, const char* c) {
	QString _ret = QTcpServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpServer_tr3(const char* s, const char* c, int n) {
	QString _ret = QTcpServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTcpServer_listen1(QTcpServer* self, QHostAddress* address) {
	return self->listen(*address);
}

bool QTcpServer_listen2(QTcpServer* self, QHostAddress* address, uint16_t port) {
	return self->listen(*address, static_cast<quint16>(port));
}

bool QTcpServer_waitForNewConnection1(QTcpServer* self, int msec) {
	return self->waitForNewConnection(static_cast<int>(msec));
}

bool QTcpServer_waitForNewConnection2(QTcpServer* self, int msec, bool* timedOut) {
	return self->waitForNewConnection(static_cast<int>(msec), timedOut);
}

QMetaObject* QTcpServer_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTcpServer*)(self) )->QTcpServer::metaObject();

}

void* QTcpServer_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTcpServer*)(self) )->QTcpServer::qt_metacast(param1);

}

int QTcpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTcpServer*)(self) )->QTcpServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QTcpServer_virtualbase_hasPendingConnections(const void* self) {

	return ( (const VirtualQTcpServer*)(self) )->QTcpServer::hasPendingConnections();

}

QTcpSocket* QTcpServer_virtualbase_nextPendingConnection(void* self) {

	return ( (VirtualQTcpServer*)(self) )->QTcpServer::nextPendingConnection();

}

void QTcpServer_virtualbase_incomingConnection(void* self, intptr_t handle) {

	( (VirtualQTcpServer*)(self) )->QTcpServer::incomingConnection((qintptr)(handle));

}

bool QTcpServer_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTcpServer*)(self) )->QTcpServer::event(event);

}

bool QTcpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTcpServer*)(self) )->QTcpServer::eventFilter(watched, event);

}

void QTcpServer_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTcpServer*)(self) )->QTcpServer::timerEvent(event);

}

void QTcpServer_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTcpServer*)(self) )->QTcpServer::childEvent(event);

}

void QTcpServer_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTcpServer*)(self) )->QTcpServer::customEvent(event);

}

void QTcpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTcpServer*)(self) )->QTcpServer::connectNotify(*signal);

}

void QTcpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTcpServer*)(self) )->QTcpServer::disconnectNotify(*signal);

}

const QMetaObject* QTcpServer_staticMetaObject() { return &QTcpServer::staticMetaObject; }
void QTcpServer_protectedbase_addPendingConnection(bool* _dynamic_cast_ok, void* self, QTcpSocket* socket) {
	VirtualQTcpServer* self_cast = dynamic_cast<VirtualQTcpServer*>( (QTcpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addPendingConnection(socket);

}

QObject* QTcpServer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTcpServer* self_cast = dynamic_cast<VirtualQTcpServer*>( (QTcpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTcpServer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTcpServer* self_cast = dynamic_cast<VirtualQTcpServer*>( (QTcpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTcpServer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTcpServer* self_cast = dynamic_cast<VirtualQTcpServer*>( (QTcpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTcpServer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTcpServer* self_cast = dynamic_cast<VirtualQTcpServer*>( (QTcpServer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTcpServer_delete(QTcpServer* self) {
	delete self;
}

