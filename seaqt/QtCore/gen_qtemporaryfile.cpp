#include <QChildEvent>
#include <QEvent>
#include <QFile>
#include <QFileDevice>
#include <QIODevice>
#include <QIODeviceBase>
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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTemporaryFile final : public QTemporaryFile {
	struct QTemporaryFile_VTable* vtbl;
public:

	VirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl): QTemporaryFile(), vtbl(vtbl) {};
	VirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl, const QString& templateName): QTemporaryFile(templateName), vtbl(vtbl) {};
	VirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl, QObject* parent): QTemporaryFile(parent), vtbl(vtbl) {};
	VirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl, const QString& templateName, QObject* parent): QTemporaryFile(templateName, parent), vtbl(vtbl) {};

	virtual ~VirtualQTemporaryFile() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTemporaryFile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTemporaryFile_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTemporaryFile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTemporaryFile_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTemporaryFile::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTemporaryFile_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QTemporaryFile::fileName();
		}


		struct miqt_string callback_return_value = vtbl->fileName(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QTemporaryFile_virtualbase_fileName(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode flags) override {
		if (vtbl->openWithFlags == 0) {
			return QTemporaryFile::open(flags);
		}

		QIODeviceBase::OpenMode flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		bool callback_return_value = vtbl->openWithFlags(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_openWithFlags(void* self, int flags);

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QTemporaryFile::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool resize(qint64 sz) override {
		if (vtbl->resize == 0) {
			return QTemporaryFile::resize(sz);
		}

		qint64 sz_ret = sz;
		long long sigval1 = static_cast<long long>(sz_ret);

		bool callback_return_value = vtbl->resize(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_resize(void* self, long long sz);

	// Subclass to allow providing a Go implementation
	virtual QFileDevice::Permissions permissions() const override {
		if (vtbl->permissions == 0) {
			return QTemporaryFile::permissions();
		}


		int callback_return_value = vtbl->permissions(vtbl, this);

		return static_cast<QFileDevice::Permissions>(callback_return_value);
	}

	friend int QTemporaryFile_virtualbase_permissions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setPermissions(QFileDevice::Permissions permissionSpec) override {
		if (vtbl->setPermissions == 0) {
			return QTemporaryFile::setPermissions(permissionSpec);
		}

		QFileDevice::Permissions permissionSpec_ret = permissionSpec;
		int sigval1 = static_cast<int>(permissionSpec_ret);

		bool callback_return_value = vtbl->setPermissions(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_setPermissions(void* self, int permissionSpec);

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QTemporaryFile::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	friend void QTemporaryFile_virtualbase_close(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QTemporaryFile::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_isSequential(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QTemporaryFile::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_pos(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 offset) override {
		if (vtbl->seek == 0) {
			return QTemporaryFile::seek(offset);
		}

		qint64 offset_ret = offset;
		long long sigval1 = static_cast<long long>(offset_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_seek(void* self, long long offset);

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QTemporaryFile::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_atEnd(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QTemporaryFile::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_readData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QTemporaryFile::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_writeData(void* self, const char* data, long long len);

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QTemporaryFile::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_readLineData(void* self, char* data, long long maxlen);

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QTemporaryFile::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QTemporaryFile::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_bytesAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QTemporaryFile::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_bytesToWrite(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QTemporaryFile::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_canReadLine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QTemporaryFile::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_waitForReadyRead(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QTemporaryFile::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_waitForBytesWritten(void* self, int msecs);

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QTemporaryFile::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QTemporaryFile_virtualbase_skipData(void* self, long long maxSize);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTemporaryFile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTemporaryFile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTemporaryFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTemporaryFile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTemporaryFile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTemporaryFile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTemporaryFile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTemporaryFile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTemporaryFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTemporaryFile_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
	friend void QTemporaryFile_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
	friend QObject* QTemporaryFile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTemporaryFile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTemporaryFile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTemporaryFile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTemporaryFile* QTemporaryFile_new(struct QTemporaryFile_VTable* vtbl) {
	return new VirtualQTemporaryFile(vtbl);
}

QTemporaryFile* QTemporaryFile_new2(struct QTemporaryFile_VTable* vtbl, struct miqt_string templateName) {
	QString templateName_QString = QString::fromUtf8(templateName.data, templateName.len);
	return new VirtualQTemporaryFile(vtbl, templateName_QString);
}

QTemporaryFile* QTemporaryFile_new3(struct QTemporaryFile_VTable* vtbl, QObject* parent) {
	return new VirtualQTemporaryFile(vtbl, parent);
}

QTemporaryFile* QTemporaryFile_new4(struct QTemporaryFile_VTable* vtbl, struct miqt_string templateName, QObject* parent) {
	QString templateName_QString = QString::fromUtf8(templateName.data, templateName.len);
	return new VirtualQTemporaryFile(vtbl, templateName_QString, parent);
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

QMetaObject* QTemporaryFile_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::metaObject();

}

void* QTemporaryFile_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::qt_metacast(param1);

}

int QTemporaryFile_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

struct miqt_string QTemporaryFile_virtualbase_fileName(const void* self) {

	QString _ret = ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

bool QTemporaryFile_virtualbase_openWithFlags(void* self, int flags) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::open(static_cast<VirtualQTemporaryFile::OpenMode>(flags));

}

long long QTemporaryFile_virtualbase_size(const void* self) {

	qint64 _ret = ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::size();
	return static_cast<long long>(_ret);

}

bool QTemporaryFile_virtualbase_resize(void* self, long long sz) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::resize(static_cast<qint64>(sz));

}

int QTemporaryFile_virtualbase_permissions(const void* self) {

	VirtualQTemporaryFile::Permissions _ret = ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::permissions();
	return static_cast<int>(_ret);

}

bool QTemporaryFile_virtualbase_setPermissions(void* self, int permissionSpec) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::setPermissions(static_cast<VirtualQTemporaryFile::Permissions>(permissionSpec));

}

void QTemporaryFile_virtualbase_close(void* self) {

	( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::close();

}

bool QTemporaryFile_virtualbase_isSequential(const void* self) {

	return ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::isSequential();

}

long long QTemporaryFile_virtualbase_pos(const void* self) {

	qint64 _ret = ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::pos();
	return static_cast<long long>(_ret);

}

bool QTemporaryFile_virtualbase_seek(void* self, long long offset) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::seek(static_cast<qint64>(offset));

}

bool QTemporaryFile_virtualbase_atEnd(const void* self) {

	return ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::atEnd();

}

long long QTemporaryFile_virtualbase_readData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

long long QTemporaryFile_virtualbase_writeData(void* self, const char* data, long long len) {

	qint64 _ret = ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);

}

long long QTemporaryFile_virtualbase_readLineData(void* self, char* data, long long maxlen) {

	qint64 _ret = ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);

}

bool QTemporaryFile_virtualbase_reset(void* self) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::reset();

}

long long QTemporaryFile_virtualbase_bytesAvailable(const void* self) {

	qint64 _ret = ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::bytesAvailable();
	return static_cast<long long>(_ret);

}

long long QTemporaryFile_virtualbase_bytesToWrite(const void* self) {

	qint64 _ret = ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::bytesToWrite();
	return static_cast<long long>(_ret);

}

bool QTemporaryFile_virtualbase_canReadLine(const void* self) {

	return ( (const VirtualQTemporaryFile*)(self) )->QTemporaryFile::canReadLine();

}

bool QTemporaryFile_virtualbase_waitForReadyRead(void* self, int msecs) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::waitForReadyRead(static_cast<int>(msecs));

}

bool QTemporaryFile_virtualbase_waitForBytesWritten(void* self, int msecs) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::waitForBytesWritten(static_cast<int>(msecs));

}

long long QTemporaryFile_virtualbase_skipData(void* self, long long maxSize) {

	qint64 _ret = ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::skipData(static_cast<qint64>(maxSize));
	return static_cast<long long>(_ret);

}

bool QTemporaryFile_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::event(event);

}

bool QTemporaryFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::eventFilter(watched, event);

}

void QTemporaryFile_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::timerEvent(event);

}

void QTemporaryFile_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::childEvent(event);

}

void QTemporaryFile_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::customEvent(event);

}

void QTemporaryFile_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::connectNotify(*signal);

}

void QTemporaryFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTemporaryFile*)(self) )->QTemporaryFile::disconnectNotify(*signal);

}

const QMetaObject* QTemporaryFile_staticMetaObject() { return &QTemporaryFile::staticMetaObject; }
void QTemporaryFile_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode) {
	VirtualQTemporaryFile* self_cast = dynamic_cast<VirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOpenMode(static_cast<VirtualQTemporaryFile::OpenMode>(openMode));

}

void QTemporaryFile_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString) {
	VirtualQTemporaryFile* self_cast = dynamic_cast<VirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QTemporaryFile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTemporaryFile* self_cast = dynamic_cast<VirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTemporaryFile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTemporaryFile* self_cast = dynamic_cast<VirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTemporaryFile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTemporaryFile* self_cast = dynamic_cast<VirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTemporaryFile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTemporaryFile* self_cast = dynamic_cast<VirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTemporaryFile_delete(QTemporaryFile* self) {
	delete self;
}

