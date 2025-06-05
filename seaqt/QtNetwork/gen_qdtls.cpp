#include <QByteArray>
#include <QChildEvent>
#include <QDtls>
#include <QDtlsClientVerifier>
#define WORKAROUND_INNER_CLASS_DEFINITION_QDtlsClientVerifier__GeneratorParameters
#include <QEvent>
#include <QHostAddress>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSslCipher>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslPreSharedKeyAuthenticator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUdpSocket>
#include <qdtls.h>
#include "gen_qdtls.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDtlsClientVerifier final : public QDtlsClientVerifier {
	const QDtlsClientVerifier_VTable* vtbl;
public:
	friend void* QDtlsClientVerifier_vdata(VirtualQDtlsClientVerifier* self);
	friend VirtualQDtlsClientVerifier* vdata_QDtlsClientVerifier(void* vdata);

	VirtualQDtlsClientVerifier(const QDtlsClientVerifier_VTable* vtbl): QDtlsClientVerifier(), vtbl(vtbl) {}
	VirtualQDtlsClientVerifier(const QDtlsClientVerifier_VTable* vtbl, QObject* parent): QDtlsClientVerifier(parent), vtbl(vtbl) {}

	virtual ~VirtualQDtlsClientVerifier() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDtlsClientVerifier::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDtlsClientVerifier_virtualbase_metaObject(const VirtualQDtlsClientVerifier* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDtlsClientVerifier::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDtlsClientVerifier_virtualbase_metacast(VirtualQDtlsClientVerifier* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDtlsClientVerifier::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDtlsClientVerifier_virtualbase_metacall(VirtualQDtlsClientVerifier* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDtlsClientVerifier::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDtlsClientVerifier_virtualbase_event(VirtualQDtlsClientVerifier* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDtlsClientVerifier::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDtlsClientVerifier_virtualbase_eventFilter(VirtualQDtlsClientVerifier* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDtlsClientVerifier::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDtlsClientVerifier_virtualbase_timerEvent(VirtualQDtlsClientVerifier* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDtlsClientVerifier::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDtlsClientVerifier_virtualbase_childEvent(VirtualQDtlsClientVerifier* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDtlsClientVerifier::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDtlsClientVerifier_virtualbase_customEvent(VirtualQDtlsClientVerifier* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDtlsClientVerifier::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDtlsClientVerifier_virtualbase_connectNotify(VirtualQDtlsClientVerifier* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDtlsClientVerifier::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDtlsClientVerifier_virtualbase_disconnectNotify(VirtualQDtlsClientVerifier* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDtlsClientVerifier_protectedbase_sender(const VirtualQDtlsClientVerifier* self);
	friend int QDtlsClientVerifier_protectedbase_senderSignalIndex(const VirtualQDtlsClientVerifier* self);
	friend int QDtlsClientVerifier_protectedbase_receivers(const VirtualQDtlsClientVerifier* self, const char* signal);
	friend bool QDtlsClientVerifier_protectedbase_isSignalConnected(const VirtualQDtlsClientVerifier* self, QMetaMethod* signal);
};

VirtualQDtlsClientVerifier* QDtlsClientVerifier_new(const QDtlsClientVerifier_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDtlsClientVerifier>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDtlsClientVerifier(vtbl) : nullptr;
}

VirtualQDtlsClientVerifier* QDtlsClientVerifier_new2(const QDtlsClientVerifier_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDtlsClientVerifier>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDtlsClientVerifier(vtbl, parent) : nullptr;
}

void QDtlsClientVerifier_virtbase(QDtlsClientVerifier* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDtlsClientVerifier_metaObject(const QDtlsClientVerifier* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDtlsClientVerifier_metacast(QDtlsClientVerifier* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDtlsClientVerifier_metacall(QDtlsClientVerifier* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDtlsClientVerifier_tr(const char* s) {
	QString _ret = QDtlsClientVerifier::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDtlsClientVerifier_setCookieGeneratorParameters(QDtlsClientVerifier* self, QDtlsClientVerifier__GeneratorParameters* params) {
	return self->setCookieGeneratorParameters(*params);
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier_cookieGeneratorParameters(const QDtlsClientVerifier* self) {
	return new QDtlsClientVerifier::GeneratorParameters(self->cookieGeneratorParameters());
}

bool QDtlsClientVerifier_verifyClient(QDtlsClientVerifier* self, QUdpSocket* socket, struct seaqt_string dgram, QHostAddress* address, unsigned short port) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	return self->verifyClient(socket, dgram_QByteArray, *address, static_cast<quint16>(port));
}

struct seaqt_string QDtlsClientVerifier_verifiedHello(const QDtlsClientVerifier* self) {
	QByteArray _qb = self->verifiedHello();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

unsigned char QDtlsClientVerifier_dtlsError(const QDtlsClientVerifier* self) {
	QDtlsError _ret = self->dtlsError();
	return static_cast<unsigned char>(_ret);
}

struct seaqt_string QDtlsClientVerifier_dtlsErrorString(const QDtlsClientVerifier* self) {
	QString _ret = self->dtlsErrorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDtlsClientVerifier_tr2(const char* s, const char* c) {
	QString _ret = QDtlsClientVerifier::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDtlsClientVerifier_tr3(const char* s, const char* c, int n) {
	QString _ret = QDtlsClientVerifier::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDtlsClientVerifier_staticMetaObject() { return &QDtlsClientVerifier::staticMetaObject; }
void* QDtlsClientVerifier_vdata(VirtualQDtlsClientVerifier* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDtlsClientVerifier>()); }
VirtualQDtlsClientVerifier* vdata_QDtlsClientVerifier(void* vdata) { return reinterpret_cast<VirtualQDtlsClientVerifier*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDtlsClientVerifier>()); }

QMetaObject* QDtlsClientVerifier_virtualbase_metaObject(const VirtualQDtlsClientVerifier* self) {

	return (QMetaObject*) self->QDtlsClientVerifier::metaObject();
}

void* QDtlsClientVerifier_virtualbase_metacast(VirtualQDtlsClientVerifier* self, const char* param1) {

	return self->QDtlsClientVerifier::qt_metacast(param1);
}

int QDtlsClientVerifier_virtualbase_metacall(VirtualQDtlsClientVerifier* self, int param1, int param2, void** param3) {

	return self->QDtlsClientVerifier::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QDtlsClientVerifier_virtualbase_event(VirtualQDtlsClientVerifier* self, QEvent* event) {

	return self->QDtlsClientVerifier::event(event);
}

bool QDtlsClientVerifier_virtualbase_eventFilter(VirtualQDtlsClientVerifier* self, QObject* watched, QEvent* event) {

	return self->QDtlsClientVerifier::eventFilter(watched, event);
}

void QDtlsClientVerifier_virtualbase_timerEvent(VirtualQDtlsClientVerifier* self, QTimerEvent* event) {

	self->QDtlsClientVerifier::timerEvent(event);
}

void QDtlsClientVerifier_virtualbase_childEvent(VirtualQDtlsClientVerifier* self, QChildEvent* event) {

	self->QDtlsClientVerifier::childEvent(event);
}

void QDtlsClientVerifier_virtualbase_customEvent(VirtualQDtlsClientVerifier* self, QEvent* event) {

	self->QDtlsClientVerifier::customEvent(event);
}

void QDtlsClientVerifier_virtualbase_connectNotify(VirtualQDtlsClientVerifier* self, QMetaMethod* signal) {

	self->QDtlsClientVerifier::connectNotify(*signal);
}

void QDtlsClientVerifier_virtualbase_disconnectNotify(VirtualQDtlsClientVerifier* self, QMetaMethod* signal) {

	self->QDtlsClientVerifier::disconnectNotify(*signal);
}

QObject* QDtlsClientVerifier_protectedbase_sender(const VirtualQDtlsClientVerifier* self) {
	return self->sender();
}

int QDtlsClientVerifier_protectedbase_senderSignalIndex(const VirtualQDtlsClientVerifier* self) {
	return self->senderSignalIndex();
}

int QDtlsClientVerifier_protectedbase_receivers(const VirtualQDtlsClientVerifier* self, const char* signal) {
	return self->receivers(signal);
}

bool QDtlsClientVerifier_protectedbase_isSignalConnected(const VirtualQDtlsClientVerifier* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDtlsClientVerifier_delete(QDtlsClientVerifier* self) {
	delete self;
}

class VirtualQDtls final : public QDtls {
	const QDtls_VTable* vtbl;
public:
	friend void* QDtls_vdata(VirtualQDtls* self);
	friend VirtualQDtls* vdata_QDtls(void* vdata);

	VirtualQDtls(const QDtls_VTable* vtbl, QSslSocket::SslMode mode): QDtls(mode), vtbl(vtbl) {}
	VirtualQDtls(const QDtls_VTable* vtbl, QSslSocket::SslMode mode, QObject* parent): QDtls(mode, parent), vtbl(vtbl) {}

	virtual ~VirtualQDtls() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDtls::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDtls_virtualbase_metaObject(const VirtualQDtls* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDtls::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDtls_virtualbase_metacast(VirtualQDtls* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDtls::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDtls_virtualbase_metacall(VirtualQDtls* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDtls::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDtls_virtualbase_event(VirtualQDtls* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDtls::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDtls_virtualbase_eventFilter(VirtualQDtls* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDtls::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDtls_virtualbase_timerEvent(VirtualQDtls* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDtls::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDtls_virtualbase_childEvent(VirtualQDtls* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDtls::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDtls_virtualbase_customEvent(VirtualQDtls* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDtls::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDtls_virtualbase_connectNotify(VirtualQDtls* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDtls::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDtls_virtualbase_disconnectNotify(VirtualQDtls* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDtls_protectedbase_sender(const VirtualQDtls* self);
	friend int QDtls_protectedbase_senderSignalIndex(const VirtualQDtls* self);
	friend int QDtls_protectedbase_receivers(const VirtualQDtls* self, const char* signal);
	friend bool QDtls_protectedbase_isSignalConnected(const VirtualQDtls* self, QMetaMethod* signal);
};

VirtualQDtls* QDtls_new(const QDtls_VTable* vtbl, size_t vdata, int mode) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDtls>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDtls(vtbl, static_cast<QSslSocket::SslMode>(mode)) : nullptr;
}

VirtualQDtls* QDtls_new2(const QDtls_VTable* vtbl, size_t vdata, int mode, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDtls>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDtls(vtbl, static_cast<QSslSocket::SslMode>(mode), parent) : nullptr;
}

void QDtls_virtbase(QDtls* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDtls_metaObject(const QDtls* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDtls_metacast(QDtls* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDtls_metacall(QDtls* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDtls_tr(const char* s) {
	QString _ret = QDtls::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDtls_setPeer(QDtls* self, QHostAddress* address, unsigned short port) {
	return self->setPeer(*address, static_cast<quint16>(port));
}

bool QDtls_setPeerVerificationName(QDtls* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->setPeerVerificationName(name_QString);
}

QHostAddress* QDtls_peerAddress(const QDtls* self) {
	return new QHostAddress(self->peerAddress());
}

unsigned short QDtls_peerPort(const QDtls* self) {
	quint16 _ret = self->peerPort();
	return static_cast<unsigned short>(_ret);
}

struct seaqt_string QDtls_peerVerificationName(const QDtls* self) {
	QString _ret = self->peerVerificationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDtls_sslMode(const QDtls* self) {
	QSslSocket::SslMode _ret = self->sslMode();
	return static_cast<int>(_ret);
}

void QDtls_setMtuHint(QDtls* self, unsigned short mtuHint) {
	self->setMtuHint(static_cast<quint16>(mtuHint));
}

unsigned short QDtls_mtuHint(const QDtls* self) {
	quint16 _ret = self->mtuHint();
	return static_cast<unsigned short>(_ret);
}

bool QDtls_setCookieGeneratorParameters(QDtls* self, QDtlsClientVerifier__GeneratorParameters* params) {
	return self->setCookieGeneratorParameters(*params);
}

QDtlsClientVerifier__GeneratorParameters* QDtls_cookieGeneratorParameters(const QDtls* self) {
	return new QDtlsClientVerifier::GeneratorParameters(self->cookieGeneratorParameters());
}

bool QDtls_setDtlsConfiguration(QDtls* self, QSslConfiguration* configuration) {
	return self->setDtlsConfiguration(*configuration);
}

QSslConfiguration* QDtls_dtlsConfiguration(const QDtls* self) {
	return new QSslConfiguration(self->dtlsConfiguration());
}

int QDtls_handshakeState(const QDtls* self) {
	QDtls::HandshakeState _ret = self->handshakeState();
	return static_cast<int>(_ret);
}

bool QDtls_doHandshake(QDtls* self, QUdpSocket* socket) {
	return self->doHandshake(socket);
}

bool QDtls_handleTimeout(QDtls* self, QUdpSocket* socket) {
	return self->handleTimeout(socket);
}

bool QDtls_resumeHandshake(QDtls* self, QUdpSocket* socket) {
	return self->resumeHandshake(socket);
}

bool QDtls_abortHandshake(QDtls* self, QUdpSocket* socket) {
	return self->abortHandshake(socket);
}

bool QDtls_shutdown(QDtls* self, QUdpSocket* socket) {
	return self->shutdown(socket);
}

bool QDtls_isConnectionEncrypted(const QDtls* self) {
	return self->isConnectionEncrypted();
}

QSslCipher* QDtls_sessionCipher(const QDtls* self) {
	return new QSslCipher(self->sessionCipher());
}

int QDtls_sessionProtocol(const QDtls* self) {
	QSsl::SslProtocol _ret = self->sessionProtocol();
	return static_cast<int>(_ret);
}

long long QDtls_writeDatagramEncrypted(QDtls* self, QUdpSocket* socket, struct seaqt_string dgram) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	qint64 _ret = self->writeDatagramEncrypted(socket, dgram_QByteArray);
	return static_cast<long long>(_ret);
}

struct seaqt_string QDtls_decryptDatagram(QDtls* self, QUdpSocket* socket, struct seaqt_string dgram) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	QByteArray _qb = self->decryptDatagram(socket, dgram_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

unsigned char QDtls_dtlsError(const QDtls* self) {
	QDtlsError _ret = self->dtlsError();
	return static_cast<unsigned char>(_ret);
}

struct seaqt_string QDtls_dtlsErrorString(const QDtls* self) {
	QString _ret = self->dtlsErrorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QSslError* */  QDtls_peerVerificationErrors(const QDtls* self) {
	QList<QSslError> _ret = self->peerVerificationErrors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslError** _arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslError(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDtls_ignoreVerificationErrors(QDtls* self, struct seaqt_array /* of QSslError* */  errorsToIgnore) {
	QList<QSslError> errorsToIgnore_QList;
	errorsToIgnore_QList.reserve(errorsToIgnore.len);
	QSslError** errorsToIgnore_arr = static_cast<QSslError**>(errorsToIgnore.data);
	for(size_t i = 0; i < errorsToIgnore.len; ++i) {
		errorsToIgnore_QList.push_back(*(errorsToIgnore_arr[i]));
	}
	self->ignoreVerificationErrors(errorsToIgnore_QList);
}

void QDtls_pskRequired(QDtls* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->pskRequired(authenticator);
}

void QDtls_connect_pskRequired(QDtls* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*);
		void operator()(QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			callback(slot, sigval1);
		}
	};
	QDtls::connect(self, static_cast<void (QDtls::*)(QSslPreSharedKeyAuthenticator*)>(&QDtls::pskRequired), self, local_caller{slot, callback, release});
}

void QDtls_handshakeTimeout(QDtls* self) {
	self->handshakeTimeout();
}

void QDtls_connect_handshakeTimeout(QDtls* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QDtls::connect(self, static_cast<void (QDtls::*)()>(&QDtls::handshakeTimeout), self, local_caller{slot, callback, release});
}

struct seaqt_string QDtls_tr2(const char* s, const char* c) {
	QString _ret = QDtls::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDtls_tr3(const char* s, const char* c, int n) {
	QString _ret = QDtls::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDtls_setPeer2(QDtls* self, QHostAddress* address, unsigned short port, struct seaqt_string verificationName) {
	QString verificationName_QString = QString::fromUtf8(verificationName.data, verificationName.len);
	return self->setPeer(*address, static_cast<quint16>(port), verificationName_QString);
}

bool QDtls_doHandshake2(QDtls* self, QUdpSocket* socket, struct seaqt_string dgram) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	return self->doHandshake(socket, dgram_QByteArray);
}

const QMetaObject* QDtls_staticMetaObject() { return &QDtls::staticMetaObject; }
void* QDtls_vdata(VirtualQDtls* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDtls>()); }
VirtualQDtls* vdata_QDtls(void* vdata) { return reinterpret_cast<VirtualQDtls*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDtls>()); }

QMetaObject* QDtls_virtualbase_metaObject(const VirtualQDtls* self) {

	return (QMetaObject*) self->QDtls::metaObject();
}

void* QDtls_virtualbase_metacast(VirtualQDtls* self, const char* param1) {

	return self->QDtls::qt_metacast(param1);
}

int QDtls_virtualbase_metacall(VirtualQDtls* self, int param1, int param2, void** param3) {

	return self->QDtls::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QDtls_virtualbase_event(VirtualQDtls* self, QEvent* event) {

	return self->QDtls::event(event);
}

bool QDtls_virtualbase_eventFilter(VirtualQDtls* self, QObject* watched, QEvent* event) {

	return self->QDtls::eventFilter(watched, event);
}

void QDtls_virtualbase_timerEvent(VirtualQDtls* self, QTimerEvent* event) {

	self->QDtls::timerEvent(event);
}

void QDtls_virtualbase_childEvent(VirtualQDtls* self, QChildEvent* event) {

	self->QDtls::childEvent(event);
}

void QDtls_virtualbase_customEvent(VirtualQDtls* self, QEvent* event) {

	self->QDtls::customEvent(event);
}

void QDtls_virtualbase_connectNotify(VirtualQDtls* self, QMetaMethod* signal) {

	self->QDtls::connectNotify(*signal);
}

void QDtls_virtualbase_disconnectNotify(VirtualQDtls* self, QMetaMethod* signal) {

	self->QDtls::disconnectNotify(*signal);
}

QObject* QDtls_protectedbase_sender(const VirtualQDtls* self) {
	return self->sender();
}

int QDtls_protectedbase_senderSignalIndex(const VirtualQDtls* self) {
	return self->senderSignalIndex();
}

int QDtls_protectedbase_receivers(const VirtualQDtls* self, const char* signal) {
	return self->receivers(signal);
}

bool QDtls_protectedbase_isSignalConnected(const VirtualQDtls* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDtls_delete(QDtls* self) {
	delete self;
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new() {
	return new (std::nothrow) QDtlsClientVerifier__GeneratorParameters();
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new2(int a, struct seaqt_string s) {
	QByteArray s_QByteArray(s.data, s.len);
	return new (std::nothrow) QDtlsClientVerifier__GeneratorParameters(static_cast<QCryptographicHash::Algorithm>(a), s_QByteArray);
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new3(QDtlsClientVerifier__GeneratorParameters* param1) {
	return new (std::nothrow) QDtlsClientVerifier__GeneratorParameters(*param1);
}

void QDtlsClientVerifier__GeneratorParameters_operatorAssign(QDtlsClientVerifier__GeneratorParameters* self, QDtlsClientVerifier__GeneratorParameters* param1) {
	self->operator=(*param1);
}

void QDtlsClientVerifier__GeneratorParameters_delete(QDtlsClientVerifier__GeneratorParameters* self) {
	delete self;
}

