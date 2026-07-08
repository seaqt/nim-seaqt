#include <QChildEvent>
#include <QEvent>
#include <QLocalServer>
#include <QLocalSocket>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qlocalserver.h>
#include "gen_qlocalserver.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQLocalServer final : public QLocalServer {
	const QLocalServer_VTable* vtbl;
public:
	friend void* QLocalServer_vdata(VirtualQLocalServer* self);
	friend VirtualQLocalServer* vdata_QLocalServer(void* vdata);

	VirtualQLocalServer(const QLocalServer_VTable* vtbl): QLocalServer(), vtbl(vtbl) {}
	VirtualQLocalServer(const QLocalServer_VTable* vtbl, QObject* parent): QLocalServer(parent), vtbl(vtbl) {}

	virtual ~VirtualQLocalServer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLocalServer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QLocalServer_virtualbase_metaObject(const VirtualQLocalServer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLocalServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QLocalServer_virtualbase_metacast(VirtualQLocalServer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLocalServer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QLocalServer_virtualbase_metacall(VirtualQLocalServer* self, int param1, int param2, void** param3);

	virtual bool hasPendingConnections() const override {
		if (vtbl->hasPendingConnections == 0) {
			return QLocalServer::hasPendingConnections();
		}

		bool callback_return_value = vtbl->hasPendingConnections(this);
		return callback_return_value;
	}

	friend bool QLocalServer_virtualbase_hasPendingConnections(const VirtualQLocalServer* self);

	virtual QLocalSocket* nextPendingConnection() override {
		if (vtbl->nextPendingConnection == 0) {
			return QLocalServer::nextPendingConnection();
		}

		QLocalSocket* callback_return_value = vtbl->nextPendingConnection(this);
		return callback_return_value;
	}

	friend QLocalSocket* QLocalServer_virtualbase_nextPendingConnection(VirtualQLocalServer* self);

	virtual void incomingConnection(quintptr socketDescriptor) override {
		if (vtbl->incomingConnection == 0) {
			QLocalServer::incomingConnection(socketDescriptor);
			return;
		}

		quintptr socketDescriptor_ret = socketDescriptor;
		uintptr_t sigval1 = static_cast<uintptr_t>(socketDescriptor_ret);
		vtbl->incomingConnection(this, sigval1);
	}

	friend void QLocalServer_virtualbase_incomingConnection(VirtualQLocalServer* self, uintptr_t socketDescriptor);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLocalServer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QLocalServer_virtualbase_event(VirtualQLocalServer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLocalServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QLocalServer_virtualbase_eventFilter(VirtualQLocalServer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLocalServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QLocalServer_virtualbase_timerEvent(VirtualQLocalServer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLocalServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QLocalServer_virtualbase_childEvent(VirtualQLocalServer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLocalServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QLocalServer_virtualbase_customEvent(VirtualQLocalServer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLocalServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QLocalServer_virtualbase_connectNotify(VirtualQLocalServer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLocalServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QLocalServer_virtualbase_disconnectNotify(VirtualQLocalServer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QLocalServer_protectedbase_sender(const VirtualQLocalServer* self);
	friend int QLocalServer_protectedbase_senderSignalIndex(const VirtualQLocalServer* self);
	friend int QLocalServer_protectedbase_receivers(const VirtualQLocalServer* self, const char* signal);
	friend bool QLocalServer_protectedbase_isSignalConnected(const VirtualQLocalServer* self, QMetaMethod* signal);
};

VirtualQLocalServer* QLocalServer_new(const QLocalServer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQLocalServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQLocalServer(vtbl) : nullptr;
}

VirtualQLocalServer* QLocalServer_new_parent(const QLocalServer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQLocalServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQLocalServer(vtbl, parent) : nullptr;
}

void QLocalServer_virtbase(QLocalServer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QLocalServer_metaObject(const QLocalServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLocalServer_metacast(QLocalServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLocalServer_metacall(QLocalServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QLocalServer_tr_s(const char* s) {
	QString _ret = QLocalServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QLocalServer_trUtf8_s(const char* s) {
	QString _ret = QLocalServer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalServer_newConnection(QLocalServer* self) {
	self->newConnection();
}

void QLocalServer_connect_newConnection(QLocalServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QLocalServer::connect(self, static_cast<void (QLocalServer::*)()>(&QLocalServer::newConnection), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QLocalServer_close(QLocalServer* self) {
	self->close();
}

struct seaqt_string QLocalServer_errorString(const QLocalServer* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLocalServer_hasPendingConnections(const QLocalServer* self) {
	return self->hasPendingConnections();
}

bool QLocalServer_isListening(const QLocalServer* self) {
	return self->isListening();
}

bool QLocalServer_listen_name(QLocalServer* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->listen(name_QString);
}

bool QLocalServer_listen_socketDescriptor(QLocalServer* self, intptr_t socketDescriptor) {
	return self->listen((qintptr)(socketDescriptor));
}

int QLocalServer_maxPendingConnections(const QLocalServer* self) {
	return self->maxPendingConnections();
}

QLocalSocket* QLocalServer_nextPendingConnection(QLocalServer* self) {
	return self->nextPendingConnection();
}

struct seaqt_string QLocalServer_serverName(const QLocalServer* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QLocalServer_fullServerName(const QLocalServer* self) {
	QString _ret = self->fullServerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLocalServer_removeServer(struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return QLocalServer::removeServer(name_QString);
}

int QLocalServer_serverError(const QLocalServer* self) {
	QAbstractSocket::SocketError _ret = self->serverError();
	return static_cast<int>(_ret);
}

void QLocalServer_setMaxPendingConnections(QLocalServer* self, int numConnections) {
	self->setMaxPendingConnections(static_cast<int>(numConnections));
}

bool QLocalServer_waitForNewConnection(QLocalServer* self) {
	return self->waitForNewConnection();
}

void QLocalServer_setSocketOptions(QLocalServer* self, int options) {
	self->setSocketOptions(static_cast<QLocalServer::SocketOptions>(options));
}

int QLocalServer_socketOptions(const QLocalServer* self) {
	QLocalServer::SocketOptions _ret = self->socketOptions();
	return static_cast<int>(_ret);
}

intptr_t QLocalServer_socketDescriptor(const QLocalServer* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

struct seaqt_string QLocalServer_tr_s_c(const char* s, const char* c) {
	QString _ret = QLocalServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QLocalServer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QLocalServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QLocalServer_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QLocalServer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QLocalServer_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QLocalServer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLocalServer_waitForNewConnection_msec(QLocalServer* self, int msec) {
	return self->waitForNewConnection(static_cast<int>(msec));
}

bool QLocalServer_waitForNewConnection_msec_timedOut(QLocalServer* self, int msec, bool* timedOut) {
	return self->waitForNewConnection(static_cast<int>(msec), timedOut);
}

const QMetaObject* QLocalServer_staticMetaObject() { return &QLocalServer::staticMetaObject; }
void* QLocalServer_vdata(VirtualQLocalServer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQLocalServer>()); }
VirtualQLocalServer* vdata_QLocalServer(void* vdata) { return reinterpret_cast<VirtualQLocalServer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQLocalServer>()); }

QMetaObject* QLocalServer_virtualbase_metaObject(const VirtualQLocalServer* self) {

	return (QMetaObject*) self->QLocalServer::metaObject();
}

void* QLocalServer_virtualbase_metacast(VirtualQLocalServer* self, const char* param1) {

	return self->QLocalServer::qt_metacast(param1);
}

int QLocalServer_virtualbase_metacall(VirtualQLocalServer* self, int param1, int param2, void** param3) {

	return self->QLocalServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QLocalServer_virtualbase_hasPendingConnections(const VirtualQLocalServer* self) {

	return self->QLocalServer::hasPendingConnections();
}

QLocalSocket* QLocalServer_virtualbase_nextPendingConnection(VirtualQLocalServer* self) {

	return self->QLocalServer::nextPendingConnection();
}

void QLocalServer_virtualbase_incomingConnection(VirtualQLocalServer* self, uintptr_t socketDescriptor) {

	self->QLocalServer::incomingConnection(static_cast<quintptr>(socketDescriptor));
}

bool QLocalServer_virtualbase_event(VirtualQLocalServer* self, QEvent* event) {

	return self->QLocalServer::event(event);
}

bool QLocalServer_virtualbase_eventFilter(VirtualQLocalServer* self, QObject* watched, QEvent* event) {

	return self->QLocalServer::eventFilter(watched, event);
}

void QLocalServer_virtualbase_timerEvent(VirtualQLocalServer* self, QTimerEvent* event) {

	self->QLocalServer::timerEvent(event);
}

void QLocalServer_virtualbase_childEvent(VirtualQLocalServer* self, QChildEvent* event) {

	self->QLocalServer::childEvent(event);
}

void QLocalServer_virtualbase_customEvent(VirtualQLocalServer* self, QEvent* event) {

	self->QLocalServer::customEvent(event);
}

void QLocalServer_virtualbase_connectNotify(VirtualQLocalServer* self, QMetaMethod* signal) {

	self->QLocalServer::connectNotify(*signal);
}

void QLocalServer_virtualbase_disconnectNotify(VirtualQLocalServer* self, QMetaMethod* signal) {

	self->QLocalServer::disconnectNotify(*signal);
}

QObject* QLocalServer_protectedbase_sender(const VirtualQLocalServer* self) {
	return self->QLocalServer::sender();
}

int QLocalServer_protectedbase_senderSignalIndex(const VirtualQLocalServer* self) {
	return self->QLocalServer::senderSignalIndex();
}

int QLocalServer_protectedbase_receivers(const VirtualQLocalServer* self, const char* signal) {
	return self->QLocalServer::receivers(signal);
}

bool QLocalServer_protectedbase_isSignalConnected(const VirtualQLocalServer* self, QMetaMethod* signal) {
	return self->QLocalServer::isSignalConnected(*signal);
}

void QLocalServer_delete(QLocalServer* self) {
	delete self;
}

