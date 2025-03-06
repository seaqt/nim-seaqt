#include <QChildEvent>
#include <QEvent>
#include <QJSEngine>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkAccessManager>
#include <QObject>
#include <QQmlAbstractUrlInterceptor>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQmlError>
#include <QQmlImageProviderBase>
#include <QQmlIncubationController>
#include <QQmlNetworkAccessManagerFactory>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qqmlengine.h>
#include "gen_qqmlengine.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

int QQmlImageProviderBase_imageType(const QQmlImageProviderBase* self) {
	QQmlImageProviderBase::ImageType _ret = self->imageType();
	return static_cast<int>(_ret);
}

int QQmlImageProviderBase_flags(const QQmlImageProviderBase* self) {
	QQmlImageProviderBase::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QQmlImageProviderBase_delete(QQmlImageProviderBase* self) {
	delete self;
}

class VirtualQQmlEngine final : public QQmlEngine {
	struct QQmlEngine_VTable* vtbl;
public:

	VirtualQQmlEngine(struct QQmlEngine_VTable* vtbl): QQmlEngine(), vtbl(vtbl) {};
	VirtualQQmlEngine(struct QQmlEngine_VTable* vtbl, QObject* p): QQmlEngine(p), vtbl(vtbl) {};

	virtual ~VirtualQQmlEngine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlEngine_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlEngine_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQmlEngine::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlEngine_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQmlEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQmlEngine_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQmlEngine_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQmlEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQmlEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlEngine_protectedbase_sender(const void* self);
	friend int QQmlEngine_protectedbase_senderSignalIndex(const void* self);
	friend int QQmlEngine_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQmlEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQmlEngine* QQmlEngine_new(struct QQmlEngine_VTable* vtbl) {
	return new VirtualQQmlEngine(vtbl);
}

QQmlEngine* QQmlEngine_new2(struct QQmlEngine_VTable* vtbl, QObject* p) {
	return new VirtualQQmlEngine(vtbl, p);
}

void QQmlEngine_virtbase(QQmlEngine* src, QJSEngine** outptr_QJSEngine) {
	*outptr_QJSEngine = static_cast<QJSEngine*>(src);
}

QMetaObject* QQmlEngine_metaObject(const QQmlEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlEngine_metacast(QQmlEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlEngine_metacall(QQmlEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlEngine_tr(const char* s) {
	QString _ret = QQmlEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngine_trUtf8(const char* s) {
	QString _ret = QQmlEngine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQmlContext* QQmlEngine_rootContext(const QQmlEngine* self) {
	return self->rootContext();
}

void QQmlEngine_clearComponentCache(QQmlEngine* self) {
	self->clearComponentCache();
}

void QQmlEngine_trimComponentCache(QQmlEngine* self) {
	self->trimComponentCache();
}

struct miqt_array /* of struct miqt_string */  QQmlEngine_importPathList(const QQmlEngine* self) {
	QStringList _ret = self->importPathList();
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

void QQmlEngine_setImportPathList(QQmlEngine* self, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->setImportPathList(paths_QList);
}

void QQmlEngine_addImportPath(QQmlEngine* self, struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	self->addImportPath(dir_QString);
}

struct miqt_array /* of struct miqt_string */  QQmlEngine_pluginPathList(const QQmlEngine* self) {
	QStringList _ret = self->pluginPathList();
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

void QQmlEngine_setPluginPathList(QQmlEngine* self, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->setPluginPathList(paths_QList);
}

void QQmlEngine_addPluginPath(QQmlEngine* self, struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	self->addPluginPath(dir_QString);
}

bool QQmlEngine_addNamedBundle(QQmlEngine* self, struct miqt_string name, struct miqt_string fileName) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->addNamedBundle(name_QString, fileName_QString);
}

bool QQmlEngine_importPlugin(QQmlEngine* self, struct miqt_string filePath, struct miqt_string uri, struct miqt_array /* of QQmlError* */  errors) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	QString uri_QString = QString::fromUtf8(uri.data, uri.len);
	QList<QQmlError> errors_QList;
	errors_QList.reserve(errors.len);
	QQmlError** errors_arr = static_cast<QQmlError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	return self->importPlugin(filePath_QString, uri_QString, &errors_QList);
}

void QQmlEngine_setNetworkAccessManagerFactory(QQmlEngine* self, QQmlNetworkAccessManagerFactory* networkAccessManagerFactory) {
	self->setNetworkAccessManagerFactory(networkAccessManagerFactory);
}

QQmlNetworkAccessManagerFactory* QQmlEngine_networkAccessManagerFactory(const QQmlEngine* self) {
	return self->networkAccessManagerFactory();
}

QNetworkAccessManager* QQmlEngine_networkAccessManager(const QQmlEngine* self) {
	return self->networkAccessManager();
}

void QQmlEngine_setUrlInterceptor(QQmlEngine* self, QQmlAbstractUrlInterceptor* urlInterceptor) {
	self->setUrlInterceptor(urlInterceptor);
}

QQmlAbstractUrlInterceptor* QQmlEngine_urlInterceptor(const QQmlEngine* self) {
	return self->urlInterceptor();
}

void QQmlEngine_addImageProvider(QQmlEngine* self, struct miqt_string id, QQmlImageProviderBase* param2) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	self->addImageProvider(id_QString, param2);
}

QQmlImageProviderBase* QQmlEngine_imageProvider(const QQmlEngine* self, struct miqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->imageProvider(id_QString);
}

void QQmlEngine_removeImageProvider(QQmlEngine* self, struct miqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	self->removeImageProvider(id_QString);
}

void QQmlEngine_setIncubationController(QQmlEngine* self, QQmlIncubationController* incubationController) {
	self->setIncubationController(incubationController);
}

QQmlIncubationController* QQmlEngine_incubationController(const QQmlEngine* self) {
	return self->incubationController();
}

void QQmlEngine_setOfflineStoragePath(QQmlEngine* self, struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	self->setOfflineStoragePath(dir_QString);
}

struct miqt_string QQmlEngine_offlineStoragePath(const QQmlEngine* self) {
	QString _ret = self->offlineStoragePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngine_offlineStorageDatabaseFilePath(const QQmlEngine* self, struct miqt_string databaseName) {
	QString databaseName_QString = QString::fromUtf8(databaseName.data, databaseName.len);
	QString _ret = self->offlineStorageDatabaseFilePath(databaseName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQmlEngine_baseUrl(const QQmlEngine* self) {
	return new QUrl(self->baseUrl());
}

void QQmlEngine_setBaseUrl(QQmlEngine* self, QUrl* baseUrl) {
	self->setBaseUrl(*baseUrl);
}

bool QQmlEngine_outputWarningsToStandardError(const QQmlEngine* self) {
	return self->outputWarningsToStandardError();
}

void QQmlEngine_setOutputWarningsToStandardError(QQmlEngine* self, bool outputWarningsToStandardError) {
	self->setOutputWarningsToStandardError(outputWarningsToStandardError);
}

void QQmlEngine_retranslate(QQmlEngine* self) {
	self->retranslate();
}

QQmlContext* QQmlEngine_contextForObject(QObject* param1) {
	return QQmlEngine::contextForObject(param1);
}

void QQmlEngine_setContextForObject(QObject* param1, QQmlContext* param2) {
	QQmlEngine::setContextForObject(param1, param2);
}

void QQmlEngine_setObjectOwnership(QObject* param1, int param2) {
	QQmlEngine::setObjectOwnership(param1, static_cast<QQmlEngine::ObjectOwnership>(param2));
}

int QQmlEngine_objectOwnership(QObject* param1) {
	QQmlEngine::ObjectOwnership _ret = QQmlEngine::objectOwnership(param1);
	return static_cast<int>(_ret);
}

void QQmlEngine_quit(QQmlEngine* self) {
	self->quit();
}

void QQmlEngine_connect_quit(QQmlEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQmlEngine::connect(self, static_cast<void (QQmlEngine::*)()>(&QQmlEngine::quit), self, local_caller{slot, callback, release});
}

void QQmlEngine_exit(QQmlEngine* self, int retCode) {
	self->exit(static_cast<int>(retCode));
}

void QQmlEngine_connect_exit(QQmlEngine* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int retCode) {
			int sigval1 = retCode;
			callback(slot, sigval1);
		}
	};
	VirtualQQmlEngine::connect(self, static_cast<void (QQmlEngine::*)(int)>(&QQmlEngine::exit), self, local_caller{slot, callback, release});
}

void QQmlEngine_warnings(QQmlEngine* self, struct miqt_array /* of QQmlError* */  warnings) {
	QList<QQmlError> warnings_QList;
	warnings_QList.reserve(warnings.len);
	QQmlError** warnings_arr = static_cast<QQmlError**>(warnings.data);
	for(size_t i = 0; i < warnings.len; ++i) {
		warnings_QList.push_back(*(warnings_arr[i]));
	}
	self->warnings(warnings_QList);
}

void QQmlEngine_connect_warnings(QQmlEngine* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QQmlError* */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QQmlError* */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QQmlError* */ );
		void operator()(const QList<QQmlError>& warnings) {
			const QList<QQmlError>& warnings_ret = warnings;
			// Convert QList<> from C++ memory to manually-managed C memory
			QQmlError** warnings_arr = static_cast<QQmlError**>(malloc(sizeof(QQmlError*) * warnings_ret.length()));
			for (size_t i = 0, e = warnings_ret.length(); i < e; ++i) {
				warnings_arr[i] = new QQmlError(warnings_ret[i]);
			}
			struct miqt_array warnings_out;
			warnings_out.len = warnings_ret.length();
			warnings_out.data = static_cast<void*>(warnings_arr);
			struct miqt_array /* of QQmlError* */  sigval1 = warnings_out;
			callback(slot, sigval1);
		}
	};
	VirtualQQmlEngine::connect(self, static_cast<void (QQmlEngine::*)(const QList<QQmlError>&)>(&QQmlEngine::warnings), self, local_caller{slot, callback, release});
}

struct miqt_string QQmlEngine_tr2(const char* s, const char* c) {
	QString _ret = QQmlEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngine_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlEngine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlEngine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQmlEngine_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQmlEngine*)(self) )->QQmlEngine::metaObject();

}

void* QQmlEngine_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQmlEngine*)(self) )->QQmlEngine::qt_metacast(param1);

}

int QQmlEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQmlEngine*)(self) )->QQmlEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQmlEngine_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQQmlEngine*)(self) )->QQmlEngine::event(param1);

}

bool QQmlEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQmlEngine*)(self) )->QQmlEngine::eventFilter(watched, event);

}

void QQmlEngine_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQmlEngine*)(self) )->QQmlEngine::timerEvent(event);

}

void QQmlEngine_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQmlEngine*)(self) )->QQmlEngine::childEvent(event);

}

void QQmlEngine_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQmlEngine*)(self) )->QQmlEngine::customEvent(event);

}

void QQmlEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlEngine*)(self) )->QQmlEngine::connectNotify(*signal);

}

void QQmlEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlEngine*)(self) )->QQmlEngine::disconnectNotify(*signal);

}

const QMetaObject* QQmlEngine_staticMetaObject() { return &QQmlEngine::staticMetaObject; }
QObject* QQmlEngine_protectedbase_sender(const void* self) {
	VirtualQQmlEngine* self_cast = static_cast<VirtualQQmlEngine*>( (QQmlEngine*)(self) );
	
	return self_cast->sender();

}

int QQmlEngine_protectedbase_senderSignalIndex(const void* self) {
	VirtualQQmlEngine* self_cast = static_cast<VirtualQQmlEngine*>( (QQmlEngine*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQmlEngine_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQQmlEngine* self_cast = static_cast<VirtualQQmlEngine*>( (QQmlEngine*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQmlEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQQmlEngine* self_cast = static_cast<VirtualQQmlEngine*>( (QQmlEngine*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlEngine_delete(QQmlEngine* self) {
	delete self;
}

