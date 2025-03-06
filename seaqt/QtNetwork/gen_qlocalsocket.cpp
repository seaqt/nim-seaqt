#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QLocalSocket>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qlocalsocket.h>
#include "gen_qlocalsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQLocalSocket final : public QLocalSocket {
	struct QLocalSocket_VTable* vtbl;
public:

	VirtualQLocalSocket(struct QLocalSocket_VTable* vtbl): QLocalSocket(), vtbl(vtbl) {};
	VirtualQLocalSocket(struct QLocalSocket_VTable* vtbl, QObject* parent): QLocalSocket(parent), vtbl(vtbl) {};

	virtual ~VirtualQLocalSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLocalSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QLocalSocket_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLocalSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QLocalSocket_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLocalSocket::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLocalSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QLocalSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QLocalSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QLocalSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QLocalSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode openMode) override {
		if (vtbl->open == 0) {
			return QLocalSocket::open(openMode);
		}

		QIODevice::OpenMode openMode_ret = openMode;
		int sigval1 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_open(void* self, int openMode);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QLocalSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QLocalSocket_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QLocalSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QLocalSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* param1, qint64 param2) override {
		if (vtbl->readData == 0) {
			return QLocalSocket::readData(param1, param2);
		}

		char* sigval1 = param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_readData(void* self, char* param1, long long param2);

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* param1, qint64 param2) override {
		if (vtbl->writeData == 0) {
			return QLocalSocket::writeData(param1, param2);
		}

		const char* sigval1 = (const char*) param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_writeData(void* self, const char* param1, long long param2);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QLocalSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QLocalSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QLocalSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_seek(void* self, long long pos);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QLocalSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QLocalSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QLocalSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QLocalSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLocalSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLocalSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLocalSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLocalSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QLocalSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLocalSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QLocalSocket_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLocalSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QLocalSocket_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLocalSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QLocalSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLocalSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QLocalSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QLocalSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
	friend void QLocalSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
	friend QObject* QLocalSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QLocalSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QLocalSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QLocalSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QLocalSocket* QLocalSocket_new(struct QLocalSocket_VTable* vtbl) {
	return new VirtualQLocalSocket(vtbl);
}

QLocalSocket* QLocalSocket_new2(struct QLocalSocket_VTable* vtbl, QObject* parent) {
	return new VirtualQLocalSocket(vtbl, parent);
}

void QLocalSocket_virtbase(QLocalSocket* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QLocalSocket_metaObject(const QLocalSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLocalSocket_metacast(QLocalSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLocalSocket_metacall(QLocalSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLocalSocket_tr(const char* s) {
	QString _ret = QLocalSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_trUtf8(const char* s) {
	QString _ret = QLocalSocket::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalSocket_connectToServer(QLocalSocket* self) {
	self->connectToServer();
}

void QLocalSocket_connectToServerWithName(QLocalSocket* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->connectToServer(name_QString);
}

void QLocalSocket_disconnectFromServer(QLocalSocket* self) {
	self->disconnectFromServer();
}

void QLocalSocket_setServerName(QLocalSocket* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setServerName(name_QString);
}

struct miqt_string QLocalSocket_serverName(const QLocalSocket* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_fullServerName(const QLocalSocket* self) {
	QString _ret = self->fullServerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalSocket_abort(QLocalSocket* self) {
	self->abort();
}

bool QLocalSocket_isSequential(const QLocalSocket* self) {
	return self->isSequential();
}

long long QLocalSocket_bytesAvailable(const QLocalSocket* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QLocalSocket_bytesToWrite(const QLocalSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QLocalSocket_canReadLine(const QLocalSocket* self) {
	return self->canReadLine();
}

bool QLocalSocket_open(QLocalSocket* self, int openMode) {
	return self->open(static_cast<QIODevice::OpenMode>(openMode));
}

void QLocalSocket_close(QLocalSocket* self) {
	self->close();
}

int QLocalSocket_error(const QLocalSocket* self) {
	QLocalSocket::LocalSocketError _ret = self->error();
	return static_cast<int>(_ret);
}

bool QLocalSocket_flush(QLocalSocket* self) {
	return self->flush();
}

bool QLocalSocket_isValid(const QLocalSocket* self) {
	return self->isValid();
}

long long QLocalSocket_readBufferSize(const QLocalSocket* self) {
	qint64 _ret = self->readBufferSize();
	return static_cast<long long>(_ret);
}

void QLocalSocket_setReadBufferSize(QLocalSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

bool QLocalSocket_setSocketDescriptor(QLocalSocket* self, intptr_t socketDescriptor) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor));
}

intptr_t QLocalSocket_socketDescriptor(const QLocalSocket* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

int QLocalSocket_state(const QLocalSocket* self) {
	QLocalSocket::LocalSocketState _ret = self->state();
	return static_cast<int>(_ret);
}

bool QLocalSocket_waitForBytesWritten(QLocalSocket* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QLocalSocket_waitForConnected(QLocalSocket* self) {
	return self->waitForConnected();
}

bool QLocalSocket_waitForDisconnected(QLocalSocket* self) {
	return self->waitForDisconnected();
}

bool QLocalSocket_waitForReadyRead(QLocalSocket* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

void QLocalSocket_connected(QLocalSocket* self) {
	self->connected();
}

void QLocalSocket_connect_connected(QLocalSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)()>(&QLocalSocket::connected), self, local_caller{slot, callback, release});
}

void QLocalSocket_disconnected(QLocalSocket* self) {
	self->disconnected();
}

void QLocalSocket_connect_disconnected(QLocalSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)()>(&QLocalSocket::disconnected), self, local_caller{slot, callback, release});
}

void QLocalSocket_errorWithSocketError(QLocalSocket* self, int socketError) {
	self->error(static_cast<QLocalSocket::LocalSocketError>(socketError));
}

void QLocalSocket_connect_errorWithSocketError(QLocalSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QLocalSocket::LocalSocketError socketError) {
			QLocalSocket::LocalSocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)(QLocalSocket::LocalSocketError)>(&QLocalSocket::error), self, local_caller{slot, callback, release});
}

void QLocalSocket_errorOccurred(QLocalSocket* self, int socketError) {
	self->errorOccurred(static_cast<QLocalSocket::LocalSocketError>(socketError));
}

void QLocalSocket_connect_errorOccurred(QLocalSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QLocalSocket::LocalSocketError socketError) {
			QLocalSocket::LocalSocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)(QLocalSocket::LocalSocketError)>(&QLocalSocket::errorOccurred), self, local_caller{slot, callback, release});
}

void QLocalSocket_stateChanged(QLocalSocket* self, int socketState) {
	self->stateChanged(static_cast<QLocalSocket::LocalSocketState>(socketState));
}

void QLocalSocket_connect_stateChanged(QLocalSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QLocalSocket::LocalSocketState socketState) {
			QLocalSocket::LocalSocketState socketState_ret = socketState;
			int sigval1 = static_cast<int>(socketState_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)(QLocalSocket::LocalSocketState)>(&QLocalSocket::stateChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QLocalSocket_tr2(const char* s, const char* c) {
	QString _ret = QLocalSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QLocalSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_trUtf82(const char* s, const char* c) {
	QString _ret = QLocalSocket::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QLocalSocket::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalSocket_connectToServer1(QLocalSocket* self, int openMode) {
	self->connectToServer(static_cast<QIODevice::OpenMode>(openMode));
}

void QLocalSocket_connectToServer2(QLocalSocket* self, struct miqt_string name, int openMode) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->connectToServer(name_QString, static_cast<QIODevice::OpenMode>(openMode));
}

bool QLocalSocket_setSocketDescriptor2(QLocalSocket* self, intptr_t socketDescriptor, int socketState) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QLocalSocket::LocalSocketState>(socketState));
}

bool QLocalSocket_setSocketDescriptor3(QLocalSocket* self, intptr_t socketDescriptor, int socketState, int openMode) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QLocalSocket::LocalSocketState>(socketState), static_cast<QIODevice::OpenMode>(openMode));
}

bool QLocalSocket_waitForConnected1(QLocalSocket* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QLocalSocket_waitForDisconnected1(QLocalSocket* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

QMetaObject* QLocalSocket_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::metaObject();

}

void* QLocalSocket_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::qt_metacast(param1);

}

int QLocalSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QLocalSocket_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::isSequential();

}

long long QLocalSocket_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::bytesAvailable();
	return static_cast<long long>(_ret);

}

long long QLocalSocket_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::bytesToWrite();
	return static_cast<long long>(_ret);

}

