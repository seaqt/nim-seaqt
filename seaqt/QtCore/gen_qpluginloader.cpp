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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPluginLoader final : public QPluginLoader {
	struct QPluginLoader_VTable* vtbl;
public:

	VirtualQPluginLoader(struct QPluginLoader_VTable* vtbl): QPluginLoader(), vtbl(vtbl) {};
	VirtualQPluginLoader(struct QPluginLoader_VTable* vtbl, const QString& fileName): QPluginLoader(fileName), vtbl(vtbl) {};
	VirtualQPluginLoader(struct QPluginLoader_VTable* vtbl, QObject* parent): QPluginLoader(parent), vtbl(vtbl) {};
	VirtualQPluginLoader(struct QPluginLoader_VTable* vtbl, const QString& fileName, QObject* parent): QPluginLoader(fileName, parent), vtbl(vtbl) {};

	virtual ~VirtualQPluginLoader() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPluginLoader::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPluginLoader_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPluginLoader::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPluginLoader_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPluginLoader::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPluginLoader_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPluginLoader::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPluginLoader_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPluginLoader::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPluginLoader_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPluginLoader::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPluginLoader_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPluginLoader::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPluginLoader_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPluginLoader::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPluginLoader_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPluginLoader::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPluginLoader_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPluginLoader::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPluginLoader_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPluginLoader_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPluginLoader_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPluginLoader_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPluginLoader_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPluginLoader* QPluginLoader_new(struct QPluginLoader_VTable* vtbl) {
	return new VirtualQPluginLoader(vtbl);
}

QPluginLoader* QPluginLoader_new2(struct QPluginLoader_VTable* vtbl, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQPluginLoader(vtbl, fileName_QString);
}

QPluginLoader* QPluginLoader_new3(struct QPluginLoader_VTable* vtbl, QObject* parent) {
	return new VirtualQPluginLoader(vtbl, parent);
}

QPluginLoader* QPluginLoader_new4(struct QPluginLoader_VTable* vtbl, struct miqt_string fileName, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQPluginLoader(vtbl, fileName_QString, parent);
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
	QList<QStaticPlugin> _ret = QPluginLoader::staticPlugins();
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

QMetaObject* QPluginLoader_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPluginLoader*)(self) )->QPluginLoader::metaObject();

}

void* QPluginLoader_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPluginLoader*)(self) )->QPluginLoader::qt_metacast(param1);

}

int QPluginLoader_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPluginLoader*)(self) )->QPluginLoader::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QPluginLoader_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPluginLoader*)(self) )->QPluginLoader::event(event);

}

bool QPluginLoader_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQPluginLoader*)(self) )->QPluginLoader::eventFilter(watched, event);

}

void QPluginLoader_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPluginLoader*)(self) )->QPluginLoader::timerEvent(event);

}

void QPluginLoader_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPluginLoader*)(self) )->QPluginLoader::childEvent(event);

}

void QPluginLoader_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPluginLoader*)(self) )->QPluginLoader::customEvent(event);

}

void QPluginLoader_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPluginLoader*)(self) )->QPluginLoader::connectNotify(*signal);

}

void QPluginLoader_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPluginLoader*)(self) )->QPluginLoader::disconnectNotify(*signal);

}

const QMetaObject* QPluginLoader_staticMetaObject() { return &QPluginLoader::staticMetaObject; }
QObject* QPluginLoader_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPluginLoader* self_cast = dynamic_cast<VirtualQPluginLoader*>( (QPluginLoader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPluginLoader_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPluginLoader* self_cast = dynamic_cast<VirtualQPluginLoader*>( (QPluginLoader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPluginLoader_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQPluginLoader* self_cast = dynamic_cast<VirtualQPluginLoader*>( (QPluginLoader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPluginLoader_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQPluginLoader* self_cast = dynamic_cast<VirtualQPluginLoader*>( (QPluginLoader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPluginLoader_delete(QPluginLoader* self) {
	delete self;
}

