#include <QAbstractSocket>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkDatagram>
#include <QObject>
#include <QSctpSocket>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpSocket>
#include <QTimerEvent>
#include <QVariant>
#include <qsctpsocket.h>
#include "gen_qsctpsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSctpSocket final : public QSctpSocket {
	struct QSctpSocket_VTable* vtbl;
public:

	VirtualQSctpSocket(struct QSctpSocket_VTable* vtbl): QSctpSocket(), vtbl(vtbl) {};
	VirtualQSctpSocket(struct QSctpSocket_VTable* vtbl, QObject* parent): QSctpSocket(parent), vtbl(vtbl) {};

	virtual ~VirtualQSctpSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSctpSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSctpSocket_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSctpSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSctpSocket_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSctpSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSctpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QSctpSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QSctpSocket_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QSctpSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(vtbl, this);

	}

	friend void QSctpSocket_virtualbase_disconnectFromHost(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QSctpSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_readData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QSctpSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual void resume() override {
		if (vtbl->resume == 0) {
			QSctpSocket::resume();
			return;
		}


		vtbl->resume(vtbl, this);

	}

	friend void QSctpSocket_virtualbase_resume(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool bind(const QHostAddress& address, quint16 port, QAbstractSocket::BindMode mode) override {
		if (vtbl->bind == 0) {
			return QSctpSocket::bind(address, port, mode);
		}

		const QHostAddress& address_ret = address;
		// Cast returned reference into pointer
		QHostAddress* sigval1 = const_cast<QHostAddress*>(&address_ret);
		quint16 port_ret = port;
		uint16_t sigval2 = static_cast<uint16_t>(port_ret);
		QAbstractSocket::BindMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->bind(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode);

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QString& hostName, quint16 port, QIODeviceBase::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QSctpSocket::connectToHost(hostName, port, mode, protocol);
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

		vtbl->connectToHost(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QSctpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QSctpSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QSctpSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QSctpSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(vtbl, this, sigval1);

	}

	friend void QSctpSocket_virtualbase_setReadBufferSize(void* self, long long size);

	// Subclass to allow providing a Go implementation
	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QSctpSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(vtbl, this);

		return (qintptr)(callback_return_value);
	}

	friend intptr_t QSctpSocket_virtualbase_socketDescriptor(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODeviceBase::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QSctpSocket::setSocketDescriptor(socketDescriptor, state, openMode);
		}

		qintptr socketDescriptor_ret = socketDescriptor;
		intptr_t sigval1 = (intptr_t)(socketDescriptor_ret);
		QAbstractSocket::SocketState state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->setSocketDescriptor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);

	// Subclass to allow providing a Go implementation
	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QSctpSocket::setSocketOption(option, value);
			return;
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setSocketOption(vtbl, this, sigval1, sigval2);

	}

	friend void QSctpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QSctpSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QSctpSocket_virtualbase_socketOption(void* self, int option);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QSctpSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QSctpSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForConnected(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QSctpSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QSctpSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QSctpSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForDisconnected(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QSctpSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_skipData(void* self, long long maxSize);

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QSctpSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_writeData(void* self, const char* data, long long len);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QSctpSocket::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_open(void* self, int mode);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QSctpSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QSctpSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QSctpSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_seek(void* self, long long pos);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QSctpSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QSctpSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QSctpSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSctpSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSctpSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSctpSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSctpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSctpSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSctpSocket_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSctpSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSctpSocket_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSctpSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSctpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSctpSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSctpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSctpSocket_protectedbase_setSocketState(void* self, int state);
	friend void QSctpSocket_protectedbase_setSocketError(void* self, int socketError);
	friend void QSctpSocket_protectedbase_setLocalPort(void* self, uint16_t port);
	friend void QSctpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address);
	friend void QSctpSocket_protectedbase_setPeerPort(void* self, uint16_t port);
	friend void QSctpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address);
	friend void QSctpSocket_protectedbase_setPeerName(void* self, struct miqt_string name);
	friend void QSctpSocket_protectedbase_setOpenMode(void* self, int openMode);
	friend void QSctpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString);
	friend QObject* QSctpSocket_protectedbase_sender(const void* self);
	friend int QSctpSocket_protectedbase_senderSignalIndex(const void* self);
	friend int QSctpSocket_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSctpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSctpSocket* QSctpSocket_new(struct QSctpSocket_VTable* vtbl) {
	return new VirtualQSctpSocket(vtbl);
}

QSctpSocket* QSctpSocket_new2(struct QSctpSocket_VTable* vtbl, QObject* parent) {
	return new VirtualQSctpSocket(vtbl, parent);
}

void QSctpSocket_virtbase(QSctpSocket* src, QTcpSocket** outptr_QTcpSocket) {
	*outptr_QTcpSocket = static_cast<QTcpSocket*>(src);
}

QMetaObject* QSctpSocket_metaObject(const QSctpSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSctpSocket_metacast(QSctpSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSctpSocket_metacall(QSctpSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSctpSocket_tr(const char* s) {
	QString _ret = QSctpSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSctpSocket_close(QSctpSocket* self) {
	self->close();
}

void QSctpSocket_disconnectFromHost(QSctpSocket* self) {
	self->disconnectFromHost();
}

void QSctpSocket_setMaximumChannelCount(QSctpSocket* self, int count) {
	self->setMaximumChannelCount(static_cast<int>(count));
}

int QSctpSocket_maximumChannelCount(const QSctpSocket* self) {
	return self->maximumChannelCount();
}

bool QSctpSocket_isInDatagramMode(const QSctpSocket* self) {
	return self->isInDatagramMode();
}

QNetworkDatagram* QSctpSocket_readDatagram(QSctpSocket* self) {
	return new QNetworkDatagram(self->readDatagram());
}

bool QSctpSocket_writeDatagram(QSctpSocket* self, QNetworkDatagram* datagram) {
	return self->writeDatagram(*datagram);
}

struct miqt_string QSctpSocket_tr2(const char* s, const char* c) {
	QString _ret = QSctpSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSctpSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QSctpSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSctpSocket_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::metaObject();

}

void* QSctpSocket_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::qt_metacast(param1);

}

int QSctpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QSctpSocket_virtualbase_close(void* self) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::close();

}

void QSctpSocket_virtualbase_disconnectFromHost(void* self) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::disconnectFromHost();

}

long long QSctpSocket_virtualbase_readData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQSctpSocket*)(self) )->QSctpSocket::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QSctpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQSctpSocket*)(self) )->QSctpSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