bool QLocalSocket_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::canReadLine();

}

bool QLocalSocket_virtualbase_open(void* self, int openMode) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::open(static_cast<VirtualQLocalSocket::OpenMode>(openMode));

}

void QLocalSocket_virtualbase_close(void* self) {

	( (VirtualQLocalSocket*)(self) )->QLocalSocket::close();

}

bool QLocalSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::waitForBytesWritten(static_cast<int>(msecs));

}

bool QLocalSocket_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::waitForReadyRead(static_cast<int>(msecs));

}

long long QLocalSocket_virtualbase_readData(void* self, char* param1, long long param2) {

	qint64 _ret = ( (VirtualQLocalSocket*)(self) )->QLocalSocket::readData(param1, static_cast<qint64>(param2));
	return static_cast<long long>(_ret);

}

long long QLocalSocket_virtualbase_writeData(void* self, const char* param1, long long param2) {

	qint64 _ret = ( (VirtualQLocalSocket*)(self) )->QLocalSocket::writeData(param1, static_cast<qint64>(param2));
	return static_cast<long long>(_ret);

}

long long QLocalSocket_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::pos();
	return static_cast<long long>(_ret);

}

long long QLocalSocket_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::size();
	return static_cast<long long>(_ret);

}

bool QLocalSocket_virtualbase_seek(void* self, long long pos) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::seek(static_cast<qint64>(pos));

}

