#include <QChildEvent>
#include <QEvent>
#include <QFileSystemWatcher>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qfilesystemwatcher.h>
#include "gen_qfilesystemwatcher.h"
class VirtualQFileSystemWatcher final : public QFileSystemWatcher {
	const QFileSystemWatcher_VTable* vtbl;
	void* vdata;
public:
	friend const QFileSystemWatcher_VTable* QFileSystemWatcher_vtbl(const VirtualQFileSystemWatcher* self);
	friend void* QFileSystemWatcher_vdata(const VirtualQFileSystemWatcher* self);
	friend void QFileSystemWatcher_setVdata(VirtualQFileSystemWatcher* self, void* vdata);

	VirtualQFileSystemWatcher(const QFileSystemWatcher_VTable* vtbl, void* vdata): QFileSystemWatcher(), vtbl(vtbl), vdata(vdata) {}
	VirtualQFileSystemWatcher(const QFileSystemWatcher_VTable* vtbl, void* vdata, const QStringList& paths): QFileSystemWatcher(paths), vtbl(vtbl), vdata(vdata) {}
	VirtualQFileSystemWatcher(const QFileSystemWatcher_VTable* vtbl, void* vdata, QObject* parent): QFileSystemWatcher(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQFileSystemWatcher(const QFileSystemWatcher_VTable* vtbl, void* vdata, const QStringList& paths, QObject* parent): QFileSystemWatcher(paths, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFileSystemWatcher() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileSystemWatcher::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFileSystemWatcher_virtualbase_metaObject(const VirtualQFileSystemWatcher* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileSystemWatcher::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFileSystemWatcher_virtualbase_metacast(VirtualQFileSystemWatcher* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileSystemWatcher::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileSystemWatcher_virtualbase_metacall(VirtualQFileSystemWatcher* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileSystemWatcher::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSystemWatcher_virtualbase_event(VirtualQFileSystemWatcher* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFileSystemWatcher::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFileSystemWatcher_virtualbase_eventFilter(VirtualQFileSystemWatcher* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileSystemWatcher::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFileSystemWatcher_virtualbase_timerEvent(VirtualQFileSystemWatcher* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileSystemWatcher::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFileSystemWatcher_virtualbase_childEvent(VirtualQFileSystemWatcher* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileSystemWatcher::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFileSystemWatcher_virtualbase_customEvent(VirtualQFileSystemWatcher* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileSystemWatcher::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFileSystemWatcher_virtualbase_connectNotify(VirtualQFileSystemWatcher* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileSystemWatcher::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFileSystemWatcher_virtualbase_disconnectNotify(VirtualQFileSystemWatcher* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QFileSystemWatcher_protectedbase_sender(const VirtualQFileSystemWatcher* self);
	friend int QFileSystemWatcher_protectedbase_senderSignalIndex(const VirtualQFileSystemWatcher* self);
	friend int QFileSystemWatcher_protectedbase_receivers(const VirtualQFileSystemWatcher* self, const char* signal);
	friend bool QFileSystemWatcher_protectedbase_isSignalConnected(const VirtualQFileSystemWatcher* self, QMetaMethod* signal);
};

VirtualQFileSystemWatcher* QFileSystemWatcher_new(const QFileSystemWatcher_VTable* vtbl, void* vdata) {
	return new VirtualQFileSystemWatcher(vtbl, vdata);
}

VirtualQFileSystemWatcher* QFileSystemWatcher_new2(const QFileSystemWatcher_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	return new VirtualQFileSystemWatcher(vtbl, vdata, paths_QList);
}

VirtualQFileSystemWatcher* QFileSystemWatcher_new3(const QFileSystemWatcher_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQFileSystemWatcher(vtbl, vdata, parent);
}

VirtualQFileSystemWatcher* QFileSystemWatcher_new4(const QFileSystemWatcher_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  paths, QObject* parent) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	return new VirtualQFileSystemWatcher(vtbl, vdata, paths_QList, parent);
}

void QFileSystemWatcher_virtbase(QFileSystemWatcher* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QFileSystemWatcher_metaObject(const QFileSystemWatcher* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFileSystemWatcher_metacast(QFileSystemWatcher* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFileSystemWatcher_metacall(QFileSystemWatcher* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFileSystemWatcher_tr(const char* s) {
	QString _ret = QFileSystemWatcher::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFileSystemWatcher_addPath(QFileSystemWatcher* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return self->addPath(file_QString);
}

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_addPaths(QFileSystemWatcher* self, struct miqt_array /* of struct miqt_string */  files) {
	QStringList files_QList;
	files_QList.reserve(files.len);
	struct miqt_string* files_arr = static_cast<struct miqt_string*>(files.data);
	for(size_t i = 0; i < files.len; ++i) {
		QString files_arr_i_QString = QString::fromUtf8(files_arr[i].data, files_arr[i].len);
		files_QList.push_back(files_arr_i_QString);
	}
	QStringList _ret = self->addPaths(files_QList);
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

bool QFileSystemWatcher_removePath(QFileSystemWatcher* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return self->removePath(file_QString);
}

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_removePaths(QFileSystemWatcher* self, struct miqt_array /* of struct miqt_string */  files) {
	QStringList files_QList;
	files_QList.reserve(files.len);
	struct miqt_string* files_arr = static_cast<struct miqt_string*>(files.data);
	for(size_t i = 0; i < files.len; ++i) {
		QString files_arr_i_QString = QString::fromUtf8(files_arr[i].data, files_arr[i].len);
		files_QList.push_back(files_arr_i_QString);
	}
	QStringList _ret = self->removePaths(files_QList);
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

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_files(const QFileSystemWatcher* self) {
	QStringList _ret = self->files();
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

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_directories(const QFileSystemWatcher* self) {
	QStringList _ret = self->directories();
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

struct miqt_string QFileSystemWatcher_tr2(const char* s, const char* c) {
	QString _ret = QFileSystemWatcher::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSystemWatcher_tr3(const char* s, const char* c, int n) {
	QString _ret = QFileSystemWatcher::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFileSystemWatcher_virtualbase_metaObject(const VirtualQFileSystemWatcher* self) {

	return (QMetaObject*) self->QFileSystemWatcher::metaObject();
}

void* QFileSystemWatcher_virtualbase_metacast(VirtualQFileSystemWatcher* self, const char* param1) {

	return self->QFileSystemWatcher::qt_metacast(param1);
}

int QFileSystemWatcher_virtualbase_metacall(VirtualQFileSystemWatcher* self, int param1, int param2, void** param3) {

	return self->QFileSystemWatcher::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QFileSystemWatcher_virtualbase_event(VirtualQFileSystemWatcher* self, QEvent* event) {

	return self->QFileSystemWatcher::event(event);
}

bool QFileSystemWatcher_virtualbase_eventFilter(VirtualQFileSystemWatcher* self, QObject* watched, QEvent* event) {

	return self->QFileSystemWatcher::eventFilter(watched, event);
}

void QFileSystemWatcher_virtualbase_timerEvent(VirtualQFileSystemWatcher* self, QTimerEvent* event) {

	self->QFileSystemWatcher::timerEvent(event);
}

void QFileSystemWatcher_virtualbase_childEvent(VirtualQFileSystemWatcher* self, QChildEvent* event) {

	self->QFileSystemWatcher::childEvent(event);
}

void QFileSystemWatcher_virtualbase_customEvent(VirtualQFileSystemWatcher* self, QEvent* event) {

	self->QFileSystemWatcher::customEvent(event);
}

void QFileSystemWatcher_virtualbase_connectNotify(VirtualQFileSystemWatcher* self, QMetaMethod* signal) {

	self->QFileSystemWatcher::connectNotify(*signal);
}

void QFileSystemWatcher_virtualbase_disconnectNotify(VirtualQFileSystemWatcher* self, QMetaMethod* signal) {

	self->QFileSystemWatcher::disconnectNotify(*signal);
}

const QMetaObject* QFileSystemWatcher_staticMetaObject() { return &QFileSystemWatcher::staticMetaObject; }

const QFileSystemWatcher_VTable* QFileSystemWatcher_vtbl(const VirtualQFileSystemWatcher* self) { return self->vtbl; }
void* QFileSystemWatcher_vdata(const VirtualQFileSystemWatcher* self) { return self->vdata; }
void QFileSystemWatcher_setVdata(VirtualQFileSystemWatcher* self, void* vdata) { self->vdata = vdata; }

QObject* QFileSystemWatcher_protectedbase_sender(const VirtualQFileSystemWatcher* self) {
	return self->sender();
}

int QFileSystemWatcher_protectedbase_senderSignalIndex(const VirtualQFileSystemWatcher* self) {
	return self->senderSignalIndex();
}

int QFileSystemWatcher_protectedbase_receivers(const VirtualQFileSystemWatcher* self, const char* signal) {
	return self->receivers(signal);
}

bool QFileSystemWatcher_protectedbase_isSignalConnected(const VirtualQFileSystemWatcher* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFileSystemWatcher_delete(QFileSystemWatcher* self) {
	delete self;
}

