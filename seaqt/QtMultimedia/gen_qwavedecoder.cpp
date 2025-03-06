#include <QAudioFormat>
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
#include <QWaveDecoder>
#include <qwavedecoder.h>
#include "gen_qwavedecoder.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QWaveDecoder_formatKnown(intptr_t);
void miqt_exec_callback_QWaveDecoder_parsingError(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWaveDecoder final : public QWaveDecoder {
	struct QWaveDecoder_VTable* vtbl;
public:

	VirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device): QWaveDecoder(device), vtbl(vtbl) {};
	VirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device, const QAudioFormat& format): QWaveDecoder(device, format), vtbl(vtbl) {};
	VirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QObject* parent): QWaveDecoder(device, parent), vtbl(vtbl) {};
	VirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device, const QAudioFormat& format, QObject* parent): QWaveDecoder(device, format, parent), vtbl(vtbl) {};

	virtual ~VirtualQWaveDecoder() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWaveDecoder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWaveDecoder_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWaveDecoder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWaveDecoder_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWaveDecoder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWaveDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QWaveDecoder::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_open(void* self, int mode);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QWaveDecoder::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QWaveDecoder_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QWaveDecoder::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_seek(void* self, long long pos);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QWaveDecoder::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QWaveDecoder::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QWaveDecoder::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QWaveDecoder::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QWaveDecoder::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QWaveDecoder::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QWaveDecoder::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QWaveDecoder::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QWaveDecoder::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QWaveDecoder::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QWaveDecoder::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QWaveDecoder::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_skipData(void* self, long long maxSize);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWaveDecoder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWaveDecoder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWaveDecoder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWaveDecoder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWaveDecoder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWaveDecoder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWaveDecoder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWaveDecoder_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
	friend void QWaveDecoder_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
	friend QObject* QWaveDecoder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QWaveDecoder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QWaveDecoder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QWaveDecoder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QWaveDecoder* QWaveDecoder_new(struct QWaveDecoder_VTable* vtbl, QIODevice* device) {
	return new VirtualQWaveDecoder(vtbl, device);
}

QWaveDecoder* QWaveDecoder_new2(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QAudioFormat* format) {
	return new VirtualQWaveDecoder(vtbl, device, *format);
}

QWaveDecoder* QWaveDecoder_new3(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QObject* parent) {
	return new VirtualQWaveDecoder(vtbl, device, parent);
}

QWaveDecoder* QWaveDecoder_new4(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QAudioFormat* format, QObject* parent) {
	return new VirtualQWaveDecoder(vtbl, device, *format, parent);
}

