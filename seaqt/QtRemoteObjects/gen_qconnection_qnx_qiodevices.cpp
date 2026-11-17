#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QIODeviceBase>
#include <QIOQnxSource>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQnxNativeIo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qconnection_qnx_qiodevices.h>
#include "gen_qconnection_qnx_qiodevices.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQnxNativeIo final : public QQnxNativeIo {
	const QQnxNativeIo_VTable* vtbl;
public:
	friend void* QQnxNativeIo_vdata(VirtualQQnxNativeIo* self);
	friend VirtualQQnxNativeIo* vdata_QQnxNativeIo(void* vdata);

	VirtualQQnxNativeIo(const QQnxNativeIo_VTable* vtbl): QQnxNativeIo(), vtbl(vtbl) {}
	VirtualQQnxNativeIo(const QQnxNativeIo_VTable* vtbl, QObject* parent): QQnxNativeIo(parent), vtbl(vtbl) {}

	virtual ~VirtualQQnxNativeIo() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQnxNativeIo::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQnxNativeIo_virtualbase_metaObject(const VirtualQQnxNativeIo* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQnxNativeIo::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQnxNativeIo_virtualbase_metacast(VirtualQQnxNativeIo* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQnxNativeIo::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQnxNativeIo_virtualbase_metacall(VirtualQQnxNativeIo* self, int param1, int param2, void** param3);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QQnxNativeIo::isSequential();
		}

		bool callback_return_value = vtbl->isSequential(this);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_isSequential(const VirtualQQnxNativeIo* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QQnxNativeIo::bytesAvailable();
		}

		long long callback_return_value = vtbl->bytesAvailable(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_bytesAvailable(const VirtualQQnxNativeIo* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QQnxNativeIo::bytesToWrite();
		}

		long long callback_return_value = vtbl->bytesToWrite(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_bytesToWrite(const VirtualQQnxNativeIo* self);

	virtual bool open(QIODeviceBase::OpenMode openMode) override {
		if (vtbl->open == 0) {
			return QQnxNativeIo::open(openMode);
		}

		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval1 = static_cast<int>(openMode_ret);
		bool callback_return_value = vtbl->open(this, sigval1);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_open(VirtualQQnxNativeIo* self, int openMode);

	virtual void close() override {
		if (vtbl->close == 0) {
			QQnxNativeIo::close();
			return;
		}

		vtbl->close(this);
	}

	friend void QQnxNativeIo_virtualbase_close(VirtualQQnxNativeIo* self);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QQnxNativeIo::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;
		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_waitForBytesWritten(VirtualQQnxNativeIo* self, int msecs);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QQnxNativeIo::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;
		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_waitForReadyRead(VirtualQQnxNativeIo* self, int msecs);

	virtual qint64 readData(char* param1, qint64 param2) override {
		if (vtbl->readData == 0) {
			return QQnxNativeIo::readData(param1, param2);
		}

		char* sigval1 = param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);
		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_readData(VirtualQQnxNativeIo* self, char* param1, long long param2);

	virtual qint64 writeData(const char* param1, qint64 param2) override {
		if (vtbl->writeData == 0) {
			return QQnxNativeIo::writeData(param1, param2);
		}

		const char* sigval1 = (const char*) param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);
		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_writeData(VirtualQQnxNativeIo* self, const char* param1, long long param2);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QQnxNativeIo::pos();
		}

		long long callback_return_value = vtbl->pos(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_pos(const VirtualQQnxNativeIo* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QQnxNativeIo::size();
		}

		long long callback_return_value = vtbl->size(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_size(const VirtualQQnxNativeIo* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QQnxNativeIo::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);
		bool callback_return_value = vtbl->seek(this, sigval1);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_seek(VirtualQQnxNativeIo* self, long long pos);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QQnxNativeIo::atEnd();
		}

		bool callback_return_value = vtbl->atEnd(this);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_atEnd(const VirtualQQnxNativeIo* self);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QQnxNativeIo::reset();
		}

		bool callback_return_value = vtbl->reset(this);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_reset(VirtualQQnxNativeIo* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QQnxNativeIo::canReadLine();
		}

		bool callback_return_value = vtbl->canReadLine(this);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_canReadLine(const VirtualQQnxNativeIo* self);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QQnxNativeIo::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);
		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_readLineData(VirtualQQnxNativeIo* self, char* data, long long maxlen);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QQnxNativeIo::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);
		long long callback_return_value = vtbl->skipData(this, sigval1);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QQnxNativeIo_virtualbase_skipData(VirtualQQnxNativeIo* self, long long maxSize);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQnxNativeIo::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_event(VirtualQQnxNativeIo* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQnxNativeIo::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQnxNativeIo_virtualbase_eventFilter(VirtualQQnxNativeIo* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQnxNativeIo::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQnxNativeIo_virtualbase_timerEvent(VirtualQQnxNativeIo* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQnxNativeIo::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQnxNativeIo_virtualbase_childEvent(VirtualQQnxNativeIo* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQnxNativeIo::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQnxNativeIo_virtualbase_customEvent(VirtualQQnxNativeIo* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQnxNativeIo::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQnxNativeIo_virtualbase_connectNotify(VirtualQQnxNativeIo* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQnxNativeIo::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQnxNativeIo_virtualbase_disconnectNotify(VirtualQQnxNativeIo* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QQnxNativeIo_protectedbase_setOpenMode(VirtualQQnxNativeIo* self, int openMode);
	friend void QQnxNativeIo_protectedbase_setErrorString(VirtualQQnxNativeIo* self, struct seaqt_string errorString);
	friend QObject* QQnxNativeIo_protectedbase_sender(const VirtualQQnxNativeIo* self);
	friend int QQnxNativeIo_protectedbase_senderSignalIndex(const VirtualQQnxNativeIo* self);
	friend int QQnxNativeIo_protectedbase_receivers(const VirtualQQnxNativeIo* self, const char* signal);
	friend bool QQnxNativeIo_protectedbase_isSignalConnected(const VirtualQQnxNativeIo* self, QMetaMethod* signal);
};

VirtualQQnxNativeIo* QQnxNativeIo_new(const QQnxNativeIo_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQnxNativeIo>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQnxNativeIo(vtbl) : nullptr;
}

VirtualQQnxNativeIo* QQnxNativeIo_new_parent(const QQnxNativeIo_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQnxNativeIo>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQnxNativeIo(vtbl, parent) : nullptr;
}

void QQnxNativeIo_virtbase(QQnxNativeIo* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QQnxNativeIo_metaObject(const QQnxNativeIo* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQnxNativeIo_metacast(QQnxNativeIo* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQnxNativeIo_metacall(QQnxNativeIo* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQnxNativeIo_tr_s(const char* s) {
	QString _ret = QQnxNativeIo::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQnxNativeIo_connectToServer(QQnxNativeIo* self) {
	return self->connectToServer();
}

bool QQnxNativeIo_connectToServer_name(QQnxNativeIo* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->connectToServer(name_QString);
}

void QQnxNativeIo_disconnectFromServer(QQnxNativeIo* self) {
	self->disconnectFromServer();
}

void QQnxNativeIo_setServerName(QQnxNativeIo* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setServerName(name_QString);
}

struct seaqt_string QQnxNativeIo_serverName(const QQnxNativeIo* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQnxNativeIo_abort(QQnxNativeIo* self) {
	self->abort();
}

bool QQnxNativeIo_isSequential(const QQnxNativeIo* self) {
	return self->isSequential();
}

long long QQnxNativeIo_bytesAvailable(const QQnxNativeIo* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QQnxNativeIo_bytesToWrite(const QQnxNativeIo* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QQnxNativeIo_open(QQnxNativeIo* self, int openMode) {
	return self->open(static_cast<QIODeviceBase::OpenMode>(openMode));
}

void QQnxNativeIo_close(QQnxNativeIo* self) {
	self->close();
}

int QQnxNativeIo_error(const QQnxNativeIo* self) {
	QAbstractSocket::SocketError _ret = self->error();
	return static_cast<int>(_ret);
}

bool QQnxNativeIo_flush(QQnxNativeIo* self) {
	return self->flush();
}

bool QQnxNativeIo_isValid(const QQnxNativeIo* self) {
	return self->isValid();
}

int QQnxNativeIo_state(const QQnxNativeIo* self) {
	QAbstractSocket::SocketState _ret = self->state();
	return static_cast<int>(_ret);
}

bool QQnxNativeIo_waitForBytesWritten(QQnxNativeIo* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QQnxNativeIo_waitForConnected(QQnxNativeIo* self) {
	return self->waitForConnected();
}

bool QQnxNativeIo_waitForDisconnected(QQnxNativeIo* self) {
	return self->waitForDisconnected();
}

bool QQnxNativeIo_waitForReadyRead(QQnxNativeIo* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

void QQnxNativeIo_connected(QQnxNativeIo* self) {
	self->connected();
}

void QQnxNativeIo_connect_connected(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQnxNativeIo::connect(self, static_cast<void (QQnxNativeIo::*)()>(&QQnxNativeIo::connected), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQnxNativeIo_disconnected(QQnxNativeIo* self) {
	self->disconnected();
}

void QQnxNativeIo_connect_disconnected(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQnxNativeIo::connect(self, static_cast<void (QQnxNativeIo::*)()>(&QQnxNativeIo::disconnected), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQnxNativeIo_error_socketError(QQnxNativeIo* self, int socketError) {
	self->error(static_cast<QAbstractSocket::SocketError>(socketError));
}

void QQnxNativeIo_connect_error_socketError(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QQnxNativeIo::connect(self, static_cast<void (QQnxNativeIo::*)(QAbstractSocket::SocketError)>(&QQnxNativeIo::error), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketError socketError) {
			QAbstractSocket::SocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			callback(release.slot, sigval1);
	});
}

void QQnxNativeIo_stateChanged(QQnxNativeIo* self, int socketState) {
	self->stateChanged(static_cast<QAbstractSocket::SocketState>(socketState));
}

void QQnxNativeIo_connect_stateChanged(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QQnxNativeIo::connect(self, static_cast<void (QQnxNativeIo::*)(QAbstractSocket::SocketState)>(&QQnxNativeIo::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketState socketState) {
			QAbstractSocket::SocketState socketState_ret = socketState;
			int sigval1 = static_cast<int>(socketState_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QQnxNativeIo_tr_s_c(const char* s, const char* c) {
	QString _ret = QQnxNativeIo::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQnxNativeIo_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQnxNativeIo::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQnxNativeIo_connectToServer_openMode(QQnxNativeIo* self, int openMode) {
	return self->connectToServer(static_cast<QIODeviceBase::OpenMode>(openMode));
}

bool QQnxNativeIo_connectToServer_name_openMode(QQnxNativeIo* self, struct seaqt_string name, int openMode) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->connectToServer(name_QString, static_cast<QIODeviceBase::OpenMode>(openMode));
}

bool QQnxNativeIo_waitForConnected_msecs(QQnxNativeIo* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QQnxNativeIo_waitForDisconnected_msecs(QQnxNativeIo* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

const QMetaObject* QQnxNativeIo_staticMetaObject() { return &QQnxNativeIo::staticMetaObject; }
void* QQnxNativeIo_vdata(VirtualQQnxNativeIo* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQnxNativeIo>()); }
VirtualQQnxNativeIo* vdata_QQnxNativeIo(void* vdata) { return reinterpret_cast<VirtualQQnxNativeIo*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQnxNativeIo>()); }

QMetaObject* QQnxNativeIo_virtualbase_metaObject(const VirtualQQnxNativeIo* self) {

	return (QMetaObject*) self->QQnxNativeIo::metaObject();
}

void* QQnxNativeIo_virtualbase_metacast(VirtualQQnxNativeIo* self, const char* param1) {

	return self->QQnxNativeIo::qt_metacast(param1);
}

int QQnxNativeIo_virtualbase_metacall(VirtualQQnxNativeIo* self, int param1, int param2, void** param3) {

	return self->QQnxNativeIo::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQnxNativeIo_virtualbase_isSequential(const VirtualQQnxNativeIo* self) {

	return self->QQnxNativeIo::isSequential();
}

long long QQnxNativeIo_virtualbase_bytesAvailable(const VirtualQQnxNativeIo* self) {

	qint64 _ret = self->QQnxNativeIo::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QQnxNativeIo_virtualbase_bytesToWrite(const VirtualQQnxNativeIo* self) {

	qint64 _ret = self->QQnxNativeIo::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QQnxNativeIo_virtualbase_open(VirtualQQnxNativeIo* self, int openMode) {

	return self->QQnxNativeIo::open(static_cast<VirtualQQnxNativeIo::OpenMode>(openMode));
}

void QQnxNativeIo_virtualbase_close(VirtualQQnxNativeIo* self) {

	self->QQnxNativeIo::close();
}

bool QQnxNativeIo_virtualbase_waitForBytesWritten(VirtualQQnxNativeIo* self, int msecs) {

	return self->QQnxNativeIo::waitForBytesWritten(static_cast<int>(msecs));
}

bool QQnxNativeIo_virtualbase_waitForReadyRead(VirtualQQnxNativeIo* self, int msecs) {

	return self->QQnxNativeIo::waitForReadyRead(static_cast<int>(msecs));
}

long long QQnxNativeIo_virtualbase_readData(VirtualQQnxNativeIo* self, char* param1, long long param2) {

	qint64 _ret = self->QQnxNativeIo::readData(param1, static_cast<qint64>(param2));
	return static_cast<long long>(_ret);
}

long long QQnxNativeIo_virtualbase_writeData(VirtualQQnxNativeIo* self, const char* param1, long long param2) {

	qint64 _ret = self->QQnxNativeIo::writeData(param1, static_cast<qint64>(param2));
	return static_cast<long long>(_ret);
}

long long QQnxNativeIo_virtualbase_pos(const VirtualQQnxNativeIo* self) {

	qint64 _ret = self->QQnxNativeIo::pos();
	return static_cast<long long>(_ret);
}

long long QQnxNativeIo_virtualbase_size(const VirtualQQnxNativeIo* self) {

	qint64 _ret = self->QQnxNativeIo::size();
	return static_cast<long long>(_ret);
}

bool QQnxNativeIo_virtualbase_seek(VirtualQQnxNativeIo* self, long long pos) {

	return self->QQnxNativeIo::seek(static_cast<qint64>(pos));
}

bool QQnxNativeIo_virtualbase_atEnd(const VirtualQQnxNativeIo* self) {

	return self->QQnxNativeIo::atEnd();
}

bool QQnxNativeIo_virtualbase_reset(VirtualQQnxNativeIo* self) {

	return self->QQnxNativeIo::reset();
}

bool QQnxNativeIo_virtualbase_canReadLine(const VirtualQQnxNativeIo* self) {

	return self->QQnxNativeIo::canReadLine();
}

long long QQnxNativeIo_virtualbase_readLineData(VirtualQQnxNativeIo* self, char* data, long long maxlen) {

	qint64 _ret = self->QQnxNativeIo::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QQnxNativeIo_virtualbase_skipData(VirtualQQnxNativeIo* self, long long maxSize) {

	qint64 _ret = self->QQnxNativeIo::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

bool QQnxNativeIo_virtualbase_event(VirtualQQnxNativeIo* self, QEvent* event) {

	return self->QQnxNativeIo::event(event);
}

bool QQnxNativeIo_virtualbase_eventFilter(VirtualQQnxNativeIo* self, QObject* watched, QEvent* event) {

	return self->QQnxNativeIo::eventFilter(watched, event);
}

void QQnxNativeIo_virtualbase_timerEvent(VirtualQQnxNativeIo* self, QTimerEvent* event) {

	self->QQnxNativeIo::timerEvent(event);
}

void QQnxNativeIo_virtualbase_childEvent(VirtualQQnxNativeIo* self, QChildEvent* event) {

	self->QQnxNativeIo::childEvent(event);
}

void QQnxNativeIo_virtualbase_customEvent(VirtualQQnxNativeIo* self, QEvent* event) {

	self->QQnxNativeIo::customEvent(event);
}

void QQnxNativeIo_virtualbase_connectNotify(VirtualQQnxNativeIo* self, QMetaMethod* signal) {

	self->QQnxNativeIo::connectNotify(*signal);
}

void QQnxNativeIo_virtualbase_disconnectNotify(VirtualQQnxNativeIo* self, QMetaMethod* signal) {

	self->QQnxNativeIo::disconnectNotify(*signal);
}

void QQnxNativeIo_protectedbase_setOpenMode(VirtualQQnxNativeIo* self, int openMode) {
	self->QQnxNativeIo::setOpenMode(static_cast<VirtualQQnxNativeIo::OpenMode>(openMode));
}

void QQnxNativeIo_protectedbase_setErrorString(VirtualQQnxNativeIo* self, struct seaqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->QQnxNativeIo::setErrorString(errorString_QString);
}

QObject* QQnxNativeIo_protectedbase_sender(const VirtualQQnxNativeIo* self) {
	return self->QQnxNativeIo::sender();
}

int QQnxNativeIo_protectedbase_senderSignalIndex(const VirtualQQnxNativeIo* self) {
	return self->QQnxNativeIo::senderSignalIndex();
}

int QQnxNativeIo_protectedbase_receivers(const VirtualQQnxNativeIo* self, const char* signal) {
	return self->QQnxNativeIo::receivers(signal);
}

bool QQnxNativeIo_protectedbase_isSignalConnected(const VirtualQQnxNativeIo* self, QMetaMethod* signal) {
	return self->QQnxNativeIo::isSignalConnected(*signal);
}

void QQnxNativeIo_delete(QQnxNativeIo* self) {
	delete self;
}

class VirtualQIOQnxSource final : public QIOQnxSource {
	const QIOQnxSource_VTable* vtbl;
public:
	friend void* QIOQnxSource_vdata(VirtualQIOQnxSource* self);
	friend VirtualQIOQnxSource* vdata_QIOQnxSource(void* vdata);

	VirtualQIOQnxSource(const QIOQnxSource_VTable* vtbl, int rcvid): QIOQnxSource(rcvid), vtbl(vtbl) {}
	VirtualQIOQnxSource(const QIOQnxSource_VTable* vtbl, int rcvid, QObject* parent): QIOQnxSource(rcvid, parent), vtbl(vtbl) {}

	virtual ~VirtualQIOQnxSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QIOQnxSource::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QIOQnxSource_virtualbase_metaObject(const VirtualQIOQnxSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QIOQnxSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QIOQnxSource_virtualbase_metacast(VirtualQIOQnxSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QIOQnxSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QIOQnxSource_virtualbase_metacall(VirtualQIOQnxSource* self, int param1, int param2, void** param3);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QIOQnxSource::isSequential();
		}

		bool callback_return_value = vtbl->isSequential(this);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_isSequential(const VirtualQIOQnxSource* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QIOQnxSource::bytesAvailable();
		}

		long long callback_return_value = vtbl->bytesAvailable(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_bytesAvailable(const VirtualQIOQnxSource* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QIOQnxSource::bytesToWrite();
		}

		long long callback_return_value = vtbl->bytesToWrite(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_bytesToWrite(const VirtualQIOQnxSource* self);

	virtual void close() override {
		if (vtbl->close == 0) {
			QIOQnxSource::close();
			return;
		}

		vtbl->close(this);
	}

	friend void QIOQnxSource_virtualbase_close(VirtualQIOQnxSource* self);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QIOQnxSource::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;
		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_waitForBytesWritten(VirtualQIOQnxSource* self, int msecs);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QIOQnxSource::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;
		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_waitForReadyRead(VirtualQIOQnxSource* self, int msecs);

	virtual qint64 readData(char* param1, qint64 param2) override {
		if (vtbl->readData == 0) {
			return QIOQnxSource::readData(param1, param2);
		}

		char* sigval1 = param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);
		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_readData(VirtualQIOQnxSource* self, char* param1, long long param2);

	virtual qint64 writeData(const char* param1, qint64 param2) override {
		if (vtbl->writeData == 0) {
			return QIOQnxSource::writeData(param1, param2);
		}

		const char* sigval1 = (const char*) param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);
		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_writeData(VirtualQIOQnxSource* self, const char* param1, long long param2);

	virtual bool open(QIODeviceBase::OpenMode openMode) override {
		if (vtbl->open == 0) {
			return QIOQnxSource::open(openMode);
		}

		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval1 = static_cast<int>(openMode_ret);
		bool callback_return_value = vtbl->open(this, sigval1);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_open(VirtualQIOQnxSource* self, int openMode);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QIOQnxSource::pos();
		}

		long long callback_return_value = vtbl->pos(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_pos(const VirtualQIOQnxSource* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QIOQnxSource::size();
		}

		long long callback_return_value = vtbl->size(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_size(const VirtualQIOQnxSource* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QIOQnxSource::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);
		bool callback_return_value = vtbl->seek(this, sigval1);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_seek(VirtualQIOQnxSource* self, long long pos);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QIOQnxSource::atEnd();
		}

		bool callback_return_value = vtbl->atEnd(this);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_atEnd(const VirtualQIOQnxSource* self);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QIOQnxSource::reset();
		}

		bool callback_return_value = vtbl->reset(this);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_reset(VirtualQIOQnxSource* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QIOQnxSource::canReadLine();
		}

		bool callback_return_value = vtbl->canReadLine(this);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_canReadLine(const VirtualQIOQnxSource* self);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QIOQnxSource::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);
		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_readLineData(VirtualQIOQnxSource* self, char* data, long long maxlen);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QIOQnxSource::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);
		long long callback_return_value = vtbl->skipData(this, sigval1);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIOQnxSource_virtualbase_skipData(VirtualQIOQnxSource* self, long long maxSize);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QIOQnxSource::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_event(VirtualQIOQnxSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QIOQnxSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QIOQnxSource_virtualbase_eventFilter(VirtualQIOQnxSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QIOQnxSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QIOQnxSource_virtualbase_timerEvent(VirtualQIOQnxSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QIOQnxSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QIOQnxSource_virtualbase_childEvent(VirtualQIOQnxSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QIOQnxSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QIOQnxSource_virtualbase_customEvent(VirtualQIOQnxSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QIOQnxSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QIOQnxSource_virtualbase_connectNotify(VirtualQIOQnxSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QIOQnxSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QIOQnxSource_virtualbase_disconnectNotify(VirtualQIOQnxSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QIOQnxSource_protectedbase_setOpenMode(VirtualQIOQnxSource* self, int openMode);
	friend void QIOQnxSource_protectedbase_setErrorString(VirtualQIOQnxSource* self, struct seaqt_string errorString);
	friend QObject* QIOQnxSource_protectedbase_sender(const VirtualQIOQnxSource* self);
	friend int QIOQnxSource_protectedbase_senderSignalIndex(const VirtualQIOQnxSource* self);
	friend int QIOQnxSource_protectedbase_receivers(const VirtualQIOQnxSource* self, const char* signal);
	friend bool QIOQnxSource_protectedbase_isSignalConnected(const VirtualQIOQnxSource* self, QMetaMethod* signal);
};

VirtualQIOQnxSource* QIOQnxSource_new_rcvid(const QIOQnxSource_VTable* vtbl, size_t vdata, int rcvid) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIOQnxSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIOQnxSource(vtbl, static_cast<int>(rcvid)) : nullptr;
}

VirtualQIOQnxSource* QIOQnxSource_new_rcvid_parent(const QIOQnxSource_VTable* vtbl, size_t vdata, int rcvid, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIOQnxSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIOQnxSource(vtbl, static_cast<int>(rcvid), parent) : nullptr;
}

void QIOQnxSource_virtbase(QIOQnxSource* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QIOQnxSource_metaObject(const QIOQnxSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QIOQnxSource_metacast(QIOQnxSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QIOQnxSource_metacall(QIOQnxSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QIOQnxSource_tr_s(const char* s) {
	QString _ret = QIOQnxSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QIOQnxSource_isSequential(const QIOQnxSource* self) {
	return self->isSequential();
}

long long QIOQnxSource_bytesAvailable(const QIOQnxSource* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QIOQnxSource_bytesToWrite(const QIOQnxSource* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

void QIOQnxSource_close(QIOQnxSource* self) {
	self->close();
}

int QIOQnxSource_error(const QIOQnxSource* self) {
	QAbstractSocket::SocketError _ret = self->error();
	return static_cast<int>(_ret);
}

bool QIOQnxSource_isValid(const QIOQnxSource* self) {
	return self->isValid();
}

int QIOQnxSource_state(const QIOQnxSource* self) {
	QAbstractSocket::SocketState _ret = self->state();
	return static_cast<int>(_ret);
}

bool QIOQnxSource_waitForBytesWritten(QIOQnxSource* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QIOQnxSource_waitForConnected(QIOQnxSource* self) {
	return self->waitForConnected();
}

bool QIOQnxSource_waitForDisconnected(QIOQnxSource* self) {
	return self->waitForDisconnected();
}

bool QIOQnxSource_waitForReadyRead(QIOQnxSource* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

void QIOQnxSource_disconnected(QIOQnxSource* self) {
	self->disconnected();
}

void QIOQnxSource_connect_disconnected(QIOQnxSource* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QIOQnxSource::connect(self, static_cast<void (QIOQnxSource::*)()>(&QIOQnxSource::disconnected), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QIOQnxSource_error_socketError(QIOQnxSource* self, int socketError) {
	self->error(static_cast<QAbstractSocket::SocketError>(socketError));
}

void QIOQnxSource_connect_error_socketError(QIOQnxSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QIOQnxSource::connect(self, static_cast<void (QIOQnxSource::*)(QAbstractSocket::SocketError)>(&QIOQnxSource::error), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketError socketError) {
			QAbstractSocket::SocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			callback(release.slot, sigval1);
	});
}

void QIOQnxSource_stateChanged(QIOQnxSource* self, int socketState) {
	self->stateChanged(static_cast<QAbstractSocket::SocketState>(socketState));
}

void QIOQnxSource_connect_stateChanged(QIOQnxSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QIOQnxSource::connect(self, static_cast<void (QIOQnxSource::*)(QAbstractSocket::SocketState)>(&QIOQnxSource::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractSocket::SocketState socketState) {
			QAbstractSocket::SocketState socketState_ret = socketState;
			int sigval1 = static_cast<int>(socketState_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QIOQnxSource_tr_s_c(const char* s, const char* c) {
	QString _ret = QIOQnxSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QIOQnxSource_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QIOQnxSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QIOQnxSource_waitForConnected_msecs(QIOQnxSource* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QIOQnxSource_waitForDisconnected_msecs(QIOQnxSource* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

const QMetaObject* QIOQnxSource_staticMetaObject() { return &QIOQnxSource::staticMetaObject; }
void* QIOQnxSource_vdata(VirtualQIOQnxSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQIOQnxSource>()); }
VirtualQIOQnxSource* vdata_QIOQnxSource(void* vdata) { return reinterpret_cast<VirtualQIOQnxSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQIOQnxSource>()); }

QMetaObject* QIOQnxSource_virtualbase_metaObject(const VirtualQIOQnxSource* self) {

	return (QMetaObject*) self->QIOQnxSource::metaObject();
}

void* QIOQnxSource_virtualbase_metacast(VirtualQIOQnxSource* self, const char* param1) {

	return self->QIOQnxSource::qt_metacast(param1);
}

int QIOQnxSource_virtualbase_metacall(VirtualQIOQnxSource* self, int param1, int param2, void** param3) {

	return self->QIOQnxSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QIOQnxSource_virtualbase_isSequential(const VirtualQIOQnxSource* self) {

	return self->QIOQnxSource::isSequential();
}

long long QIOQnxSource_virtualbase_bytesAvailable(const VirtualQIOQnxSource* self) {

	qint64 _ret = self->QIOQnxSource::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QIOQnxSource_virtualbase_bytesToWrite(const VirtualQIOQnxSource* self) {

	qint64 _ret = self->QIOQnxSource::bytesToWrite();
	return static_cast<long long>(_ret);
}

void QIOQnxSource_virtualbase_close(VirtualQIOQnxSource* self) {

	self->QIOQnxSource::close();
}

bool QIOQnxSource_virtualbase_waitForBytesWritten(VirtualQIOQnxSource* self, int msecs) {

	return self->QIOQnxSource::waitForBytesWritten(static_cast<int>(msecs));
}

bool QIOQnxSource_virtualbase_waitForReadyRead(VirtualQIOQnxSource* self, int msecs) {

	return self->QIOQnxSource::waitForReadyRead(static_cast<int>(msecs));
}

long long QIOQnxSource_virtualbase_readData(VirtualQIOQnxSource* self, char* param1, long long param2) {

	qint64 _ret = self->QIOQnxSource::readData(param1, static_cast<qint64>(param2));
	return static_cast<long long>(_ret);
}

long long QIOQnxSource_virtualbase_writeData(VirtualQIOQnxSource* self, const char* param1, long long param2) {

	qint64 _ret = self->QIOQnxSource::writeData(param1, static_cast<qint64>(param2));
	return static_cast<long long>(_ret);
}

bool QIOQnxSource_virtualbase_open(VirtualQIOQnxSource* self, int openMode) {

	return self->QIOQnxSource::open(static_cast<VirtualQIOQnxSource::OpenMode>(openMode));
}

long long QIOQnxSource_virtualbase_pos(const VirtualQIOQnxSource* self) {

	qint64 _ret = self->QIOQnxSource::pos();
	return static_cast<long long>(_ret);
}

long long QIOQnxSource_virtualbase_size(const VirtualQIOQnxSource* self) {

	qint64 _ret = self->QIOQnxSource::size();
	return static_cast<long long>(_ret);
}

bool QIOQnxSource_virtualbase_seek(VirtualQIOQnxSource* self, long long pos) {

	return self->QIOQnxSource::seek(static_cast<qint64>(pos));
}

bool QIOQnxSource_virtualbase_atEnd(const VirtualQIOQnxSource* self) {

	return self->QIOQnxSource::atEnd();
}

bool QIOQnxSource_virtualbase_reset(VirtualQIOQnxSource* self) {

	return self->QIOQnxSource::reset();
}

bool QIOQnxSource_virtualbase_canReadLine(const VirtualQIOQnxSource* self) {

	return self->QIOQnxSource::canReadLine();
}

long long QIOQnxSource_virtualbase_readLineData(VirtualQIOQnxSource* self, char* data, long long maxlen) {

	qint64 _ret = self->QIOQnxSource::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QIOQnxSource_virtualbase_skipData(VirtualQIOQnxSource* self, long long maxSize) {

	qint64 _ret = self->QIOQnxSource::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

bool QIOQnxSource_virtualbase_event(VirtualQIOQnxSource* self, QEvent* event) {

	return self->QIOQnxSource::event(event);
}

bool QIOQnxSource_virtualbase_eventFilter(VirtualQIOQnxSource* self, QObject* watched, QEvent* event) {

	return self->QIOQnxSource::eventFilter(watched, event);
}

void QIOQnxSource_virtualbase_timerEvent(VirtualQIOQnxSource* self, QTimerEvent* event) {

	self->QIOQnxSource::timerEvent(event);
}

void QIOQnxSource_virtualbase_childEvent(VirtualQIOQnxSource* self, QChildEvent* event) {

	self->QIOQnxSource::childEvent(event);
}

void QIOQnxSource_virtualbase_customEvent(VirtualQIOQnxSource* self, QEvent* event) {

	self->QIOQnxSource::customEvent(event);
}

void QIOQnxSource_virtualbase_connectNotify(VirtualQIOQnxSource* self, QMetaMethod* signal) {

	self->QIOQnxSource::connectNotify(*signal);
}

void QIOQnxSource_virtualbase_disconnectNotify(VirtualQIOQnxSource* self, QMetaMethod* signal) {

	self->QIOQnxSource::disconnectNotify(*signal);
}

void QIOQnxSource_protectedbase_setOpenMode(VirtualQIOQnxSource* self, int openMode) {
	self->QIOQnxSource::setOpenMode(static_cast<VirtualQIOQnxSource::OpenMode>(openMode));
}

void QIOQnxSource_protectedbase_setErrorString(VirtualQIOQnxSource* self, struct seaqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->QIOQnxSource::setErrorString(errorString_QString);
}

QObject* QIOQnxSource_protectedbase_sender(const VirtualQIOQnxSource* self) {
	return self->QIOQnxSource::sender();
}

int QIOQnxSource_protectedbase_senderSignalIndex(const VirtualQIOQnxSource* self) {
	return self->QIOQnxSource::senderSignalIndex();
}

int QIOQnxSource_protectedbase_receivers(const VirtualQIOQnxSource* self, const char* signal) {
	return self->QIOQnxSource::receivers(signal);
}

bool QIOQnxSource_protectedbase_isSignalConnected(const VirtualQIOQnxSource* self, QMetaMethod* signal) {
	return self->QIOQnxSource::isSignalConnected(*signal);
}

void QIOQnxSource_delete(QIOQnxSource* self) {
	delete self;
}

