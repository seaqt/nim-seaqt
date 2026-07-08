#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkProxy>
#include <QObject>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslPreSharedKeyAuthenticator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpSocket>
#include <QTimerEvent>
#include <QUrl>
#include <QWebSocket>
#include <QWebSocketCorsAuthenticator>
#include <QWebSocketServer>
#include <qwebsocketserver.h>
#include "gen_qwebsocketserver.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQWebSocketServer final : public QWebSocketServer {
	const QWebSocketServer_VTable* vtbl;
public:
	friend void* QWebSocketServer_vdata(VirtualQWebSocketServer* self);
	friend VirtualQWebSocketServer* vdata_QWebSocketServer(void* vdata);

	VirtualQWebSocketServer(const QWebSocketServer_VTable* vtbl, const QString& serverName, QWebSocketServer::SslMode secureMode): QWebSocketServer(serverName, secureMode), vtbl(vtbl) {}
	VirtualQWebSocketServer(const QWebSocketServer_VTable* vtbl, const QString& serverName, QWebSocketServer::SslMode secureMode, QObject* parent): QWebSocketServer(serverName, secureMode, parent), vtbl(vtbl) {}

	virtual ~VirtualQWebSocketServer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebSocketServer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QWebSocketServer_virtualbase_metaObject(const VirtualQWebSocketServer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebSocketServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QWebSocketServer_virtualbase_metacast(VirtualQWebSocketServer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebSocketServer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QWebSocketServer_virtualbase_metacall(VirtualQWebSocketServer* self, int param1, int param2, void** param3);

	virtual QWebSocket* nextPendingConnection() override {
		if (vtbl->nextPendingConnection == 0) {
			return QWebSocketServer::nextPendingConnection();
		}

		QWebSocket* callback_return_value = vtbl->nextPendingConnection(this);
		return callback_return_value;
	}

	friend QWebSocket* QWebSocketServer_virtualbase_nextPendingConnection(VirtualQWebSocketServer* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebSocketServer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QWebSocketServer_virtualbase_event(VirtualQWebSocketServer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebSocketServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QWebSocketServer_virtualbase_eventFilter(VirtualQWebSocketServer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebSocketServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QWebSocketServer_virtualbase_timerEvent(VirtualQWebSocketServer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebSocketServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QWebSocketServer_virtualbase_childEvent(VirtualQWebSocketServer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebSocketServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QWebSocketServer_virtualbase_customEvent(VirtualQWebSocketServer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebSocketServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QWebSocketServer_virtualbase_connectNotify(VirtualQWebSocketServer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebSocketServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QWebSocketServer_virtualbase_disconnectNotify(VirtualQWebSocketServer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebSocketServer_protectedbase_sender(const VirtualQWebSocketServer* self);
	friend int QWebSocketServer_protectedbase_senderSignalIndex(const VirtualQWebSocketServer* self);
	friend int QWebSocketServer_protectedbase_receivers(const VirtualQWebSocketServer* self, const char* signal);
	friend bool QWebSocketServer_protectedbase_isSignalConnected(const VirtualQWebSocketServer* self, QMetaMethod* signal);
};

VirtualQWebSocketServer* QWebSocketServer_new_serverName_secureMode(const QWebSocketServer_VTable* vtbl, size_t vdata, struct seaqt_string serverName, int secureMode) {
	QString serverName_QString = QString::fromUtf8(serverName.data, serverName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebSocketServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebSocketServer(vtbl, serverName_QString, static_cast<QWebSocketServer::SslMode>(secureMode)) : nullptr;
}

VirtualQWebSocketServer* QWebSocketServer_new_serverName_secureMode_parent(const QWebSocketServer_VTable* vtbl, size_t vdata, struct seaqt_string serverName, int secureMode, QObject* parent) {
	QString serverName_QString = QString::fromUtf8(serverName.data, serverName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebSocketServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebSocketServer(vtbl, serverName_QString, static_cast<QWebSocketServer::SslMode>(secureMode), parent) : nullptr;
}

void QWebSocketServer_virtbase(QWebSocketServer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebSocketServer_metaObject(const QWebSocketServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebSocketServer_metacast(QWebSocketServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebSocketServer_metacall(QWebSocketServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebSocketServer_tr_s(const char* s) {
	QString _ret = QWebSocketServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebSocketServer_listen(QWebSocketServer* self) {
	return self->listen();
}

void QWebSocketServer_close(QWebSocketServer* self) {
	self->close();
}

bool QWebSocketServer_isListening(const QWebSocketServer* self) {
	return self->isListening();
}

void QWebSocketServer_setMaxPendingConnections(QWebSocketServer* self, int numConnections) {
	self->setMaxPendingConnections(static_cast<int>(numConnections));
}

int QWebSocketServer_maxPendingConnections(const QWebSocketServer* self) {
	return self->maxPendingConnections();
}

void QWebSocketServer_setHandshakeTimeout_int(QWebSocketServer* self, int msec) {
	self->setHandshakeTimeout(static_cast<int>(msec));
}

int QWebSocketServer_handshakeTimeoutMS(const QWebSocketServer* self) {
	return self->handshakeTimeoutMS();
}

unsigned short QWebSocketServer_serverPort(const QWebSocketServer* self) {
	quint16 _ret = self->serverPort();
	return static_cast<unsigned short>(_ret);
}

QHostAddress* QWebSocketServer_serverAddress(const QWebSocketServer* self) {
	return new QHostAddress(self->serverAddress());
}

QUrl* QWebSocketServer_serverUrl(const QWebSocketServer* self) {
	return new QUrl(self->serverUrl());
}

int QWebSocketServer_secureMode(const QWebSocketServer* self) {
	QWebSocketServer::SslMode _ret = self->secureMode();
	return static_cast<int>(_ret);
}

bool QWebSocketServer_setSocketDescriptor(QWebSocketServer* self, intptr_t socketDescriptor) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor));
}

intptr_t QWebSocketServer_socketDescriptor(const QWebSocketServer* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

bool QWebSocketServer_setNativeDescriptor(QWebSocketServer* self, intptr_t descriptor) {
	return self->setNativeDescriptor((qintptr)(descriptor));
}

intptr_t QWebSocketServer_nativeDescriptor(const QWebSocketServer* self) {
	qintptr _ret = self->nativeDescriptor();
	return (intptr_t)(_ret);
}

bool QWebSocketServer_hasPendingConnections(const QWebSocketServer* self) {
	return self->hasPendingConnections();
}

QWebSocket* QWebSocketServer_nextPendingConnection(QWebSocketServer* self) {
	return self->nextPendingConnection();
}

int QWebSocketServer_error(const QWebSocketServer* self) {
	QWebSocketProtocol::CloseCode _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QWebSocketServer_errorString(const QWebSocketServer* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebSocketServer_pauseAccepting(QWebSocketServer* self) {
	self->pauseAccepting();
}

void QWebSocketServer_resumeAccepting(QWebSocketServer* self) {
	self->resumeAccepting();
}

void QWebSocketServer_setServerName(QWebSocketServer* self, struct seaqt_string serverName) {
	QString serverName_QString = QString::fromUtf8(serverName.data, serverName.len);
	self->setServerName(serverName_QString);
}

struct seaqt_string QWebSocketServer_serverName(const QWebSocketServer* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebSocketServer_setSupportedSubprotocols(QWebSocketServer* self, struct seaqt_array /* of struct seaqt_string */  protocols) {
	QStringList protocols_QList;
	protocols_QList.reserve(protocols.len);
	struct seaqt_string* protocols_arr = static_cast<struct seaqt_string*>(protocols.data);
	for(size_t i = 0; i < protocols.len; ++i) {
		QString protocols_arr_i_QString = QString::fromUtf8(protocols_arr[i].data, protocols_arr[i].len);
		protocols_QList.push_back(protocols_arr_i_QString);
	}
	self->setSupportedSubprotocols(protocols_QList);
}

struct seaqt_array /* of struct seaqt_string */  QWebSocketServer_supportedSubprotocols(const QWebSocketServer* self) {
	QStringList _ret = self->supportedSubprotocols();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebSocketServer_setProxy(QWebSocketServer* self, QNetworkProxy* networkProxy) {
	self->setProxy(*networkProxy);
}

QNetworkProxy* QWebSocketServer_proxy(const QWebSocketServer* self) {
	return new QNetworkProxy(self->proxy());
}

void QWebSocketServer_setSslConfiguration(QWebSocketServer* self, QSslConfiguration* sslConfiguration) {
	self->setSslConfiguration(*sslConfiguration);
}

QSslConfiguration* QWebSocketServer_sslConfiguration(const QWebSocketServer* self) {
	return new QSslConfiguration(self->sslConfiguration());
}

struct seaqt_array /* of int */  QWebSocketServer_supportedVersions(const QWebSocketServer* self) {
	QList<QWebSocketProtocol::Version> _ret = self->supportedVersions();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QWebSocketProtocol::Version _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebSocketServer_handleConnection(const QWebSocketServer* self, QTcpSocket* socket) {
	self->handleConnection(socket);
}

void QWebSocketServer_acceptError(QWebSocketServer* self, int socketError) {
	self->acceptError(static_cast<QAbstractSocket::SocketError>(socketError));
}

void QWebSocketServer_connect_acceptError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(QAbstractSocket::SocketError)>(&QWebSocketServer::acceptError), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketError socketError) {
			QAbstractSocket::SocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_serverError(QWebSocketServer* self, int closeCode) {
	self->serverError(static_cast<QWebSocketProtocol::CloseCode>(closeCode));
}

void QWebSocketServer_connect_serverError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(QWebSocketProtocol::CloseCode)>(&QWebSocketServer::serverError), self, [callback, release = seaqt::release_callback{slot,release}](QWebSocketProtocol::CloseCode closeCode) {
			QWebSocketProtocol::CloseCode closeCode_ret = closeCode;
			int sigval1 = static_cast<int>(closeCode_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_originAuthenticationRequired(QWebSocketServer* self, QWebSocketCorsAuthenticator* pAuthenticator) {
	self->originAuthenticationRequired(pAuthenticator);
}

void QWebSocketServer_connect_originAuthenticationRequired(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QWebSocketCorsAuthenticator*), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(QWebSocketCorsAuthenticator*)>(&QWebSocketServer::originAuthenticationRequired), self, [callback, release = seaqt::release_callback{slot,release}](QWebSocketCorsAuthenticator* pAuthenticator) {
			QWebSocketCorsAuthenticator* sigval1 = pAuthenticator;
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_newConnection(QWebSocketServer* self) {
	self->newConnection();
}

void QWebSocketServer_connect_newConnection(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)()>(&QWebSocketServer::newConnection), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QWebSocketServer_peerVerifyError(QWebSocketServer* self, QSslError* error) {
	self->peerVerifyError(*error);
}

void QWebSocketServer_connect_peerVerifyError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(const QSslError&)>(&QWebSocketServer::peerVerifyError), self, [callback, release = seaqt::release_callback{slot,release}](const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_sslErrors(QWebSocketServer* self, struct seaqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->sslErrors(errors_QList);
}

void QWebSocketServer_connect_sslErrors(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(const QList<QSslError>&)>(&QWebSocketServer::sslErrors), self, [callback, release = seaqt::release_callback{slot,release}](const QList<QSslError>& errors) {
			const QList<QSslError>& errors_ret = errors;
			// Convert QList<> from C++ memory to manually-managed C memory
			QSslError** errors_arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * errors_ret.length()));
			for (size_t i = 0, e = errors_ret.length(); i < e; ++i) {
				errors_arr[i] = new QSslError(errors_ret[i]);
			}
			struct seaqt_array errors_out;
			errors_out.len = errors_ret.length();
			errors_out.data = static_cast<void*>(errors_arr);
			struct seaqt_array /* of QSslError* */  sigval1 = errors_out;
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_preSharedKeyAuthenticationRequired(QWebSocketServer* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->preSharedKeyAuthenticationRequired(authenticator);
}

void QWebSocketServer_connect_preSharedKeyAuthenticationRequired(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(QSslPreSharedKeyAuthenticator*)>(&QWebSocketServer::preSharedKeyAuthenticationRequired), self, [callback, release = seaqt::release_callback{slot,release}](QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_alertSent(QWebSocketServer* self, int level, int type, struct seaqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertSent(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QWebSocketServer_connect_alertSent(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QWebSocketServer::alertSent), self, [callback, release = seaqt::release_callback{slot,release}](QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
			QSsl::AlertLevel level_ret = level;
			int sigval1 = static_cast<int>(level_ret);
			QSsl::AlertType type_ret = type;
			int sigval2 = static_cast<int>(type_ret);
			const QString description_ret = description;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray description_b = description_ret.toUtf8();
			struct seaqt_string description_ms;
			description_ms.len = description_b.length();
			description_ms.data = static_cast<char*>(malloc(description_ms.len));
			memcpy(description_ms.data, description_b.data(), description_ms.len);
			struct seaqt_string sigval3 = description_ms;
			callback(release.slot, sigval1, sigval2, sigval3);
	});
}

void QWebSocketServer_alertReceived(QWebSocketServer* self, int level, int type, struct seaqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertReceived(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QWebSocketServer_connect_alertReceived(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QWebSocketServer::alertReceived), self, [callback, release = seaqt::release_callback{slot,release}](QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
			QSsl::AlertLevel level_ret = level;
			int sigval1 = static_cast<int>(level_ret);
			QSsl::AlertType type_ret = type;
			int sigval2 = static_cast<int>(type_ret);
			const QString description_ret = description;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray description_b = description_ret.toUtf8();
			struct seaqt_string description_ms;
			description_ms.len = description_b.length();
			description_ms.data = static_cast<char*>(malloc(description_ms.len));
			memcpy(description_ms.data, description_b.data(), description_ms.len);
			struct seaqt_string sigval3 = description_ms;
			callback(release.slot, sigval1, sigval2, sigval3);
	});
}

void QWebSocketServer_handshakeInterruptedOnError(QWebSocketServer* self, QSslError* error) {
	self->handshakeInterruptedOnError(*error);
}

void QWebSocketServer_connect_handshakeInterruptedOnError(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)(const QSslError&)>(&QWebSocketServer::handshakeInterruptedOnError), self, [callback, release = seaqt::release_callback{slot,release}](const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocketServer_closed(QWebSocketServer* self) {
	self->closed();
}

void QWebSocketServer_connect_closed(QWebSocketServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWebSocketServer::connect(self, static_cast<void (QWebSocketServer::*)()>(&QWebSocketServer::closed), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QWebSocketServer_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebSocketServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSocketServer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebSocketServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebSocketServer_listen_address(QWebSocketServer* self, QHostAddress* address) {
	return self->listen(*address);
}

bool QWebSocketServer_listen_address_port(QWebSocketServer* self, QHostAddress* address, unsigned short port) {
	return self->listen(*address, static_cast<quint16>(port));
}

const QMetaObject* QWebSocketServer_staticMetaObject() { return &QWebSocketServer::staticMetaObject; }
void* QWebSocketServer_vdata(VirtualQWebSocketServer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQWebSocketServer>()); }
VirtualQWebSocketServer* vdata_QWebSocketServer(void* vdata) { return reinterpret_cast<VirtualQWebSocketServer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQWebSocketServer>()); }

QMetaObject* QWebSocketServer_virtualbase_metaObject(const VirtualQWebSocketServer* self) {

	return (QMetaObject*) self->QWebSocketServer::metaObject();
}

void* QWebSocketServer_virtualbase_metacast(VirtualQWebSocketServer* self, const char* param1) {

	return self->QWebSocketServer::qt_metacast(param1);
}

int QWebSocketServer_virtualbase_metacall(VirtualQWebSocketServer* self, int param1, int param2, void** param3) {

	return self->QWebSocketServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QWebSocket* QWebSocketServer_virtualbase_nextPendingConnection(VirtualQWebSocketServer* self) {

	return self->QWebSocketServer::nextPendingConnection();
}

bool QWebSocketServer_virtualbase_event(VirtualQWebSocketServer* self, QEvent* event) {

	return self->QWebSocketServer::event(event);
}

bool QWebSocketServer_virtualbase_eventFilter(VirtualQWebSocketServer* self, QObject* watched, QEvent* event) {

	return self->QWebSocketServer::eventFilter(watched, event);
}

void QWebSocketServer_virtualbase_timerEvent(VirtualQWebSocketServer* self, QTimerEvent* event) {

	self->QWebSocketServer::timerEvent(event);
}

void QWebSocketServer_virtualbase_childEvent(VirtualQWebSocketServer* self, QChildEvent* event) {

	self->QWebSocketServer::childEvent(event);
}

void QWebSocketServer_virtualbase_customEvent(VirtualQWebSocketServer* self, QEvent* event) {

	self->QWebSocketServer::customEvent(event);
}

void QWebSocketServer_virtualbase_connectNotify(VirtualQWebSocketServer* self, QMetaMethod* signal) {

	self->QWebSocketServer::connectNotify(*signal);
}

void QWebSocketServer_virtualbase_disconnectNotify(VirtualQWebSocketServer* self, QMetaMethod* signal) {

	self->QWebSocketServer::disconnectNotify(*signal);
}

QObject* QWebSocketServer_protectedbase_sender(const VirtualQWebSocketServer* self) {
	return self->QWebSocketServer::sender();
}

int QWebSocketServer_protectedbase_senderSignalIndex(const VirtualQWebSocketServer* self) {
	return self->QWebSocketServer::senderSignalIndex();
}

int QWebSocketServer_protectedbase_receivers(const VirtualQWebSocketServer* self, const char* signal) {
	return self->QWebSocketServer::receivers(signal);
}

bool QWebSocketServer_protectedbase_isSignalConnected(const VirtualQWebSocketServer* self, QMetaMethod* signal) {
	return self->QWebSocketServer::isSignalConnected(*signal);
}

void QWebSocketServer_delete(QWebSocketServer* self) {
	delete self;
}

