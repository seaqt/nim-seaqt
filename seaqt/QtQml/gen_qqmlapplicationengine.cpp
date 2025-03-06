#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QJSEngine>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qqmlapplicationengine.h>
#include "gen_qqmlapplicationengine.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlApplicationEngine final : public QQmlApplicationEngine {
	struct QQmlApplicationEngine_VTable* vtbl;
public:

	VirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl): QQmlApplicationEngine(), vtbl(vtbl) {};
	VirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QUrl& url): QQmlApplicationEngine(url), vtbl(vtbl) {};
	VirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QString& filePath): QQmlApplicationEngine(filePath), vtbl(vtbl) {};
	VirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, QObject* parent): QQmlApplicationEngine(parent), vtbl(vtbl) {};
	VirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QUrl& url, QObject* parent): QQmlApplicationEngine(url, parent), vtbl(vtbl) {};
	VirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QString& filePath, QObject* parent): QQmlApplicationEngine(filePath, parent), vtbl(vtbl) {};

	virtual ~VirtualQQmlApplicationEngine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlApplicationEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlApplicationEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlApplicationEngine_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlApplicationEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlApplicationEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQmlApplicationEngine::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlApplicationEngine_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlApplicationEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlApplicationEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlApplicationEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQmlApplicationEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlApplicationEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQmlApplicationEngine_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlApplicationEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQmlApplicationEngine_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlApplicationEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQmlApplicationEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlApplicationEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQmlApplicationEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlApplicationEngine_protectedbase_sender(const void* self);
	friend int QQmlApplicationEngine_protectedbase_senderSignalIndex(const void* self);
	friend int QQmlApplicationEngine_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQmlApplicationEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQmlApplicationEngine* QQmlApplicationEngine_new(struct QQmlApplicationEngine_VTable* vtbl) {
	return new VirtualQQmlApplicationEngine(vtbl);
}

QQmlApplicationEngine* QQmlApplicationEngine_new2(struct QQmlApplicationEngine_VTable* vtbl, QUrl* url) {
	return new VirtualQQmlApplicationEngine(vtbl, *url);
}

QQmlApplicationEngine* QQmlApplicationEngine_new3(struct QQmlApplicationEngine_VTable* vtbl, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	return new VirtualQQmlApplicationEngine(vtbl, filePath_QString);
}

QQmlApplicationEngine* QQmlApplicationEngine_new4(struct QQmlApplicationEngine_VTable* vtbl, QObject* parent) {
	return new VirtualQQmlApplicationEngine(vtbl, parent);
}

QQmlApplicationEngine* QQmlApplicationEngine_new5(struct QQmlApplicationEngine_VTable* vtbl, QUrl* url, QObject* parent) {
	return new VirtualQQmlApplicationEngine(vtbl, *url, parent);
}

QQmlApplicationEngine* QQmlApplicationEngine_new6(struct QQmlApplicationEngine_VTable* vtbl, struct miqt_string filePath, QObject* parent) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	return new VirtualQQmlApplicationEngine(vtbl, filePath_QString, parent);
}

void QQmlApplicationEngine_virtbase(QQmlApplicationEngine* src, QQmlEngine** outptr_QQmlEngine) {
	*outptr_QQmlEngine = static_cast<QQmlEngine*>(src);
}

QMetaObject* QQmlApplicationEngine_metaObject(const QQmlApplicationEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlApplicationEngine_metacast(QQmlApplicationEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlApplicationEngine_metacall(QQmlApplicationEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlApplicationEngine_tr(const char* s) {
	QString _ret = QQmlApplicationEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlApplicationEngine_trUtf8(const char* s) {
	QString _ret = QQmlApplicationEngine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects(QQmlApplicationEngine* self) {
	QList<QObject *> _ret = self->rootObjects();
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

struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects2(const QQmlApplicationEngine* self) {
	QList<QObject *> _ret = self->rootObjects();
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

void QQmlApplicationEngine_load(QQmlApplicationEngine* self, QUrl* url) {
	self->load(*url);
}

void QQmlApplicationEngine_loadWithFilePath(QQmlApplicationEngine* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->load(filePath_QString);
}

void QQmlApplicationEngine_setInitialProperties(QQmlApplicationEngine* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	self->setInitialProperties(initialProperties_QMap);
}

void QQmlApplicationEngine_loadData(QQmlApplicationEngine* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->loadData(data_QByteArray);
}

void QQmlApplicationEngine_objectCreated(QQmlApplicationEngine* self, QObject* object, QUrl* url) {
	self->objectCreated(object, *url);
}

void QQmlApplicationEngine_connect_objectCreated(QQmlApplicationEngine* self, intptr_t slot, void (*callback)(intptr_t, QObject*, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*, QUrl*);
		void operator()(QObject* object, const QUrl& url) {
			QObject* sigval1 = object;
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval2 = const_cast<QUrl*>(&url_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQQmlApplicationEngine::connect(self, static_cast<void (QQmlApplicationEngine::*)(QObject*, const QUrl&)>(&QQmlApplicationEngine::objectCreated), self, local_caller{slot, callback, release});
}

struct miqt_string QQmlApplicationEngine_tr2(const char* s, const char* c) {
	QString _ret = QQmlApplicationEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlApplicationEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlApplicationEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlApplicationEngine_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlApplicationEngine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlApplicationEngine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlApplicationEngine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlApplicationEngine_loadData2(QQmlApplicationEngine* self, struct miqt_string data, QUrl* url) {
	QByteArray data_QByteArray(data.data, data.len);
	self->loadData(data_QByteArray, *url);
}

QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::metaObject();

}

void* QQmlApplicationEngine_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::qt_metacast(param1);

}

int QQmlApplicationEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQmlApplicationEngine_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::event(param1);

}

bool QQmlApplicationEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::eventFilter(watched, event);

}

void QQmlApplicationEngine_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::timerEvent(event);

}

void QQmlApplicationEngine_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::childEvent(event);

}

void QQmlApplicationEngine_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::customEvent(event);

}

void QQmlApplicationEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::connectNotify(*signal);

}

void QQmlApplicationEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlApplicationEngine*)(self) )->QQmlApplicationEngine::disconnectNotify(*signal);

}

const QMetaObject* QQmlApplicationEngine_staticMetaObject() { return &QQmlApplicationEngine::staticMetaObject; }
QObject* QQmlApplicationEngine_protectedbase_sender(const void* self) {
	VirtualQQmlApplicationEngine* self_cast = static_cast<VirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->sender();

}

int QQmlApplicationEngine_protectedbase_senderSignalIndex(const void* self) {
	VirtualQQmlApplicationEngine* self_cast = static_cast<VirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQmlApplicationEngine_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQQmlApplicationEngine* self_cast = static_cast<VirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQmlApplicationEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQQmlApplicationEngine* self_cast = static_cast<VirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlApplicationEngine_delete(QQmlApplicationEngine* self) {
	delete self;
}

