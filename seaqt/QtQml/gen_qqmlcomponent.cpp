#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlComponent>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQmlError>
#include <QQmlIncubator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qqmlcomponent.h>
#include "gen_qqmlcomponent.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlComponent final : public QQmlComponent {
	struct QQmlComponent_VTable* vtbl;
public:

	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl): QQmlComponent(), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1): QQmlComponent(param1), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QString& fileName): QQmlComponent(param1, fileName), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QString& fileName, QQmlComponent::CompilationMode mode): QQmlComponent(param1, fileName, mode), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QUrl& url): QQmlComponent(param1, url), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QUrl& url, QQmlComponent::CompilationMode mode): QQmlComponent(param1, url, mode), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QObject* parent): QQmlComponent(parent), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, QObject* parent): QQmlComponent(param1, parent), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QString& fileName, QObject* parent): QQmlComponent(param1, fileName, parent), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QString& fileName, QQmlComponent::CompilationMode mode, QObject* parent): QQmlComponent(param1, fileName, mode, parent), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QUrl& url, QObject* parent): QQmlComponent(param1, url, parent), vtbl(vtbl) {};
	VirtualQQmlComponent(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, const QUrl& url, QQmlComponent::CompilationMode mode, QObject* parent): QQmlComponent(param1, url, mode, parent), vtbl(vtbl) {};

	virtual ~VirtualQQmlComponent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlComponent::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlComponent_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlComponent::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlComponent_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlComponent::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlComponent_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QObject* create(QQmlContext* context) override {
		if (vtbl->create == 0) {
			return QQmlComponent::create(context);
		}

		QQmlContext* sigval1 = context;

		QObject* callback_return_value = vtbl->create(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QObject* QQmlComponent_virtualbase_create(void* self, QQmlContext* context);

	// Subclass to allow providing a Go implementation
	virtual QObject* beginCreate(QQmlContext* param1) override {
		if (vtbl->beginCreate == 0) {
			return QQmlComponent::beginCreate(param1);
		}

		QQmlContext* sigval1 = param1;

		QObject* callback_return_value = vtbl->beginCreate(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QObject* QQmlComponent_virtualbase_beginCreate(void* self, QQmlContext* param1);

	// Subclass to allow providing a Go implementation
	virtual void completeCreate() override {
		if (vtbl->completeCreate == 0) {
			QQmlComponent::completeCreate();
			return;
		}


		vtbl->completeCreate(vtbl, this);

	}

	friend void QQmlComponent_virtualbase_completeCreate(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlComponent::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlComponent_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlComponent::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlComponent_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlComponent::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQmlComponent_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlComponent::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQmlComponent_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlComponent::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQmlComponent_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlComponent::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQmlComponent_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlComponent::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQmlComponent_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlComponent_protectedbase_sender(const void* self);
	friend int QQmlComponent_protectedbase_senderSignalIndex(const void* self);
	friend int QQmlComponent_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQmlComponent_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQmlComponent* QQmlComponent_new(struct QQmlComponent_VTable* vtbl) {
	return new VirtualQQmlComponent(vtbl);
}

QQmlComponent* QQmlComponent_new2(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1) {
	return new VirtualQQmlComponent(vtbl, param1);
}

QQmlComponent* QQmlComponent_new3(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, param1, fileName_QString);
}

QQmlComponent* QQmlComponent_new4(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, struct miqt_string fileName, int mode) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, param1, fileName_QString, static_cast<QQmlComponent::CompilationMode>(mode));
}

QQmlComponent* QQmlComponent_new5(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, QUrl* url) {
	return new VirtualQQmlComponent(vtbl, param1, *url);
}

QQmlComponent* QQmlComponent_new6(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, QUrl* url, int mode) {
	return new VirtualQQmlComponent(vtbl, param1, *url, static_cast<QQmlComponent::CompilationMode>(mode));
}

QQmlComponent* QQmlComponent_new7(struct QQmlComponent_VTable* vtbl, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, parent);
}

QQmlComponent* QQmlComponent_new8(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, param1, parent);
}

QQmlComponent* QQmlComponent_new9(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, struct miqt_string fileName, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, param1, fileName_QString, parent);
}

