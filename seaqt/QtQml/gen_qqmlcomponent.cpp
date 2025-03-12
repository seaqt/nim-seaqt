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
class VirtualQQmlComponent final : public QQmlComponent {
	const QQmlComponent_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlComponent_VTable* QQmlComponent_vtbl(const VirtualQQmlComponent* self);
	friend void* QQmlComponent_vdata(const VirtualQQmlComponent* self);
	friend void QQmlComponent_setVdata(VirtualQQmlComponent* self, void* vdata);

	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata): QQmlComponent(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1): QQmlComponent(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QString& fileName): QQmlComponent(param1, fileName), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QString& fileName, QQmlComponent::CompilationMode mode): QQmlComponent(param1, fileName, mode), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QUrl& url): QQmlComponent(param1, url), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QUrl& url, QQmlComponent::CompilationMode mode): QQmlComponent(param1, url, mode), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QObject* parent): QQmlComponent(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QObject* parent): QQmlComponent(param1, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QString& fileName, QObject* parent): QQmlComponent(param1, fileName, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QString& fileName, QQmlComponent::CompilationMode mode, QObject* parent): QQmlComponent(param1, fileName, mode, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QUrl& url, QObject* parent): QQmlComponent(param1, url, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlComponent(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, const QUrl& url, QQmlComponent::CompilationMode mode, QObject* parent): QQmlComponent(param1, url, mode, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlComponent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlComponent::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlComponent_virtualbase_metaObject(const VirtualQQmlComponent* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlComponent::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlComponent_virtualbase_metacast(VirtualQQmlComponent* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlComponent::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlComponent_virtualbase_metacall(VirtualQQmlComponent* self, int param1, int param2, void** param3);

	virtual QObject* create(QQmlContext* context) override {
		if (vtbl->create == 0) {
			return QQmlComponent::create(context);
		}

		QQmlContext* sigval1 = context;

		QObject* callback_return_value = vtbl->create(this, sigval1);

		return callback_return_value;
	}

	friend QObject* QQmlComponent_virtualbase_create(VirtualQQmlComponent* self, QQmlContext* context);

	virtual QObject* beginCreate(QQmlContext* param1) override {
		if (vtbl->beginCreate == 0) {
			return QQmlComponent::beginCreate(param1);
		}

		QQmlContext* sigval1 = param1;

		QObject* callback_return_value = vtbl->beginCreate(this, sigval1);

		return callback_return_value;
	}

	friend QObject* QQmlComponent_virtualbase_beginCreate(VirtualQQmlComponent* self, QQmlContext* param1);

	virtual void completeCreate() override {
		if (vtbl->completeCreate == 0) {
			QQmlComponent::completeCreate();
			return;
		}


		vtbl->completeCreate(this);

	}

	friend void QQmlComponent_virtualbase_completeCreate(VirtualQQmlComponent* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlComponent::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlComponent_virtualbase_event(VirtualQQmlComponent* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlComponent::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlComponent_virtualbase_eventFilter(VirtualQQmlComponent* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlComponent::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQmlComponent_virtualbase_timerEvent(VirtualQQmlComponent* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlComponent::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQmlComponent_virtualbase_childEvent(VirtualQQmlComponent* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlComponent::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQmlComponent_virtualbase_customEvent(VirtualQQmlComponent* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlComponent::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQmlComponent_virtualbase_connectNotify(VirtualQQmlComponent* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlComponent::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQmlComponent_virtualbase_disconnectNotify(VirtualQQmlComponent* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlComponent_protectedbase_sender(const VirtualQQmlComponent* self);
	friend int QQmlComponent_protectedbase_senderSignalIndex(const VirtualQQmlComponent* self);
	friend int QQmlComponent_protectedbase_receivers(const VirtualQQmlComponent* self, const char* signal);
	friend bool QQmlComponent_protectedbase_isSignalConnected(const VirtualQQmlComponent* self, QMetaMethod* signal);
};

VirtualQQmlComponent* QQmlComponent_new(const QQmlComponent_VTable* vtbl, void* vdata) {
	return new VirtualQQmlComponent(vtbl, vdata);
}

VirtualQQmlComponent* QQmlComponent_new2(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1) {
	return new VirtualQQmlComponent(vtbl, vdata, param1);
}

VirtualQQmlComponent* QQmlComponent_new3(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, vdata, param1, fileName_QString);
}

VirtualQQmlComponent* QQmlComponent_new4(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName, int mode) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, vdata, param1, fileName_QString, static_cast<QQmlComponent::CompilationMode>(mode));
}

VirtualQQmlComponent* QQmlComponent_new5(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url) {
	return new VirtualQQmlComponent(vtbl, vdata, param1, *url);
}

VirtualQQmlComponent* QQmlComponent_new6(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url, int mode) {
	return new VirtualQQmlComponent(vtbl, vdata, param1, *url, static_cast<QQmlComponent::CompilationMode>(mode));
}

VirtualQQmlComponent* QQmlComponent_new7(const QQmlComponent_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, vdata, parent);
}

VirtualQQmlComponent* QQmlComponent_new8(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, vdata, param1, parent);
}

VirtualQQmlComponent* QQmlComponent_new9(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, vdata, param1, fileName_QString, parent);
}

VirtualQQmlComponent* QQmlComponent_new10(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName, int mode, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQQmlComponent(vtbl, vdata, param1, fileName_QString, static_cast<QQmlComponent::CompilationMode>(mode), parent);
}

VirtualQQmlComponent* QQmlComponent_new11(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, vdata, param1, *url, parent);
}

VirtualQQmlComponent* QQmlComponent_new12(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url, int mode, QObject* parent) {
	return new VirtualQQmlComponent(vtbl, vdata, param1, *url, static_cast<QQmlComponent::CompilationMode>(mode), parent);
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

void QQmlComponent_connect_statusChanged(VirtualQQmlComponent* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QQmlComponent_connect_progressChanged(VirtualQQmlComponent* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
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

QMetaObject* QQmlComponent_virtualbase_metaObject(const VirtualQQmlComponent* self) {

	return (QMetaObject*) self->QQmlComponent::metaObject();
}

void* QQmlComponent_virtualbase_metacast(VirtualQQmlComponent* self, const char* param1) {

	return self->QQmlComponent::qt_metacast(param1);
}

int QQmlComponent_virtualbase_metacall(VirtualQQmlComponent* self, int param1, int param2, void** param3) {

	return self->QQmlComponent::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QObject* QQmlComponent_virtualbase_create(VirtualQQmlComponent* self, QQmlContext* context) {

	return self->QQmlComponent::create(context);
}

QObject* QQmlComponent_virtualbase_beginCreate(VirtualQQmlComponent* self, QQmlContext* param1) {

	return self->QQmlComponent::beginCreate(param1);
}

void QQmlComponent_virtualbase_completeCreate(VirtualQQmlComponent* self) {

	self->QQmlComponent::completeCreate();
}

bool QQmlComponent_virtualbase_event(VirtualQQmlComponent* self, QEvent* event) {

	return self->QQmlComponent::event(event);
}

bool QQmlComponent_virtualbase_eventFilter(VirtualQQmlComponent* self, QObject* watched, QEvent* event) {

	return self->QQmlComponent::eventFilter(watched, event);
}

void QQmlComponent_virtualbase_timerEvent(VirtualQQmlComponent* self, QTimerEvent* event) {

	self->QQmlComponent::timerEvent(event);
}

void QQmlComponent_virtualbase_childEvent(VirtualQQmlComponent* self, QChildEvent* event) {

	self->QQmlComponent::childEvent(event);
}

void QQmlComponent_virtualbase_customEvent(VirtualQQmlComponent* self, QEvent* event) {

	self->QQmlComponent::customEvent(event);
}

void QQmlComponent_virtualbase_connectNotify(VirtualQQmlComponent* self, QMetaMethod* signal) {

	self->QQmlComponent::connectNotify(*signal);
}

void QQmlComponent_virtualbase_disconnectNotify(VirtualQQmlComponent* self, QMetaMethod* signal) {

	self->QQmlComponent::disconnectNotify(*signal);
}

const QMetaObject* QQmlComponent_staticMetaObject() { return &QQmlComponent::staticMetaObject; }

const QQmlComponent_VTable* QQmlComponent_vtbl(const VirtualQQmlComponent* self) { return self->vtbl; }
void* QQmlComponent_vdata(const VirtualQQmlComponent* self) { return self->vdata; }
void QQmlComponent_setVdata(VirtualQQmlComponent* self, void* vdata) { self->vdata = vdata; }

QObject* QQmlComponent_protectedbase_sender(const VirtualQQmlComponent* self) {
	return self->sender();
}

int QQmlComponent_protectedbase_senderSignalIndex(const VirtualQQmlComponent* self) {
	return self->senderSignalIndex();
}

int QQmlComponent_protectedbase_receivers(const VirtualQQmlComponent* self, const char* signal) {
	return self->receivers(signal);
}

bool QQmlComponent_protectedbase_isSignalConnected(const VirtualQQmlComponent* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQmlComponent_delete(QQmlComponent* self) {
	delete self;
}

