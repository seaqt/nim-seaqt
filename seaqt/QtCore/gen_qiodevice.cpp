#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qiodevice.h>
#include "gen_qiodevice.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QIODevice_readyRead(intptr_t);
void miqt_exec_callback_QIODevice_channelReadyRead(intptr_t, int);
void miqt_exec_callback_QIODevice_bytesWritten(intptr_t, long long);
void miqt_exec_callback_QIODevice_channelBytesWritten(intptr_t, int, long long);
void miqt_exec_callback_QIODevice_aboutToClose(intptr_t);
void miqt_exec_callback_QIODevice_readChannelFinished(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQIODevice final : public QIODevice {
	struct QIODevice_VTable* vtbl;
public:

	VirtualQIODevice(struct QIODevice_VTable* vtbl): QIODevice(), vtbl(vtbl) {};
	VirtualQIODevice(struct QIODevice_VTable* vtbl, QObject* parent): QIODevice(parent), vtbl(vtbl) {};

	virtual ~VirtualQIODevice() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QIODevice::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QIODevice_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QIODevice::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QIODevice_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QIODevice::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QIODevice_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QIODevice::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QIODevice::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_open(void* self, int mode);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QIODevice::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QIODevice_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QIODevice::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIODevice_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QIODevice::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIODevice_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QIODevice::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_seek(void* self, long long pos);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QIODevice::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QIODevice::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QIODevice::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIODevice_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QIODevice::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIODevice_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QIODevice::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QIODevice::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QIODevice::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QIODevice::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIODevice_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QIODevice::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QIODevice_virtualbase_skipData(void* self, long long maxSize);

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QIODevice::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QIODevice::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QIODevice_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QIODevice::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QIODevice_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QIODevice::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QIODevice_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QIODevice::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QIODevice_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QIODevice::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QIODevice_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QIODevice::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QIODevice_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QIODevice_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
	friend void QIODevice_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
	friend QObject* QIODevice_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QIODevice_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QIODevice_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QIODevice_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QIODevice* QIODevice_new(struct QIODevice_VTable* vtbl) {
	return new VirtualQIODevice(vtbl);
}

QIODevice* QIODevice_new2(struct QIODevice_VTable* vtbl, QObject* parent) {
	return new VirtualQIODevice(vtbl, parent);
}

void QIODevice_virtbase(QIODevice* src, QObject** outptr_QObject, QIODeviceBase** outptr_QIODeviceBase) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QIODeviceBase = static_cast<QIODeviceBase*>(src);
}

QMetaObject* QIODevice_metaObject(const QIODevice* self) {
	return (QMetaObject*) self->metaObject();
}

void* QIODevice_metacast(QIODevice* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QIODevice_metacall(QIODevice* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QIODevice_tr(const char* s) {
	QString _ret = QIODevice::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QIODevice_openMode(const QIODevice* self) {
	QIODeviceBase::OpenMode _ret = self->openMode();
	return static_cast<int>(_ret);
}

void QIODevice_setTextModeEnabled(QIODevice* self, bool enabled) {
	self->setTextModeEnabled(enabled);
}

bool QIODevice_isTextModeEnabled(const QIODevice* self) {
	return self->isTextModeEnabled();
}

bool QIODevice_isOpen(const QIODevice* self) {
	return self->isOpen();
}

bool QIODevice_isReadable(const QIODevice* self) {
	return self->isReadable();
}

bool QIODevice_isWritable(const QIODevice* self) {
	return self->isWritable();
}

bool QIODevice_isSequential(const QIODevice* self) {
	return self->isSequential();
}

int QIODevice_readChannelCount(const QIODevice* self) {
	return self->readChannelCount();
}

int QIODevice_writeChannelCount(const QIODevice* self) {
	return self->writeChannelCount();
}

int QIODevice_currentReadChannel(const QIODevice* self) {
	return self->currentReadChannel();
}

void QIODevice_setCurrentReadChannel(QIODevice* self, int channel) {
	self->setCurrentReadChannel(static_cast<int>(channel));
}

int QIODevice_currentWriteChannel(const QIODevice* self) {
	return self->currentWriteChannel();
}

void QIODevice_setCurrentWriteChannel(QIODevice* self, int channel) {
	self->setCurrentWriteChannel(static_cast<int>(channel));
}

bool QIODevice_open(QIODevice* self, int mode) {
	return self->open(static_cast<QIODeviceBase::OpenMode>(mode));
}

void QIODevice_close(QIODevice* self) {
	self->close();
}

long long QIODevice_pos(const QIODevice* self) {
	qint64 _ret = self->pos();
	return static_cast<long long>(_ret);
}

long long QIODevice_size(const QIODevice* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

bool QIODevice_seek(QIODevice* self, long long pos) {
	return self->seek(static_cast<qint64>(pos));
}

bool QIODevice_atEnd(const QIODevice* self) {
	return self->atEnd();
}

bool QIODevice_reset(QIODevice* self) {
	return self->reset();
}

long long QIODevice_bytesAvailable(const QIODevice* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QIODevice_bytesToWrite(const QIODevice* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

long long QIODevice_read(QIODevice* self, char* data, long long maxlen) {
	qint64 _ret = self->read(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

struct miqt_string QIODevice_readWithMaxlen(QIODevice* self, long long maxlen) {
	QByteArray _qb = self->read(static_cast<qint64>(maxlen));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QIODevice_readAll(QIODevice* self) {
	QByteArray _qb = self->readAll();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

long long QIODevice_readLine(QIODevice* self, char* data, long long maxlen) {
	qint64 _ret = self->readLine(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

struct miqt_string QIODevice_readLine2(QIODevice* self) {
	QByteArray _qb = self->readLine();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QIODevice_canReadLine(const QIODevice* self) {
	return self->canReadLine();
}

void QIODevice_startTransaction(QIODevice* self) {
	self->startTransaction();
}

void QIODevice_commitTransaction(QIODevice* self) {
	self->commitTransaction();
}

void QIODevice_rollbackTransaction(QIODevice* self) {
	self->rollbackTransaction();
}

bool QIODevice_isTransactionStarted(const QIODevice* self) {
	return self->isTransactionStarted();
}

long long QIODevice_write(QIODevice* self, const char* data, long long len) {
	qint64 _ret = self->write(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

long long QIODevice_writeWithData(QIODevice* self, const char* data) {
	qint64 _ret = self->write(data);
	return static_cast<long long>(_ret);
}

long long QIODevice_write2(QIODevice* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	qint64 _ret = self->write(data_QByteArray);
	return static_cast<long long>(_ret);
}

long long QIODevice_peek(QIODevice* self, char* data, long long maxlen) {
	qint64 _ret = self->peek(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

struct miqt_string QIODevice_peekWithMaxlen(QIODevice* self, long long maxlen) {
	QByteArray _qb = self->peek(static_cast<qint64>(maxlen));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

long long QIODevice_skip(QIODevice* self, long long maxSize) {
	qint64 _ret = self->skip(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

bool QIODevice_waitForReadyRead(QIODevice* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QIODevice_waitForBytesWritten(QIODevice* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

void QIODevice_ungetChar(QIODevice* self, char c) {
	self->ungetChar(static_cast<char>(c));
}

bool QIODevice_putChar(QIODevice* self, char c) {
	return self->putChar(static_cast<char>(c));
}

bool QIODevice_getChar(QIODevice* self, char* c) {
	return self->getChar(c);
}

struct miqt_string QIODevice_errorString(const QIODevice* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QIODevice_readyRead(QIODevice* self) {
	self->readyRead();
}

void QIODevice_connect_readyRead(QIODevice* self, intptr_t slot) {
	VirtualQIODevice::connect(self, static_cast<void (QIODevice::*)()>(&QIODevice::readyRead), self, [=]() {
		miqt_exec_callback_QIODevice_readyRead(slot);
	});
}

void QIODevice_channelReadyRead(QIODevice* self, int channel) {
	self->channelReadyRead(static_cast<int>(channel));
}

void QIODevice_connect_channelReadyRead(QIODevice* self, intptr_t slot) {
	VirtualQIODevice::connect(self, static_cast<void (QIODevice::*)(int)>(&QIODevice::channelReadyRead), self, [=](int channel) {
		int sigval1 = channel;
		miqt_exec_callback_QIODevice_channelReadyRead(slot, sigval1);
	});
}

void QIODevice_bytesWritten(QIODevice* self, long long bytes) {
	self->bytesWritten(static_cast<qint64>(bytes));
}

void QIODevice_connect_bytesWritten(QIODevice* self, intptr_t slot) {
	VirtualQIODevice::connect(self, static_cast<void (QIODevice::*)(qint64)>(&QIODevice::bytesWritten), self, [=](qint64 bytes) {
		qint64 bytes_ret = bytes;
		long long sigval1 = static_cast<long long>(bytes_ret);
		miqt_exec_callback_QIODevice_bytesWritten(slot, sigval1);
	});
}

void QIODevice_channelBytesWritten(QIODevice* self, int channel, long long bytes) {
	self->channelBytesWritten(static_cast<int>(channel), static_cast<qint64>(bytes));
}

void QIODevice_connect_channelBytesWritten(QIODevice* self, intptr_t slot) {
	VirtualQIODevice::connect(self, static_cast<void (QIODevice::*)(int, qint64)>(&QIODevice::channelBytesWritten), self, [=](int channel, qint64 bytes) {
		int sigval1 = channel;
		qint64 bytes_ret = bytes;
		long long sigval2 = static_cast<long long>(bytes_ret);
		miqt_exec_callback_QIODevice_channelBytesWritten(slot, sigval1, sigval2);
	});
}

void QIODevice_aboutToClose(QIODevice* self) {
	self->aboutToClose();
}

void QIODevice_connect_aboutToClose(QIODevice* self, intptr_t slot) {
	VirtualQIODevice::connect(self, static_cast<void (QIODevice::*)()>(&QIODevice::aboutToClose), self, [=]() {
		miqt_exec_callback_QIODevice_aboutToClose(slot);
	});
}

void QIODevice_readChannelFinished(QIODevice* self) {
	self->readChannelFinished();
}

void QIODevice_connect_readChannelFinished(QIODevice* self, intptr_t slot) {
	VirtualQIODevice::connect(self, static_cast<void (QIODevice::*)()>(&QIODevice::readChannelFinished), self, [=]() {
		miqt_exec_callback_QIODevice_readChannelFinished(slot);
	});
}

struct miqt_string QIODevice_tr2(const char* s, const char* c) {
	QString _ret = QIODevice::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIODevice_tr3(const char* s, const char* c, int n) {
	QString _ret = QIODevice::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIODevice_readLine1(QIODevice* self, long long maxlen) {
	QByteArray _qb = self->readLine(static_cast<qint64>(maxlen));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QMetaObject* QIODevice_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQIODevice*)(self) )->QIODevice::metaObject();

}

void* QIODevice_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::qt_metacast(param1);

}

int QIODevice_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QIODevice_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQIODevice*)(self) )->QIODevice::isSequential();

}

bool QIODevice_virtualbase_open(void* self, int mode) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::open(static_cast<VirtualQIODevice::OpenMode>(mode));

}

void QIODevice_virtualbase_close(void* self) {

	( (VirtualQIODevice*)(self) )->QIODevice::close();

}

long long QIODevice_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQIODevice*)(self) )->QIODevice::pos();
	return static_cast<long long>(_ret);

}

long long QIODevice_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQIODevice*)(self) )->QIODevice::size();
	return static_cast<long long>(_ret);

}

bool QIODevice_virtualbase_seek(void* self, long long pos) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::seek(static_cast<qint64>(pos));

}

bool QIODevice_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQIODevice*)(self) )->QIODevice::atEnd();

}

bool QIODevice_virtualbase_reset(void* self) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::reset();

}

long long QIODevice_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQIODevice*)(self) )->QIODevice::bytesAvailable();
	return static_cast<long long>(_ret);

}

long long QIODevice_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQIODevice*)(self) )->QIODevice::bytesToWrite();
	return static_cast<long long>(_ret);

}

bool QIODevice_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQIODevice*)(self) )->QIODevice::canReadLine();

}