void QWaveDecoder_virtbase(QWaveDecoder* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QWaveDecoder_metaObject(const QWaveDecoder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWaveDecoder_metacast(QWaveDecoder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWaveDecoder_metacall(QWaveDecoder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWaveDecoder_tr(const char* s) {
	QString _ret = QWaveDecoder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioFormat* QWaveDecoder_audioFormat(const QWaveDecoder* self) {
	return new QAudioFormat(self->audioFormat());
}

QIODevice* QWaveDecoder_getDevice(QWaveDecoder* self) {
	return self->getDevice();
}

int QWaveDecoder_duration(const QWaveDecoder* self) {
	return self->duration();
}

long long QWaveDecoder_headerLength() {
	qint64 _ret = QWaveDecoder::headerLength();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_open(QWaveDecoder* self, int mode) {
	return self->open(static_cast<QIODevice::OpenMode>(mode));
}

void QWaveDecoder_close(QWaveDecoder* self) {
	self->close();
}

bool QWaveDecoder_seek(QWaveDecoder* self, long long pos) {
	return self->seek(static_cast<qint64>(pos));
}

long long QWaveDecoder_pos(const QWaveDecoder* self) {
	qint64 _ret = self->pos();
	return static_cast<long long>(_ret);
}

long long QWaveDecoder_size(const QWaveDecoder* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_isSequential(const QWaveDecoder* self) {
	return self->isSequential();
}

long long QWaveDecoder_bytesAvailable(const QWaveDecoder* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

void QWaveDecoder_formatKnown(QWaveDecoder* self) {
	self->formatKnown();
}

void QWaveDecoder_connect_formatKnown(QWaveDecoder* self, intptr_t slot) {
	VirtualQWaveDecoder::connect(self, static_cast<void (QWaveDecoder::*)()>(&QWaveDecoder::formatKnown), self, [=]() {
		miqt_exec_callback_QWaveDecoder_formatKnown(slot);
	});
}

void QWaveDecoder_parsingError(QWaveDecoder* self) {
	self->parsingError();
}

void QWaveDecoder_connect_parsingError(QWaveDecoder* self, intptr_t slot) {
	VirtualQWaveDecoder::connect(self, static_cast<void (QWaveDecoder::*)()>(&QWaveDecoder::parsingError), self, [=]() {
		miqt_exec_callback_QWaveDecoder_parsingError(slot);
	});
}

struct miqt_string QWaveDecoder_tr2(const char* s, const char* c) {
	QString _ret = QWaveDecoder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWaveDecoder_tr3(const char* s, const char* c, int n) {
	QString _ret = QWaveDecoder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWaveDecoder_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::metaObject();

}

void* QWaveDecoder_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::qt_metacast(param1);

}

int QWaveDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QWaveDecoder_virtualbase_open(void* self, int mode) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::open(static_cast<VirtualQWaveDecoder::OpenMode>(mode));

}

void QWaveDecoder_virtualbase_close(void* self) {

	( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::close();

}

bool QWaveDecoder_virtualbase_seek(void* self, long long pos) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::seek(static_cast<qint64>(pos));

}

long long QWaveDecoder_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::pos();
	return static_cast<long long>(_ret);

}

long long QWaveDecoder_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::size();
	return static_cast<long long>(_ret);

}

bool QWaveDecoder_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::isSequential();

}

long long QWaveDecoder_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::bytesAvailable();
	return static_cast<long long>(_ret);

}

bool QWaveDecoder_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::atEnd();

}

bool QWaveDecoder_virtualbase_reset(void* self) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::reset();

}

long long QWaveDecoder_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::bytesToWrite();
	return static_cast<long long>(_ret);

}

bool QWaveDecoder_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQWaveDecoder*)(self) )->QWaveDecoder::canReadLine();

}

bool QWaveDecoder_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::waitForReadyRead(static_cast<int>(msecs));

}

bool QWaveDecoder_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::waitForBytesWritten(static_cast<int>(msecs));

}

long long QWaveDecoder_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QWaveDecoder_virtualbase_skipData(void* self, long long maxSize) {

	qint64 _ret = ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);

}

bool QWaveDecoder_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::event(event);

}

bool QWaveDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::eventFilter(watched, event);

}

void QWaveDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::timerEvent(event);

}

void QWaveDecoder_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::childEvent(event);

}

void QWaveDecoder_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::customEvent(event);

}

void QWaveDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::connectNotify(*signal);

}

void QWaveDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWaveDecoder*)(self) )->QWaveDecoder::disconnectNotify(*signal);

}

const QMetaObject* QWaveDecoder_staticMetaObject() { return &QWaveDecoder::staticMetaObject; }
void QWaveDecoder_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode) {
	VirtualQWaveDecoder* self_cast = dynamic_cast<VirtualQWaveDecoder*>( (QWaveDecoder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOpenMode(static_cast<VirtualQWaveDecoder::OpenMode>(openMode));

}

void QWaveDecoder_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString) {
	VirtualQWaveDecoder* self_cast = dynamic_cast<VirtualQWaveDecoder*>( (QWaveDecoder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QWaveDecoder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWaveDecoder* self_cast = dynamic_cast<VirtualQWaveDecoder*>( (QWaveDecoder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QWaveDecoder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWaveDecoder* self_cast = dynamic_cast<VirtualQWaveDecoder*>( (QWaveDecoder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QWaveDecoder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQWaveDecoder* self_cast = dynamic_cast<VirtualQWaveDecoder*>( (QWaveDecoder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QWaveDecoder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQWaveDecoder* self_cast = dynamic_cast<VirtualQWaveDecoder*>( (QWaveDecoder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QWaveDecoder_delete(QWaveDecoder* self) {
	delete self;
}

