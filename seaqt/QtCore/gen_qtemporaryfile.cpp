#include <QChildEvent>
#include <QEvent>
#include <QFile>
#include <QFileDevice>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTemporaryFile>
#include <QTimerEvent>
#include <qtemporaryfile.h>
#include "gen_qtemporaryfile.h"
class VirtualQTemporaryFile final : public QTemporaryFile {
	const QTemporaryFile_VTable* vtbl;
	void* vdata;
public:
	friend const QTemporaryFile_VTable* QTemporaryFile_vtbl(const VirtualQTemporaryFile* self);
	friend void* QTemporaryFile_vdata(const VirtualQTemporaryFile* self);
	friend void QTemporaryFile_setVdata(VirtualQTemporaryFile* self, void* vdata);

	VirtualQTemporaryFile(const QTemporaryFile_VTable* vtbl, void* vdata): QTemporaryFile(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTemporaryFile(const QTemporaryFile_VTable* vtbl, void* vdata, const QString& templateName): QTemporaryFile(templateName), vtbl(vtbl), vdata(vdata) {}
	VirtualQTemporaryFile(const QTemporaryFile_VTable* vtbl, void* vdata, QObject* parent): QTemporaryFile(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTemporaryFile(const QTemporaryFile_VTable* vtbl, void* vdata, const QString& templateName, QObject* parent): QTemporaryFile(templateName, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTemporaryFile() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTemporaryFile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTemporaryFile_virtualbase_metaObject(const VirtualQTemporaryFile* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTemporaryFile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTemporaryFile_virtualbase_metacast(VirtualQTemporaryFile* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTemporaryFile::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTemporaryFile_virtualbase_metacall(VirtualQTemporaryFile* self, int param1, int param2, void** param3);

	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QTemporaryFile::fileName();
		}


		struct miqt_string callback_return_value = vtbl->fileName(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QTemporaryFile_virtualbase_fileName(const VirtualQTemporaryFile* self);

	virtual bool open(QIODevice::OpenMode flags) override {
		if (vtbl->openWithFlags == 0) {
			return QTemporaryFile::open(flags);
		}

		QIODevice::OpenMode flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		bool callback_return_value = vtbl->openWithFlags(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_openWithFlags(VirtualQTemporaryFile* self, int flags);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QTemporaryFile::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_size(const VirtualQTemporaryFile* self);

	virtual bool resize(qint64 sz) override {
		if (vtbl->resize == 0) {
			return QTemporaryFile::resize(sz);
		}

		qint64 sz_ret = sz;
		long long sigval1 = static_cast<long long>(sz_ret);

		bool callback_return_value = vtbl->resize(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_resize(VirtualQTemporaryFile* self, long long sz);

	virtual QFileDevice::Permissions permissions() const override {
		if (vtbl->permissions == 0) {
			return QTemporaryFile::permissions();
		}


		int callback_return_value = vtbl->permissions(this);

		return static_cast<QFileDevice::Permissions>(callback_return_value);
	}

	friend int QTemporaryFile_virtualbase_permissions(const VirtualQTemporaryFile* self);

	virtual bool setPermissions(QFileDevice::Permissions permissionSpec) override {
		if (vtbl->setPermissions == 0) {
			return QTemporaryFile::setPermissions(permissionSpec);
		}

		QFileDevice::Permissions permissionSpec_ret = permissionSpec;
		int sigval1 = static_cast<int>(permissionSpec_ret);

		bool callback_return_value = vtbl->setPermissions(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_setPermissions(VirtualQTemporaryFile* self, int permissionSpec);

	virtual void close() override {
		if (vtbl->close == 0) {
			QTemporaryFile::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QTemporaryFile_virtualbase_close(VirtualQTemporaryFile* self);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QTemporaryFile::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_isSequential(const VirtualQTemporaryFile* self);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QTemporaryFile::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_pos(const VirtualQTemporaryFile* self);

	virtual bool seek(qint64 offset) override {
		if (vtbl->seek == 0) {
			return QTemporaryFile::seek(offset);
		}

		qint64 offset_ret = offset;
		long long sigval1 = static_cast<long long>(offset_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_seek(VirtualQTemporaryFile* self, long long offset);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QTemporaryFile::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_atEnd(const VirtualQTemporaryFile* self);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QTemporaryFile::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_readData(VirtualQTemporaryFile* self, char* data, long long maxlen);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QTemporaryFile::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_writeData(VirtualQTemporaryFile* self, const char* data, long long len);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QTemporaryFile::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_readLineData(VirtualQTemporaryFile* self, char* data, long long maxlen);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QTemporaryFile::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_reset(VirtualQTemporaryFile* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QTemporaryFile::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_bytesAvailable(const VirtualQTemporaryFile* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QTemporaryFile::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_bytesToWrite(const VirtualQTemporaryFile* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QTemporaryFile::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_canReadLine(const VirtualQTemporaryFile* self);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QTemporaryFile::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_waitForReadyRead(VirtualQTemporaryFile* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QTemporaryFile::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_waitForBytesWritten(VirtualQTemporaryFile* self, int msecs);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTemporaryFile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_event(VirtualQTemporaryFile* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTemporaryFile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_eventFilter(VirtualQTemporaryFile* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTemporaryFile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_timerEvent(VirtualQTemporaryFile* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTemporaryFile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_childEvent(VirtualQTemporaryFile* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTemporaryFile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_customEvent(VirtualQTemporaryFile* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTemporaryFile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_connectNotify(VirtualQTemporaryFile* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTemporaryFile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_disconnectNotify(VirtualQTemporaryFile* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTemporaryFile_protectedbase_setOpenMode(VirtualQTemporaryFile* self, int openMode);
	friend void QTemporaryFile_protectedbase_setErrorString(VirtualQTemporaryFile* self, struct miqt_string errorString);
	friend QObject* QTemporaryFile_protectedbase_sender(const VirtualQTemporaryFile* self);
	friend int QTemporaryFile_protectedbase_senderSignalIndex(const VirtualQTemporaryFile* self);
	friend int QTemporaryFile_protectedbase_receivers(const VirtualQTemporaryFile* self, const char* signal);
	friend bool QTemporaryFile_protectedbase_isSignalConnected(const VirtualQTemporaryFile* self, QMetaMethod* signal);
};

VirtualQTemporaryFile* QTemporaryFile_new(const QTemporaryFile_VTable* vtbl, void* vdata) {
	return new VirtualQTemporaryFile(vtbl, vdata);
}

VirtualQTemporaryFile* QTemporaryFile_new2(const QTemporaryFile_VTable* vtbl, void* vdata, struct miqt_string templateName) {
	QString templateName_QString = QString::fromUtf8(templateName.data, templateName.len);
	return new VirtualQTemporaryFile(vtbl, vdata, templateName_QString);
}

VirtualQTemporaryFile* QTemporaryFile_new3(const QTemporaryFile_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQTemporaryFile(vtbl, vdata, parent);
}

VirtualQTemporaryFile* QTemporaryFile_new4(const QTemporaryFile_VTable* vtbl, void* vdata, struct miqt_string templateName, QObject* parent) {
	QString templateName_QString = QString::fromUtf8(templateName.data, templateName.len);
	return new VirtualQTemporaryFile(vtbl, vdata, templateName_QString, parent);
}

void QTemporaryFile_virtbase(QTemporaryFile* src, QFile** outptr_QFile) {
	*outptr_QFile = static_cast<QFile*>(src);
}

QMetaObject* QTemporaryFile_metaObject(const QTemporaryFile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTemporaryFile_metacast(QTemporaryFile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTemporaryFile_metacall(QTemporaryFile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTemporaryFile_tr(const char* s) {
	QString _ret = QTemporaryFile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_trUtf8(const char* s) {
	QString _ret = QTemporaryFile::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTemporaryFile_autoRemove(const QTemporaryFile* self) {
	return self->autoRemove();
}

void QTemporaryFile_setAutoRemove(QTemporaryFile* self, bool b) {
	self->setAutoRemove(b);
}

bool QTemporaryFile_open(QTemporaryFile* self) {
	return self->open();
}

struct miqt_string QTemporaryFile_fileName(const QTemporaryFile* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_fileTemplate(const QTemporaryFile* self) {
	QString _ret = self->fileTemplate();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTemporaryFile_setFileTemplate(QTemporaryFile* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setFileTemplate(name_QString);
}

bool QTemporaryFile_rename(QTemporaryFile* self, struct miqt_string newName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return self->rename(newName_QString);
}

QTemporaryFile* QTemporaryFile_createLocalFile(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QTemporaryFile::createLocalFile(fileName_QString);
}

QTemporaryFile* QTemporaryFile_createLocalFileWithFile(QFile* file) {
	return QTemporaryFile::createLocalFile(*file);
}

QTemporaryFile* QTemporaryFile_createNativeFile(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QTemporaryFile::createNativeFile(fileName_QString);
}

QTemporaryFile* QTemporaryFile_createNativeFileWithFile(QFile* file) {
	return QTemporaryFile::createNativeFile(*file);
}

struct miqt_string QTemporaryFile_tr2(const char* s, const char* c) {
	QString _ret = QTemporaryFile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_tr3(const char* s, const char* c, int n) {
	QString _ret = QTemporaryFile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_trUtf82(const char* s, const char* c) {
	QString _ret = QTemporaryFile::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTemporaryFile::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTemporaryFile_virtualbase_metaObject(const VirtualQTemporaryFile* self) {

	return (QMetaObject*) self->QTemporaryFile::metaObject();
}

void* QTemporaryFile_virtualbase_metacast(VirtualQTemporaryFile* self, const char* param1) {

	return self->QTemporaryFile::qt_metacast(param1);
}

int QTemporaryFile_virtualbase_metacall(VirtualQTemporaryFile* self, int param1, int param2, void** param3) {

	return self->QTemporaryFile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTemporaryFile_virtualbase_fileName(const VirtualQTemporaryFile* self) {

	QString _ret = self->QTemporaryFile::fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTemporaryFile_virtualbase_openWithFlags(VirtualQTemporaryFile* self, int flags) {

	return self->QTemporaryFile::open(static_cast<VirtualQTemporaryFile::OpenMode>(flags));
}

long long QTemporaryFile_virtualbase_size(const VirtualQTemporaryFile* self) {

	qint64 _ret = self->QTemporaryFile::size();
	return static_cast<long long>(_ret);
}

bool QTemporaryFile_virtualbase_resize(VirtualQTemporaryFile* self, long long sz) {

	return self->QTemporaryFile::resize(static_cast<qint64>(sz));
}

int QTemporaryFile_virtualbase_permissions(const VirtualQTemporaryFile* self) {

	VirtualQTemporaryFile::Permissions _ret = self->QTemporaryFile::permissions();
	return static_cast<int>(_ret);
}

bool QTemporaryFile_virtualbase_setPermissions(VirtualQTemporaryFile* self, int permissionSpec) {

	return self->QTemporaryFile::setPermissions(static_cast<VirtualQTemporaryFile::Permissions>(permissionSpec));
}

void QTemporaryFile_virtualbase_close(VirtualQTemporaryFile* self) {

	self->QTemporaryFile::close();
}

bool QTemporaryFile_virtualbase_isSequential(const VirtualQTemporaryFile* self) {

	return self->QTemporaryFile::isSequential();
}

long long QTemporaryFile_virtualbase_pos(const VirtualQTemporaryFile* self) {

	qint64 _ret = self->QTemporaryFile::pos();
	return static_cast<long long>(_ret);
}

bool QTemporaryFile_virtualbase_seek(VirtualQTemporaryFile* self, long long offset) {

	return self->QTemporaryFile::seek(static_cast<qint64>(offset));
}

bool QTemporaryFile_virtualbase_atEnd(const VirtualQTemporaryFile* self) {

	return self->QTemporaryFile::atEnd();
}

long long QTemporaryFile_virtualbase_readData(VirtualQTemporaryFile* self, char* data, long long maxlen) {

	qint64 _ret = self->QTemporaryFile::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QTemporaryFile_virtualbase_writeData(VirtualQTemporaryFile* self, const char* data, long long len) {

	qint64 _ret = self->QTemporaryFile::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

long long QTemporaryFile_virtualbase_readLineData(VirtualQTemporaryFile* self, char* data, long long maxlen) {

	qint64 _ret = self->QTemporaryFile::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

bool QTemporaryFile_virtualbase_reset(VirtualQTemporaryFile* self) {

	return self->QTemporaryFile::reset();
}

long long QTemporaryFile_virtualbase_bytesAvailable(const VirtualQTemporaryFile* self) {

	qint64 _ret = self->QTemporaryFile::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QTemporaryFile_virtualbase_bytesToWrite(const VirtualQTemporaryFile* self) {

	qint64 _ret = self->QTemporaryFile::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QTemporaryFile_virtualbase_canReadLine(const VirtualQTemporaryFile* self) {

	return self->QTemporaryFile::canReadLine();
}

bool QTemporaryFile_virtualbase_waitForReadyRead(VirtualQTemporaryFile* self, int msecs) {

	return self->QTemporaryFile::waitForReadyRead(static_cast<int>(msecs));
}

bool QTemporaryFile_virtualbase_waitForBytesWritten(VirtualQTemporaryFile* self, int msecs) {

	return self->QTemporaryFile::waitForBytesWritten(static_cast<int>(msecs));
}

bool QTemporaryFile_virtualbase_event(VirtualQTemporaryFile* self, QEvent* event) {

	return self->QTemporaryFile::event(event);
}

bool QTemporaryFile_virtualbase_eventFilter(VirtualQTemporaryFile* self, QObject* watched, QEvent* event) {

	return self->QTemporaryFile::eventFilter(watched, event);
}

void QTemporaryFile_virtualbase_timerEvent(VirtualQTemporaryFile* self, QTimerEvent* event) {

	self->QTemporaryFile::timerEvent(event);
}

void QTemporaryFile_virtualbase_childEvent(VirtualQTemporaryFile* self, QChildEvent* event) {

	self->QTemporaryFile::childEvent(event);
}

void QTemporaryFile_virtualbase_customEvent(VirtualQTemporaryFile* self, QEvent* event) {

	self->QTemporaryFile::customEvent(event);
}

void QTemporaryFile_virtualbase_connectNotify(VirtualQTemporaryFile* self, QMetaMethod* signal) {

	self->QTemporaryFile::connectNotify(*signal);
}

void QTemporaryFile_virtualbase_disconnectNotify(VirtualQTemporaryFile* self, QMetaMethod* signal) {

	self->QTemporaryFile::disconnectNotify(*signal);
}

const QMetaObject* QTemporaryFile_staticMetaObject() { return &QTemporaryFile::staticMetaObject; }

const QTemporaryFile_VTable* QTemporaryFile_vtbl(const VirtualQTemporaryFile* self) { return self->vtbl; }
void* QTemporaryFile_vdata(const VirtualQTemporaryFile* self) { return self->vdata; }
void QTemporaryFile_setVdata(VirtualQTemporaryFile* self, void* vdata) { self->vdata = vdata; }

void QTemporaryFile_protectedbase_setOpenMode(VirtualQTemporaryFile* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQTemporaryFile::OpenMode>(openMode));
}

void QTemporaryFile_protectedbase_setErrorString(VirtualQTemporaryFile* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QTemporaryFile_protectedbase_sender(const VirtualQTemporaryFile* self) {
	return self->sender();
}

int QTemporaryFile_protectedbase_senderSignalIndex(const VirtualQTemporaryFile* self) {
	return self->senderSignalIndex();
}

int QTemporaryFile_protectedbase_receivers(const VirtualQTemporaryFile* self, const char* signal) {
	return self->receivers(signal);
}

bool QTemporaryFile_protectedbase_isSignalConnected(const VirtualQTemporaryFile* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTemporaryFile_delete(QTemporaryFile* self) {
	delete self;
}

