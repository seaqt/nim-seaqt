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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQBuffer final : public QBuffer {
	struct QBuffer_VTable* vtbl;
public:

	VirtualQBuffer(struct QBuffer_VTable* vtbl): QBuffer(), vtbl(vtbl) {};
	VirtualQBuffer(struct QBuffer_VTable* vtbl, QObject* parent): QBuffer(parent), vtbl(vtbl) {};

	virtual ~VirtualQBuffer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QBuffer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QBuffer_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QBuffer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QBuffer_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QBuffer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QBuffer_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode openMode) override {
		if (vtbl->open == 0) {
			return QBuffer::open(openMode);
		}

		QIODevice::OpenMode openMode_ret = openMode;
		int sigval1 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_open(void* self, int openMode);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QBuffer::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QBuffer_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QBuffer::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QBuffer::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 off) override {
		if (vtbl->seek == 0) {
			return QBuffer::seek(off);
		}

		qint64 off_ret = off;
		long long sigval1 = static_cast<long long>(off_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_seek(void* self, long long off);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QBuffer::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QBuffer::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& param1) override {
		if (vtbl->connectNotify == 0) {
			QBuffer::connectNotify(param1);
			return;
		}

		const QMetaMethod& param1_ret = param1;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&param1_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QBuffer_virtualbase_connectNotify(void* self, QMetaMethod* param1);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& param1) override {
		if (vtbl->disconnectNotify == 0) {
			QBuffer::disconnectNotify(param1);
			return;
		}

		const QMetaMethod& param1_ret = param1;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&param1_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QBuffer_virtualbase_disconnectNotify(void* self, QMetaMethod* param1);

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QBuffer::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_readData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QBuffer::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_writeData(void* self, const char* data, long long len);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QBuffer::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QBuffer::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QBuffer::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QBuffer::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QBuffer::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QBuffer::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QBuffer::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QBuffer_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QBuffer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QBuffer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QBuffer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QBuffer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QBuffer_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QBuffer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QBuffer_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QBuffer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QBuffer_virtualbase_customEvent(void* self, QEvent* event);

	// Wrappers to allow calling protected methods:
	friend void QBuffer_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
	friend void QBuffer_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
	friend QObject* QBuffer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QBuffer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QBuffer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QBuffer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QBuffer* QBuffer_new(struct QBuffer_VTable* vtbl) {
	return new VirtualQBuffer(vtbl);
}

QBuffer* QBuffer_new2(struct QBuffer_VTable* vtbl, QObject* parent) {
	return new VirtualQBuffer(vtbl, parent);
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

QMetaObject* QBuffer_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQBuffer*)(self) )->QBuffer::metaObject();

}

void* QBuffer_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::qt_metacast(param1);

}

int QBuffer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QBuffer_virtualbase_open(void* self, int openMode) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::open(static_cast<VirtualQBuffer::OpenMode>(openMode));

}

void QBuffer_virtualbase_close(void* self) {

	( (VirtualQBuffer*)(self) )->QBuffer::close();

}

long long QBuffer_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQBuffer*)(self) )->QBuffer::size();
	return static_cast<long long>(_ret);

}

long long QBuffer_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQBuffer*)(self) )->QBuffer::pos();
	return static_cast<long long>(_ret);

}

bool QBuffer_virtualbase_seek(void* self, long long off) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::seek(static_cast<qint64>(off));

}

bool QBuffer_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQBuffer*)(self) )->QBuffer::atEnd();

}

bool QBuffer_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQBuffer*)(self) )->QBuffer::canReadLine();

}

void QBuffer_virtualbase_connectNotify(void* self, QMetaMethod* param1) {

	( (VirtualQBuffer*)(self) )->QBuffer::connectNotify(*param1);

}

void QBuffer_virtualbase_disconnectNotify(void* self, QMetaMethod* param1) {

	( (VirtualQBuffer*)(self) )->QBuffer::disconnectNotify(*param1);

}

long long QBuffer_virtualbase_readData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQBuffer*)(self) )->QBuffer::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QBuffer_virtualbase_writeData(void* self, const char* data, long long len) {

	qint64 _ret = ( (VirtualQBuffer*)(self) )->QBuffer::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);

}

bool QBuffer_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQBuffer*)(self) )->QBuffer::isSequential();

}

bool QBuffer_virtualbase_reset(void* self) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::reset();

}

long long QBuffer_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQBuffer*)(self) )->QBuffer::bytesAvailable();
	return static_cast<long long>(_ret);

}

long long QBuffer_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQBuffer*)(self) )->QBuffer::bytesToWrite();
	return static_cast<long long>(_ret);

}

bool QBuffer_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::waitForReadyRead(static_cast<int>(msecs));

}

bool QBuffer_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::waitForBytesWritten(static_cast<int>(msecs));

}

long long QBuffer_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQBuffer*)(self) )->QBuffer::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

bool QBuffer_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::event(event);

}

bool QBuffer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQBuffer*)(self) )->QBuffer::eventFilter(watched, event);

}

void QBuffer_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQBuffer*)(self) )->QBuffer::timerEvent(event);

}

void QBuffer_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQBuffer*)(self) )->QBuffer::childEvent(event);

}

void QBuffer_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQBuffer*)(self) )->QBuffer::customEvent(event);

}

const QMetaObject* QBuffer_staticMetaObject() { return &QBuffer::staticMetaObject; }
void QBuffer_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode) {
	VirtualQBuffer* self_cast = dynamic_cast<VirtualQBuffer*>( (QBuffer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOpenMode(static_cast<VirtualQBuffer::OpenMode>(openMode));

}

void QBuffer_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString) {
	VirtualQBuffer* self_cast = dynamic_cast<VirtualQBuffer*>( (QBuffer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QBuffer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQBuffer* self_cast = dynamic_cast<VirtualQBuffer*>( (QBuffer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QBuffer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQBuffer* self_cast = dynamic_cast<VirtualQBuffer*>( (QBuffer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QBuffer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQBuffer* self_cast = dynamic_cast<VirtualQBuffer*>( (QBuffer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QBuffer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQBuffer* self_cast = dynamic_cast<VirtualQBuffer*>( (QBuffer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QBuffer_delete(QBuffer* self) {
	delete self;
}

