#include <QAbstractSocket>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpSocket>
#include <QTimerEvent>
#include <QVariant>
#include <qtcpsocket.h>
#include "gen_qtcpsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTcpSocket final : public QTcpSocket {
	struct QTcpSocket_VTable* vtbl;
public:

	VirtualQTcpSocket(struct QTcpSocket_VTable* vtbl): QTcpSocket(), vtbl(vtbl) {};
	VirtualQTcpSocket(struct QTcpSocket_VTable* vtbl, QObject* parent): QTcpSocket(parent), vtbl(vtbl) {};

	virtual ~VirtualQTcpSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTcpSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTcpSocket_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTcpSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTcpSocket_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTcpSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTcpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void resume() override {
		if (vtbl->resume == 0) {
			QTcpSocket::resume();
			return;
		}


		vtbl->resume(vtbl, this);

	}

	friend void QTcpSocket_virtualbase_resume(void* self);

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QString& hostName, quint16 port, QIODevice::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QTcpSocket::connectToHost(hostName, port, mode, protocol);
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
		QIODevice::OpenMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);
		QAbstractSocket::NetworkLayerProtocol protocol_ret = protocol;
		int sigval4 = static_cast<int>(protocol_ret);

		vtbl->connectToHost(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QTcpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);

	// Subclass to allow providing a Go implementation
	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QTcpSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(vtbl, this);

	}

	friend void QTcpSocket_virtualbase_disconnectFromHost(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QTcpSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QTcpSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QTcpSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QTcpSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(vtbl, this, sigval1);

	}

	friend void QTcpSocket_virtualbase_setReadBufferSize(void* self, long long size);

	// Subclass to allow providing a Go implementation
	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QTcpSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(vtbl, this);

		return (qintptr)(callback_return_value);
	}

	friend intptr_t QTcpSocket_virtualbase_socketDescriptor(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODevice::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QTcpSocket::setSocketDescriptor(socketDescriptor, state, openMode);
		}

		qintptr socketDescriptor_ret = socketDescriptor;
		intptr_t sigval1 = (intptr_t)(socketDescriptor_ret);
		QAbstractSocket::SocketState state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		QIODevice::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->setSocketDescriptor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);

	// Subclass to allow providing a Go implementation
	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QTcpSocket::setSocketOption(option, value);
			return;
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setSocketOption(vtbl, this, sigval1, sigval2);

	}

	friend void QTcpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QTcpSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QTcpSocket_virtualbase_socketOption(void* self, int option);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QTcpSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QTcpSocket_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QTcpSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QTcpSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QTcpSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_waitForConnected(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QTcpSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QTcpSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QTcpSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_waitForDisconnected(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QTcpSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_readData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QTcpSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QTcpSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_writeData(void* self, const char* data, long long len);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QTcpSocket::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_open(void* self, int mode);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QTcpSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QTcpSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTcpSocket_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QTcpSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_seek(void* self, long long pos);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QTcpSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTcpSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTcpSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTcpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTcpSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTcpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTcpSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTcpSocket_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTcpSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTcpSocket_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTcpSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTcpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTcpSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTcpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTcpSocket_protectedbase_setSocketState(bool* _dynamic_cast_ok, void* self, int state);
	friend void QTcpSocket_protectedbase_setSocketError(bool* _dynamic_cast_ok, void* self, int socketError);
	friend void QTcpSocket_protectedbase_setLocalPort(bool* _dynamic_cast_ok, void* self, uint16_t port);
	friend void QTcpSocket_protectedbase_setLocalAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address);
	friend void QTcpSocket_protectedbase_setPeerPort(bool* _dynamic_cast_ok, void* self, uint16_t port);
	friend void QTcpSocket_protectedbase_setPeerAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address);
	friend void QTcpSocket_protectedbase_setPeerName(bool* _dynamic_cast_ok, void* self, struct miqt_string name);
	friend void QTcpSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
	friend void QTcpSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
	friend QObject* QTcpSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTcpSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTcpSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTcpSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTcpSocket* QTcpSocket_new(struct QTcpSocket_VTable* vtbl) {
	return new VirtualQTcpSocket(vtbl);
}

QTcpSocket* QTcpSocket_new2(struct QTcpSocket_VTable* vtbl, QObject* parent) {
	return new VirtualQTcpSocket(vtbl, parent);
}

void QTcpSocket_virtbase(QTcpSocket* src, QAbstractSocket** outptr_QAbstractSocket) {
	*outptr_QAbstractSocket = static_cast<QAbstractSocket*>(src);
}

QMetaObject* QTcpSocket_metaObject(const QTcpSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTcpSocket_metacast(QTcpSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTcpSocket_metacall(QTcpSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTcpSocket_tr(const char* s) {
	QString _ret = QTcpSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_trUtf8(const char* s) {
	QString _ret = QTcpSocket::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_tr2(const char* s, const char* c) {
	QString _ret = QTcpSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QTcpSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_trUtf82(const char* s, const char* c) {
	QString _ret = QTcpSocket::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTcpSocket::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTcpSocket_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::metaObject();

}

void* QTcpSocket_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::qt_metacast(param1);

}

int QTcpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QTcpSocket_virtualbase_resume(void* self) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::resume();

}

void QTcpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<VirtualQTcpSocket::OpenMode>(mode), static_cast<VirtualQTcpSocket::NetworkLayerProtocol>(protocol));

}

void QTcpSocket_virtualbase_disconnectFromHost(void* self) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::disconnectFromHost();

}

long long QTcpSocket_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::bytesAvailable();
	return static_cast<long long>(_ret);

}