bool QIODevice_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::waitForReadyRead(static_cast<int>(msecs));

}

bool QIODevice_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::waitForBytesWritten(static_cast<int>(msecs));

}

long long QIODevice_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQIODevice*)(self) )->QIODevice::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QIODevice_virtualbase_skipData(void* self, long long maxSize) {

	qint64 _ret = ( (VirtualQIODevice*)(self) )->QIODevice::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);

}

bool QIODevice_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::event(event);

}

bool QIODevice_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQIODevice*)(self) )->QIODevice::eventFilter(watched, event);

}

void QIODevice_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQIODevice*)(self) )->QIODevice::timerEvent(event);

}

void QIODevice_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQIODevice*)(self) )->QIODevice::childEvent(event);

}

void QIODevice_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQIODevice*)(self) )->QIODevice::customEvent(event);

}

void QIODevice_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQIODevice*)(self) )->QIODevice::connectNotify(*signal);

}

void QIODevice_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQIODevice*)(self) )->QIODevice::disconnectNotify(*signal);

}

const QMetaObject* QIODevice_staticMetaObject() { return &QIODevice::staticMetaObject; }
void QIODevice_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode) {
	VirtualQIODevice* self_cast = dynamic_cast<VirtualQIODevice*>( (QIODevice*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOpenMode(static_cast<VirtualQIODevice::OpenMode>(openMode));

}

void QIODevice_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString) {
	VirtualQIODevice* self_cast = dynamic_cast<VirtualQIODevice*>( (QIODevice*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QIODevice_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQIODevice* self_cast = dynamic_cast<VirtualQIODevice*>( (QIODevice*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QIODevice_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQIODevice* self_cast = dynamic_cast<VirtualQIODevice*>( (QIODevice*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QIODevice_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQIODevice* self_cast = dynamic_cast<VirtualQIODevice*>( (QIODevice*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QIODevice_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQIODevice* self_cast = dynamic_cast<VirtualQIODevice*>( (QIODevice*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QIODevice_delete(QIODevice* self) {
	delete self;
}