void QSctpSocket_virtualbase_resume(void* self) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::resume();

}

bool QSctpSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::bind(*address, static_cast<quint16>(port), static_cast<VirtualQSctpSocket::BindMode>(mode));

}

void QSctpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<VirtualQSctpSocket::OpenMode>(mode), static_cast<VirtualQSctpSocket::NetworkLayerProtocol>(protocol));

}

long long QSctpSocket_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::bytesAvailable();
	return static_cast<long long>(_ret);

}

long long QSctpSocket_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::bytesToWrite();
	return static_cast<long long>(_ret);

}

void QSctpSocket_virtualbase_setReadBufferSize(void* self, long long size) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::setReadBufferSize(static_cast<qint64>(size));

}

intptr_t QSctpSocket_virtualbase_socketDescriptor(const void* self) {

	qintptr _ret = ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::socketDescriptor();
	return (intptr_t)(_ret);

}

bool QSctpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<VirtualQSctpSocket::SocketState>(state), static_cast<VirtualQSctpSocket::OpenMode>(openMode));

}

void QSctpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::setSocketOption(static_cast<VirtualQSctpSocket::SocketOption>(option), *value);

}

QVariant* QSctpSocket_virtualbase_socketOption(void* self, int option) {

	return new QVariant(( (VirtualQSctpSocket*)(self) )->QSctpSocket::socketOption(static_cast<VirtualQSctpSocket::SocketOption>(option)));

}

bool QSctpSocket_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::isSequential();

}

bool QSctpSocket_virtualbase_waitForConnected(void* self, int msecs) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::waitForConnected(static_cast<int>(msecs));

}

bool QSctpSocket_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::waitForReadyRead(static_cast<int>(msecs));

}

bool QSctpSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::waitForBytesWritten(static_cast<int>(msecs));

}

bool QSctpSocket_virtualbase_waitForDisconnected(void* self, int msecs) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::waitForDisconnected(static_cast<int>(msecs));

}

long long QSctpSocket_virtualbase_skipData(void* self, long long maxSize) {

	qint64 _ret = ( (VirtualQSctpSocket*)(self) )->QSctpSocket::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);

}

long long QSctpSocket_virtualbase_writeData(void* self, const char* data, long long len) {

	qint64 _ret = ( (VirtualQSctpSocket*)(self) )->QSctpSocket::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);

}

bool QSctpSocket_virtualbase_open(void* self, int mode) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::open(static_cast<VirtualQSctpSocket::OpenMode>(mode));

}

long long QSctpSocket_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::pos();
	return static_cast<long long>(_ret);

}

long long QSctpSocket_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::size();
	return static_cast<long long>(_ret);

}

bool QSctpSocket_virtualbase_seek(void* self, long long pos) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::seek(static_cast<qint64>(pos));

}

bool QSctpSocket_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::atEnd();

}

bool QSctpSocket_virtualbase_reset(void* self) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::reset();

}

bool QSctpSocket_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQSctpSocket*)(self) )->QSctpSocket::canReadLine();

}

bool QSctpSocket_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::event(event);

}

bool QSctpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSctpSocket*)(self) )->QSctpSocket::eventFilter(watched, event);

}

void QSctpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::timerEvent(event);

}

void QSctpSocket_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::childEvent(event);

}

void QSctpSocket_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::customEvent(event);

}

void QSctpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::connectNotify(*signal);

}

void QSctpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSctpSocket*)(self) )->QSctpSocket::disconnectNotify(*signal);

}

const QMetaObject* QSctpSocket_staticMetaObject() { return &QSctpSocket::staticMetaObject; }
void QSctpSocket_protectedbase_setSocketState(void* self, int state) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setSocketState(static_cast<VirtualQSctpSocket::SocketState>(state));

}

void QSctpSocket_protectedbase_setSocketError(void* self, int socketError) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setSocketError(static_cast<VirtualQSctpSocket::SocketError>(socketError));

}

void QSctpSocket_protectedbase_setLocalPort(void* self, uint16_t port) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setLocalPort(static_cast<quint16>(port));

}

void QSctpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setLocalAddress(*address);

}

void QSctpSocket_protectedbase_setPeerPort(void* self, uint16_t port) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setPeerPort(static_cast<quint16>(port));

}

void QSctpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setPeerAddress(*address);

}

void QSctpSocket_protectedbase_setPeerName(void* self, struct miqt_string name) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
			QString name_QString = QString::fromUtf8(name.data, name.len);

	self_cast->setPeerName(name_QString);

}

void QSctpSocket_protectedbase_setOpenMode(void* self, int openMode) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	self_cast->setOpenMode(static_cast<VirtualQSctpSocket::OpenMode>(openMode));

}

void QSctpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QSctpSocket_protectedbase_sender(const void* self) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	return self_cast->sender();

}

int QSctpSocket_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSctpSocket_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSctpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSctpSocket* self_cast = static_cast<VirtualQSctpSocket*>( (QSctpSocket*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSctpSocket_delete(QSctpSocket* self) {
	delete self;
}

