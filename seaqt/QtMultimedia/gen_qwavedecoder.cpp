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
class VirtualQWaveDecoder final : public QWaveDecoder {
	const QWaveDecoder_VTable* vtbl;
	void* vdata;
public:
	friend const QWaveDecoder_VTable* QWaveDecoder_vtbl(const VirtualQWaveDecoder* self);
	friend void* QWaveDecoder_vdata(const VirtualQWaveDecoder* self);
	friend void QWaveDecoder_setVdata(VirtualQWaveDecoder* self, void* vdata);

	VirtualQWaveDecoder(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device): QWaveDecoder(device), vtbl(vtbl), vdata(vdata) {}
	VirtualQWaveDecoder(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, const QAudioFormat& format): QWaveDecoder(device, format), vtbl(vtbl), vdata(vdata) {}
	VirtualQWaveDecoder(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QObject* parent): QWaveDecoder(device, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWaveDecoder(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, const QAudioFormat& format, QObject* parent): QWaveDecoder(device, format, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWaveDecoder() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWaveDecoder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWaveDecoder_virtualbase_metaObject(const VirtualQWaveDecoder* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWaveDecoder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWaveDecoder_virtualbase_metacast(VirtualQWaveDecoder* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWaveDecoder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWaveDecoder_virtualbase_metacall(VirtualQWaveDecoder* self, int param1, int param2, void** param3);

	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QWaveDecoder::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_open(VirtualQWaveDecoder* self, int mode);

	virtual void close() override {
		if (vtbl->close == 0) {
			QWaveDecoder::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QWaveDecoder_virtualbase_close(VirtualQWaveDecoder* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QWaveDecoder::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_seek(VirtualQWaveDecoder* self, long long pos);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QWaveDecoder::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_pos(const VirtualQWaveDecoder* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QWaveDecoder::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_size(const VirtualQWaveDecoder* self);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QWaveDecoder::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_isSequential(const VirtualQWaveDecoder* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QWaveDecoder::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_bytesAvailable(const VirtualQWaveDecoder* self);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QWaveDecoder::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_atEnd(const VirtualQWaveDecoder* self);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QWaveDecoder::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_reset(VirtualQWaveDecoder* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QWaveDecoder::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_bytesToWrite(const VirtualQWaveDecoder* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QWaveDecoder::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_canReadLine(const VirtualQWaveDecoder* self);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QWaveDecoder::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_waitForReadyRead(VirtualQWaveDecoder* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QWaveDecoder::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_waitForBytesWritten(VirtualQWaveDecoder* self, int msecs);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QWaveDecoder::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_readLineData(VirtualQWaveDecoder* self, char* data, long long maxlen);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QWaveDecoder::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QWaveDecoder_virtualbase_skipData(VirtualQWaveDecoder* self, long long maxSize);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWaveDecoder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_event(VirtualQWaveDecoder* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWaveDecoder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWaveDecoder_virtualbase_eventFilter(VirtualQWaveDecoder* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWaveDecoder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_timerEvent(VirtualQWaveDecoder* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWaveDecoder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_childEvent(VirtualQWaveDecoder* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWaveDecoder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_customEvent(VirtualQWaveDecoder* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWaveDecoder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_connectNotify(VirtualQWaveDecoder* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWaveDecoder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWaveDecoder_virtualbase_disconnectNotify(VirtualQWaveDecoder* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWaveDecoder_protectedbase_setOpenMode(VirtualQWaveDecoder* self, int openMode);
	friend void QWaveDecoder_protectedbase_setErrorString(VirtualQWaveDecoder* self, struct miqt_string errorString);
	friend QObject* QWaveDecoder_protectedbase_sender(const VirtualQWaveDecoder* self);
	friend int QWaveDecoder_protectedbase_senderSignalIndex(const VirtualQWaveDecoder* self);
	friend int QWaveDecoder_protectedbase_receivers(const VirtualQWaveDecoder* self, const char* signal);
	friend bool QWaveDecoder_protectedbase_isSignalConnected(const VirtualQWaveDecoder* self, QMetaMethod* signal);
};

VirtualQWaveDecoder* QWaveDecoder_new(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device) {
	return new VirtualQWaveDecoder(vtbl, vdata, device);
}

VirtualQWaveDecoder* QWaveDecoder_new2(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QAudioFormat* format) {
	return new VirtualQWaveDecoder(vtbl, vdata, device, *format);
}

VirtualQWaveDecoder* QWaveDecoder_new3(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QObject* parent) {
	return new VirtualQWaveDecoder(vtbl, vdata, device, parent);
}

VirtualQWaveDecoder* QWaveDecoder_new4(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QAudioFormat* format, QObject* parent) {
	return new VirtualQWaveDecoder(vtbl, vdata, device, *format, parent);
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

void QWaveDecoder_connect_formatKnown(VirtualQWaveDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWaveDecoder::connect(self, static_cast<void (QWaveDecoder::*)()>(&QWaveDecoder::formatKnown), self, local_caller{slot, callback, release});
}

void QWaveDecoder_parsingError(QWaveDecoder* self) {
	self->parsingError();
}

void QWaveDecoder_connect_parsingError(VirtualQWaveDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWaveDecoder::connect(self, static_cast<void (QWaveDecoder::*)()>(&QWaveDecoder::parsingError), self, local_caller{slot, callback, release});
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

QMetaObject* QWaveDecoder_virtualbase_metaObject(const VirtualQWaveDecoder* self) {

	return (QMetaObject*) self->QWaveDecoder::metaObject();
}

void* QWaveDecoder_virtualbase_metacast(VirtualQWaveDecoder* self, const char* param1) {

	return self->QWaveDecoder::qt_metacast(param1);
}

int QWaveDecoder_virtualbase_metacall(VirtualQWaveDecoder* self, int param1, int param2, void** param3) {

	return self->QWaveDecoder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWaveDecoder_virtualbase_open(VirtualQWaveDecoder* self, int mode) {

	return self->QWaveDecoder::open(static_cast<VirtualQWaveDecoder::OpenMode>(mode));
}

void QWaveDecoder_virtualbase_close(VirtualQWaveDecoder* self) {

	self->QWaveDecoder::close();
}

bool QWaveDecoder_virtualbase_seek(VirtualQWaveDecoder* self, long long pos) {

	return self->QWaveDecoder::seek(static_cast<qint64>(pos));
}

long long QWaveDecoder_virtualbase_pos(const VirtualQWaveDecoder* self) {

	qint64 _ret = self->QWaveDecoder::pos();
	return static_cast<long long>(_ret);
}

long long QWaveDecoder_virtualbase_size(const VirtualQWaveDecoder* self) {

	qint64 _ret = self->QWaveDecoder::size();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_virtualbase_isSequential(const VirtualQWaveDecoder* self) {

	return self->QWaveDecoder::isSequential();
}

long long QWaveDecoder_virtualbase_bytesAvailable(const VirtualQWaveDecoder* self) {

	qint64 _ret = self->QWaveDecoder::bytesAvailable();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_virtualbase_atEnd(const VirtualQWaveDecoder* self) {

	return self->QWaveDecoder::atEnd();
}

bool QWaveDecoder_virtualbase_reset(VirtualQWaveDecoder* self) {

	return self->QWaveDecoder::reset();
}

long long QWaveDecoder_virtualbase_bytesToWrite(const VirtualQWaveDecoder* self) {

	qint64 _ret = self->QWaveDecoder::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_virtualbase_canReadLine(const VirtualQWaveDecoder* self) {

	return self->QWaveDecoder::canReadLine();
}

bool QWaveDecoder_virtualbase_waitForReadyRead(VirtualQWaveDecoder* self, int msecs) {

	return self->QWaveDecoder::waitForReadyRead(static_cast<int>(msecs));
}

bool QWaveDecoder_virtualbase_waitForBytesWritten(VirtualQWaveDecoder* self, int msecs) {

	return self->QWaveDecoder::waitForBytesWritten(static_cast<int>(msecs));
}

long long QWaveDecoder_virtualbase_readLineData(VirtualQWaveDecoder* self, char* data, long long maxlen) {

	qint64 _ret = self->QWaveDecoder::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QWaveDecoder_virtualbase_skipData(VirtualQWaveDecoder* self, long long maxSize) {

	qint64 _ret = self->QWaveDecoder::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_virtualbase_event(VirtualQWaveDecoder* self, QEvent* event) {

	return self->QWaveDecoder::event(event);
}

bool QWaveDecoder_virtualbase_eventFilter(VirtualQWaveDecoder* self, QObject* watched, QEvent* event) {

	return self->QWaveDecoder::eventFilter(watched, event);
}

void QWaveDecoder_virtualbase_timerEvent(VirtualQWaveDecoder* self, QTimerEvent* event) {

	self->QWaveDecoder::timerEvent(event);
}

void QWaveDecoder_virtualbase_childEvent(VirtualQWaveDecoder* self, QChildEvent* event) {

	self->QWaveDecoder::childEvent(event);
}

void QWaveDecoder_virtualbase_customEvent(VirtualQWaveDecoder* self, QEvent* event) {

	self->QWaveDecoder::customEvent(event);
}

void QWaveDecoder_virtualbase_connectNotify(VirtualQWaveDecoder* self, QMetaMethod* signal) {

	self->QWaveDecoder::connectNotify(*signal);
}

void QWaveDecoder_virtualbase_disconnectNotify(VirtualQWaveDecoder* self, QMetaMethod* signal) {

	self->QWaveDecoder::disconnectNotify(*signal);
}

const QMetaObject* QWaveDecoder_staticMetaObject() { return &QWaveDecoder::staticMetaObject; }

const QWaveDecoder_VTable* QWaveDecoder_vtbl(const VirtualQWaveDecoder* self) { return self->vtbl; }
void* QWaveDecoder_vdata(const VirtualQWaveDecoder* self) { return self->vdata; }
void QWaveDecoder_setVdata(VirtualQWaveDecoder* self, void* vdata) { self->vdata = vdata; }

void QWaveDecoder_protectedbase_setOpenMode(VirtualQWaveDecoder* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQWaveDecoder::OpenMode>(openMode));
}

void QWaveDecoder_protectedbase_setErrorString(VirtualQWaveDecoder* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QWaveDecoder_protectedbase_sender(const VirtualQWaveDecoder* self) {
	return self->sender();
}

int QWaveDecoder_protectedbase_senderSignalIndex(const VirtualQWaveDecoder* self) {
	return self->senderSignalIndex();
}

int QWaveDecoder_protectedbase_receivers(const VirtualQWaveDecoder* self, const char* signal) {
	return self->receivers(signal);
}

bool QWaveDecoder_protectedbase_isSignalConnected(const VirtualQWaveDecoder* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWaveDecoder_delete(QWaveDecoder* self) {
	delete self;
}

