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
class VirtualQSctpSocket final : public QSctpSocket {
	const QSctpSocket_VTable* vtbl;
	void* vdata;
public:
	friend const QSctpSocket_VTable* QSctpSocket_vtbl(const VirtualQSctpSocket* self);
	friend void* QSctpSocket_vdata(const VirtualQSctpSocket* self);
	friend void QSctpSocket_setVdata(VirtualQSctpSocket* self, void* vdata);

	VirtualQSctpSocket(const QSctpSocket_VTable* vtbl, void* vdata): QSctpSocket(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSctpSocket(const QSctpSocket_VTable* vtbl, void* vdata, QObject* parent): QSctpSocket(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSctpSocket() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSctpSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSctpSocket_virtualbase_metaObject(const VirtualQSctpSocket* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSctpSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSctpSocket_virtualbase_metacast(VirtualQSctpSocket* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSctpSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSctpSocket_virtualbase_metacall(VirtualQSctpSocket* self, int param1, int param2, void** param3);

	virtual void close() override {
		if (vtbl->close == 0) {
			QSctpSocket::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QSctpSocket_virtualbase_close(VirtualQSctpSocket* self);

	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QSctpSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(this);

	}

	friend void QSctpSocket_virtualbase_disconnectFromHost(VirtualQSctpSocket* self);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QSctpSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_readData(VirtualQSctpSocket* self, char* data, long long maxlen);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QSctpSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_readLineData(VirtualQSctpSocket* self, char* data, long long maxlen);

	virtual void resume() override {
		if (vtbl->resume == 0) {
			QSctpSocket::resume();
			return;
		}


		vtbl->resume(this);

	}

	friend void QSctpSocket_virtualbase_resume(VirtualQSctpSocket* self);

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

		bool callback_return_value = vtbl->bind(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_bind(VirtualQSctpSocket* self, QHostAddress* address, uint16_t port, int mode);

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

		vtbl->connectToHost(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QSctpSocket_virtualbase_connectToHost(VirtualQSctpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QSctpSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_bytesAvailable(const VirtualQSctpSocket* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QSctpSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_bytesToWrite(const VirtualQSctpSocket* self);

	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QSctpSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(this, sigval1);

	}

	friend void QSctpSocket_virtualbase_setReadBufferSize(VirtualQSctpSocket* self, long long size);

	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QSctpSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(this);

		return (qintptr)(callback_return_value);
	}

	friend intptr_t QSctpSocket_virtualbase_socketDescriptor(const VirtualQSctpSocket* self);

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

		bool callback_return_value = vtbl->setSocketDescriptor(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_setSocketDescriptor(VirtualQSctpSocket* self, intptr_t socketDescriptor, int state, int openMode);

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

		vtbl->setSocketOption(this, sigval1, sigval2);

	}

	friend void QSctpSocket_virtualbase_setSocketOption(VirtualQSctpSocket* self, int option, QVariant* value);

	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QSctpSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSctpSocket_virtualbase_socketOption(VirtualQSctpSocket* self, int option);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QSctpSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_isSequential(const VirtualQSctpSocket* self);

	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QSctpSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForConnected(VirtualQSctpSocket* self, int msecs);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QSctpSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForReadyRead(VirtualQSctpSocket* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QSctpSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForBytesWritten(VirtualQSctpSocket* self, int msecs);

	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QSctpSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_waitForDisconnected(VirtualQSctpSocket* self, int msecs);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QSctpSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_skipData(VirtualQSctpSocket* self, long long maxSize);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QSctpSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_writeData(VirtualQSctpSocket* self, const char* data, long long len);

	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QSctpSocket::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_open(VirtualQSctpSocket* self, int mode);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QSctpSocket::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_pos(const VirtualQSctpSocket* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QSctpSocket::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSctpSocket_virtualbase_size(const VirtualQSctpSocket* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QSctpSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_seek(VirtualQSctpSocket* self, long long pos);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QSctpSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_atEnd(const VirtualQSctpSocket* self);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QSctpSocket::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_reset(VirtualQSctpSocket* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QSctpSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_canReadLine(const VirtualQSctpSocket* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSctpSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_event(VirtualQSctpSocket* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSctpSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSctpSocket_virtualbase_eventFilter(VirtualQSctpSocket* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSctpSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSctpSocket_virtualbase_timerEvent(VirtualQSctpSocket* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSctpSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSctpSocket_virtualbase_childEvent(VirtualQSctpSocket* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSctpSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSctpSocket_virtualbase_customEvent(VirtualQSctpSocket* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSctpSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSctpSocket_virtualbase_connectNotify(VirtualQSctpSocket* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSctpSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSctpSocket_virtualbase_disconnectNotify(VirtualQSctpSocket* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSctpSocket_protectedbase_setSocketState(VirtualQSctpSocket* self, int state);
	friend void QSctpSocket_protectedbase_setSocketError(VirtualQSctpSocket* self, int socketError);
	friend void QSctpSocket_protectedbase_setLocalPort(VirtualQSctpSocket* self, uint16_t port);
	friend void QSctpSocket_protectedbase_setLocalAddress(VirtualQSctpSocket* self, QHostAddress* address);
	friend void QSctpSocket_protectedbase_setPeerPort(VirtualQSctpSocket* self, uint16_t port);
	friend void QSctpSocket_protectedbase_setPeerAddress(VirtualQSctpSocket* self, QHostAddress* address);
	friend void QSctpSocket_protectedbase_setPeerName(VirtualQSctpSocket* self, struct miqt_string name);
	friend void QSctpSocket_protectedbase_setOpenMode(VirtualQSctpSocket* self, int openMode);
	friend void QSctpSocket_protectedbase_setErrorString(VirtualQSctpSocket* self, struct miqt_string errorString);
	friend QObject* QSctpSocket_protectedbase_sender(const VirtualQSctpSocket* self);
	friend int QSctpSocket_protectedbase_senderSignalIndex(const VirtualQSctpSocket* self);
	friend int QSctpSocket_protectedbase_receivers(const VirtualQSctpSocket* self, const char* signal);
	friend bool QSctpSocket_protectedbase_isSignalConnected(const VirtualQSctpSocket* self, QMetaMethod* signal);
};

VirtualQSctpSocket* QSctpSocket_new(const QSctpSocket_VTable* vtbl, void* vdata) {
	return new VirtualQSctpSocket(vtbl, vdata);
}

VirtualQSctpSocket* QSctpSocket_new2(const QSctpSocket_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSctpSocket(vtbl, vdata, parent);
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

QMetaObject* QSctpSocket_virtualbase_metaObject(const VirtualQSctpSocket* self) {

	return (QMetaObject*) self->QSctpSocket::metaObject();
}

void* QSctpSocket_virtualbase_metacast(VirtualQSctpSocket* self, const char* param1) {

	return self->QSctpSocket::qt_metacast(param1);
}

int QSctpSocket_virtualbase_metacall(VirtualQSctpSocket* self, int param1, int param2, void** param3) {

	return self->QSctpSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QSctpSocket_virtualbase_close(VirtualQSctpSocket* self) {

	self->QSctpSocket::close();
}

void QSctpSocket_virtualbase_disconnectFromHost(VirtualQSctpSocket* self) {

	self->QSctpSocket::disconnectFromHost();
}

long long QSctpSocket_virtualbase_readData(VirtualQSctpSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QSctpSocket::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QSctpSocket_virtualbase_readLineData(VirtualQSctpSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QSctpSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

void QSctpSocket_virtualbase_resume(VirtualQSctpSocket* self) {

	self->QSctpSocket::resume();
}

bool QSctpSocket_virtualbase_bind(VirtualQSctpSocket* self, QHostAddress* address, uint16_t port, int mode) {

	return self->QSctpSocket::bind(*address, static_cast<quint16>(port), static_cast<VirtualQSctpSocket::BindMode>(mode));
}

void QSctpSocket_virtualbase_connectToHost(VirtualQSctpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

	self->QSctpSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<VirtualQSctpSocket::OpenMode>(mode), static_cast<VirtualQSctpSocket::NetworkLayerProtocol>(protocol));
}

long long QSctpSocket_virtualbase_bytesAvailable(const VirtualQSctpSocket* self) {

	qint64 _ret = self->QSctpSocket::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSctpSocket_virtualbase_bytesToWrite(const VirtualQSctpSocket* self) {

	qint64 _ret = self->QSctpSocket::bytesToWrite();
	return static_cast<long long>(_ret);
}

void QSctpSocket_virtualbase_setReadBufferSize(VirtualQSctpSocket* self, long long size) {

	self->QSctpSocket::setReadBufferSize(static_cast<qint64>(size));
}

intptr_t QSctpSocket_virtualbase_socketDescriptor(const VirtualQSctpSocket* self) {

	qintptr _ret = self->QSctpSocket::socketDescriptor();
	return (intptr_t)(_ret);
}

bool QSctpSocket_virtualbase_setSocketDescriptor(VirtualQSctpSocket* self, intptr_t socketDescriptor, int state, int openMode) {

	return self->QSctpSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<VirtualQSctpSocket::SocketState>(state), static_cast<VirtualQSctpSocket::OpenMode>(openMode));
}

void QSctpSocket_virtualbase_setSocketOption(VirtualQSctpSocket* self, int option, QVariant* value) {

	self->QSctpSocket::setSocketOption(static_cast<VirtualQSctpSocket::SocketOption>(option), *value);
}

QVariant* QSctpSocket_virtualbase_socketOption(VirtualQSctpSocket* self, int option) {

	return new QVariant(self->QSctpSocket::socketOption(static_cast<VirtualQSctpSocket::SocketOption>(option)));
}

bool QSctpSocket_virtualbase_isSequential(const VirtualQSctpSocket* self) {

	return self->QSctpSocket::isSequential();
}

bool QSctpSocket_virtualbase_waitForConnected(VirtualQSctpSocket* self, int msecs) {

	return self->QSctpSocket::waitForConnected(static_cast<int>(msecs));
}

bool QSctpSocket_virtualbase_waitForReadyRead(VirtualQSctpSocket* self, int msecs) {

	return self->QSctpSocket::waitForReadyRead(static_cast<int>(msecs));
}

bool QSctpSocket_virtualbase_waitForBytesWritten(VirtualQSctpSocket* self, int msecs) {

	return self->QSctpSocket::waitForBytesWritten(static_cast<int>(msecs));
}

bool QSctpSocket_virtualbase_waitForDisconnected(VirtualQSctpSocket* self, int msecs) {

	return self->QSctpSocket::waitForDisconnected(static_cast<int>(msecs));
}

long long QSctpSocket_virtualbase_skipData(VirtualQSctpSocket* self, long long maxSize) {

	qint64 _ret = self->QSctpSocket::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

long long QSctpSocket_virtualbase_writeData(VirtualQSctpSocket* self, const char* data, long long len) {

	qint64 _ret = self->QSctpSocket::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

bool QSctpSocket_virtualbase_open(VirtualQSctpSocket* self, int mode) {

	return self->QSctpSocket::open(static_cast<VirtualQSctpSocket::OpenMode>(mode));
}

long long QSctpSocket_virtualbase_pos(const VirtualQSctpSocket* self) {

	qint64 _ret = self->QSctpSocket::pos();
	return static_cast<long long>(_ret);
}

long long QSctpSocket_virtualbase_size(const VirtualQSctpSocket* self) {

	qint64 _ret = self->QSctpSocket::size();
	return static_cast<long long>(_ret);
}

bool QSctpSocket_virtualbase_seek(VirtualQSctpSocket* self, long long pos) {

	return self->QSctpSocket::seek(static_cast<qint64>(pos));
}

bool QSctpSocket_virtualbase_atEnd(const VirtualQSctpSocket* self) {

	return self->QSctpSocket::atEnd();
}

bool QSctpSocket_virtualbase_reset(VirtualQSctpSocket* self) {

	return self->QSctpSocket::reset();
}

bool QSctpSocket_virtualbase_canReadLine(const VirtualQSctpSocket* self) {

	return self->QSctpSocket::canReadLine();
}

bool QSctpSocket_virtualbase_event(VirtualQSctpSocket* self, QEvent* event) {

	return self->QSctpSocket::event(event);
}

bool QSctpSocket_virtualbase_eventFilter(VirtualQSctpSocket* self, QObject* watched, QEvent* event) {

	return self->QSctpSocket::eventFilter(watched, event);
}

void QSctpSocket_virtualbase_timerEvent(VirtualQSctpSocket* self, QTimerEvent* event) {

	self->QSctpSocket::timerEvent(event);
}

void QSctpSocket_virtualbase_childEvent(VirtualQSctpSocket* self, QChildEvent* event) {

	self->QSctpSocket::childEvent(event);
}

void QSctpSocket_virtualbase_customEvent(VirtualQSctpSocket* self, QEvent* event) {

	self->QSctpSocket::customEvent(event);
}

void QSctpSocket_virtualbase_connectNotify(VirtualQSctpSocket* self, QMetaMethod* signal) {

	self->QSctpSocket::connectNotify(*signal);
}

void QSctpSocket_virtualbase_disconnectNotify(VirtualQSctpSocket* self, QMetaMethod* signal) {

	self->QSctpSocket::disconnectNotify(*signal);
}

const QMetaObject* QSctpSocket_staticMetaObject() { return &QSctpSocket::staticMetaObject; }

const QSctpSocket_VTable* QSctpSocket_vtbl(const VirtualQSctpSocket* self) { return self->vtbl; }
void* QSctpSocket_vdata(const VirtualQSctpSocket* self) { return self->vdata; }
void QSctpSocket_setVdata(VirtualQSctpSocket* self, void* vdata) { self->vdata = vdata; }

void QSctpSocket_protectedbase_setSocketState(VirtualQSctpSocket* self, int state) {
	self->setSocketState(static_cast<VirtualQSctpSocket::SocketState>(state));
}

void QSctpSocket_protectedbase_setSocketError(VirtualQSctpSocket* self, int socketError) {
	self->setSocketError(static_cast<VirtualQSctpSocket::SocketError>(socketError));
}

void QSctpSocket_protectedbase_setLocalPort(VirtualQSctpSocket* self, uint16_t port) {
	self->setLocalPort(static_cast<quint16>(port));
}

void QSctpSocket_protectedbase_setLocalAddress(VirtualQSctpSocket* self, QHostAddress* address) {
	self->setLocalAddress(*address);
}

void QSctpSocket_protectedbase_setPeerPort(VirtualQSctpSocket* self, uint16_t port) {
	self->setPeerPort(static_cast<quint16>(port));
}

void QSctpSocket_protectedbase_setPeerAddress(VirtualQSctpSocket* self, QHostAddress* address) {
	self->setPeerAddress(*address);
}

void QSctpSocket_protectedbase_setPeerName(VirtualQSctpSocket* self, struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setPeerName(name_QString);
}

void QSctpSocket_protectedbase_setOpenMode(VirtualQSctpSocket* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQSctpSocket::OpenMode>(openMode));
}

void QSctpSocket_protectedbase_setErrorString(VirtualQSctpSocket* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QSctpSocket_protectedbase_sender(const VirtualQSctpSocket* self) {
	return self->sender();
}

int QSctpSocket_protectedbase_senderSignalIndex(const VirtualQSctpSocket* self) {
	return self->senderSignalIndex();
}

int QSctpSocket_protectedbase_receivers(const VirtualQSctpSocket* self, const char* signal) {
	return self->receivers(signal);
}

bool QSctpSocket_protectedbase_isSignalConnected(const VirtualQSctpSocket* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSctpSocket_delete(QSctpSocket* self) {
	delete self;
}

