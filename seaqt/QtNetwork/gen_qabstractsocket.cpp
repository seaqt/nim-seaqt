#include <QAbstractSocket>
#include <QAuthenticator>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkProxy>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qabstractsocket.h>
#include "gen_qabstractsocket.h"
class VirtualQAbstractSocket final : public QAbstractSocket {
	const QAbstractSocket_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractSocket_VTable* QAbstractSocket_vtbl(const VirtualQAbstractSocket* self);
	friend void* QAbstractSocket_vdata(const VirtualQAbstractSocket* self);
	friend void QAbstractSocket_setVdata(VirtualQAbstractSocket* self, void* vdata);

	VirtualQAbstractSocket(const QAbstractSocket_VTable* vtbl, void* vdata, QAbstractSocket::SocketType socketType, QObject* parent): QAbstractSocket(socketType, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractSocket() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractSocket_virtualbase_metaObject(const VirtualQAbstractSocket* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractSocket_virtualbase_metacast(VirtualQAbstractSocket* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSocket_virtualbase_metacall(VirtualQAbstractSocket* self, int param1, int param2, void** param3);

	virtual void resume() override {
		if (vtbl->resume == 0) {
			QAbstractSocket::resume();
			return;
		}


		vtbl->resume(this);

	}

	friend void QAbstractSocket_virtualbase_resume(VirtualQAbstractSocket* self);

	virtual bool bind(const QHostAddress& address, quint16 port, QAbstractSocket::BindMode mode) override {
		if (vtbl->bind == 0) {
			return QAbstractSocket::bind(address, port, mode);
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

	friend bool QAbstractSocket_virtualbase_bind(VirtualQAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);

	virtual void connectToHost(const QString& hostName, quint16 port, QIODeviceBase::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QAbstractSocket::connectToHost(hostName, port, mode, protocol);
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
		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);
		QAbstractSocket::NetworkLayerProtocol protocol_ret = protocol;
		int sigval4 = static_cast<int>(protocol_ret);

		vtbl->connectToHost(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QAbstractSocket_virtualbase_connectToHost(VirtualQAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);

	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QAbstractSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(this);

	}

	friend void QAbstractSocket_virtualbase_disconnectFromHost(VirtualQAbstractSocket* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QAbstractSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_bytesAvailable(const VirtualQAbstractSocket* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QAbstractSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_bytesToWrite(const VirtualQAbstractSocket* self);

	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QAbstractSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(this, sigval1);

	}

	friend void QAbstractSocket_virtualbase_setReadBufferSize(VirtualQAbstractSocket* self, long long size);

	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QAbstractSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(this);

		return (qintptr)(callback_return_value);
	}

	friend intptr_t QAbstractSocket_virtualbase_socketDescriptor(const VirtualQAbstractSocket* self);

	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODeviceBase::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QAbstractSocket::setSocketDescriptor(socketDescriptor, state, openMode);
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

	friend bool QAbstractSocket_virtualbase_setSocketDescriptor(VirtualQAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode);

	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QAbstractSocket::setSocketOption(option, value);
			return;
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setSocketOption(this, sigval1, sigval2);

	}

	friend void QAbstractSocket_virtualbase_setSocketOption(VirtualQAbstractSocket* self, int option, QVariant* value);

	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QAbstractSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractSocket_virtualbase_socketOption(VirtualQAbstractSocket* self, int option);

	virtual void close() override {
		if (vtbl->close == 0) {
			QAbstractSocket::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QAbstractSocket_virtualbase_close(VirtualQAbstractSocket* self);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QAbstractSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_isSequential(const VirtualQAbstractSocket* self);

	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QAbstractSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_waitForConnected(VirtualQAbstractSocket* self, int msecs);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QAbstractSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_waitForReadyRead(VirtualQAbstractSocket* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QAbstractSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_waitForBytesWritten(VirtualQAbstractSocket* self, int msecs);

	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QAbstractSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_waitForDisconnected(VirtualQAbstractSocket* self, int msecs);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QAbstractSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_readData(VirtualQAbstractSocket* self, char* data, long long maxlen);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QAbstractSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_readLineData(VirtualQAbstractSocket* self, char* data, long long maxlen);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QAbstractSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_skipData(VirtualQAbstractSocket* self, long long maxSize);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QAbstractSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_writeData(VirtualQAbstractSocket* self, const char* data, long long len);

	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QAbstractSocket::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_open(VirtualQAbstractSocket* self, int mode);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QAbstractSocket::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_pos(const VirtualQAbstractSocket* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QAbstractSocket::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAbstractSocket_virtualbase_size(const VirtualQAbstractSocket* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QAbstractSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_seek(VirtualQAbstractSocket* self, long long pos);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QAbstractSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_atEnd(const VirtualQAbstractSocket* self);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QAbstractSocket::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_reset(VirtualQAbstractSocket* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QAbstractSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_canReadLine(const VirtualQAbstractSocket* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_event(VirtualQAbstractSocket* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractSocket_virtualbase_eventFilter(VirtualQAbstractSocket* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractSocket_virtualbase_timerEvent(VirtualQAbstractSocket* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractSocket_virtualbase_childEvent(VirtualQAbstractSocket* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractSocket_virtualbase_customEvent(VirtualQAbstractSocket* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractSocket_virtualbase_connectNotify(VirtualQAbstractSocket* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractSocket_virtualbase_disconnectNotify(VirtualQAbstractSocket* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractSocket_protectedbase_setSocketState(VirtualQAbstractSocket* self, int state);
	friend void QAbstractSocket_protectedbase_setSocketError(VirtualQAbstractSocket* self, int socketError);
	friend void QAbstractSocket_protectedbase_setLocalPort(VirtualQAbstractSocket* self, uint16_t port);
	friend void QAbstractSocket_protectedbase_setLocalAddress(VirtualQAbstractSocket* self, QHostAddress* address);
	friend void QAbstractSocket_protectedbase_setPeerPort(VirtualQAbstractSocket* self, uint16_t port);
	friend void QAbstractSocket_protectedbase_setPeerAddress(VirtualQAbstractSocket* self, QHostAddress* address);
	friend void QAbstractSocket_protectedbase_setPeerName(VirtualQAbstractSocket* self, struct miqt_string name);
	friend void QAbstractSocket_protectedbase_setOpenMode(VirtualQAbstractSocket* self, int openMode);
	friend void QAbstractSocket_protectedbase_setErrorString(VirtualQAbstractSocket* self, struct miqt_string errorString);
	friend QObject* QAbstractSocket_protectedbase_sender(const VirtualQAbstractSocket* self);
	friend int QAbstractSocket_protectedbase_senderSignalIndex(const VirtualQAbstractSocket* self);
	friend int QAbstractSocket_protectedbase_receivers(const VirtualQAbstractSocket* self, const char* signal);
	friend bool QAbstractSocket_protectedbase_isSignalConnected(const VirtualQAbstractSocket* self, QMetaMethod* signal);
};

VirtualQAbstractSocket* QAbstractSocket_new(const QAbstractSocket_VTable* vtbl, void* vdata, int socketType, QObject* parent) {
	return new VirtualQAbstractSocket(vtbl, vdata, static_cast<QAbstractSocket::SocketType>(socketType), parent);
}

void QAbstractSocket_virtbase(QAbstractSocket* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QAbstractSocket_metaObject(const QAbstractSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractSocket_metacast(QAbstractSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractSocket_metacall(QAbstractSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractSocket_tr(const char* s) {
	QString _ret = QAbstractSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractSocket_resume(QAbstractSocket* self) {
	self->resume();
}

int QAbstractSocket_pauseMode(const QAbstractSocket* self) {
	QAbstractSocket::PauseModes _ret = self->pauseMode();
	return static_cast<int>(_ret);
}

void QAbstractSocket_setPauseMode(QAbstractSocket* self, int pauseMode) {
	self->setPauseMode(static_cast<QAbstractSocket::PauseModes>(pauseMode));
}

bool QAbstractSocket_bind(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode) {
	return self->bind(*address, static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));
}

bool QAbstractSocket_bind2(QAbstractSocket* self) {
	return self->bind();
}

void QAbstractSocket_connectToHost(QAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QAbstractSocket_connectToHost2(QAbstractSocket* self, QHostAddress* address, uint16_t port) {
	self->connectToHost(*address, static_cast<quint16>(port));
}

void QAbstractSocket_disconnectFromHost(QAbstractSocket* self) {
	self->disconnectFromHost();
}

bool QAbstractSocket_isValid(const QAbstractSocket* self) {
	return self->isValid();
}

long long QAbstractSocket_bytesAvailable(const QAbstractSocket* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_bytesToWrite(const QAbstractSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

uint16_t QAbstractSocket_localPort(const QAbstractSocket* self) {
	quint16 _ret = self->localPort();
	return static_cast<uint16_t>(_ret);
}

QHostAddress* QAbstractSocket_localAddress(const QAbstractSocket* self) {
	return new QHostAddress(self->localAddress());
}

uint16_t QAbstractSocket_peerPort(const QAbstractSocket* self) {
	quint16 _ret = self->peerPort();
	return static_cast<uint16_t>(_ret);
}

QHostAddress* QAbstractSocket_peerAddress(const QAbstractSocket* self) {
	return new QHostAddress(self->peerAddress());
}

struct miqt_string QAbstractSocket_peerName(const QAbstractSocket* self) {
	QString _ret = self->peerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QAbstractSocket_readBufferSize(const QAbstractSocket* self) {
	qint64 _ret = self->readBufferSize();
	return static_cast<long long>(_ret);
}

void QAbstractSocket_setReadBufferSize(QAbstractSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

void QAbstractSocket_abort(QAbstractSocket* self) {
	self->abort();
}

intptr_t QAbstractSocket_socketDescriptor(const QAbstractSocket* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

bool QAbstractSocket_setSocketDescriptor(QAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODeviceBase::OpenMode>(openMode));
}

void QAbstractSocket_setSocketOption(QAbstractSocket* self, int option, QVariant* value) {
	self->setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);
}

QVariant* QAbstractSocket_socketOption(QAbstractSocket* self, int option) {
	return new QVariant(self->socketOption(static_cast<QAbstractSocket::SocketOption>(option)));
}

int QAbstractSocket_socketType(const QAbstractSocket* self) {
	QAbstractSocket::SocketType _ret = self->socketType();
	return static_cast<int>(_ret);
}

int QAbstractSocket_state(const QAbstractSocket* self) {
	QAbstractSocket::SocketState _ret = self->state();
	return static_cast<int>(_ret);
}

int QAbstractSocket_error(const QAbstractSocket* self) {
	QAbstractSocket::SocketError _ret = self->error();
	return static_cast<int>(_ret);
}

void QAbstractSocket_close(QAbstractSocket* self) {
	self->close();
}

bool QAbstractSocket_isSequential(const QAbstractSocket* self) {
	return self->isSequential();
}

bool QAbstractSocket_flush(QAbstractSocket* self) {
	return self->flush();
}

bool QAbstractSocket_waitForConnected(QAbstractSocket* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QAbstractSocket_waitForReadyRead(QAbstractSocket* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QAbstractSocket_waitForBytesWritten(QAbstractSocket* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QAbstractSocket_waitForDisconnected(QAbstractSocket* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

void QAbstractSocket_setProxy(QAbstractSocket* self, QNetworkProxy* networkProxy) {
	self->setProxy(*networkProxy);
}

QNetworkProxy* QAbstractSocket_proxy(const QAbstractSocket* self) {
	return new QNetworkProxy(self->proxy());
}

struct miqt_string QAbstractSocket_protocolTag(const QAbstractSocket* self) {
	QString _ret = self->protocolTag();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractSocket_setProtocolTag(QAbstractSocket* self, struct miqt_string tag) {
	QString tag_QString = QString::fromUtf8(tag.data, tag.len);
	self->setProtocolTag(tag_QString);
}

void QAbstractSocket_hostFound(QAbstractSocket* self) {
	self->hostFound();
}

void QAbstractSocket_connect_hostFound(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)()>(&QAbstractSocket::hostFound), self, local_caller{slot, callback, release});
}

void QAbstractSocket_connected(QAbstractSocket* self) {
	self->connected();
}

void QAbstractSocket_connect_connected(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)()>(&QAbstractSocket::connected), self, local_caller{slot, callback, release});
}

void QAbstractSocket_disconnected(QAbstractSocket* self) {
	self->disconnected();
}

void QAbstractSocket_connect_disconnected(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)()>(&QAbstractSocket::disconnected), self, local_caller{slot, callback, release});
}

void QAbstractSocket_stateChanged(QAbstractSocket* self, int param1) {
	self->stateChanged(static_cast<QAbstractSocket::SocketState>(param1));
}

void QAbstractSocket_connect_stateChanged(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAbstractSocket::SocketState param1) {
			QAbstractSocket::SocketState param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(QAbstractSocket::SocketState)>(&QAbstractSocket::stateChanged), self, local_caller{slot, callback, release});
}

void QAbstractSocket_errorOccurred(QAbstractSocket* self, int param1) {
	self->errorOccurred(static_cast<QAbstractSocket::SocketError>(param1));
}

void QAbstractSocket_connect_errorOccurred(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAbstractSocket::SocketError param1) {
			QAbstractSocket::SocketError param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(QAbstractSocket::SocketError)>(&QAbstractSocket::errorOccurred), self, local_caller{slot, callback, release});
}

void QAbstractSocket_proxyAuthenticationRequired(QAbstractSocket* self, QNetworkProxy* proxy, QAuthenticator* authenticator) {
	self->proxyAuthenticationRequired(*proxy, authenticator);
}

void QAbstractSocket_connect_proxyAuthenticationRequired(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*);
		void operator()(const QNetworkProxy& proxy, QAuthenticator* authenticator) {
			const QNetworkProxy& proxy_ret = proxy;
			// Cast returned reference into pointer
			QNetworkProxy* sigval1 = const_cast<QNetworkProxy*>(&proxy_ret);
			QAuthenticator* sigval2 = authenticator;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(const QNetworkProxy&, QAuthenticator*)>(&QAbstractSocket::proxyAuthenticationRequired), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractSocket_tr2(const char* s, const char* c) {
	QString _ret = QAbstractSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractSocket_bind1(QAbstractSocket* self, uint16_t port) {
	return self->bind(static_cast<quint16>(port));
}

bool QAbstractSocket_bind22(QAbstractSocket* self, uint16_t port, int mode) {
	return self->bind(static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));
}

void QAbstractSocket_connectToHost3(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode) {
	self->connectToHost(*address, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode));
}

QMetaObject* QAbstractSocket_virtualbase_metaObject(const VirtualQAbstractSocket* self) {

	return (QMetaObject*) self->QAbstractSocket::metaObject();
}

void* QAbstractSocket_virtualbase_metacast(VirtualQAbstractSocket* self, const char* param1) {

	return self->QAbstractSocket::qt_metacast(param1);
}

int QAbstractSocket_virtualbase_metacall(VirtualQAbstractSocket* self, int param1, int param2, void** param3) {

	return self->QAbstractSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QAbstractSocket_virtualbase_resume(VirtualQAbstractSocket* self) {

	self->QAbstractSocket::resume();
}

bool QAbstractSocket_virtualbase_bind(VirtualQAbstractSocket* self, QHostAddress* address, uint16_t port, int mode) {

	return self->QAbstractSocket::bind(*address, static_cast<quint16>(port), static_cast<VirtualQAbstractSocket::BindMode>(mode));
}

void QAbstractSocket_virtualbase_connectToHost(VirtualQAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

	self->QAbstractSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<VirtualQAbstractSocket::OpenMode>(mode), static_cast<VirtualQAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QAbstractSocket_virtualbase_disconnectFromHost(VirtualQAbstractSocket* self) {

	self->QAbstractSocket::disconnectFromHost();
}

long long QAbstractSocket_virtualbase_bytesAvailable(const VirtualQAbstractSocket* self) {

	qint64 _ret = self->QAbstractSocket::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_virtualbase_bytesToWrite(const VirtualQAbstractSocket* self) {

	qint64 _ret = self->QAbstractSocket::bytesToWrite();
	return static_cast<long long>(_ret);
}

void QAbstractSocket_virtualbase_setReadBufferSize(VirtualQAbstractSocket* self, long long size) {

	self->QAbstractSocket::setReadBufferSize(static_cast<qint64>(size));
}

intptr_t QAbstractSocket_virtualbase_socketDescriptor(const VirtualQAbstractSocket* self) {

	qintptr _ret = self->QAbstractSocket::socketDescriptor();
	return (intptr_t)(_ret);
}

bool QAbstractSocket_virtualbase_setSocketDescriptor(VirtualQAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode) {

	return self->QAbstractSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<VirtualQAbstractSocket::SocketState>(state), static_cast<VirtualQAbstractSocket::OpenMode>(openMode));
}

void QAbstractSocket_virtualbase_setSocketOption(VirtualQAbstractSocket* self, int option, QVariant* value) {

	self->QAbstractSocket::setSocketOption(static_cast<VirtualQAbstractSocket::SocketOption>(option), *value);
}

QVariant* QAbstractSocket_virtualbase_socketOption(VirtualQAbstractSocket* self, int option) {

	return new QVariant(self->QAbstractSocket::socketOption(static_cast<VirtualQAbstractSocket::SocketOption>(option)));
}

void QAbstractSocket_virtualbase_close(VirtualQAbstractSocket* self) {

	self->QAbstractSocket::close();
}

bool QAbstractSocket_virtualbase_isSequential(const VirtualQAbstractSocket* self) {

	return self->QAbstractSocket::isSequential();
}

bool QAbstractSocket_virtualbase_waitForConnected(VirtualQAbstractSocket* self, int msecs) {

	return self->QAbstractSocket::waitForConnected(static_cast<int>(msecs));
}

bool QAbstractSocket_virtualbase_waitForReadyRead(VirtualQAbstractSocket* self, int msecs) {

	return self->QAbstractSocket::waitForReadyRead(static_cast<int>(msecs));
}

bool QAbstractSocket_virtualbase_waitForBytesWritten(VirtualQAbstractSocket* self, int msecs) {

	return self->QAbstractSocket::waitForBytesWritten(static_cast<int>(msecs));
}

bool QAbstractSocket_virtualbase_waitForDisconnected(VirtualQAbstractSocket* self, int msecs) {

	return self->QAbstractSocket::waitForDisconnected(static_cast<int>(msecs));
}

long long QAbstractSocket_virtualbase_readData(VirtualQAbstractSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QAbstractSocket::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_virtualbase_readLineData(VirtualQAbstractSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QAbstractSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_virtualbase_skipData(VirtualQAbstractSocket* self, long long maxSize) {

	qint64 _ret = self->QAbstractSocket::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_virtualbase_writeData(VirtualQAbstractSocket* self, const char* data, long long len) {

	qint64 _ret = self->QAbstractSocket::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

bool QAbstractSocket_virtualbase_open(VirtualQAbstractSocket* self, int mode) {

	return self->QAbstractSocket::open(static_cast<VirtualQAbstractSocket::OpenMode>(mode));
}

long long QAbstractSocket_virtualbase_pos(const VirtualQAbstractSocket* self) {

	qint64 _ret = self->QAbstractSocket::pos();
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_virtualbase_size(const VirtualQAbstractSocket* self) {

	qint64 _ret = self->QAbstractSocket::size();
	return static_cast<long long>(_ret);
}

bool QAbstractSocket_virtualbase_seek(VirtualQAbstractSocket* self, long long pos) {

	return self->QAbstractSocket::seek(static_cast<qint64>(pos));
}

bool QAbstractSocket_virtualbase_atEnd(const VirtualQAbstractSocket* self) {

	return self->QAbstractSocket::atEnd();
}

bool QAbstractSocket_virtualbase_reset(VirtualQAbstractSocket* self) {

	return self->QAbstractSocket::reset();
}

bool QAbstractSocket_virtualbase_canReadLine(const VirtualQAbstractSocket* self) {

	return self->QAbstractSocket::canReadLine();
}

bool QAbstractSocket_virtualbase_event(VirtualQAbstractSocket* self, QEvent* event) {

	return self->QAbstractSocket::event(event);
}

bool QAbstractSocket_virtualbase_eventFilter(VirtualQAbstractSocket* self, QObject* watched, QEvent* event) {

	return self->QAbstractSocket::eventFilter(watched, event);
}

void QAbstractSocket_virtualbase_timerEvent(VirtualQAbstractSocket* self, QTimerEvent* event) {

	self->QAbstractSocket::timerEvent(event);
}

void QAbstractSocket_virtualbase_childEvent(VirtualQAbstractSocket* self, QChildEvent* event) {

	self->QAbstractSocket::childEvent(event);
}

void QAbstractSocket_virtualbase_customEvent(VirtualQAbstractSocket* self, QEvent* event) {

	self->QAbstractSocket::customEvent(event);
}

void QAbstractSocket_virtualbase_connectNotify(VirtualQAbstractSocket* self, QMetaMethod* signal) {

	self->QAbstractSocket::connectNotify(*signal);
}

void QAbstractSocket_virtualbase_disconnectNotify(VirtualQAbstractSocket* self, QMetaMethod* signal) {

	self->QAbstractSocket::disconnectNotify(*signal);
}

const QMetaObject* QAbstractSocket_staticMetaObject() { return &QAbstractSocket::staticMetaObject; }

const QAbstractSocket_VTable* QAbstractSocket_vtbl(const VirtualQAbstractSocket* self) { return self->vtbl; }
void* QAbstractSocket_vdata(const VirtualQAbstractSocket* self) { return self->vdata; }
void QAbstractSocket_setVdata(VirtualQAbstractSocket* self, void* vdata) { self->vdata = vdata; }

void QAbstractSocket_protectedbase_setSocketState(VirtualQAbstractSocket* self, int state) {
	self->setSocketState(static_cast<VirtualQAbstractSocket::SocketState>(state));
}

void QAbstractSocket_protectedbase_setSocketError(VirtualQAbstractSocket* self, int socketError) {
	self->setSocketError(static_cast<VirtualQAbstractSocket::SocketError>(socketError));
}

void QAbstractSocket_protectedbase_setLocalPort(VirtualQAbstractSocket* self, uint16_t port) {
	self->setLocalPort(static_cast<quint16>(port));
}

void QAbstractSocket_protectedbase_setLocalAddress(VirtualQAbstractSocket* self, QHostAddress* address) {
	self->setLocalAddress(*address);
}

void QAbstractSocket_protectedbase_setPeerPort(VirtualQAbstractSocket* self, uint16_t port) {
	self->setPeerPort(static_cast<quint16>(port));
}

void QAbstractSocket_protectedbase_setPeerAddress(VirtualQAbstractSocket* self, QHostAddress* address) {
	self->setPeerAddress(*address);
}

void QAbstractSocket_protectedbase_setPeerName(VirtualQAbstractSocket* self, struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setPeerName(name_QString);
}

void QAbstractSocket_protectedbase_setOpenMode(VirtualQAbstractSocket* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQAbstractSocket::OpenMode>(openMode));
}

void QAbstractSocket_protectedbase_setErrorString(VirtualQAbstractSocket* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QAbstractSocket_protectedbase_sender(const VirtualQAbstractSocket* self) {
	return self->sender();
}

int QAbstractSocket_protectedbase_senderSignalIndex(const VirtualQAbstractSocket* self) {
	return self->senderSignalIndex();
}

int QAbstractSocket_protectedbase_receivers(const VirtualQAbstractSocket* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractSocket_protectedbase_isSignalConnected(const VirtualQAbstractSocket* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractSocket_delete(QAbstractSocket* self) {
	delete self;
}