QQmlComponent* QQmlComponent_new10(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, struct miqt_string fileName, int mode, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, param1, fileName_QString, static_cast<QQmlComponent::CompilationMode>(mode), parent);
}

QQmlComponent* QQmlComponent_new11(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, QUrl* url, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, param1, *url, parent);
}

QQmlComponent* QQmlComponent_new12(struct QQmlComponent_VTable* vtbl, QQmlEngine* param1, QUrl* url, int mode, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, param1, *url, static_cast<QQmlComponent::CompilationMode>(mode), parent);
}

void QQmlComponent_virtbase(QQmlComponent* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlComponent_metaObject(const QQmlComponent* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlComponent_metacast(QQmlComponent* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlComponent_metacall(QQmlComponent* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlComponent_tr(const char* s) {
	QString _ret = QQmlComponent::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlComponent_trUtf8(const char* s) {
	QString _ret = QQmlComponent::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QQmlComponent_status(const QQmlComponent* self) {
	QQmlComponent::Status _ret = self->status();
	return static_cast<int>(_ret);
}

bool QQmlComponent_isNull(const QQmlComponent* self) {
	return self->isNull();
}

bool QQmlComponent_isReady(const QQmlComponent* self) {
	return self->isReady();
}

bool QQmlComponent_isError(const QQmlComponent* self) {
	return self->isError();
}

bool QQmlComponent_isLoading(const QQmlComponent* self) {
	return self->isLoading();
}

struct miqt_array /* of QQmlError* */  QQmlComponent_errors(const QQmlComponent* self) {
	QList<QQmlError> _ret = self->errors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QQmlError** _arr = static_cast<QQmlError**>(malloc(sizeof(QQmlError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QQmlError(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QQmlComponent_errorString(const QQmlComponent* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QQmlComponent_progress(const QQmlComponent* self) {
	qreal _ret = self->progress();
	return static_cast<double>(_ret);
}

QUrl* QQmlComponent_url(const QQmlComponent* self) {
	return new QUrl(self->url());
}

QObject* QQmlComponent_create(QQmlComponent* self, QQmlContext* context) {
	return self->create(context);
}

QObject* QQmlComponent_createWithInitialProperties(QQmlComponent* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	return self->createWithInitialProperties(initialProperties_QMap);
}

void QQmlComponent_setInitialProperties(QQmlComponent* self, QObject* component, struct miqt_map /* of struct miqt_string to QVariant* */  properties) {
	QVariantMap properties_QMap;
	struct miqt_string* properties_karr = static_cast<struct miqt_string*>(properties.keys);
	QVariant** properties_varr = static_cast<QVariant**>(properties.values);
	for(size_t i = 0; i < properties.len; ++i) {
		QString properties_karr_i_QString = QString::fromUtf8(properties_karr[i].data, properties_karr[i].len);
		properties_QMap[properties_karr_i_QString] = *(properties_varr[i]);
	}
	self->setInitialProperties(component, properties_QMap);
}

QObject* QQmlComponent_beginCreate(QQmlComponent* self, QQmlContext* param1) {
	return self->beginCreate(param1);
}

void QQmlComponent_completeCreate(QQmlComponent* self) {
	self->completeCreate();
}

void QQmlComponent_createWithQQmlIncubator(QQmlComponent* self, QQmlIncubator* param1) {
	self->create(*param1);
}

QQmlContext* QQmlComponent_creationContext(const QQmlComponent* self) {
	return self->creationContext();
}

QQmlEngine* QQmlComponent_engine(const QQmlComponent* self) {
	return self->engine();
}

void QQmlComponent_loadUrl(QQmlComponent* self, QUrl* url) {
	self->loadUrl(*url);
}

void QQmlComponent_loadUrl2(QQmlComponent* self, QUrl* url, int mode) {
	self->loadUrl(*url, static_cast<QQmlComponent::CompilationMode>(mode));
}

void QQmlComponent_setData(QQmlComponent* self, struct miqt_string param1, QUrl* baseUrl) {
	QByteArray param1_QByteArray(param1.data, param1.len);
	self->setData(param1_QByteArray, *baseUrl);
}

void QQmlComponent_statusChanged(QQmlComponent* self, int param1) {
	self->statusChanged(static_cast<QQmlComponent::Status>(param1));
}

void QQmlComponent_connect_statusChanged(QQmlComponent* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QQmlComponent::Status param1) {
			QQmlComponent::Status param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQQmlComponent::connect(self, static_cast<void (QQmlComponent::*)(QQmlComponent::Status)>(&QQmlComponent::statusChanged), self, local_caller{slot, callback, release});
}

void QQmlComponent_progressChanged(QQmlComponent* self, double param1) {
	self->progressChanged(static_cast<qreal>(param1));
}

void QQmlComponent_connect_progressChanged(QQmlComponent* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal param1) {
			qreal param1_ret = param1;
			double sigval1 = static_cast<double>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQQmlComponent::connect(self, static_cast<void (QQmlComponent::*)(qreal)>(&QQmlComponent::progressChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QQmlComponent_tr2(const char* s, const char* c) {
	QString _ret = QQmlComponent::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlComponent_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlComponent::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlComponent_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlComponent::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlComponent_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlComponent::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QQmlComponent_createWithInitialProperties2(QQmlComponent* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties, QQmlContext* context) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	return self->createWithInitialProperties(initialProperties_QMap, context);
}

void QQmlComponent_create2(QQmlComponent* self, QQmlIncubator* param1, QQmlContext* context) {
	self->create(*param1, context);
}

void QQmlComponent_create3(QQmlComponent* self, QQmlIncubator* param1, QQmlContext* context, QQmlContext* forContext) {
	self->create(*param1, context, forContext);
}

QMetaObject* QQmlComponent_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQmlComponent*)(self) )->QQmlComponent::metaObject();

}

void* QQmlComponent_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQmlComponent*)(self) )->QQmlComponent::qt_metacast(param1);

}

int QQmlComponent_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQmlComponent*)(self) )->QQmlComponent::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QObject* QQmlComponent_virtualbase_create(void* self, QQmlContext* context) {

	return ( (VirtualQQmlComponent*)(self) )->QQmlComponent::create(context);

}

QObject* QQmlComponent_virtualbase_beginCreate(void* self, QQmlContext* param1) {

	return ( (VirtualQQmlComponent*)(self) )->QQmlComponent::beginCreate(param1);

}

void QQmlComponent_virtualbase_completeCreate(void* self) {

	( (VirtualQQmlComponent*)(self) )->QQmlComponent::completeCreate();

}

bool QQmlComponent_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQmlComponent*)(self) )->QQmlComponent::event(event);

}

bool QQmlComponent_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQmlComponent*)(self) )->QQmlComponent::eventFilter(watched, event);

}

void QQmlComponent_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQmlComponent*)(self) )->QQmlComponent::timerEvent(event);

}

