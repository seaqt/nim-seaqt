#include <QAbstractSocket>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QIODeviceBase>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QOcspResponse>
#include <QSslCertificate>
#include <QSslCipher>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslKey>
#include <QSslPreSharedKeyAuthenticator>
#include <QSslSocket>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpSocket>
#include <QTimerEvent>
#include <QVariant>
#include <qsslsocket.h>
#include "gen_qsslsocket.h"
class VirtualQSslSocket final : public QSslSocket {
	const QSslSocket_VTable* vtbl;
	void* vdata;
public:
	friend const QSslSocket_VTable* QSslSocket_vtbl(const VirtualQSslSocket* self);
	friend void* QSslSocket_vdata(const VirtualQSslSocket* self);
	friend void QSslSocket_setVdata(VirtualQSslSocket* self, void* vdata);

	VirtualQSslSocket(const QSslSocket_VTable* vtbl, void* vdata): QSslSocket(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSslSocket(const QSslSocket_VTable* vtbl, void* vdata, QObject* parent): QSslSocket(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSslSocket() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSslSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSslSocket_virtualbase_metaObject(const VirtualQSslSocket* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSslSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSslSocket_virtualbase_metacast(VirtualQSslSocket* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSslSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSslSocket_virtualbase_metacall(VirtualQSslSocket* self, int param1, int param2, void** param3);

	virtual void resume() override {
		if (vtbl->resume == 0) {
			QSslSocket::resume();
			return;
		}


		vtbl->resume(this);

	}

	friend void QSslSocket_virtualbase_resume(VirtualQSslSocket* self);

	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODeviceBase::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QSslSocket::setSocketDescriptor(socketDescriptor, state, openMode);
		}

		qintptr socketDescriptor_ret = socketDescriptor;
		intptr_t sigval1 = (intptr_t)(socketDescriptor_ret);
		QAbstractSocket::SocketState state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->setSocketDescriptor(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_setSocketDescriptor(VirtualQSslSocket* self, intptr_t socketDescriptor, int state, int openMode);

	virtual void connectToHost(const QString& hostName, quint16 port, QIODeviceBase::OpenMode openMode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QSslSocket::connectToHost(hostName, port, openMode, protocol);
			return;
		}

		const QString hostName_ret = hostName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray hostName_b = hostName_ret.toUtf8();
		struct miqt_string hostName_ms;
		hostName_ms.len = hostName_b.length();
		hostName_ms.data = static_cast<char*>(malloc(hostName_ms.len));
		memcpy(hostName_ms.data, hostName_b.data(), hostName_ms.len);
		struct miqt_string sigval1 = hostName_ms;
		quint16 port_ret = port;
		uint16_t sigval2 = static_cast<uint16_t>(port_ret);
		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);
		QAbstractSocket::NetworkLayerProtocol protocol_ret = protocol;
		int sigval4 = static_cast<int>(protocol_ret);

		vtbl->connectToHost(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QSslSocket_virtualbase_connectToHost(VirtualQSslSocket* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol);

	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QSslSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(this);

	}

	friend void QSslSocket_virtualbase_disconnectFromHost(VirtualQSslSocket* self);

	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QSslSocket::setSocketOption(option, value);
			return;
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setSocketOption(this, sigval1, sigval2);

	}

	friend void QSslSocket_virtualbase_setSocketOption(VirtualQSslSocket* self, int option, QVariant* value);

	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QSslSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSslSocket_virtualbase_socketOption(VirtualQSslSocket* self, int option);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QSslSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_bytesAvailable(const VirtualQSslSocket* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QSslSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_bytesToWrite(const VirtualQSslSocket* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QSslSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_canReadLine(const VirtualQSslSocket* self);

	virtual void close() override {
		if (vtbl->close == 0) {
			QSslSocket::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QSslSocket_virtualbase_close(VirtualQSslSocket* self);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QSslSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_atEnd(const VirtualQSslSocket* self);

	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QSslSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(this, sigval1);

	}

	friend void QSslSocket_virtualbase_setReadBufferSize(VirtualQSslSocket* self, long long size);

	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QSslSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_waitForConnected(VirtualQSslSocket* self, int msecs);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QSslSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_waitForReadyRead(VirtualQSslSocket* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QSslSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_waitForBytesWritten(VirtualQSslSocket* self, int msecs);

	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QSslSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_waitForDisconnected(VirtualQSslSocket* self, int msecs);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QSslSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_readData(VirtualQSslSocket* self, char* data, long long maxlen);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QSslSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_skipData(VirtualQSslSocket* self, long long maxSize);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QSslSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_writeData(VirtualQSslSocket* self, const char* data, long long len);

	virtual bool bind(const QHostAddress& address, quint16 port, QAbstractSocket::BindMode mode) override {
		if (vtbl->bind == 0) {
			return QSslSocket::bind(address, port, mode);
		}

		const QHostAddress& address_ret = address;
		// Cast returned reference into pointer
		QHostAddress* sigval1 = const_cast<QHostAddress*>(&address_ret);
		quint16 port_ret = port;
		uint16_t sigval2 = static_cast<uint16_t>(port_ret);
		QAbstractSocket::BindMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->bind(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_bind(VirtualQSslSocket* self, QHostAddress* address, uint16_t port, int mode);

	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QSslSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(this);

		return (qintptr)(callback_return_value);
	}

	friend intptr_t QSslSocket_virtualbase_socketDescriptor(const VirtualQSslSocket* self);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QSslSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_isSequential(const VirtualQSslSocket* self);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QSslSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_readLineData(VirtualQSslSocket* self, char* data, long long maxlen);

	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QSslSocket::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_open(VirtualQSslSocket* self, int mode);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QSslSocket::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_pos(const VirtualQSslSocket* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QSslSocket::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSslSocket_virtualbase_size(const VirtualQSslSocket* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QSslSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_seek(VirtualQSslSocket* self, long long pos);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QSslSocket::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_reset(VirtualQSslSocket* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSslSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_event(VirtualQSslSocket* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSslSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSslSocket_virtualbase_eventFilter(VirtualQSslSocket* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSslSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSslSocket_virtualbase_timerEvent(VirtualQSslSocket* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSslSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSslSocket_virtualbase_childEvent(VirtualQSslSocket* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSslSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSslSocket_virtualbase_customEvent(VirtualQSslSocket* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSslSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSslSocket_virtualbase_connectNotify(VirtualQSslSocket* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSslSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSslSocket_virtualbase_disconnectNotify(VirtualQSslSocket* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSslSocket_protectedbase_setSocketState(VirtualQSslSocket* self, int state);
	friend void QSslSocket_protectedbase_setSocketError(VirtualQSslSocket* self, int socketError);
	friend void QSslSocket_protectedbase_setLocalPort(VirtualQSslSocket* self, uint16_t port);
	friend void QSslSocket_protectedbase_setLocalAddress(VirtualQSslSocket* self, QHostAddress* address);
	friend void QSslSocket_protectedbase_setPeerPort(VirtualQSslSocket* self, uint16_t port);
	friend void QSslSocket_protectedbase_setPeerAddress(VirtualQSslSocket* self, QHostAddress* address);
	friend void QSslSocket_protectedbase_setPeerName(VirtualQSslSocket* self, struct miqt_string name);
	friend void QSslSocket_protectedbase_setOpenMode(VirtualQSslSocket* self, int openMode);
	friend void QSslSocket_protectedbase_setErrorString(VirtualQSslSocket* self, struct miqt_string errorString);
	friend QObject* QSslSocket_protectedbase_sender(const VirtualQSslSocket* self);
	friend int QSslSocket_protectedbase_senderSignalIndex(const VirtualQSslSocket* self);
	friend int QSslSocket_protectedbase_receivers(const VirtualQSslSocket* self, const char* signal);
	friend bool QSslSocket_protectedbase_isSignalConnected(const VirtualQSslSocket* self, QMetaMethod* signal);
};

VirtualQSslSocket* QSslSocket_new(const QSslSocket_VTable* vtbl, void* vdata) {
	return new VirtualQSslSocket(vtbl, vdata);
}

VirtualQSslSocket* QSslSocket_new2(const QSslSocket_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSslSocket(vtbl, vdata, parent);
}

void QSslSocket_virtbase(QSslSocket* src, QTcpSocket** outptr_QTcpSocket) {
	*outptr_QTcpSocket = static_cast<QTcpSocket*>(src);
}

QMetaObject* QSslSocket_metaObject(const QSslSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSslSocket_metacast(QSslSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSslSocket_metacall(QSslSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSslSocket_tr(const char* s) {
	QString _ret = QSslSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSslSocket_resume(QSslSocket* self) {
	self->resume();
}

void QSslSocket_connectToHostEncrypted(QSslSocket* self, struct miqt_string hostName, uint16_t port) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port));
}

void QSslSocket_connectToHostEncrypted2(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	QString sslPeerName_QString = QString::fromUtf8(sslPeerName.data, sslPeerName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), sslPeerName_QString);
}

bool QSslSocket_setSocketDescriptor(QSslSocket* self, intptr_t socketDescriptor, int state, int openMode) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODeviceBase::OpenMode>(openMode));
}

void QSslSocket_connectToHost(QSslSocket* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(openMode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_disconnectFromHost(QSslSocket* self) {
	self->disconnectFromHost();
}

void QSslSocket_setSocketOption(QSslSocket* self, int option, QVariant* value) {
	self->setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);
}

QVariant* QSslSocket_socketOption(QSslSocket* self, int option) {
	return new QVariant(self->socketOption(static_cast<QAbstractSocket::SocketOption>(option)));
}

int QSslSocket_mode(const QSslSocket* self) {
	QSslSocket::SslMode _ret = self->mode();
	return static_cast<int>(_ret);
}

bool QSslSocket_isEncrypted(const QSslSocket* self) {
	return self->isEncrypted();
}

int QSslSocket_protocol(const QSslSocket* self) {
	QSsl::SslProtocol _ret = self->protocol();
	return static_cast<int>(_ret);
}

void QSslSocket_setProtocol(QSslSocket* self, int protocol) {
	self->setProtocol(static_cast<QSsl::SslProtocol>(protocol));
}

int QSslSocket_peerVerifyMode(const QSslSocket* self) {
	QSslSocket::PeerVerifyMode _ret = self->peerVerifyMode();
	return static_cast<int>(_ret);
}

void QSslSocket_setPeerVerifyMode(QSslSocket* self, int mode) {
	self->setPeerVerifyMode(static_cast<QSslSocket::PeerVerifyMode>(mode));
}

int QSslSocket_peerVerifyDepth(const QSslSocket* self) {
	return self->peerVerifyDepth();
}

void QSslSocket_setPeerVerifyDepth(QSslSocket* self, int depth) {
	self->setPeerVerifyDepth(static_cast<int>(depth));
}

struct miqt_string QSslSocket_peerVerifyName(const QSslSocket* self) {
	QString _ret = self->peerVerifyName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSslSocket_setPeerVerifyName(QSslSocket* self, struct miqt_string hostName) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->setPeerVerifyName(hostName_QString);
}

long long QSslSocket_bytesAvailable(const QSslSocket* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSslSocket_bytesToWrite(const QSslSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QSslSocket_canReadLine(const QSslSocket* self) {
	return self->canReadLine();
}

void QSslSocket_close(QSslSocket* self) {
	self->close();
}

bool QSslSocket_atEnd(const QSslSocket* self) {
	return self->atEnd();
}

void QSslSocket_setReadBufferSize(QSslSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

long long QSslSocket_encryptedBytesAvailable(const QSslSocket* self) {
	qint64 _ret = self->encryptedBytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSslSocket_encryptedBytesToWrite(const QSslSocket* self) {
	qint64 _ret = self->encryptedBytesToWrite();
	return static_cast<long long>(_ret);
}

QSslConfiguration* QSslSocket_sslConfiguration(const QSslSocket* self) {
	return new QSslConfiguration(self->sslConfiguration());
}

void QSslSocket_setSslConfiguration(QSslSocket* self, QSslConfiguration* config) {
	self->setSslConfiguration(*config);
}

void QSslSocket_setLocalCertificateChain(QSslSocket* self, struct miqt_array /* of QSslCertificate* */  localChain) {
	QList<QSslCertificate> localChain_QList;
	localChain_QList.reserve(localChain.len);
	QSslCertificate** localChain_arr = static_cast<QSslCertificate**>(localChain.data);
	for(size_t i = 0; i < localChain.len; ++i) {
		localChain_QList.push_back(*(localChain_arr[i]));
	}
	self->setLocalCertificateChain(localChain_QList);
}

struct miqt_array /* of QSslCertificate* */  QSslSocket_localCertificateChain(const QSslSocket* self) {
	QList<QSslCertificate> _ret = self->localCertificateChain();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslCertificate** _arr = static_cast<QSslCertificate**>(malloc(sizeof(QSslCertificate*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslCertificate(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QSslSocket_setLocalCertificate(QSslSocket* self, QSslCertificate* certificate) {
	self->setLocalCertificate(*certificate);
}

void QSslSocket_setLocalCertificateWithFileName(QSslSocket* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setLocalCertificate(fileName_QString);
}

QSslCertificate* QSslSocket_localCertificate(const QSslSocket* self) {
	return new QSslCertificate(self->localCertificate());
}

QSslCertificate* QSslSocket_peerCertificate(const QSslSocket* self) {
	return new QSslCertificate(self->peerCertificate());
}

struct miqt_array /* of QSslCertificate* */  QSslSocket_peerCertificateChain(const QSslSocket* self) {
	QList<QSslCertificate> _ret = self->peerCertificateChain();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslCertificate** _arr = static_cast<QSslCertificate**>(malloc(sizeof(QSslCertificate*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslCertificate(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QSslCipher* QSslSocket_sessionCipher(const QSslSocket* self) {
	return new QSslCipher(self->sessionCipher());
}

int QSslSocket_sessionProtocol(const QSslSocket* self) {
	QSsl::SslProtocol _ret = self->sessionProtocol();
	return static_cast<int>(_ret);
}

struct miqt_array /* of QOcspResponse* */  QSslSocket_ocspResponses(const QSslSocket* self) {
	QList<QOcspResponse> _ret = self->ocspResponses();
	// Convert QList<> from C++ memory to manually-managed C memory
	QOcspResponse** _arr = static_cast<QOcspResponse**>(malloc(sizeof(QOcspResponse*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QOcspResponse(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QSslSocket_setPrivateKey(QSslSocket* self, QSslKey* key) {
	self->setPrivateKey(*key);
}

void QSslSocket_setPrivateKeyWithFileName(QSslSocket* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setPrivateKey(fileName_QString);
}

QSslKey* QSslSocket_privateKey(const QSslSocket* self) {
	return new QSslKey(self->privateKey());
}

bool QSslSocket_waitForConnected(QSslSocket* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QSslSocket_waitForEncrypted(QSslSocket* self) {
	return self->waitForEncrypted();
}

bool QSslSocket_waitForReadyRead(QSslSocket* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QSslSocket_waitForBytesWritten(QSslSocket* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QSslSocket_waitForDisconnected(QSslSocket* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

struct miqt_array /* of QSslError* */  QSslSocket_sslHandshakeErrors(const QSslSocket* self) {
	QList<QSslError> _ret = self->sslHandshakeErrors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslError** _arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslError(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_supportsSsl() {
	return QSslSocket::supportsSsl();
}

long QSslSocket_sslLibraryVersionNumber() {
	return QSslSocket::sslLibraryVersionNumber();
}

struct miqt_string QSslSocket_sslLibraryVersionString() {
	QString _ret = QSslSocket::sslLibraryVersionString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long QSslSocket_sslLibraryBuildVersionNumber() {
	return QSslSocket::sslLibraryBuildVersionNumber();
}

struct miqt_string QSslSocket_sslLibraryBuildVersionString() {
	QString _ret = QSslSocket::sslLibraryBuildVersionString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QSslSocket_availableBackends() {
	QList<QString> _ret = QSslSocket::availableBackends();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QSslSocket_activeBackend() {
	QString _ret = QSslSocket::activeBackend();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSslSocket_setActiveBackend(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::setActiveBackend(backendName_QString);
}

struct miqt_array /* of int */  QSslSocket_supportedProtocols() {
	QList<QSsl::SslProtocol> _ret = QSslSocket::supportedProtocols();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SslProtocol _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isProtocolSupported(int protocol) {
	return QSslSocket::isProtocolSupported(static_cast<QSsl::SslProtocol>(protocol));
}

struct miqt_array /* of int */  QSslSocket_implementedClasses() {
	QList<QSsl::ImplementedClass> _ret = QSslSocket::implementedClasses();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::ImplementedClass _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isClassImplemented(int cl) {
	return QSslSocket::isClassImplemented(static_cast<QSsl::ImplementedClass>(cl));
}

struct miqt_array /* of int */  QSslSocket_supportedFeatures() {
	QList<QSsl::SupportedFeature> _ret = QSslSocket::supportedFeatures();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SupportedFeature _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isFeatureSupported(int feat) {
	return QSslSocket::isFeatureSupported(static_cast<QSsl::SupportedFeature>(feat));
}

void QSslSocket_ignoreSslErrors(QSslSocket* self, struct miqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->ignoreSslErrors(errors_QList);
}

void QSslSocket_continueInterruptedHandshake(QSslSocket* self) {
	self->continueInterruptedHandshake();
}

void QSslSocket_startClientEncryption(QSslSocket* self) {
	self->startClientEncryption();
}

void QSslSocket_startServerEncryption(QSslSocket* self) {
	self->startServerEncryption();
}

void QSslSocket_ignoreSslErrors2(QSslSocket* self) {
	self->ignoreSslErrors();
}

void QSslSocket_encrypted(QSslSocket* self) {
	self->encrypted();
}

void QSslSocket_connect_encrypted(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)()>(&QSslSocket::encrypted), self, local_caller{slot, callback, release});
}

void QSslSocket_peerVerifyError(QSslSocket* self, QSslError* error) {
	self->peerVerifyError(*error);
}

void QSslSocket_connect_peerVerifyError(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSslError*);
		void operator()(const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(const QSslError&)>(&QSslSocket::peerVerifyError), self, local_caller{slot, callback, release});
}

void QSslSocket_sslErrors(QSslSocket* self, struct miqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->sslErrors(errors_QList);
}

void QSslSocket_connect_sslErrors(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QSslError* */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QSslError* */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QSslError* */ );
		void operator()(const QList<QSslError>& errors) {
			const QList<QSslError>& errors_ret = errors;
			// Convert QList<> from C++ memory to manually-managed C memory
			QSslError** errors_arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * errors_ret.length()));
			for (size_t i = 0, e = errors_ret.length(); i < e; ++i) {
				errors_arr[i] = new QSslError(errors_ret[i]);
			}
			struct miqt_array errors_out;
			errors_out.len = errors_ret.length();
			errors_out.data = static_cast<void*>(errors_arr);
			struct miqt_array /* of QSslError* */  sigval1 = errors_out;
			callback(slot, sigval1);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(const QList<QSslError>&)>(&QSslSocket::sslErrors), self, local_caller{slot, callback, release});
}

void QSslSocket_modeChanged(QSslSocket* self, int newMode) {
	self->modeChanged(static_cast<QSslSocket::SslMode>(newMode));
}

void QSslSocket_connect_modeChanged(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QSslSocket::SslMode newMode) {
			QSslSocket::SslMode newMode_ret = newMode;
			int sigval1 = static_cast<int>(newMode_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSslSocket::SslMode)>(&QSslSocket::modeChanged), self, local_caller{slot, callback, release});
}

void QSslSocket_encryptedBytesWritten(QSslSocket* self, long long totalBytes) {
	self->encryptedBytesWritten(static_cast<qint64>(totalBytes));
}

void QSslSocket_connect_encryptedBytesWritten(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long);
		void operator()(qint64 totalBytes) {
			qint64 totalBytes_ret = totalBytes;
			long long sigval1 = static_cast<long long>(totalBytes_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(qint64)>(&QSslSocket::encryptedBytesWritten), self, local_caller{slot, callback, release});
}

void QSslSocket_preSharedKeyAuthenticationRequired(QSslSocket* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->preSharedKeyAuthenticationRequired(authenticator);
}

void QSslSocket_connect_preSharedKeyAuthenticationRequired(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*);
		void operator()(QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			callback(slot, sigval1);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSslPreSharedKeyAuthenticator*)>(&QSslSocket::preSharedKeyAuthenticationRequired), self, local_caller{slot, callback, release});
}

void QSslSocket_newSessionTicketReceived(QSslSocket* self) {
	self->newSessionTicketReceived();
}

void QSslSocket_connect_newSessionTicketReceived(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)()>(&QSslSocket::newSessionTicketReceived), self, local_caller{slot, callback, release});
}

void QSslSocket_alertSent(QSslSocket* self, int level, int type, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertSent(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QSslSocket_connect_alertSent(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, struct miqt_string);
		void operator()(QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
			QSsl::AlertLevel level_ret = level;
			int sigval1 = static_cast<int>(level_ret);
			QSsl::AlertType type_ret = type;
			int sigval2 = static_cast<int>(type_ret);
			const QString description_ret = description;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray description_b = description_ret.toUtf8();
			struct miqt_string description_ms;
			description_ms.len = description_b.length();
			description_ms.data = static_cast<char*>(malloc(description_ms.len));
			memcpy(description_ms.data, description_b.data(), description_ms.len);
			struct miqt_string sigval3 = description_ms;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QSslSocket::alertSent), self, local_caller{slot, callback, release});
}

void QSslSocket_alertReceived(QSslSocket* self, int level, int type, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertReceived(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QSslSocket_connect_alertReceived(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, struct miqt_string);
		void operator()(QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
			QSsl::AlertLevel level_ret = level;
			int sigval1 = static_cast<int>(level_ret);
			QSsl::AlertType type_ret = type;
			int sigval2 = static_cast<int>(type_ret);
			const QString description_ret = description;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray description_b = description_ret.toUtf8();
			struct miqt_string description_ms;
			description_ms.len = description_b.length();
			description_ms.data = static_cast<char*>(malloc(description_ms.len));
			memcpy(description_ms.data, description_b.data(), description_ms.len);
			struct miqt_string sigval3 = description_ms;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QSslSocket::alertReceived), self, local_caller{slot, callback, release});
}

void QSslSocket_handshakeInterruptedOnError(QSslSocket* self, QSslError* error) {
	self->handshakeInterruptedOnError(*error);
}

void QSslSocket_connect_handshakeInterruptedOnError(VirtualQSslSocket* self, intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSslError*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSslError*);
		void operator()(const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(const QSslError&)>(&QSslSocket::handshakeInterruptedOnError), self, local_caller{slot, callback, release});
}

struct miqt_string QSslSocket_tr2(const char* s, const char* c) {
	QString _ret = QSslSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSslSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QSslSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSslSocket_connectToHostEncrypted3(QSslSocket* self, struct miqt_string hostName, uint16_t port, int mode) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode));
}

void QSslSocket_connectToHostEncrypted4(QSslSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_connectToHostEncrypted42(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName, int mode) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	QString sslPeerName_QString = QString::fromUtf8(sslPeerName.data, sslPeerName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), sslPeerName_QString, static_cast<QIODeviceBase::OpenMode>(mode));
}

void QSslSocket_connectToHostEncrypted5(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	QString sslPeerName_QString = QString::fromUtf8(sslPeerName.data, sslPeerName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), sslPeerName_QString, static_cast<QIODeviceBase::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_setLocalCertificate2(QSslSocket* self, struct miqt_string fileName, int format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setLocalCertificate(fileName_QString, static_cast<QSsl::EncodingFormat>(format));
}

void QSslSocket_setPrivateKey2(QSslSocket* self, struct miqt_string fileName, int algorithm) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setPrivateKey(fileName_QString, static_cast<QSsl::KeyAlgorithm>(algorithm));
}

void QSslSocket_setPrivateKey3(QSslSocket* self, struct miqt_string fileName, int algorithm, int format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setPrivateKey(fileName_QString, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format));
}

void QSslSocket_setPrivateKey4(QSslSocket* self, struct miqt_string fileName, int algorithm, int format, struct miqt_string passPhrase) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray passPhrase_QByteArray(passPhrase.data, passPhrase.len);
	self->setPrivateKey(fileName_QString, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format), passPhrase_QByteArray);
}

bool QSslSocket_waitForEncrypted1(QSslSocket* self, int msecs) {
	return self->waitForEncrypted(static_cast<int>(msecs));
}

struct miqt_array /* of int */  QSslSocket_supportedProtocols1(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	QList<QSsl::SslProtocol> _ret = QSslSocket::supportedProtocols(backendName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SslProtocol _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isProtocolSupported2(int protocol, struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::isProtocolSupported(static_cast<QSsl::SslProtocol>(protocol), backendName_QString);
}

struct miqt_array /* of int */  QSslSocket_implementedClasses1(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	QList<QSsl::ImplementedClass> _ret = QSslSocket::implementedClasses(backendName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::ImplementedClass _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isClassImplemented2(int cl, struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::isClassImplemented(static_cast<QSsl::ImplementedClass>(cl), backendName_QString);
}

struct miqt_array /* of int */  QSslSocket_supportedFeatures1(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	QList<QSsl::SupportedFeature> _ret = QSslSocket::supportedFeatures(backendName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SupportedFeature _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isFeatureSupported2(int feat, struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::isFeatureSupported(static_cast<QSsl::SupportedFeature>(feat), backendName_QString);
}

QMetaObject* QSslSocket_virtualbase_metaObject(const VirtualQSslSocket* self) {

	return (QMetaObject*) self->QSslSocket::metaObject();
}

void* QSslSocket_virtualbase_metacast(VirtualQSslSocket* self, const char* param1) {

	return self->QSslSocket::qt_metacast(param1);
}

int QSslSocket_virtualbase_metacall(VirtualQSslSocket* self, int param1, int param2, void** param3) {

	return self->QSslSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QSslSocket_virtualbase_resume(VirtualQSslSocket* self) {

	self->QSslSocket::resume();
}

bool QSslSocket_virtualbase_setSocketDescriptor(VirtualQSslSocket* self, intptr_t socketDescriptor, int state, int openMode) {

	return self->QSslSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<VirtualQSslSocket::SocketState>(state), static_cast<VirtualQSslSocket::OpenMode>(openMode));
}

void QSslSocket_virtualbase_connectToHost(VirtualQSslSocket* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

	self->QSslSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<VirtualQSslSocket::OpenMode>(openMode), static_cast<VirtualQSslSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_virtualbase_disconnectFromHost(VirtualQSslSocket* self) {

	self->QSslSocket::disconnectFromHost();
}

void QSslSocket_virtualbase_setSocketOption(VirtualQSslSocket* self, int option, QVariant* value) {

	self->QSslSocket::setSocketOption(static_cast<VirtualQSslSocket::SocketOption>(option), *value);
}

QVariant* QSslSocket_virtualbase_socketOption(VirtualQSslSocket* self, int option) {

	return new QVariant(self->QSslSocket::socketOption(static_cast<VirtualQSslSocket::SocketOption>(option)));
}

long long QSslSocket_virtualbase_bytesAvailable(const VirtualQSslSocket* self) {

	qint64 _ret = self->QSslSocket::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSslSocket_virtualbase_bytesToWrite(const VirtualQSslSocket* self) {

	qint64 _ret = self->QSslSocket::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QSslSocket_virtualbase_canReadLine(const VirtualQSslSocket* self) {

	return self->QSslSocket::canReadLine();
}

void QSslSocket_virtualbase_close(VirtualQSslSocket* self) {

	self->QSslSocket::close();
}

bool QSslSocket_virtualbase_atEnd(const VirtualQSslSocket* self) {

	return self->QSslSocket::atEnd();
}

void QSslSocket_virtualbase_setReadBufferSize(VirtualQSslSocket* self, long long size) {

	self->QSslSocket::setReadBufferSize(static_cast<qint64>(size));
}

bool QSslSocket_virtualbase_waitForConnected(VirtualQSslSocket* self, int msecs) {

	return self->QSslSocket::waitForConnected(static_cast<int>(msecs));
}

bool QSslSocket_virtualbase_waitForReadyRead(VirtualQSslSocket* self, int msecs) {

	return self->QSslSocket::waitForReadyRead(static_cast<int>(msecs));
}

bool QSslSocket_virtualbase_waitForBytesWritten(VirtualQSslSocket* self, int msecs) {

	return self->QSslSocket::waitForBytesWritten(static_cast<int>(msecs));
}

bool QSslSocket_virtualbase_waitForDisconnected(VirtualQSslSocket* self, int msecs) {

	return self->QSslSocket::waitForDisconnected(static_cast<int>(msecs));
}

long long QSslSocket_virtualbase_readData(VirtualQSslSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QSslSocket::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QSslSocket_virtualbase_skipData(VirtualQSslSocket* self, long long maxSize) {

	qint64 _ret = self->QSslSocket::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

long long QSslSocket_virtualbase_writeData(VirtualQSslSocket* self, const char* data, long long len) {

	qint64 _ret = self->QSslSocket::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

bool QSslSocket_virtualbase_bind(VirtualQSslSocket* self, QHostAddress* address, uint16_t port, int mode) {

	return self->QSslSocket::bind(*address, static_cast<quint16>(port), static_cast<VirtualQSslSocket::BindMode>(mode));
}

intptr_t QSslSocket_virtualbase_socketDescriptor(const VirtualQSslSocket* self) {

	qintptr _ret = self->QSslSocket::socketDescriptor();
	return (intptr_t)(_ret);
}

bool QSslSocket_virtualbase_isSequential(const VirtualQSslSocket* self) {

	return self->QSslSocket::isSequential();
}

long long QSslSocket_virtualbase_readLineData(VirtualQSslSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QSslSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

bool QSslSocket_virtualbase_open(VirtualQSslSocket* self, int mode) {

	return self->QSslSocket::open(static_cast<VirtualQSslSocket::OpenMode>(mode));
}

long long QSslSocket_virtualbase_pos(const VirtualQSslSocket* self) {

	qint64 _ret = self->QSslSocket::pos();
	return static_cast<long long>(_ret);
}

long long QSslSocket_virtualbase_size(const VirtualQSslSocket* self) {

	qint64 _ret = self->QSslSocket::size();
	return static_cast<long long>(_ret);
}

bool QSslSocket_virtualbase_seek(VirtualQSslSocket* self, long long pos) {

	return self->QSslSocket::seek(static_cast<qint64>(pos));
}

bool QSslSocket_virtualbase_reset(VirtualQSslSocket* self) {

	return self->QSslSocket::reset();
}

bool QSslSocket_virtualbase_event(VirtualQSslSocket* self, QEvent* event) {

	return self->QSslSocket::event(event);
}

bool QSslSocket_virtualbase_eventFilter(VirtualQSslSocket* self, QObject* watched, QEvent* event) {

	return self->QSslSocket::eventFilter(watched, event);
}

void QSslSocket_virtualbase_timerEvent(VirtualQSslSocket* self, QTimerEvent* event) {

	self->QSslSocket::timerEvent(event);
}

void QSslSocket_virtualbase_childEvent(VirtualQSslSocket* self, QChildEvent* event) {

	self->QSslSocket::childEvent(event);
}

void QSslSocket_virtualbase_customEvent(VirtualQSslSocket* self, QEvent* event) {

	self->QSslSocket::customEvent(event);
}

void QSslSocket_virtualbase_connectNotify(VirtualQSslSocket* self, QMetaMethod* signal) {

	self->QSslSocket::connectNotify(*signal);
}

void QSslSocket_virtualbase_disconnectNotify(VirtualQSslSocket* self, QMetaMethod* signal) {

	self->QSslSocket::disconnectNotify(*signal);
}

const QMetaObject* QSslSocket_staticMetaObject() { return &QSslSocket::staticMetaObject; }

const QSslSocket_VTable* QSslSocket_vtbl(const VirtualQSslSocket* self) { return self->vtbl; }
void* QSslSocket_vdata(const VirtualQSslSocket* self) { return self->vdata; }
void QSslSocket_setVdata(VirtualQSslSocket* self, void* vdata) { self->vdata = vdata; }

void QSslSocket_protectedbase_setSocketState(VirtualQSslSocket* self, int state) {
	self->setSocketState(static_cast<VirtualQSslSocket::SocketState>(state));
}

void QSslSocket_protectedbase_setSocketError(VirtualQSslSocket* self, int socketError) {
	self->setSocketError(static_cast<VirtualQSslSocket::SocketError>(socketError));
}

void QSslSocket_protectedbase_setLocalPort(VirtualQSslSocket* self, uint16_t port) {
	self->setLocalPort(static_cast<quint16>(port));
}

void QSslSocket_protectedbase_setLocalAddress(VirtualQSslSocket* self, QHostAddress* address) {
	self->setLocalAddress(*address);
}

void QSslSocket_protectedbase_setPeerPort(VirtualQSslSocket* self, uint16_t port) {
	self->setPeerPort(static_cast<quint16>(port));
}

void QSslSocket_protectedbase_setPeerAddress(VirtualQSslSocket* self, QHostAddress* address) {
	self->setPeerAddress(*address);
}

void QSslSocket_protectedbase_setPeerName(VirtualQSslSocket* self, struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setPeerName(name_QString);
}

void QSslSocket_protectedbase_setOpenMode(VirtualQSslSocket* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQSslSocket::OpenMode>(openMode));
}

void QSslSocket_protectedbase_setErrorString(VirtualQSslSocket* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QSslSocket_protectedbase_sender(const VirtualQSslSocket* self) {
	return self->sender();
}

int QSslSocket_protectedbase_senderSignalIndex(const VirtualQSslSocket* self) {
	return self->senderSignalIndex();
}

int QSslSocket_protectedbase_receivers(const VirtualQSslSocket* self, const char* signal) {
	return self->receivers(signal);
}

bool QSslSocket_protectedbase_isSignalConnected(const VirtualQSslSocket* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSslSocket_delete(QSslSocket* self) {
	delete self;
}

