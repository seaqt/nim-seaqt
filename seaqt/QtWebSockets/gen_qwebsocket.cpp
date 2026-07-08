#include <QAuthenticator>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QList>
#include <QMaskGenerator>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkProxy>
#include <QNetworkRequest>
#include <QObject>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslPreSharedKeyAuthenticator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QWebSocket>
#include <QWebSocketHandshakeOptions>
#include <qwebsocket.h>
#include "gen_qwebsocket.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQWebSocket final : public QWebSocket {
	const QWebSocket_VTable* vtbl;
public:
	friend void* QWebSocket_vdata(VirtualQWebSocket* self);
	friend VirtualQWebSocket* vdata_QWebSocket(void* vdata);

	VirtualQWebSocket(const QWebSocket_VTable* vtbl): QWebSocket(), vtbl(vtbl) {}
	VirtualQWebSocket(const QWebSocket_VTable* vtbl, const QString& origin): QWebSocket(origin), vtbl(vtbl) {}
	VirtualQWebSocket(const QWebSocket_VTable* vtbl, const QString& origin, QWebSocketProtocol::Version version): QWebSocket(origin, version), vtbl(vtbl) {}
	VirtualQWebSocket(const QWebSocket_VTable* vtbl, const QString& origin, QWebSocketProtocol::Version version, QObject* parent): QWebSocket(origin, version, parent), vtbl(vtbl) {}

	virtual ~VirtualQWebSocket() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebSocket::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QWebSocket_virtualbase_metaObject(const VirtualQWebSocket* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QWebSocket_virtualbase_metacast(VirtualQWebSocket* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QWebSocket_virtualbase_metacall(VirtualQWebSocket* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebSocket::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QWebSocket_virtualbase_event(VirtualQWebSocket* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QWebSocket_virtualbase_eventFilter(VirtualQWebSocket* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QWebSocket_virtualbase_timerEvent(VirtualQWebSocket* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QWebSocket_virtualbase_childEvent(VirtualQWebSocket* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QWebSocket_virtualbase_customEvent(VirtualQWebSocket* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QWebSocket_virtualbase_connectNotify(VirtualQWebSocket* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QWebSocket_virtualbase_disconnectNotify(VirtualQWebSocket* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebSocket_protectedbase_sender(const VirtualQWebSocket* self);
	friend int QWebSocket_protectedbase_senderSignalIndex(const VirtualQWebSocket* self);
	friend int QWebSocket_protectedbase_receivers(const VirtualQWebSocket* self, const char* signal);
	friend bool QWebSocket_protectedbase_isSignalConnected(const VirtualQWebSocket* self, QMetaMethod* signal);
};

VirtualQWebSocket* QWebSocket_new(const QWebSocket_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebSocket>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebSocket(vtbl) : nullptr;
}

VirtualQWebSocket* QWebSocket_new_origin(const QWebSocket_VTable* vtbl, size_t vdata, struct seaqt_string origin) {
	QString origin_QString = QString::fromUtf8(origin.data, origin.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebSocket>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebSocket(vtbl, origin_QString) : nullptr;
}

VirtualQWebSocket* QWebSocket_new_origin_version(const QWebSocket_VTable* vtbl, size_t vdata, struct seaqt_string origin, int version) {
	QString origin_QString = QString::fromUtf8(origin.data, origin.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebSocket>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebSocket(vtbl, origin_QString, static_cast<QWebSocketProtocol::Version>(version)) : nullptr;
}

VirtualQWebSocket* QWebSocket_new_origin_version_parent(const QWebSocket_VTable* vtbl, size_t vdata, struct seaqt_string origin, int version, QObject* parent) {
	QString origin_QString = QString::fromUtf8(origin.data, origin.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebSocket>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebSocket(vtbl, origin_QString, static_cast<QWebSocketProtocol::Version>(version), parent) : nullptr;
}

void QWebSocket_virtbase(QWebSocket* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebSocket_metaObject(const QWebSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebSocket_metacast(QWebSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebSocket_metacall(QWebSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebSocket_tr_s(const char* s) {
	QString _ret = QWebSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebSocket_abort(QWebSocket* self) {
	self->abort();
}

int QWebSocket_error(const QWebSocket* self) {
	QAbstractSocket::SocketError _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QWebSocket_errorString(const QWebSocket* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebSocket_flush(QWebSocket* self) {
	return self->flush();
}

bool QWebSocket_isValid(const QWebSocket* self) {
	return self->isValid();
}

QHostAddress* QWebSocket_localAddress(const QWebSocket* self) {
	return new QHostAddress(self->localAddress());
}

unsigned short QWebSocket_localPort(const QWebSocket* self) {
	quint16 _ret = self->localPort();
	return static_cast<unsigned short>(_ret);
}

int QWebSocket_pauseMode(const QWebSocket* self) {
	QAbstractSocket::PauseModes _ret = self->pauseMode();
	return static_cast<int>(_ret);
}

QHostAddress* QWebSocket_peerAddress(const QWebSocket* self) {
	return new QHostAddress(self->peerAddress());
}

struct seaqt_string QWebSocket_peerName(const QWebSocket* self) {
	QString _ret = self->peerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned short QWebSocket_peerPort(const QWebSocket* self) {
	quint16 _ret = self->peerPort();
	return static_cast<unsigned short>(_ret);
}

QNetworkProxy* QWebSocket_proxy(const QWebSocket* self) {
	return new QNetworkProxy(self->proxy());
}

void QWebSocket_setProxy(QWebSocket* self, QNetworkProxy* networkProxy) {
	self->setProxy(*networkProxy);
}

void QWebSocket_setMaskGenerator(QWebSocket* self, QMaskGenerator* maskGenerator) {
	self->setMaskGenerator(maskGenerator);
}

QMaskGenerator* QWebSocket_maskGenerator(const QWebSocket* self) {
	return (QMaskGenerator*) self->maskGenerator();
}

long long QWebSocket_readBufferSize(const QWebSocket* self) {
	qint64 _ret = self->readBufferSize();
	return static_cast<long long>(_ret);
}

void QWebSocket_setReadBufferSize(QWebSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

void QWebSocket_resume(QWebSocket* self) {
	self->resume();
}

void QWebSocket_setPauseMode(QWebSocket* self, int pauseMode) {
	self->setPauseMode(static_cast<QAbstractSocket::PauseModes>(pauseMode));
}

int QWebSocket_state(const QWebSocket* self) {
	QAbstractSocket::SocketState _ret = self->state();
	return static_cast<int>(_ret);
}

int QWebSocket_version(const QWebSocket* self) {
	QWebSocketProtocol::Version _ret = self->version();
	return static_cast<int>(_ret);
}

struct seaqt_string QWebSocket_resourceName(const QWebSocket* self) {
	QString _ret = self->resourceName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QWebSocket_requestUrl(const QWebSocket* self) {
	return new QUrl(self->requestUrl());
}

QNetworkRequest* QWebSocket_request(const QWebSocket* self) {
	return new QNetworkRequest(self->request());
}

QWebSocketHandshakeOptions* QWebSocket_handshakeOptions(const QWebSocket* self) {
	return new QWebSocketHandshakeOptions(self->handshakeOptions());
}

struct seaqt_string QWebSocket_origin(const QWebSocket* self) {
	QString _ret = self->origin();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSocket_subprotocol(const QWebSocket* self) {
	QString _ret = self->subprotocol();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QWebSocket_closeCode(const QWebSocket* self) {
	QWebSocketProtocol::CloseCode _ret = self->closeCode();
	return static_cast<int>(_ret);
}

struct seaqt_string QWebSocket_closeReason(const QWebSocket* self) {
	QString _ret = self->closeReason();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QWebSocket_sendTextMessage(QWebSocket* self, struct seaqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	qint64 _ret = self->sendTextMessage(message_QString);
	return static_cast<long long>(_ret);
}

long long QWebSocket_sendBinaryMessage(QWebSocket* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	qint64 _ret = self->sendBinaryMessage(data_QByteArray);
	return static_cast<long long>(_ret);
}

void QWebSocket_ignoreSslErrors_errors(QWebSocket* self, struct seaqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->ignoreSslErrors(errors_QList);
}

void QWebSocket_continueInterruptedHandshake(QWebSocket* self) {
	self->continueInterruptedHandshake();
}

void QWebSocket_setSslConfiguration(QWebSocket* self, QSslConfiguration* sslConfiguration) {
	self->setSslConfiguration(*sslConfiguration);
}

QSslConfiguration* QWebSocket_sslConfiguration(const QWebSocket* self) {
	return new QSslConfiguration(self->sslConfiguration());
}

long long QWebSocket_bytesToWrite(const QWebSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

void QWebSocket_setMaxAllowedIncomingFrameSize(QWebSocket* self, unsigned long long maxAllowedIncomingFrameSize) {
	self->setMaxAllowedIncomingFrameSize(static_cast<quint64>(maxAllowedIncomingFrameSize));
}

unsigned long long QWebSocket_maxAllowedIncomingFrameSize(const QWebSocket* self) {
	quint64 _ret = self->maxAllowedIncomingFrameSize();
	return static_cast<unsigned long long>(_ret);
}

void QWebSocket_setMaxAllowedIncomingMessageSize(QWebSocket* self, unsigned long long maxAllowedIncomingMessageSize) {
	self->setMaxAllowedIncomingMessageSize(static_cast<quint64>(maxAllowedIncomingMessageSize));
}

unsigned long long QWebSocket_maxAllowedIncomingMessageSize(const QWebSocket* self) {
	quint64 _ret = self->maxAllowedIncomingMessageSize();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QWebSocket_maxIncomingMessageSize() {
	quint64 _ret = QWebSocket::maxIncomingMessageSize();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QWebSocket_maxIncomingFrameSize() {
	quint64 _ret = QWebSocket::maxIncomingFrameSize();
	return static_cast<unsigned long long>(_ret);
}

void QWebSocket_setOutgoingFrameSize(QWebSocket* self, unsigned long long outgoingFrameSize) {
	self->setOutgoingFrameSize(static_cast<quint64>(outgoingFrameSize));
}

unsigned long long QWebSocket_outgoingFrameSize(const QWebSocket* self) {
	quint64 _ret = self->outgoingFrameSize();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QWebSocket_maxOutgoingFrameSize() {
	quint64 _ret = QWebSocket::maxOutgoingFrameSize();
	return static_cast<unsigned long long>(_ret);
}

void QWebSocket_close(QWebSocket* self) {
	self->close();
}

void QWebSocket_open_url(QWebSocket* self, QUrl* url) {
	self->open(*url);
}

void QWebSocket_open_request(QWebSocket* self, QNetworkRequest* request) {
	self->open(*request);
}

void QWebSocket_open_url_options(QWebSocket* self, QUrl* url, QWebSocketHandshakeOptions* options) {
	self->open(*url, *options);
}

void QWebSocket_open_request_options(QWebSocket* self, QNetworkRequest* request, QWebSocketHandshakeOptions* options) {
	self->open(*request, *options);
}

void QWebSocket_ping(QWebSocket* self) {
	self->ping();
}

void QWebSocket_ignoreSslErrors(QWebSocket* self) {
	self->ignoreSslErrors();
}

void QWebSocket_aboutToClose(QWebSocket* self) {
	self->aboutToClose();
}

void QWebSocket_connect_aboutToClose(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)()>(&QWebSocket::aboutToClose), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QWebSocket_connected(QWebSocket* self) {
	self->connected();
}

void QWebSocket_connect_connected(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)()>(&QWebSocket::connected), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QWebSocket_disconnected(QWebSocket* self) {
	self->disconnected();
}

void QWebSocket_connect_disconnected(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)()>(&QWebSocket::disconnected), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QWebSocket_stateChanged(QWebSocket* self, int state) {
	self->stateChanged(static_cast<QAbstractSocket::SocketState>(state));
}

void QWebSocket_connect_stateChanged(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QAbstractSocket::SocketState)>(&QWebSocket::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketState state) {
			QAbstractSocket::SocketState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocket_proxyAuthenticationRequired(QWebSocket* self, QNetworkProxy* proxy, QAuthenticator* pAuthenticator) {
	self->proxyAuthenticationRequired(*proxy, pAuthenticator);
}

void QWebSocket_connect_proxyAuthenticationRequired(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QNetworkProxy&, QAuthenticator*)>(&QWebSocket::proxyAuthenticationRequired), self, [callback, release = seaqt::release_callback{slot,release}](const QNetworkProxy& proxy, QAuthenticator* pAuthenticator) {
			const QNetworkProxy& proxy_ret = proxy;
			// Cast returned reference into pointer
			QNetworkProxy* sigval1 = const_cast<QNetworkProxy*>(&proxy_ret);
			QAuthenticator* sigval2 = pAuthenticator;
			callback(release.slot, sigval1, sigval2);
	});
}

void QWebSocket_authenticationRequired(QWebSocket* self, QAuthenticator* authenticator) {
	self->authenticationRequired(authenticator);
}

void QWebSocket_connect_authenticationRequired(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QAuthenticator*), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QAuthenticator*)>(&QWebSocket::authenticationRequired), self, [callback, release = seaqt::release_callback{slot,release}](QAuthenticator* authenticator) {
			QAuthenticator* sigval1 = authenticator;
			callback(release.slot, sigval1);
	});
}

void QWebSocket_readChannelFinished(QWebSocket* self) {
	self->readChannelFinished();
}

void QWebSocket_connect_readChannelFinished(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)()>(&QWebSocket::readChannelFinished), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QWebSocket_textFrameReceived(QWebSocket* self, struct seaqt_string frame, bool isLastFrame) {
	QString frame_QString = QString::fromUtf8(frame.data, frame.len);
	self->textFrameReceived(frame_QString, isLastFrame);
}

void QWebSocket_connect_textFrameReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, bool), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QString&, bool)>(&QWebSocket::textFrameReceived), self, [callback, release = seaqt::release_callback{slot,release}](const QString& frame, bool isLastFrame) {
			const QString frame_ret = frame;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray frame_b = frame_ret.toUtf8();
			struct seaqt_string frame_ms;
			frame_ms.len = frame_b.length();
			frame_ms.data = static_cast<char*>(malloc(frame_ms.len));
			memcpy(frame_ms.data, frame_b.data(), frame_ms.len);
			struct seaqt_string sigval1 = frame_ms;
			bool sigval2 = isLastFrame;
			callback(release.slot, sigval1, sigval2);
	});
}

void QWebSocket_binaryFrameReceived(QWebSocket* self, struct seaqt_string frame, bool isLastFrame) {
	QByteArray frame_QByteArray(frame.data, frame.len);
	self->binaryFrameReceived(frame_QByteArray, isLastFrame);
}

void QWebSocket_connect_binaryFrameReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, bool), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QByteArray&, bool)>(&QWebSocket::binaryFrameReceived), self, [callback, release = seaqt::release_callback{slot,release}](const QByteArray& frame, bool isLastFrame) {
			const QByteArray frame_qb = frame;
			struct seaqt_string frame_ms;
			frame_ms.len = frame_qb.length();
			frame_ms.data = static_cast<char*>(malloc(frame_ms.len));
			memcpy(frame_ms.data, frame_qb.data(), frame_ms.len);
			struct seaqt_string sigval1 = frame_ms;
			bool sigval2 = isLastFrame;
			callback(release.slot, sigval1, sigval2);
	});
}

void QWebSocket_textMessageReceived(QWebSocket* self, struct seaqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->textMessageReceived(message_QString);
}

void QWebSocket_connect_textMessageReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QString&)>(&QWebSocket::textMessageReceived), self, [callback, release = seaqt::release_callback{slot,release}](const QString& message) {
			const QString message_ret = message;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray message_b = message_ret.toUtf8();
			struct seaqt_string message_ms;
			message_ms.len = message_b.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_b.data(), message_ms.len);
			struct seaqt_string sigval1 = message_ms;
			callback(release.slot, sigval1);
	});
}

void QWebSocket_binaryMessageReceived(QWebSocket* self, struct seaqt_string message) {
	QByteArray message_QByteArray(message.data, message.len);
	self->binaryMessageReceived(message_QByteArray);
}

void QWebSocket_connect_binaryMessageReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QByteArray&)>(&QWebSocket::binaryMessageReceived), self, [callback, release = seaqt::release_callback{slot,release}](const QByteArray& message) {
			const QByteArray message_qb = message;
			struct seaqt_string message_ms;
			message_ms.len = message_qb.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_qb.data(), message_ms.len);
			struct seaqt_string sigval1 = message_ms;
			callback(release.slot, sigval1);
	});
}

void QWebSocket_error_error(QWebSocket* self, int error) {
	self->error(static_cast<QAbstractSocket::SocketError>(error));
}

void QWebSocket_connect_error_error(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QAbstractSocket::SocketError)>(&QWebSocket::error), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketError error) {
			QAbstractSocket::SocketError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocket_errorOccurred(QWebSocket* self, int error) {
	self->errorOccurred(static_cast<QAbstractSocket::SocketError>(error));
}

void QWebSocket_connect_errorOccurred(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QAbstractSocket::SocketError)>(&QWebSocket::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketError error) {
			QAbstractSocket::SocketError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocket_pong(QWebSocket* self, unsigned long long elapsedTime, struct seaqt_string payload) {
	QByteArray payload_QByteArray(payload.data, payload.len);
	self->pong(static_cast<quint64>(elapsedTime), payload_QByteArray);
}

void QWebSocket_connect_pong(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, unsigned long long, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(quint64, const QByteArray&)>(&QWebSocket::pong), self, [callback, release = seaqt::release_callback{slot,release}](quint64 elapsedTime, const QByteArray& payload) {
			quint64 elapsedTime_ret = elapsedTime;
			unsigned long long sigval1 = static_cast<unsigned long long>(elapsedTime_ret);
			const QByteArray payload_qb = payload;
			struct seaqt_string payload_ms;
			payload_ms.len = payload_qb.length();
			payload_ms.data = static_cast<char*>(malloc(payload_ms.len));
			memcpy(payload_ms.data, payload_qb.data(), payload_ms.len);
			struct seaqt_string sigval2 = payload_ms;
			callback(release.slot, sigval1, sigval2);
	});
}

void QWebSocket_bytesWritten(QWebSocket* self, long long bytes) {
	self->bytesWritten(static_cast<qint64>(bytes));
}

void QWebSocket_connect_bytesWritten(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(qint64)>(&QWebSocket::bytesWritten), self, [callback, release = seaqt::release_callback{slot,release}](qint64 bytes) {
			qint64 bytes_ret = bytes;
			long long sigval1 = static_cast<long long>(bytes_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocket_peerVerifyError(QWebSocket* self, QSslError* error) {
	self->peerVerifyError(*error);
}

void QWebSocket_connect_peerVerifyError(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QSslError&)>(&QWebSocket::peerVerifyError), self, [callback, release = seaqt::release_callback{slot,release}](const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			callback(release.slot, sigval1);
	});
}

void QWebSocket_sslErrors(QWebSocket* self, struct seaqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->sslErrors(errors_QList);
}

void QWebSocket_connect_sslErrors(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QList<QSslError>&)>(&QWebSocket::sslErrors), self, [callback, release = seaqt::release_callback{slot,release}](const QList<QSslError>& errors) {
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

void QWebSocket_preSharedKeyAuthenticationRequired(QWebSocket* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->preSharedKeyAuthenticationRequired(authenticator);
}

void QWebSocket_connect_preSharedKeyAuthenticationRequired(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QSslPreSharedKeyAuthenticator*)>(&QWebSocket::preSharedKeyAuthenticationRequired), self, [callback, release = seaqt::release_callback{slot,release}](QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			callback(release.slot, sigval1);
	});
}

void QWebSocket_alertSent(QWebSocket* self, int level, int type, struct seaqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertSent(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QWebSocket_connect_alertSent(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QWebSocket::alertSent), self, [callback, release = seaqt::release_callback{slot,release}](QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
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

void QWebSocket_alertReceived(QWebSocket* self, int level, int type, struct seaqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertReceived(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QWebSocket_connect_alertReceived(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QWebSocket::alertReceived), self, [callback, release = seaqt::release_callback{slot,release}](QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
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

void QWebSocket_handshakeInterruptedOnError(QWebSocket* self, QSslError* error) {
	self->handshakeInterruptedOnError(*error);
}

void QWebSocket_connect_handshakeInterruptedOnError(QWebSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) {
	QWebSocket::connect(self, static_cast<void (QWebSocket::*)(const QSslError&)>(&QWebSocket::handshakeInterruptedOnError), self, [callback, release = seaqt::release_callback{slot,release}](const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QWebSocket_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebSocket_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebSocket_close_closeCode(QWebSocket* self, int closeCode) {
	self->close(static_cast<QWebSocketProtocol::CloseCode>(closeCode));
}

void QWebSocket_close_closeCode_reason(QWebSocket* self, int closeCode, struct seaqt_string reason) {
	QString reason_QString = QString::fromUtf8(reason.data, reason.len);
	self->close(static_cast<QWebSocketProtocol::CloseCode>(closeCode), reason_QString);
}

void QWebSocket_ping_payload(QWebSocket* self, struct seaqt_string payload) {
	QByteArray payload_QByteArray(payload.data, payload.len);
	self->ping(payload_QByteArray);
}

const QMetaObject* QWebSocket_staticMetaObject() { return &QWebSocket::staticMetaObject; }
void* QWebSocket_vdata(VirtualQWebSocket* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQWebSocket>()); }
VirtualQWebSocket* vdata_QWebSocket(void* vdata) { return reinterpret_cast<VirtualQWebSocket*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQWebSocket>()); }

QMetaObject* QWebSocket_virtualbase_metaObject(const VirtualQWebSocket* self) {

	return (QMetaObject*) self->QWebSocket::metaObject();
}

void* QWebSocket_virtualbase_metacast(VirtualQWebSocket* self, const char* param1) {

	return self->QWebSocket::qt_metacast(param1);
}

int QWebSocket_virtualbase_metacall(VirtualQWebSocket* self, int param1, int param2, void** param3) {

	return self->QWebSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWebSocket_virtualbase_event(VirtualQWebSocket* self, QEvent* event) {

	return self->QWebSocket::event(event);
}

bool QWebSocket_virtualbase_eventFilter(VirtualQWebSocket* self, QObject* watched, QEvent* event) {

	return self->QWebSocket::eventFilter(watched, event);
}

void QWebSocket_virtualbase_timerEvent(VirtualQWebSocket* self, QTimerEvent* event) {

	self->QWebSocket::timerEvent(event);
}

void QWebSocket_virtualbase_childEvent(VirtualQWebSocket* self, QChildEvent* event) {

	self->QWebSocket::childEvent(event);
}

void QWebSocket_virtualbase_customEvent(VirtualQWebSocket* self, QEvent* event) {

	self->QWebSocket::customEvent(event);
}

void QWebSocket_virtualbase_connectNotify(VirtualQWebSocket* self, QMetaMethod* signal) {

	self->QWebSocket::connectNotify(*signal);
}

void QWebSocket_virtualbase_disconnectNotify(VirtualQWebSocket* self, QMetaMethod* signal) {

	self->QWebSocket::disconnectNotify(*signal);
}

QObject* QWebSocket_protectedbase_sender(const VirtualQWebSocket* self) {
	return self->QWebSocket::sender();
}

int QWebSocket_protectedbase_senderSignalIndex(const VirtualQWebSocket* self) {
	return self->QWebSocket::senderSignalIndex();
}

int QWebSocket_protectedbase_receivers(const VirtualQWebSocket* self, const char* signal) {
	return self->QWebSocket::receivers(signal);
}

bool QWebSocket_protectedbase_isSignalConnected(const VirtualQWebSocket* self, QMetaMethod* signal) {
	return self->QWebSocket::isSignalConnected(*signal);
}

void QWebSocket_delete(QWebSocket* self) {
	delete self;
}

