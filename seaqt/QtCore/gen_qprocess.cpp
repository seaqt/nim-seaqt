#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QProcess>
#include <QProcessEnvironment>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qprocess.h>
#include "gen_qprocess.h"
QProcessEnvironment* QProcessEnvironment_new() {
	return new QProcessEnvironment();
}

QProcessEnvironment* QProcessEnvironment_new2(QProcessEnvironment* other) {
	return new QProcessEnvironment(*other);
}

void QProcessEnvironment_operatorAssign(QProcessEnvironment* self, QProcessEnvironment* other) {
	self->operator=(*other);
}

void QProcessEnvironment_swap(QProcessEnvironment* self, QProcessEnvironment* other) {
	self->swap(*other);
}

bool QProcessEnvironment_operatorEqual(const QProcessEnvironment* self, QProcessEnvironment* other) {
	return (*self == *other);
}

bool QProcessEnvironment_operatorNotEqual(const QProcessEnvironment* self, QProcessEnvironment* other) {
	return (*self != *other);
}

bool QProcessEnvironment_isEmpty(const QProcessEnvironment* self) {
	return self->isEmpty();
}

void QProcessEnvironment_clear(QProcessEnvironment* self) {
	self->clear();
}

bool QProcessEnvironment_contains(const QProcessEnvironment* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->contains(name_QString);
}

void QProcessEnvironment_insert(QProcessEnvironment* self, struct miqt_string name, struct miqt_string value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->insert(name_QString, value_QString);
}

void QProcessEnvironment_remove(QProcessEnvironment* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->remove(name_QString);
}