long long QTcpSocket_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::bytesToWrite();
	return static_cast<long long>(_ret);

}

bool QTcpSocket_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::canReadLine();

}

void QTcpSocket_virtualbase_setReadBufferSize(void* self, long long size) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::setReadBufferSize(static_cast<qint64>(size));

}

intptr_t QTcpSocket_virtualbase_socketDescriptor(const void* self) {

	qintptr _ret = ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::socketDescriptor();
	return (intptr_t)(_ret);

}

bool QTcpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<VirtualQTcpSocket::SocketState>(state), static_cast<VirtualQTcpSocket::OpenMode>(openMode));

}

void QTcpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::setSocketOption(static_cast<VirtualQTcpSocket::SocketOption>(option), *value);

}

QVariant* QTcpSocket_virtualbase_socketOption(void* self, int option) {

	return new QVariant(( (VirtualQTcpSocket*)(self) )->QTcpSocket::socketOption(static_cast<VirtualQTcpSocket::SocketOption>(option)));

}

void QTcpSocket_virtualbase_close(void* self) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::close();

}

bool QTcpSocket_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::isSequential();

}

bool QTcpSocket_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::atEnd();

}

bool QTcpSocket_virtualbase_waitForConnected(void* self, int msecs) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::waitForConnected(static_cast<int>(msecs));

}

bool QTcpSocket_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::waitForReadyRead(static_cast<int>(msecs));

}

bool QTcpSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::waitForBytesWritten(static_cast<int>(msecs));

}

bool QTcpSocket_virtualbase_waitForDisconnected(void* self, int msecs) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::waitForDisconnected(static_cast<int>(msecs));

}

long long QTcpSocket_virtualbase_readData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQTcpSocket*)(self) )->QTcpSocket::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QTcpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQTcpSocket*)(self) )->QTcpSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QTcpSocket_virtualbase_writeData(void* self, const char* data, long long len) {

	qint64 _ret = ( (VirtualQTcpSocket*)(self) )->QTcpSocket::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);

}

bool QTcpSocket_virtualbase_open(void* self, int mode) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::open(static_cast<VirtualQTcpSocket::OpenMode>(mode));

}

long long QTcpSocket_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::pos();
	return static_cast<long long>(_ret);

}

long long QTcpSocket_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQTcpSocket*)(self) )->QTcpSocket::size();
	return static_cast<long long>(_ret);

}

bool QTcpSocket_virtualbase_seek(void* self, long long pos) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::seek(static_cast<qint64>(pos));

}

bool QTcpSocket_virtualbase_reset(void* self) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::reset();

}

bool QTcpSocket_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::event(event);

}

bool QTcpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTcpSocket*)(self) )->QTcpSocket::eventFilter(watched, event);

}

void QTcpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::timerEvent(event);

}

void QTcpSocket_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::childEvent(event);

}

void QTcpSocket_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::customEvent(event);

}

void QTcpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::connectNotify(*signal);

}

void QTcpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTcpSocket*)(self) )->QTcpSocket::disconnectNotify(*signal);

}

const QMetaObject* QTcpSocket_staticMetaObject() { return &QTcpSocket::staticMetaObject; }
void QTcpSocket_protectedbase_setSocketState(bool* _dynamic_cast_ok, void* self, int state) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setSocketState(static_cast<VirtualQTcpSocket::SocketState>(state));

}

void QTcpSocket_protectedbase_setSocketError(bool* _dynamic_cast_ok, void* self, int socketError) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setSocketError(static_cast<VirtualQTcpSocket::SocketError>(socketError));

}

void QTcpSocket_protectedbase_setLocalPort(bool* _dynamic_cast_ok, void* self, uint16_t port) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setLocalPort(static_cast<quint16>(port));

}

void QTcpSocket_protectedbase_setLocalAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setLocalAddress(*address);

}

void QTcpSocket_protectedbase_setPeerPort(bool* _dynamic_cast_ok, void* self, uint16_t port) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setPeerPort(static_cast<quint16>(port));

}

void QTcpSocket_protectedbase_setPeerAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setPeerAddress(*address);

}

void QTcpSocket_protectedbase_setPeerName(bool* _dynamic_cast_ok, void* self, struct miqt_string name) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString name_QString = QString::fromUtf8(name.data, name.len);

	self_cast->setPeerName(name_QString);

}

void QTcpSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOpenMode(static_cast<VirtualQTcpSocket::OpenMode>(openMode));

}

void QTcpSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QTcpSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTcpSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTcpSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTcpSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTcpSocket* self_cast = dynamic_cast<VirtualQTcpSocket*>( (QTcpSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTcpSocket_delete(QTcpSocket* self) {
	delete self;
}

