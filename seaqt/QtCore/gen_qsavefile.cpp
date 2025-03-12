#include <QChildEvent>
#include <QEvent>
#include <QFileDevice>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSaveFile>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsavefile.h>
#include "gen_qsavefile.h"
class VirtualQSaveFile final : public QSaveFile {
	const QSaveFile_VTable* vtbl;
	void* vdata;
public:
	friend const QSaveFile_VTable* QSaveFile_vtbl(const VirtualQSaveFile* self);
	friend void* QSaveFile_vdata(const VirtualQSaveFile* self);
	friend void QSaveFile_setVdata(VirtualQSaveFile* self, void* vdata);

	VirtualQSaveFile(const QSaveFile_VTable* vtbl, void* vdata, const QString& name): QSaveFile(name), vtbl(vtbl), vdata(vdata) {}
	VirtualQSaveFile(const QSaveFile_VTable* vtbl, void* vdata): QSaveFile(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSaveFile(const QSaveFile_VTable* vtbl, void* vdata, const QString& name, QObject* parent): QSaveFile(name, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSaveFile(const QSaveFile_VTable* vtbl, void* vdata, QObject* parent): QSaveFile(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSaveFile() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSaveFile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSaveFile_virtualbase_metaObject(const VirtualQSaveFile* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSaveFile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSaveFile_virtualbase_metacast(VirtualQSaveFile* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSaveFile::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSaveFile_virtualbase_metacall(VirtualQSaveFile* self, int param1, int param2, void** param3);

	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QSaveFile::fileName();
		}


		struct miqt_string callback_return_value = vtbl->fileName(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QSaveFile_virtualbase_fileName(const VirtualQSaveFile* self);

	virtual bool open(QIODeviceBase::OpenMode flags) override {
		if (vtbl->open == 0) {
			return QSaveFile::open(flags);
		}

		QIODeviceBase::OpenMode flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_open(VirtualQSaveFile* self, int flags);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QSaveFile::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_writeData(VirtualQSaveFile* self, const char* data, long long len);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QSaveFile::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_isSequential(const VirtualQSaveFile* self);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QSaveFile::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_pos(const VirtualQSaveFile* self);

	virtual bool seek(qint64 offset) override {
		if (vtbl->seek == 0) {
			return QSaveFile::seek(offset);
		}

		qint64 offset_ret = offset;
		long long sigval1 = static_cast<long long>(offset_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_seek(VirtualQSaveFile* self, long long offset);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QSaveFile::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_atEnd(const VirtualQSaveFile* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QSaveFile::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_size(const VirtualQSaveFile* self);

	virtual bool resize(qint64 sz) override {
		if (vtbl->resize == 0) {
			return QSaveFile::resize(sz);
		}

		qint64 sz_ret = sz;
		long long sigval1 = static_cast<long long>(sz_ret);

		bool callback_return_value = vtbl->resize(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_resize(VirtualQSaveFile* self, long long sz);

	virtual QFileDevice::Permissions permissions() const override {
		if (vtbl->permissions == 0) {
			return QSaveFile::permissions();
		}


		int callback_return_value = vtbl->permissions(this);

		return static_cast<QFileDevice::Permissions>(callback_return_value);
	}

	friend int QSaveFile_virtualbase_permissions(const VirtualQSaveFile* self);

	virtual bool setPermissions(QFileDevice::Permissions permissionSpec) override {
		if (vtbl->setPermissions == 0) {
			return QSaveFile::setPermissions(permissionSpec);
		}

		QFileDevice::Permissions permissionSpec_ret = permissionSpec;
		int sigval1 = static_cast<int>(permissionSpec_ret);

		bool callback_return_value = vtbl->setPermissions(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_setPermissions(VirtualQSaveFile* self, int permissionSpec);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QSaveFile::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_readData(VirtualQSaveFile* self, char* data, long long maxlen);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QSaveFile::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_readLineData(VirtualQSaveFile* self, char* data, long long maxlen);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QSaveFile::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_reset(VirtualQSaveFile* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QSaveFile::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_bytesAvailable(const VirtualQSaveFile* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QSaveFile::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_bytesToWrite(const VirtualQSaveFile* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QSaveFile::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_canReadLine(const VirtualQSaveFile* self);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QSaveFile::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_waitForReadyRead(VirtualQSaveFile* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QSaveFile::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_waitForBytesWritten(VirtualQSaveFile* self, int msecs);

	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QSaveFile::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QSaveFile_virtualbase_skipData(VirtualQSaveFile* self, long long maxSize);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSaveFile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_event(VirtualQSaveFile* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSaveFile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSaveFile_virtualbase_eventFilter(VirtualQSaveFile* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSaveFile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSaveFile_virtualbase_timerEvent(VirtualQSaveFile* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSaveFile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSaveFile_virtualbase_childEvent(VirtualQSaveFile* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSaveFile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSaveFile_virtualbase_customEvent(VirtualQSaveFile* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSaveFile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSaveFile_virtualbase_connectNotify(VirtualQSaveFile* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSaveFile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSaveFile_virtualbase_disconnectNotify(VirtualQSaveFile* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSaveFile_protectedbase_setOpenMode(VirtualQSaveFile* self, int openMode);
	friend void QSaveFile_protectedbase_setErrorString(VirtualQSaveFile* self, struct miqt_string errorString);
	friend QObject* QSaveFile_protectedbase_sender(const VirtualQSaveFile* self);
	friend int QSaveFile_protectedbase_senderSignalIndex(const VirtualQSaveFile* self);
	friend int QSaveFile_protectedbase_receivers(const VirtualQSaveFile* self, const char* signal);
	friend bool QSaveFile_protectedbase_isSignalConnected(const VirtualQSaveFile* self, QMetaMethod* signal);
};

VirtualQSaveFile* QSaveFile_new(const QSaveFile_VTable* vtbl, void* vdata, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new VirtualQSaveFile(vtbl, vdata, name_QString);
}

VirtualQSaveFile* QSaveFile_new2(const QSaveFile_VTable* vtbl, void* vdata) {
	return new VirtualQSaveFile(vtbl, vdata);
}

VirtualQSaveFile* QSaveFile_new3(const QSaveFile_VTable* vtbl, void* vdata, struct miqt_string name, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new VirtualQSaveFile(vtbl, vdata, name_QString, parent);
}

VirtualQSaveFile* QSaveFile_new4(const QSaveFile_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSaveFile(vtbl, vdata, parent);
}

void QSaveFile_virtbase(QSaveFile* src, QFileDevice** outptr_QFileDevice) {
	*outptr_QFileDevice = static_cast<QFileDevice*>(src);
}

QMetaObject* QSaveFile_metaObject(const QSaveFile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSaveFile_metacast(QSaveFile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSaveFile_metacall(QSaveFile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSaveFile_tr(const char* s) {
	QString _ret = QSaveFile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_fileName(const QSaveFile* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSaveFile_setFileName(QSaveFile* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setFileName(name_QString);
}

bool QSaveFile_open(QSaveFile* self, int flags) {
	return self->open(static_cast<QIODeviceBase::OpenMode>(flags));
}

bool QSaveFile_commit(QSaveFile* self) {
	return self->commit();
}

void QSaveFile_cancelWriting(QSaveFile* self) {
	self->cancelWriting();
}

void QSaveFile_setDirectWriteFallback(QSaveFile* self, bool enabled) {
	self->setDirectWriteFallback(enabled);
}

bool QSaveFile_directWriteFallback(const QSaveFile* self) {
	return self->directWriteFallback();
}

struct miqt_string QSaveFile_tr2(const char* s, const char* c) {
	QString _ret = QSaveFile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_tr3(const char* s, const char* c, int n) {
	QString _ret = QSaveFile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSaveFile_virtualbase_metaObject(const VirtualQSaveFile* self) {

	return (QMetaObject*) self->QSaveFile::metaObject();
}

void* QSaveFile_virtualbase_metacast(VirtualQSaveFile* self, const char* param1) {

	return self->QSaveFile::qt_metacast(param1);
}

int QSaveFile_virtualbase_metacall(VirtualQSaveFile* self, int param1, int param2, void** param3) {

	return self->QSaveFile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSaveFile_virtualbase_fileName(const VirtualQSaveFile* self) {

	QString _ret = self->QSaveFile::fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSaveFile_virtualbase_open(VirtualQSaveFile* self, int flags) {

	return self->QSaveFile::open(static_cast<VirtualQSaveFile::OpenMode>(flags));
}

long long QSaveFile_virtualbase_writeData(VirtualQSaveFile* self, const char* data, long long len) {

	qint64 _ret = self->QSaveFile::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

bool QSaveFile_virtualbase_isSequential(const VirtualQSaveFile* self) {

	return self->QSaveFile::isSequential();
}

long long QSaveFile_virtualbase_pos(const VirtualQSaveFile* self) {

	qint64 _ret = self->QSaveFile::pos();
	return static_cast<long long>(_ret);
}

bool QSaveFile_virtualbase_seek(VirtualQSaveFile* self, long long offset) {

	return self->QSaveFile::seek(static_cast<qint64>(offset));
}

bool QSaveFile_virtualbase_atEnd(const VirtualQSaveFile* self) {

	return self->QSaveFile::atEnd();
}

long long QSaveFile_virtualbase_size(const VirtualQSaveFile* self) {

	qint64 _ret = self->QSaveFile::size();
	return static_cast<long long>(_ret);
}

bool QSaveFile_virtualbase_resize(VirtualQSaveFile* self, long long sz) {

	return self->QSaveFile::resize(static_cast<qint64>(sz));
}

int QSaveFile_virtualbase_permissions(const VirtualQSaveFile* self) {

	VirtualQSaveFile::Permissions _ret = self->QSaveFile::permissions();
	return static_cast<int>(_ret);
}

bool QSaveFile_virtualbase_setPermissions(VirtualQSaveFile* self, int permissionSpec) {

	return self->QSaveFile::setPermissions(static_cast<VirtualQSaveFile::Permissions>(permissionSpec));
}

long long QSaveFile_virtualbase_readData(VirtualQSaveFile* self, char* data, long long maxlen) {

	qint64 _ret = self->QSaveFile::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QSaveFile_virtualbase_readLineData(VirtualQSaveFile* self, char* data, long long maxlen) {

	qint64 _ret = self->QSaveFile::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

bool QSaveFile_virtualbase_reset(VirtualQSaveFile* self) {

	return self->QSaveFile::reset();
}

long long QSaveFile_virtualbase_bytesAvailable(const VirtualQSaveFile* self) {

	qint64 _ret = self->QSaveFile::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSaveFile_virtualbase_bytesToWrite(const VirtualQSaveFile* self) {

	qint64 _ret = self->QSaveFile::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QSaveFile_virtualbase_canReadLine(const VirtualQSaveFile* self) {

	return self->QSaveFile::canReadLine();
}

bool QSaveFile_virtualbase_waitForReadyRead(VirtualQSaveFile* self, int msecs) {

	return self->QSaveFile::waitForReadyRead(static_cast<int>(msecs));
}

bool QSaveFile_virtualbase_waitForBytesWritten(VirtualQSaveFile* self, int msecs) {

	return self->QSaveFile::waitForBytesWritten(static_cast<int>(msecs));
}

long long QSaveFile_virtualbase_skipData(VirtualQSaveFile* self, long long maxSize) {

	qint64 _ret = self->QSaveFile::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);
}

bool QSaveFile_virtualbase_event(VirtualQSaveFile* self, QEvent* event) {

	return self->QSaveFile::event(event);
}

bool QSaveFile_virtualbase_eventFilter(VirtualQSaveFile* self, QObject* watched, QEvent* event) {

	return self->QSaveFile::eventFilter(watched, event);
}

void QSaveFile_virtualbase_timerEvent(VirtualQSaveFile* self, QTimerEvent* event) {

	self->QSaveFile::timerEvent(event);
}

void QSaveFile_virtualbase_childEvent(VirtualQSaveFile* self, QChildEvent* event) {

	self->QSaveFile::childEvent(event);
}

void QSaveFile_virtualbase_customEvent(VirtualQSaveFile* self, QEvent* event) {

	self->QSaveFile::customEvent(event);
}

void QSaveFile_virtualbase_connectNotify(VirtualQSaveFile* self, QMetaMethod* signal) {

	self->QSaveFile::connectNotify(*signal);
}

void QSaveFile_virtualbase_disconnectNotify(VirtualQSaveFile* self, QMetaMethod* signal) {

	self->QSaveFile::disconnectNotify(*signal);
}

const QMetaObject* QSaveFile_staticMetaObject() { return &QSaveFile::staticMetaObject; }

const QSaveFile_VTable* QSaveFile_vtbl(const VirtualQSaveFile* self) { return self->vtbl; }
void* QSaveFile_vdata(const VirtualQSaveFile* self) { return self->vdata; }
void QSaveFile_setVdata(VirtualQSaveFile* self, void* vdata) { self->vdata = vdata; }

void QSaveFile_protectedbase_setOpenMode(VirtualQSaveFile* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQSaveFile::OpenMode>(openMode));
}

void QSaveFile_protectedbase_setErrorString(VirtualQSaveFile* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QSaveFile_protectedbase_sender(const VirtualQSaveFile* self) {
	return self->sender();
}

int QSaveFile_protectedbase_senderSignalIndex(const VirtualQSaveFile* self) {
	return self->senderSignalIndex();
}

int QSaveFile_protectedbase_receivers(const VirtualQSaveFile* self, const char* signal) {
	return self->receivers(signal);
}

bool QSaveFile_protectedbase_isSignalConnected(const VirtualQSaveFile* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSaveFile_delete(QSaveFile* self) {
	delete self;
}