struct miqt_string QProcessEnvironment_value(const QProcessEnvironment* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->value(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QProcessEnvironment_toStringList(const QProcessEnvironment* self) {
	QStringList _ret = self->toStringList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QProcessEnvironment_keys(const QProcessEnvironment* self) {
	QStringList _ret = self->keys();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QProcessEnvironment_insertWithQProcessEnvironment(QProcessEnvironment* self, QProcessEnvironment* e) {
	self->insert(*e);
}

QProcessEnvironment* QProcessEnvironment_systemEnvironment() {
	return new QProcessEnvironment(QProcessEnvironment::systemEnvironment());
}

struct miqt_string QProcessEnvironment_value2(const QProcessEnvironment* self, struct miqt_string name, struct miqt_string defaultValue) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
	QString _ret = self->value(name_QString, defaultValue_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcessEnvironment_delete(QProcessEnvironment* self) {
	delete self;
}

class VirtualQProcess final : public QProcess {
	const QProcess_VTable* vtbl;
	void* vdata;
public:
	friend const QProcess_VTable* QProcess_vtbl(const VirtualQProcess* self);
	friend void* QProcess_vdata(const VirtualQProcess* self);
	friend void QProcess_setVdata(VirtualQProcess* self, void* vdata);

	VirtualQProcess(const QProcess_VTable* vtbl, void* vdata): QProcess(), vtbl(vtbl), vdata(vdata) {}
	VirtualQProcess(const QProcess_VTable* vtbl, void* vdata, QObject* parent): QProcess(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQProcess() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProcess::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QProcess_virtualbase_metaObject(const VirtualQProcess* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProcess::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QProcess_virtualbase_metacast(VirtualQProcess* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProcess::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProcess_virtualbase_metacall(VirtualQProcess* self, int param1, int param2, void** param3);

	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QProcess::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(this, sigval1);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_open(VirtualQProcess* self, int mode);

	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QProcess::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(this, sigval1);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_waitForReadyRead(VirtualQProcess* self, int msecs);

	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QProcess::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(this, sigval1);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_waitForBytesWritten(VirtualQProcess* self, int msecs);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QProcess::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_bytesAvailable(const VirtualQProcess* self);

	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QProcess::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_bytesToWrite(const VirtualQProcess* self);

	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QProcess::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(this);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_isSequential(const VirtualQProcess* self);

	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QProcess::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(this);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_canReadLine(const VirtualQProcess* self);

	virtual void close() override {
		if (vtbl->close == 0) {
			QProcess::close();
			return;
		}


		vtbl->close(this);

	}

	friend void QProcess_virtualbase_close(VirtualQProcess* self);

	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QProcess::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(this);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_atEnd(const VirtualQProcess* self);

	virtual void setupChildProcess() override {
		if (vtbl->setupChildProcess == 0) {
			QProcess::setupChildProcess();
			return;
		}


		vtbl->setupChildProcess(this);

	}

	friend void QProcess_virtualbase_setupChildProcess(VirtualQProcess* self);

	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QProcess::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_readData(VirtualQProcess* self, char* data, long long maxlen);

	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QProcess::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_writeData(VirtualQProcess* self, const char* data, long long len);

	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QProcess::pos();
		}


		long long callback_return_value = vtbl->pos(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_pos(const VirtualQProcess* self);

	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QProcess::size();
		}


		long long callback_return_value = vtbl->size(this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_size(const VirtualQProcess* self);

	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QProcess::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(this, sigval1);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_seek(VirtualQProcess* self, long long pos);

	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QProcess::reset();
		}


		bool callback_return_value = vtbl->reset(this);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_reset(VirtualQProcess* self);

	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QProcess::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QProcess_virtualbase_readLineData(VirtualQProcess* self, char* data, long long maxlen);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QProcess::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_event(VirtualQProcess* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QProcess::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QProcess_virtualbase_eventFilter(VirtualQProcess* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProcess::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QProcess_virtualbase_timerEvent(VirtualQProcess* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProcess::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QProcess_virtualbase_childEvent(VirtualQProcess* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProcess::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QProcess_virtualbase_customEvent(VirtualQProcess* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProcess::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QProcess_virtualbase_connectNotify(VirtualQProcess* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProcess::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QProcess_virtualbase_disconnectNotify(VirtualQProcess* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QProcess_protectedbase_setProcessState(VirtualQProcess* self, int state);
	friend void QProcess_protectedbase_setOpenMode(VirtualQProcess* self, int openMode);
	friend void QProcess_protectedbase_setErrorString(VirtualQProcess* self, struct miqt_string errorString);
	friend QObject* QProcess_protectedbase_sender(const VirtualQProcess* self);
	friend int QProcess_protectedbase_senderSignalIndex(const VirtualQProcess* self);
	friend int QProcess_protectedbase_receivers(const VirtualQProcess* self, const char* signal);
	friend bool QProcess_protectedbase_isSignalConnected(const VirtualQProcess* self, QMetaMethod* signal);
};

VirtualQProcess* QProcess_new(const QProcess_VTable* vtbl, void* vdata) {
	return new VirtualQProcess(vtbl, vdata);
}

VirtualQProcess* QProcess_new2(const QProcess_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQProcess(vtbl, vdata, parent);
}

void QProcess_virtbase(QProcess* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QProcess_metaObject(const QProcess* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProcess_metacast(QProcess* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProcess_metacall(QProcess* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProcess_tr(const char* s) {
	QString _ret = QProcess::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_trUtf8(const char* s) {
	QString _ret = QProcess::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_start(QProcess* self, struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	self->start(program_QString, arguments_QList);
}

void QProcess_startWithCommand(QProcess* self, struct miqt_string command) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	self->start(command_QString);
}

void QProcess_start2(QProcess* self) {
	self->start();
}

bool QProcess_startDetached(QProcess* self) {
	return self->startDetached();
}

bool QProcess_open(QProcess* self, int mode) {
	return self->open(static_cast<QIODevice::OpenMode>(mode));
}

struct miqt_string QProcess_program(const QProcess* self) {
	QString _ret = self->program();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_setProgram(QProcess* self, struct miqt_string program) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	self->setProgram(program_QString);
}

struct miqt_array /* of struct miqt_string */  QProcess_arguments(const QProcess* self) {
	QStringList _ret = self->arguments();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QProcess_setArguments(QProcess* self, struct miqt_array /* of struct miqt_string */  arguments) {
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	self->setArguments(arguments_QList);
}

int QProcess_readChannelMode(const QProcess* self) {
	QProcess::ProcessChannelMode _ret = self->readChannelMode();
	return static_cast<int>(_ret);
}

void QProcess_setReadChannelMode(QProcess* self, int mode) {
	self->setReadChannelMode(static_cast<QProcess::ProcessChannelMode>(mode));
}

int QProcess_processChannelMode(const QProcess* self) {
	QProcess::ProcessChannelMode _ret = self->processChannelMode();
	return static_cast<int>(_ret);
}

void QProcess_setProcessChannelMode(QProcess* self, int mode) {
	self->setProcessChannelMode(static_cast<QProcess::ProcessChannelMode>(mode));
}

int QProcess_inputChannelMode(const QProcess* self) {
	QProcess::InputChannelMode _ret = self->inputChannelMode();
	return static_cast<int>(_ret);
}

void QProcess_setInputChannelMode(QProcess* self, int mode) {
	self->setInputChannelMode(static_cast<QProcess::InputChannelMode>(mode));
}

int QProcess_readChannel(const QProcess* self) {
	QProcess::ProcessChannel _ret = self->readChannel();
	return static_cast<int>(_ret);
}

void QProcess_setReadChannel(QProcess* self, int channel) {
	self->setReadChannel(static_cast<QProcess::ProcessChannel>(channel));
}

void QProcess_closeReadChannel(QProcess* self, int channel) {
	self->closeReadChannel(static_cast<QProcess::ProcessChannel>(channel));
}

void QProcess_closeWriteChannel(QProcess* self) {
	self->closeWriteChannel();
}

void QProcess_setStandardInputFile(QProcess* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardInputFile(fileName_QString);
}

void QProcess_setStandardOutputFile(QProcess* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardOutputFile(fileName_QString);
}

void QProcess_setStandardErrorFile(QProcess* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardErrorFile(fileName_QString);
}

void QProcess_setStandardOutputProcess(QProcess* self, QProcess* destination) {
	self->setStandardOutputProcess(destination);
}

struct miqt_string QProcess_workingDirectory(const QProcess* self) {
	QString _ret = self->workingDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_setWorkingDirectory(QProcess* self, struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	self->setWorkingDirectory(dir_QString);
}

void QProcess_setEnvironment(QProcess* self, struct miqt_array /* of struct miqt_string */  environment) {
	QStringList environment_QList;
	environment_QList.reserve(environment.len);
	struct miqt_string* environment_arr = static_cast<struct miqt_string*>(environment.data);
	for(size_t i = 0; i < environment.len; ++i) {
		QString environment_arr_i_QString = QString::fromUtf8(environment_arr[i].data, environment_arr[i].len);
		environment_QList.push_back(environment_arr_i_QString);
	}
	self->setEnvironment(environment_QList);
}

struct miqt_array /* of struct miqt_string */  QProcess_environment(const QProcess* self) {
	QStringList _ret = self->environment();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QProcess_setProcessEnvironment(QProcess* self, QProcessEnvironment* environment) {
	self->setProcessEnvironment(*environment);
}

QProcessEnvironment* QProcess_processEnvironment(const QProcess* self) {
	return new QProcessEnvironment(self->processEnvironment());
}

int QProcess_error(const QProcess* self) {
	QProcess::ProcessError _ret = self->error();
	return static_cast<int>(_ret);
}

int QProcess_state(const QProcess* self) {
	QProcess::ProcessState _ret = self->state();
	return static_cast<int>(_ret);
}

long long QProcess_pid(const QProcess* self) {
#ifdef Q_OS_LINUX
	Q_PID _ret = self->pid();
	return static_cast<long long>(_ret);
#else
	long long _ret_invalidOS;
	return _ret_invalidOS;
#endif
}

long long QProcess_processId(const QProcess* self) {
	qint64 _ret = self->processId();
	return static_cast<long long>(_ret);
}

bool QProcess_waitForStarted(QProcess* self) {
	return self->waitForStarted();
}

bool QProcess_waitForReadyRead(QProcess* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QProcess_waitForBytesWritten(QProcess* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QProcess_waitForFinished(QProcess* self) {
	return self->waitForFinished();
}

struct miqt_string QProcess_readAllStandardOutput(QProcess* self) {
	QByteArray _qb = self->readAllStandardOutput();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_readAllStandardError(QProcess* self) {
	QByteArray _qb = self->readAllStandardError();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QProcess_exitCode(const QProcess* self) {
	return self->exitCode();
}

int QProcess_exitStatus(const QProcess* self) {
	QProcess::ExitStatus _ret = self->exitStatus();
	return static_cast<int>(_ret);
}

long long QProcess_bytesAvailable(const QProcess* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QProcess_bytesToWrite(const QProcess* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QProcess_isSequential(const QProcess* self) {
	return self->isSequential();
}

bool QProcess_canReadLine(const QProcess* self) {
	return self->canReadLine();
}

void QProcess_close(QProcess* self) {
	self->close();
}

bool QProcess_atEnd(const QProcess* self) {
	return self->atEnd();
}

int QProcess_execute(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	return QProcess::execute(program_QString, arguments_QList);
}

int QProcess_executeWithCommand(struct miqt_string command) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	return QProcess::execute(command_QString);
}

bool QProcess_startDetached2(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, struct miqt_string workingDirectory) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	return QProcess::startDetached(program_QString, arguments_QList, workingDirectory_QString);
}

bool QProcess_startDetached3(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	return QProcess::startDetached(program_QString, arguments_QList);
}

bool QProcess_startDetachedWithCommand(struct miqt_string command) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	return QProcess::startDetached(command_QString);
}

struct miqt_array /* of struct miqt_string */  QProcess_systemEnvironment() {
	QStringList _ret = QProcess::systemEnvironment();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QProcess_nullDevice() {
	QString _ret = QProcess::nullDevice();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_terminate(QProcess* self) {
	self->terminate();
}

void QProcess_kill(QProcess* self) {
	self->kill();
}

void QProcess_finished(QProcess* self, int exitCode) {
	self->finished(static_cast<int>(exitCode));
}

void QProcess_connect_finished(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int exitCode) {
			int sigval1 = exitCode;
			callback(slot, sigval1);
		}
	};
	VirtualQProcess::connect(self, static_cast<void (QProcess::*)(int)>(&QProcess::finished), self, local_caller{slot, callback, release});
}

void QProcess_finished2(QProcess* self, int exitCode, int exitStatus) {
	self->finished(static_cast<int>(exitCode), static_cast<QProcess::ExitStatus>(exitStatus));
}

void QProcess_connect_finished2(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int exitCode, QProcess::ExitStatus exitStatus) {
			int sigval1 = exitCode;
			QProcess::ExitStatus exitStatus_ret = exitStatus;
			int sigval2 = static_cast<int>(exitStatus_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQProcess::connect(self, static_cast<void (QProcess::*)(int, QProcess::ExitStatus)>(&QProcess::finished), self, local_caller{slot, callback, release});
}

void QProcess_errorWithError(QProcess* self, int error) {
	self->error(static_cast<QProcess::ProcessError>(error));
}

void QProcess_connect_errorWithError(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QProcess::ProcessError error) {
			QProcess::ProcessError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQProcess::connect(self, static_cast<void (QProcess::*)(QProcess::ProcessError)>(&QProcess::error), self, local_caller{slot, callback, release});
}

void QProcess_errorOccurred(QProcess* self, int error) {
	self->errorOccurred(static_cast<QProcess::ProcessError>(error));
}

void QProcess_connect_errorOccurred(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QProcess::ProcessError error) {
			QProcess::ProcessError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQProcess::connect(self, static_cast<void (QProcess::*)(QProcess::ProcessError)>(&QProcess::errorOccurred), self, local_caller{slot, callback, release});
}

struct miqt_string QProcess_tr2(const char* s, const char* c) {
	QString _ret = QProcess::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_tr3(const char* s, const char* c, int n) {
	QString _ret = QProcess::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_trUtf82(const char* s, const char* c) {
	QString _ret = QProcess::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QProcess::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_start3(QProcess* self, struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, int mode) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	self->start(program_QString, arguments_QList, static_cast<QIODevice::OpenMode>(mode));
}

void QProcess_start22(QProcess* self, struct miqt_string command, int mode) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	self->start(command_QString, static_cast<QIODevice::OpenMode>(mode));
}

void QProcess_start1(QProcess* self, int mode) {
	self->start(static_cast<QIODevice::OpenMode>(mode));
}

bool QProcess_startDetached1(QProcess* self, long long* pid) {
	return self->startDetached(static_cast<qint64*>(pid));
}

void QProcess_setStandardOutputFile2(QProcess* self, struct miqt_string fileName, int mode) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardOutputFile(fileName_QString, static_cast<QIODevice::OpenMode>(mode));
}

void QProcess_setStandardErrorFile2(QProcess* self, struct miqt_string fileName, int mode) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardErrorFile(fileName_QString, static_cast<QIODevice::OpenMode>(mode));
}

bool QProcess_waitForStarted1(QProcess* self, int msecs) {
	return self->waitForStarted(static_cast<int>(msecs));
}

bool QProcess_waitForFinished1(QProcess* self, int msecs) {
	return self->waitForFinished(static_cast<int>(msecs));
}

bool QProcess_startDetached4(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, struct miqt_string workingDirectory, long long* pid) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	return QProcess::startDetached(program_QString, arguments_QList, workingDirectory_QString, static_cast<qint64*>(pid));
}

QMetaObject* QProcess_virtualbase_metaObject(const VirtualQProcess* self) {

	return (QMetaObject*) self->QProcess::metaObject();
}

void* QProcess_virtualbase_metacast(VirtualQProcess* self, const char* param1) {

	return self->QProcess::qt_metacast(param1);
}

int QProcess_virtualbase_metacall(VirtualQProcess* self, int param1, int param2, void** param3) {

	return self->QProcess::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QProcess_virtualbase_open(VirtualQProcess* self, int mode) {

	return self->QProcess::open(static_cast<VirtualQProcess::OpenMode>(mode));
}

bool QProcess_virtualbase_waitForReadyRead(VirtualQProcess* self, int msecs) {

	return self->QProcess::waitForReadyRead(static_cast<int>(msecs));
}

bool QProcess_virtualbase_waitForBytesWritten(VirtualQProcess* self, int msecs) {

	return self->QProcess::waitForBytesWritten(static_cast<int>(msecs));
}

long long QProcess_virtualbase_bytesAvailable(const VirtualQProcess* self) {

	qint64 _ret = self->QProcess::bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QProcess_virtualbase_bytesToWrite(const VirtualQProcess* self) {

	qint64 _ret = self->QProcess::bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QProcess_virtualbase_isSequential(const VirtualQProcess* self) {

	return self->QProcess::isSequential();
}

bool QProcess_virtualbase_canReadLine(const VirtualQProcess* self) {

	return self->QProcess::canReadLine();
}

void QProcess_virtualbase_close(VirtualQProcess* self) {

	self->QProcess::close();
}

bool QProcess_virtualbase_atEnd(const VirtualQProcess* self) {

	return self->QProcess::atEnd();
}

void QProcess_virtualbase_setupChildProcess(VirtualQProcess* self) {

	self->QProcess::setupChildProcess();
}

long long QProcess_virtualbase_readData(VirtualQProcess* self, char* data, long long maxlen) {

	qint64 _ret = self->QProcess::readData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QProcess_virtualbase_writeData(VirtualQProcess* self, const char* data, long long len) {

	qint64 _ret = self->QProcess::writeData(data, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

long long QProcess_virtualbase_pos(const VirtualQProcess* self) {

	qint64 _ret = self->QProcess::pos();
	return static_cast<long long>(_ret);
}

long long QProcess_virtualbase_size(const VirtualQProcess* self) {

	qint64 _ret = self->QProcess::size();
	return static_cast<long long>(_ret);
}

bool QProcess_virtualbase_seek(VirtualQProcess* self, long long pos) {

	return self->QProcess::seek(static_cast<qint64>(pos));
}

bool QProcess_virtualbase_reset(VirtualQProcess* self) {

	return self->QProcess::reset();
}

long long QProcess_virtualbase_readLineData(VirtualQProcess* self, char* data, long long maxlen) {

	qint64 _ret = self->QProcess::readLineData(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

bool QProcess_virtualbase_event(VirtualQProcess* self, QEvent* event) {

	return self->QProcess::event(event);
}

bool QProcess_virtualbase_eventFilter(VirtualQProcess* self, QObject* watched, QEvent* event) {

	return self->QProcess::eventFilter(watched, event);
}

void QProcess_virtualbase_timerEvent(VirtualQProcess* self, QTimerEvent* event) {

	self->QProcess::timerEvent(event);
}

void QProcess_virtualbase_childEvent(VirtualQProcess* self, QChildEvent* event) {

	self->QProcess::childEvent(event);
}

void QProcess_virtualbase_customEvent(VirtualQProcess* self, QEvent* event) {

	self->QProcess::customEvent(event);
}

void QProcess_virtualbase_connectNotify(VirtualQProcess* self, QMetaMethod* signal) {

	self->QProcess::connectNotify(*signal);
}

void QProcess_virtualbase_disconnectNotify(VirtualQProcess* self, QMetaMethod* signal) {

	self->QProcess::disconnectNotify(*signal);
}

const QMetaObject* QProcess_staticMetaObject() { return &QProcess::staticMetaObject; }

const QProcess_VTable* QProcess_vtbl(const VirtualQProcess* self) { return self->vtbl; }
void* QProcess_vdata(const VirtualQProcess* self) { return self->vdata; }
void QProcess_setVdata(VirtualQProcess* self, void* vdata) { self->vdata = vdata; }

void QProcess_protectedbase_setProcessState(VirtualQProcess* self, int state) {
	self->setProcessState(static_cast<VirtualQProcess::ProcessState>(state));
}

void QProcess_protectedbase_setOpenMode(VirtualQProcess* self, int openMode) {
	self->setOpenMode(static_cast<VirtualQProcess::OpenMode>(openMode));
}

void QProcess_protectedbase_setErrorString(VirtualQProcess* self, struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->setErrorString(errorString_QString);
}

QObject* QProcess_protectedbase_sender(const VirtualQProcess* self) {
	return self->sender();
}

int QProcess_protectedbase_senderSignalIndex(const VirtualQProcess* self) {
	return self->senderSignalIndex();
}

int QProcess_protectedbase_receivers(const VirtualQProcess* self, const char* signal) {
	return self->receivers(signal);
}

bool QProcess_protectedbase_isSignalConnected(const VirtualQProcess* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QProcess_delete(QProcess* self) {
	delete self;
}

