#include <QChildEvent>
#include <QEvent>
#include <QJsonObject>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPluginLoader>
#include <QStaticPlugin>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpluginloader.h>
#include "gen_qpluginloader.h"
class VirtualQPluginLoader final : public QPluginLoader {
	const QPluginLoader_VTable* vtbl;
	void* vdata;
public:
	friend const QPluginLoader_VTable* QPluginLoader_vtbl(const VirtualQPluginLoader* self);
	friend void* QPluginLoader_vdata(const VirtualQPluginLoader* self);
	friend void QPluginLoader_setVdata(VirtualQPluginLoader* self, void* vdata);

	VirtualQPluginLoader(const QPluginLoader_VTable* vtbl, void* vdata): QPluginLoader(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPluginLoader(const QPluginLoader_VTable* vtbl, void* vdata, const QString& fileName): QPluginLoader(fileName), vtbl(vtbl), vdata(vdata) {}
	VirtualQPluginLoader(const QPluginLoader_VTable* vtbl, void* vdata, QObject* parent): QPluginLoader(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPluginLoader(const QPluginLoader_VTable* vtbl, void* vdata, const QString& fileName, QObject* parent): QPluginLoader(fileName, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPluginLoader() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPluginLoader::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPluginLoader_virtualbase_metaObject(const VirtualQPluginLoader* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPluginLoader::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPluginLoader_virtualbase_metacast(VirtualQPluginLoader* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPluginLoader::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPluginLoader_virtualbase_metacall(VirtualQPluginLoader* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPluginLoader::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPluginLoader_virtualbase_event(VirtualQPluginLoader* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPluginLoader::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPluginLoader_virtualbase_eventFilter(VirtualQPluginLoader* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPluginLoader::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPluginLoader_virtualbase_timerEvent(VirtualQPluginLoader* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPluginLoader::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPluginLoader_virtualbase_childEvent(VirtualQPluginLoader* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPluginLoader::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPluginLoader_virtualbase_customEvent(VirtualQPluginLoader* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPluginLoader::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPluginLoader_virtualbase_connectNotify(VirtualQPluginLoader* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPluginLoader::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPluginLoader_virtualbase_disconnectNotify(VirtualQPluginLoader* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPluginLoader_protectedbase_sender(const VirtualQPluginLoader* self);
	friend int QPluginLoader_protectedbase_senderSignalIndex(const VirtualQPluginLoader* self);
	friend int QPluginLoader_protectedbase_receivers(const VirtualQPluginLoader* self, const char* signal);
	friend bool QPluginLoader_protectedbase_isSignalConnected(const VirtualQPluginLoader* self, QMetaMethod* signal);
};

VirtualQPluginLoader* QPluginLoader_new(const QPluginLoader_VTable* vtbl, void* vdata) {
	return new VirtualQPluginLoader(vtbl, vdata);
}

VirtualQPluginLoader* QPluginLoader_new2(const QPluginLoader_VTable* vtbl, void* vdata, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQPluginLoader(vtbl, vdata, fileName_QString);
}

VirtualQPluginLoader* QPluginLoader_new3(const QPluginLoader_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQPluginLoader(vtbl, vdata, parent);
}

VirtualQPluginLoader* QPluginLoader_new4(const QPluginLoader_VTable* vtbl, void* vdata, struct miqt_string fileName, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQPluginLoader(vtbl, vdata, fileName_QString, parent);
}

void QPluginLoader_virtbase(QPluginLoader* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPluginLoader_metaObject(const QPluginLoader* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPluginLoader_metacast(QPluginLoader* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPluginLoader_metacall(QPluginLoader* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPluginLoader_tr(const char* s) {
	QString _ret = QPluginLoader::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPluginLoader_trUtf8(const char* s) {
	QString _ret = QPluginLoader::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QPluginLoader_instance(QPluginLoader* self) {
	return self->instance();
}

QJsonObject* QPluginLoader_metaData(const QPluginLoader* self) {
	return new QJsonObject(self->metaData());
}

struct miqt_array /* of QObject* */  QPluginLoader_staticInstances() {
	QObjectList _ret = QPluginLoader::staticInstances();
	// Convert QList<> from C++ memory to manually-managed C memory
	QObject** _arr = static_cast<QObject**>(malloc(sizeof(QObject*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QStaticPlugin* */  QPluginLoader_staticPlugins() {
	QVector<QStaticPlugin> _ret = QPluginLoader::staticPlugins();
	// Convert QList<> from C++ memory to manually-managed C memory
	QStaticPlugin** _arr = static_cast<QStaticPlugin**>(malloc(sizeof(QStaticPlugin*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QStaticPlugin(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QPluginLoader_load(QPluginLoader* self) {
	return self->load();
}

bool QPluginLoader_unload(QPluginLoader* self) {
	return self->unload();
}

bool QPluginLoader_isLoaded(const QPluginLoader* self) {
	return self->isLoaded();
}

void QPluginLoader_setFileName(QPluginLoader* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileName(fileName_QString);
}

struct miqt_string QPluginLoader_fileName(const QPluginLoader* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPluginLoader_errorString(const QPluginLoader* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPluginLoader_setLoadHints(QPluginLoader* self, int loadHints) {
	self->setLoadHints(static_cast<QLibrary::LoadHints>(loadHints));
}

int QPluginLoader_loadHints(const QPluginLoader* self) {
	QLibrary::LoadHints _ret = self->loadHints();
	return static_cast<int>(_ret);
}

struct miqt_string QPluginLoader_tr2(const char* s, const char* c) {
	QString _ret = QPluginLoader::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPluginLoader_tr3(const char* s, const char* c, int n) {
	QString _ret = QPluginLoader::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPluginLoader_trUtf82(const char* s, const char* c) {
	QString _ret = QPluginLoader::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPluginLoader_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPluginLoader::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPluginLoader_virtualbase_metaObject(const VirtualQPluginLoader* self) {

	return (QMetaObject*) self->QPluginLoader::metaObject();
}

void* QPluginLoader_virtualbase_metacast(VirtualQPluginLoader* self, const char* param1) {

	return self->QPluginLoader::qt_metacast(param1);
}

int QPluginLoader_virtualbase_metacall(VirtualQPluginLoader* self, int param1, int param2, void** param3) {

	return self->QPluginLoader::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPluginLoader_virtualbase_event(VirtualQPluginLoader* self, QEvent* event) {

	return self->QPluginLoader::event(event);
}

bool QPluginLoader_virtualbase_eventFilter(VirtualQPluginLoader* self, QObject* watched, QEvent* event) {

	return self->QPluginLoader::eventFilter(watched, event);
}

void QPluginLoader_virtualbase_timerEvent(VirtualQPluginLoader* self, QTimerEvent* event) {

	self->QPluginLoader::timerEvent(event);
}

void QPluginLoader_virtualbase_childEvent(VirtualQPluginLoader* self, QChildEvent* event) {

	self->QPluginLoader::childEvent(event);
}

void QPluginLoader_virtualbase_customEvent(VirtualQPluginLoader* self, QEvent* event) {

	self->QPluginLoader::customEvent(event);
}

void QPluginLoader_virtualbase_connectNotify(VirtualQPluginLoader* self, QMetaMethod* signal) {

	self->QPluginLoader::connectNotify(*signal);
}

void QPluginLoader_virtualbase_disconnectNotify(VirtualQPluginLoader* self, QMetaMethod* signal) {

	self->QPluginLoader::disconnectNotify(*signal);
}

const QMetaObject* QPluginLoader_staticMetaObject() { return &QPluginLoader::staticMetaObject; }

const QPluginLoader_VTable* QPluginLoader_vtbl(const VirtualQPluginLoader* self) { return self->vtbl; }
void* QPluginLoader_vdata(const VirtualQPluginLoader* self) { return self->vdata; }
void QPluginLoader_setVdata(VirtualQPluginLoader* self, void* vdata) { self->vdata = vdata; }

QObject* QPluginLoader_protectedbase_sender(const VirtualQPluginLoader* self) {
	return self->sender();
}

int QPluginLoader_protectedbase_senderSignalIndex(const VirtualQPluginLoader* self) {
	return self->senderSignalIndex();
}

int QPluginLoader_protectedbase_receivers(const VirtualQPluginLoader* self, const char* signal) {
	return self->receivers(signal);
}

bool QPluginLoader_protectedbase_isSignalConnected(const VirtualQPluginLoader* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPluginLoader_delete(QPluginLoader* self) {
	delete self;
}