void QQmlComponent_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQmlComponent*)(self) )->QQmlComponent::childEvent(event);

}

void QQmlComponent_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQmlComponent*)(self) )->QQmlComponent::customEvent(event);

}

void QQmlComponent_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlComponent*)(self) )->QQmlComponent::connectNotify(*signal);

}

void QQmlComponent_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlComponent*)(self) )->QQmlComponent::disconnectNotify(*signal);

}

const QMetaObject* QQmlComponent_staticMetaObject() { return &QQmlComponent::staticMetaObject; }
QObject* QQmlComponent_protectedbase_sender(const void* self) {
	VirtualQQmlComponent* self_cast = static_cast<VirtualQQmlComponent*>( (QQmlComponent*)(self) );
	
	return self_cast->sender();

}

int QQmlComponent_protectedbase_senderSignalIndex(const void* self) {
	VirtualQQmlComponent* self_cast = static_cast<VirtualQQmlComponent*>( (QQmlComponent*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQmlComponent_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQQmlComponent* self_cast = static_cast<VirtualQQmlComponent*>( (QQmlComponent*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQmlComponent_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQQmlComponent* self_cast = static_cast<VirtualQQmlComponent*>( (QQmlComponent*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlComponent_delete(QQmlComponent* self) {
	delete self;
}

