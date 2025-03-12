#include <QBuffer>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qbuffer.h>
#include "gen_qbuffer.h"
class VirtualQBuffer final : public QBuffer {
	const QBuffer_VTable* vtbl;
	void* vdata;
public:
	friend const QBuffer_VTable* QBuffer_vtbl(const VirtualQBuffer* self);
	friend void* QBuffer_vdata(const VirtualQBuffer* self);
	friend void QBuffer_setVdata(VirtualQBuffer* self, void* vdata);

	VirtualQBuffer(const QBuffer_VTable* vtbl, void* vdata): QBuffer(), vtbl(vtbl), vdata(vdata) {}
	VirtualQBuffer(const QBuffer_VTable* vtbl, void* vdata, QObject* parent): QBuffer(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQBuffer() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QBuffer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QBuffer_virtualbase_metaObject(const VirtualQBuffer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QBuffer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QBuffer_virtualbase_metacast(VirtualQBuffer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QBuffer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QBuffer_virtualbase_metacall(VirtualQBuffer* self, int param1, int param2, void** param3);

	virtual bool open(QIODevice::OpenMode openMode) override {
		if (vtbl->open == 0) {
			return QBuffer::open(openMode);
		}

		QIODevice::OpenMode openMode_ret = openMode;
		int sigval1 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_open(VirtualQBuffer* self, int openMode);

	virtual void close() override {
		if (vtbl->close == 0) {
			QBuffer::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QBuffer_virtualbase_close(VirtualQBuffer* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QBuffer::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_size(const VirtualQBuffer* self);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QBuffer::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_pos(const VirtualQBuffer* self);

	virtual bool seek(qint64 off) override {
		if (vtbl->seek == 0) {
			return QBuffer::seek(off);
		}

		qint64 off_ret = off;
		long long sigval1 = static_cast<long long>(off_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_seek(VirtualQBuffer* self, long long off);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QBuffer::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_atEnd(const VirtualQBuffer* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QBuffer::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_canReadLine(const VirtualQBuffer* self);

	virtual void connectNotify(const QMetaMethod& param1) override {
		if (vtbl->connectNotify == 0) {
			QBuffer::connectNotify(param1);
			return;
		}

		const QMetaMethod& param1_ret = param1;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&param1_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QBuffer_virtualbase_connectNotify(VirtualQBuffer* self, QMetaMethod* param1);

	virtual void disconnectNotify(const QMetaMethod& param1) override {
		if (vtbl->disconnectNotify == 0) {
			QBuffer::disconnectNotify(param1);
			return;
		}

		const QMetaMethod& param1_ret = param1;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&param1_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QBuffer_virtualbase_disconnectNotify(VirtualQBuffer* self, QMetaMethod* param1);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QBuffer::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_readData(VirtualQBuffer* self, char* data, long long maxlen);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QBuffer::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_writeData(VirtualQBuffer* self, const char* data, long long len);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QBuffer::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_isSequential(const VirtualQBuffer* self);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QBuffer::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_reset(VirtualQBuffer* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QBuffer::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_bytesAvailable(const VirtualQBuffer* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QBuffer::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_bytesToWrite(const VirtualQBuffer* self);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QBuffer::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_waitForReadyRead(VirtualQBuffer* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QBuffer::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_waitForBytesWritten(VirtualQBuffer* self, int msecs);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QBuffer::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_readLineData(VirtualQBuffer* self, char* data, long long maxlen);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QBuffer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_event(VirtualQBuffer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QBuffer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_eventFilter(VirtualQBuffer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QBuffer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QBuffer_virtualbase_timerEvent(VirtualQBuffer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QBuffer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QBuffer_virtualbase_childEvent(VirtualQBuffer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QBuffer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QBuffer_virtualbase_customEvent(VirtualQBuffer* self, QEvent* event);

	// Wrappers to allow calling protected methods:
	friend void QBuffer_protectedbase_setOpenMode(VirtualQBuffer* self, int openMode);
	friend void QBuffer_protectedbase_setErrorString(VirtualQBuffer* self, struct miqt_string errorString);
	friend QObject* QBuffer_protectedbase_sender(const VirtualQBuffer* self);
	friend int QBuffer_protectedbase_senderSignalIndex(const VirtualQBuffer* self);
	friend int QBuffer_protectedbase_receivers(const VirtualQBuffer* self, const char* signal);
	friend bool QBuffer_protectedbase_isSignalConnected(const VirtualQBuffer* self, QMetaMethod* signal);
};

VirtualQBuffer* QBuffer_new(const QBuffer_VTable* vtbl, void* vdata) {
	return new VirtualQBuffer(vtbl, vdata);
}

VirtualQBuffer* QBuffer_new2(const QBuffer_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQBuffer(vtbl, vdata, parent);
}

void QBuffer_virtbase(QBuffer* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QBuffer_metaObject(const QBuffer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QBuffer_metacast(QBuffer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QBuffer_metacall(QBuffer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QBuffer_tr(const char* s) {
	QString _ret = QBuffer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBuffer_trUtf8(const char* s) {
	QString _ret = QBuffer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBuffer_buffer(QBuffer* self) {
	QByteArray _qb = self->buffer();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QBuffer_buffer2(const QBuffer* self) {
	const QByteArray _qb = self->buffer();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QBuffer_setData(QBuffer* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setData(data_QByteArray);
}

void QBuffer_setData2(QBuffer* self, const char* data, int len) {
	self->setData(data, static_cast<int>(len));
}

struct miqt_string QBuffer_data(const QBuffer* self) {
	const QByteArray _qb = self->data();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QBuffer_open(QBuffer* self, int openMode) {
	return self->open(static_cast<QIODevice::OpenMode>(openMode));
}

void QBuffer_close(QBuffer* self) {
	self->close();
}

long long QBuffer_size(const QBuffer* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

long long QBuffer_pos(const QBuffer* self) {
	qint64 _ret = self->pos();
	return static_cast<long long>(_ret);
}

bool QBuffer_seek(QBuffer* self, long long off) {
	return self->seek(static_cast<qint64>(off));
}

bool QBuffer_atEnd(const QBuffer* self) {
	return self->atEnd();
}

bool QBuffer_canReadLine(const QBuffer* self) {
	return self->canReadLine();
}

struct miqt_string QBuffer_tr2(const char* s, const char* c) {
	QString _ret = QBuffer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBuffer_tr3(const char* s, const char* c, int n) {
	QString _ret = QBuffer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBuffer_trUtf82(const char* s, const char* c) {
	QString _ret = QBuffer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBuffer_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QBuffer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QBuffer_virtualbase_metaObject(const VirtualQBuffer* self) {

	return (QMetaObject*) self->QBuffer::metaObject();
}

void* QBuffer_virtualbase_metacast(VirtualQBuffer* self, const char* param1) {

	return self->QBuffer::qt_metacast(param1);
}

int QBuffer_virtualbase_metacall(VirtualQBuffer* self, int param1, int param2, void** param3) {

	return self->QBuffer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QBuffer_virtualbase_open(VirtualQBuffer* self, int openMode) {

	return self->QBuffer::open(static_cast<VirtualQBuffer::OpenMode>(openMode));
}

void QBuffer_virtualbase_close(VirtualQBuffer* self) {

	self->QBuffer::close();
}

long long QBuffer_virtualbase_size(const VirtualQBuffer* self) {

	qint64 _ret = self->QBuffer::size();
	return static_cast<long long>(_ret);
}

long long QBuffer_virtualbase_pos(const VirtualQBuffer* self) {

	qint64 _ret = self->QBuffer::pos();
	return static_cast<long long>(_ret);
}

bool QBuffer_virtualbase_seek(VirtualQBuffer* self, long long off) {

	return self->QBuffer::seek(static_cast<qint64>(off));
}

bool QBuffer_virtualbase_atEnd(const VirtualQBuffer* self) {

	return self->QBuffer::atEnd();
}

bool QBuffer_virtualbase_canReadLine(const VirtualQBuffer* self) {

	return self->QBuffer::canReadLine();
}

void QBuffer_virtualbase_connectNotify(VirtualQBuffer* self, QMetaMethod* param1) {

	self->QBuffer::connectNotify(*param1);
}

void QBuffer_virtualbase_disconnectNotify(VirtualQBuffer* self, QMetaMethod* param1) {

	self->QBuffer::disconnectNotify(*param1);
}

long long QBuffer_virtualbase_readData(VirtualQBuffer* self, char* data, long long maxlen) {

	qint64 _ret = self->QBuffer::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QBuffer_virtualbase_writeData(VirtualQBuffer* self, const char* data, long long len) {

	qint64 _ret = self->QBuffer::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

bool QBuffer_virtualbase_isSequential(const VirtualQBuffer* self) {

	return self->QBuffer::isSequential();
}

bool QBuffer_virtualbase_reset(VirtualQBuffer* self) {

	return self->QBuffer::reset();
}

long long QBuffer_virtualbase_bytesAvailable(const VirtualQBuffer* self) {

	qint64 _ret = self->QBuffer::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QBuffer_virtualbase_bytesToWrite(const VirtualQBuffer* self) {

	qint64 _ret = self->QBuffer::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QBuffer_virtualbase_waitForReadyRead(VirtualQBuffer* self, int msecs) {

	return self->QBuffer::waitForReadyRead(static_cast<int>(msecs));
}

bool QBuffer_virtualbase_waitForBytesWritten(VirtualQBuffer* self, int msecs) {

	return self->QBuffer::waitForBytesWritten(static_cast<int>(msecs));
}

long long QBuffer_virtualbase_readLineData(VirtualQBuffer* self, char* data, long long maxlen) {

	qint64 _ret = self->QBuffer::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

bool QBuffer_virtualbase_event(VirtualQBuffer* self, QEvent* event) {

	return self->QBuffer::event(event);
}

bool QBuffer_virtualbase_eventFilter(VirtualQBuffer* self, QObject* watched, QEvent* event) {

	return self->QBuffer::eventFilter(watched, event);
}

void QBuffer_virtualbase_timerEvent(VirtualQBuffer* self, QTimerEvent* event) {

	self->QBuffer::timerEvent(event);
}

void QBuffer_virtualbase_childEvent(VirtualQBuffer* self, QChildEvent* event) {

	self->QBuffer::childEvent(event);
}

void QBuffer_virtualbase_customEvent(VirtualQBuffer* self, QEvent* event) {

	self->QBuffer::customEvent(event);
}

const QMetaObject* QBuffer_staticMetaObject() { return &QBuffer::staticMetaObject; }

const QBuffer_VTable* QBuffer_vtbl(const VirtualQBuffer* self) { return self->vtbl; }
void* QBuffer_vdata(const VirtualQBuffer* self) { return self->vdata; }
void QBuffer_setVdata(VirtualQBuffer* self, void* vdata) { self->vdata = vdata; }

void QBuffer_protectedbase_setOpenMode(VirtualQBuffer* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQBuffer::OpenMode>(openMode));
}

void QBuffer_protectedbase_setErrorString(VirtualQBuffer* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QBuffer_protectedbase_sender(const VirtualQBuffer* self) {
	return self->sender();
}

int QBuffer_protectedbase_senderSignalIndex(const VirtualQBuffer* self) {
	return self->senderSignalIndex();
}

int QBuffer_protectedbase_receivers(const VirtualQBuffer* self, const char* signal) {
	return self->receivers(signal);
}

bool QBuffer_protectedbase_isSignalConnected(const VirtualQBuffer* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QBuffer_delete(QBuffer* self) {
	delete self;
}