bool QLocalSocket_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQLocalSocket*)(self) )->QLocalSocket::atEnd();

}

bool QLocalSocket_virtualbase_reset(void* self) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::reset();

}

long long QLocalSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQLocalSocket*)(self) )->QLocalSocket::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

bool QLocalSocket_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::event(event);

}

bool QLocalSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQLocalSocket*)(self) )->QLocalSocket::eventFilter(watched, event);

}

void QLocalSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQLocalSocket*)(self) )->QLocalSocket::timerEvent(event);

}

void QLocalSocket_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQLocalSocket*)(self) )->QLocalSocket::childEvent(event);

}

void QLocalSocket_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQLocalSocket*)(self) )->QLocalSocket::customEvent(event);

}

void QLocalSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLocalSocket*)(self) )->QLocalSocket::connectNotify(*signal);

}

void QLocalSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLocalSocket*)(self) )->QLocalSocket::disconnectNotify(*signal);

}

const QMetaObject* QLocalSocket_staticMetaObject() { return &QLocalSocket::staticMetaObject; }
void QLocalSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode) {
	VirtualQLocalSocket* self_cast = dynamic_cast<VirtualQLocalSocket*>( (QLocalSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOpenMode(static_cast<VirtualQLocalSocket::OpenMode>(openMode));

}

void QLocalSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString) {
	VirtualQLocalSocket* self_cast = dynamic_cast<VirtualQLocalSocket*>( (QLocalSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QLocalSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQLocalSocket* self_cast = dynamic_cast<VirtualQLocalSocket*>( (QLocalSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QLocalSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQLocalSocket* self_cast = dynamic_cast<VirtualQLocalSocket*>( (QLocalSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QLocalSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQLocalSocket* self_cast = dynamic_cast<VirtualQLocalSocket*>( (QLocalSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QLocalSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQLocalSocket* self_cast = dynamic_cast<VirtualQLocalSocket*>( (QLocalSocket*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QLocalSocket_delete(QLocalSocket* self) {
	delete self;
}

