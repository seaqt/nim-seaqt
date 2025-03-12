#include <QAbstractSocket>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkDatagram>
#include <QNetworkInterface>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUdpSocket>
#include <QVariant>
#include <qudpsocket.h>
#include "gen_qudpsocket.h"
class VirtualQUdpSocket final : public QUdpSocket {
	const QUdpSocket_VTable* vtbl;
	void* vdata;
public:
	friend const QUdpSocket_VTable* QUdpSocket_vtbl(const VirtualQUdpSocket* self);
	friend void* QUdpSocket_vdata(const VirtualQUdpSocket* self);
	friend void QUdpSocket_setVdata(VirtualQUdpSocket* self, void* vdata);

	VirtualQUdpSocket(const QUdpSocket_VTable* vtbl, void* vdata): QUdpSocket(), vtbl(vtbl), vdata(vdata) {}
	VirtualQUdpSocket(const QUdpSocket_VTable* vtbl, void* vdata, QObject* parent): QUdpSocket(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQUdpSocket() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUdpSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QUdpSocket_virtualbase_metaObject(const VirtualQUdpSocket* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUdpSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QUdpSocket_virtualbase_metacast(VirtualQUdpSocket* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUdpSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QUdpSocket_virtualbase_metacall(VirtualQUdpSocket* self, int param1, int param2, void** param3);

	virtual void resume() override {
		if (vtbl->resume == 0) {
			QUdpSocket::resume();
			return;
		}


		vtbl->resume(this);

	}

	friend void QUdpSocket_virtualbase_resume(VirtualQUdpSocket* self);

	virtual void connectToHost(const QString& hostName, quint16 port, QIODevice::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QUdpSocket::connectToHost(hostName, port, mode, protocol);
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

		vtbl->connectToHost(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QUdpSocket_virtualbase_connectToHost(VirtualQUdpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);

	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QUdpSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(this);

	}

	friend void QUdpSocket_virtualbase_disconnectFromHost(VirtualQUdpSocket* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QUdpSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_bytesAvailable(const VirtualQUdpSocket* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QUdpSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_bytesToWrite(const VirtualQUdpSocket* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QUdpSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_canReadLine(const VirtualQUdpSocket* self);

	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QUdpSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(this, sigval1);

	}

	friend void QUdpSocket_virtualbase_setReadBufferSize(VirtualQUdpSocket* self, long long size);

	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QUdpSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(this);

		return (qintptr)(callback_return_value);
	}

	friend intptr_t QUdpSocket_virtualbase_socketDescriptor(const VirtualQUdpSocket* self);

	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODevice::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QUdpSocket::setSocketDescriptor(socketDescriptor, state, openMode);
		}

		qintptr socketDescriptor_ret = socketDescriptor;
		intptr_t sigval1 = (intptr_t)(socketDescriptor_ret);
		QAbstractSocket::SocketState state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		QIODevice::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->setSocketDescriptor(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_setSocketDescriptor(VirtualQUdpSocket* self, intptr_t socketDescriptor, int state, int openMode);

	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QUdpSocket::setSocketOption(option, value);
			return;
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setSocketOption(this, sigval1, sigval2);

	}

	friend void QUdpSocket_virtualbase_setSocketOption(VirtualQUdpSocket* self, int option, QVariant* value);

	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QUdpSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QUdpSocket_virtualbase_socketOption(VirtualQUdpSocket* self, int option);

	virtual void close() override {
		if (vtbl->close == 0) {
			QUdpSocket::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QUdpSocket_virtualbase_close(VirtualQUdpSocket* self);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QUdpSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_isSequential(const VirtualQUdpSocket* self);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QUdpSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_atEnd(const VirtualQUdpSocket* self);

	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QUdpSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_waitForConnected(VirtualQUdpSocket* self, int msecs);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QUdpSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_waitForReadyRead(VirtualQUdpSocket* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QUdpSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_waitForBytesWritten(VirtualQUdpSocket* self, int msecs);

	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QUdpSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_waitForDisconnected(VirtualQUdpSocket* self, int msecs);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QUdpSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_readData(VirtualQUdpSocket* self, char* data, long long maxlen);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QUdpSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_readLineData(VirtualQUdpSocket* self, char* data, long long maxlen);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QUdpSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_writeData(VirtualQUdpSocket* self, const char* data, long long len);

	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QUdpSocket::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_open(VirtualQUdpSocket* self, int mode);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QUdpSocket::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_pos(const VirtualQUdpSocket* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QUdpSocket::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QUdpSocket_virtualbase_size(const VirtualQUdpSocket* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QUdpSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_seek(VirtualQUdpSocket* self, long long pos);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QUdpSocket::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_reset(VirtualQUdpSocket* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QUdpSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_event(VirtualQUdpSocket* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUdpSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QUdpSocket_virtualbase_eventFilter(VirtualQUdpSocket* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QUdpSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QUdpSocket_virtualbase_timerEvent(VirtualQUdpSocket* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUdpSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QUdpSocket_virtualbase_childEvent(VirtualQUdpSocket* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUdpSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QUdpSocket_virtualbase_customEvent(VirtualQUdpSocket* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUdpSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QUdpSocket_virtualbase_connectNotify(VirtualQUdpSocket* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUdpSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QUdpSocket_virtualbase_disconnectNotify(VirtualQUdpSocket* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QUdpSocket_protectedbase_setSocketState(VirtualQUdpSocket* self, int state);
	friend void QUdpSocket_protectedbase_setSocketError(VirtualQUdpSocket* self, int socketError);
	friend void QUdpSocket_protectedbase_setLocalPort(VirtualQUdpSocket* self, uint16_t port);
	friend void QUdpSocket_protectedbase_setLocalAddress(VirtualQUdpSocket* self, QHostAddress* address);
	friend void QUdpSocket_protectedbase_setPeerPort(VirtualQUdpSocket* self, uint16_t port);
	friend void QUdpSocket_protectedbase_setPeerAddress(VirtualQUdpSocket* self, QHostAddress* address);
	friend void QUdpSocket_protectedbase_setPeerName(VirtualQUdpSocket* self, struct miqt_string name);
	friend void QUdpSocket_protectedbase_setOpenMode(VirtualQUdpSocket* self, int openMode);
	friend void QUdpSocket_protectedbase_setErrorString(VirtualQUdpSocket* self, struct miqt_string errorString);
	friend QObject* QUdpSocket_protectedbase_sender(const VirtualQUdpSocket* self);
	friend int QUdpSocket_protectedbase_senderSignalIndex(const VirtualQUdpSocket* self);
	friend int QUdpSocket_protectedbase_receivers(const VirtualQUdpSocket* self, const char* signal);
	friend bool QUdpSocket_protectedbase_isSignalConnected(const VirtualQUdpSocket* self, QMetaMethod* signal);
};

VirtualQUdpSocket* QUdpSocket_new(const QUdpSocket_VTable* vtbl, void* vdata) {
	return new VirtualQUdpSocket(vtbl, vdata);
}

VirtualQUdpSocket* QUdpSocket_new2(const QUdpSocket_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQUdpSocket(vtbl, vdata, parent);
}

void QUdpSocket_virtbase(QUdpSocket* src, QAbstractSocket** outptr_QAbstractSocket) {
	*outptr_QAbstractSocket = static_cast<QAbstractSocket*>(src);
}

QMetaObject* QUdpSocket_metaObject(const QUdpSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QUdpSocket_metacast(QUdpSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QUdpSocket_metacall(QUdpSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QUdpSocket_tr(const char* s) {
	QString _ret = QUdpSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUdpSocket_trUtf8(const char* s) {
	QString _ret = QUdpSocket::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QUdpSocket_joinMulticastGroup(QUdpSocket* self, QHostAddress* groupAddress) {
	return self->joinMulticastGroup(*groupAddress);
}

bool QUdpSocket_joinMulticastGroup2(QUdpSocket* self, QHostAddress* groupAddress, QNetworkInterface* iface) {
	return self->joinMulticastGroup(*groupAddress, *iface);
}

bool QUdpSocket_leaveMulticastGroup(QUdpSocket* self, QHostAddress* groupAddress) {
	return self->leaveMulticastGroup(*groupAddress);
}

bool QUdpSocket_leaveMulticastGroup2(QUdpSocket* self, QHostAddress* groupAddress, QNetworkInterface* iface) {
	return self->leaveMulticastGroup(*groupAddress, *iface);
}

QNetworkInterface* QUdpSocket_multicastInterface(const QUdpSocket* self) {
	return new QNetworkInterface(self->multicastInterface());
}

void QUdpSocket_setMulticastInterface(QUdpSocket* self, QNetworkInterface* iface) {
	self->setMulticastInterface(*iface);
}

bool QUdpSocket_hasPendingDatagrams(const QUdpSocket* self) {
	return self->hasPendingDatagrams();
}

long long QUdpSocket_pendingDatagramSize(const QUdpSocket* self) {
	qint64 _ret = self->pendingDatagramSize();
	return static_cast<long long>(_ret);
}

QNetworkDatagram* QUdpSocket_receiveDatagram(QUdpSocket* self) {
	return new QNetworkDatagram(self->receiveDatagram());
}

long long QUdpSocket_readDatagram(QUdpSocket* self, char* data, long long maxlen) {
	qint64 _ret = self->readDatagram(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QUdpSocket_writeDatagram(QUdpSocket* self, QNetworkDatagram* datagram) {
	qint64 _ret = self->writeDatagram(*datagram);
	return static_cast<long long>(_ret);
}

long long QUdpSocket_writeDatagram2(QUdpSocket* self, const char* data, long long len, QHostAddress* host, uint16_t port) {
	qint64 _ret = self->writeDatagram(data, static_cast<qint64>(len), *host, static_cast<quint16>(port));
	return static_cast<long long>(_ret);
}

long long QUdpSocket_writeDatagram3(QUdpSocket* self, struct miqt_string datagram, QHostAddress* host, uint16_t port) {
	QByteArray datagram_QByteArray(datagram.data, datagram.len);
	qint64 _ret = self->writeDatagram(datagram_QByteArray, *host, static_cast<quint16>(port));
	return static_cast<long long>(_ret);
}

struct miqt_string QUdpSocket_tr2(const char* s, const char* c) {
	QString _ret = QUdpSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUdpSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QUdpSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUdpSocket_trUtf82(const char* s, const char* c) {
	QString _ret = QUdpSocket::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUdpSocket_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QUdpSocket::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QNetworkDatagram* QUdpSocket_receiveDatagram1(QUdpSocket* self, long long maxSize) {
	return new QNetworkDatagram(self->receiveDatagram(static_cast<qint64>(maxSize)));
}

long long QUdpSocket_readDatagram3(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host) {
	qint64 _ret = self->readDatagram(data, static_cast<qint64>(maxlen), host);
	return static_cast<long long>(_ret);
}

long long QUdpSocket_readDatagram4(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host, uint16_t* port) {
	qint64 _ret = self->readDatagram(data, static_cast<qint64>(maxlen), host, static_cast<quint16*>(port));
	return static_cast<long long>(_ret);
}

QMetaObject* QUdpSocket_virtualbase_metaObject(const VirtualQUdpSocket* self) {

	return (QMetaObject*) self->QUdpSocket::metaObject();
}

void* QUdpSocket_virtualbase_metacast(VirtualQUdpSocket* self, const char* param1) {

	return self->QUdpSocket::qt_metacast(param1);
}

int QUdpSocket_virtualbase_metacall(VirtualQUdpSocket* self, int param1, int param2, void** param3) {

	return self->QUdpSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QUdpSocket_virtualbase_resume(VirtualQUdpSocket* self) {

	self->QUdpSocket::resume();
}

void QUdpSocket_virtualbase_connectToHost(VirtualQUdpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

	self->QUdpSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<VirtualQUdpSocket::OpenMode>(mode), static_cast<VirtualQUdpSocket::NetworkLayerProtocol>(protocol));
}

void QUdpSocket_virtualbase_disconnectFromHost(VirtualQUdpSocket* self) {

	self->QUdpSocket::disconnectFromHost();
}

long long QUdpSocket_virtualbase_bytesAvailable(const VirtualQUdpSocket* self) {

	qint64 _ret = self->QUdpSocket::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QUdpSocket_virtualbase_bytesToWrite(const VirtualQUdpSocket* self) {

	qint64 _ret = self->QUdpSocket::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QUdpSocket_virtualbase_canReadLine(const VirtualQUdpSocket* self) {

	return self->QUdpSocket::canReadLine();
}

void QUdpSocket_virtualbase_setReadBufferSize(VirtualQUdpSocket* self, long long size) {

	self->QUdpSocket::setReadBufferSize(static_cast<qint64>(size));
}

intptr_t QUdpSocket_virtualbase_socketDescriptor(const VirtualQUdpSocket* self) {

	qintptr _ret = self->QUdpSocket::socketDescriptor();
	return (intptr_t)(_ret);
}

bool QUdpSocket_virtualbase_setSocketDescriptor(VirtualQUdpSocket* self, intptr_t socketDescriptor, int state, int openMode) {

	return self->QUdpSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<VirtualQUdpSocket::SocketState>(state), static_cast<VirtualQUdpSocket::OpenMode>(openMode));
}

void QUdpSocket_virtualbase_setSocketOption(VirtualQUdpSocket* self, int option, QVariant* value) {

	self->QUdpSocket::setSocketOption(static_cast<VirtualQUdpSocket::SocketOption>(option), *value);
}

QVariant* QUdpSocket_virtualbase_socketOption(VirtualQUdpSocket* self, int option) {

	return new QVariant(self->QUdpSocket::socketOption(static_cast<VirtualQUdpSocket::SocketOption>(option)));
}

void QUdpSocket_virtualbase_close(VirtualQUdpSocket* self) {

	self->QUdpSocket::close();
}

bool QUdpSocket_virtualbase_isSequential(const VirtualQUdpSocket* self) {

	return self->QUdpSocket::isSequential();
}

bool QUdpSocket_virtualbase_atEnd(const VirtualQUdpSocket* self) {

	return self->QUdpSocket::atEnd();
}

bool QUdpSocket_virtualbase_waitForConnected(VirtualQUdpSocket* self, int msecs) {

	return self->QUdpSocket::waitForConnected(static_cast<int>(msecs));
}

bool QUdpSocket_virtualbase_waitForReadyRead(VirtualQUdpSocket* self, int msecs) {

	return self->QUdpSocket::waitForReadyRead(static_cast<int>(msecs));
}

bool QUdpSocket_virtualbase_waitForBytesWritten(VirtualQUdpSocket* self, int msecs) {

	return self->QUdpSocket::waitForBytesWritten(static_cast<int>(msecs));
}

bool QUdpSocket_virtualbase_waitForDisconnected(VirtualQUdpSocket* self, int msecs) {

	return self->QUdpSocket::waitForDisconnected(static_cast<int>(msecs));
}

long long QUdpSocket_virtualbase_readData(VirtualQUdpSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QUdpSocket::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QUdpSocket_virtualbase_readLineData(VirtualQUdpSocket* self, char* data, long long maxlen) {

	qint64 _ret = self->QUdpSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QUdpSocket_virtualbase_writeData(VirtualQUdpSocket* self, const char* data, long long len) {

	qint64 _ret = self->QUdpSocket::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

bool QUdpSocket_virtualbase_open(VirtualQUdpSocket* self, int mode) {

	return self->QUdpSocket::open(static_cast<VirtualQUdpSocket::OpenMode>(mode));
}

long long QUdpSocket_virtualbase_pos(const VirtualQUdpSocket* self) {

	qint64 _ret = self->QUdpSocket::pos();
	return static_cast<long long>(_ret);
}

long long QUdpSocket_virtualbase_size(const VirtualQUdpSocket* self) {

	qint64 _ret = self->QUdpSocket::size();
	return static_cast<long long>(_ret);
}

bool QUdpSocket_virtualbase_seek(VirtualQUdpSocket* self, long long pos) {

	return self->QUdpSocket::seek(static_cast<qint64>(pos));
}

bool QUdpSocket_virtualbase_reset(VirtualQUdpSocket* self) {

	return self->QUdpSocket::reset();
}

bool QUdpSocket_virtualbase_event(VirtualQUdpSocket* self, QEvent* event) {

	return self->QUdpSocket::event(event);
}

bool QUdpSocket_virtualbase_eventFilter(VirtualQUdpSocket* self, QObject* watched, QEvent* event) {

	return self->QUdpSocket::eventFilter(watched, event);
}

void QUdpSocket_virtualbase_timerEvent(VirtualQUdpSocket* self, QTimerEvent* event) {

	self->QUdpSocket::timerEvent(event);
}

void QUdpSocket_virtualbase_childEvent(VirtualQUdpSocket* self, QChildEvent* event) {

	self->QUdpSocket::childEvent(event);
}

void QUdpSocket_virtualbase_customEvent(VirtualQUdpSocket* self, QEvent* event) {

	self->QUdpSocket::customEvent(event);
}

void QUdpSocket_virtualbase_connectNotify(VirtualQUdpSocket* self, QMetaMethod* signal) {

	self->QUdpSocket::connectNotify(*signal);
}

void QUdpSocket_virtualbase_disconnectNotify(VirtualQUdpSocket* self, QMetaMethod* signal) {

	self->QUdpSocket::disconnectNotify(*signal);
}

const QMetaObject* QUdpSocket_staticMetaObject() { return &QUdpSocket::staticMetaObject; }

const QUdpSocket_VTable* QUdpSocket_vtbl(const VirtualQUdpSocket* self) { return self->vtbl; }
void* QUdpSocket_vdata(const VirtualQUdpSocket* self) { return self->vdata; }
void QUdpSocket_setVdata(VirtualQUdpSocket* self, void* vdata) { self->vdata = vdata; }

void QUdpSocket_protectedbase_setSocketState(VirtualQUdpSocket* self, int state) {
	self->setSocketState(static_cast<VirtualQUdpSocket::SocketState>(state));
}

void QUdpSocket_protectedbase_setSocketError(VirtualQUdpSocket* self, int socketError) {
	self->setSocketError(static_cast<VirtualQUdpSocket::SocketError>(socketError));
}

void QUdpSocket_protectedbase_setLocalPort(VirtualQUdpSocket* self, uint16_t port) {
	self->setLocalPort(static_cast<quint16>(port));
}

void QUdpSocket_protectedbase_setLocalAddress(VirtualQUdpSocket* self, QHostAddress* address) {
	self->setLocalAddress(*address);
}

void QUdpSocket_protectedbase_setPeerPort(VirtualQUdpSocket* self, uint16_t port) {
	self->setPeerPort(static_cast<quint16>(port));
}

void QUdpSocket_protectedbase_setPeerAddress(VirtualQUdpSocket* self, QHostAddress* address) {
	self->setPeerAddress(*address);
}

void QUdpSocket_protectedbase_setPeerName(VirtualQUdpSocket* self, struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setPeerName(name_QString);
}

void QUdpSocket_protectedbase_setOpenMode(VirtualQUdpSocket* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQUdpSocket::OpenMode>(openMode));
}

void QUdpSocket_protectedbase_setErrorString(VirtualQUdpSocket* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QUdpSocket_protectedbase_sender(const VirtualQUdpSocket* self) {
	return self->sender();
}

int QUdpSocket_protectedbase_senderSignalIndex(const VirtualQUdpSocket* self) {
	return self->senderSignalIndex();
}

int QUdpSocket_protectedbase_receivers(const VirtualQUdpSocket* self, const char* signal) {
	return self->receivers(signal);
}

bool QUdpSocket_protectedbase_isSignalConnected(const VirtualQUdpSocket* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QUdpSocket_delete(QUdpSocket* self) {
	delete self;
}

