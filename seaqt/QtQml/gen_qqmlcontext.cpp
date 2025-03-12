#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlContext>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQmlContext__PropertyPair
#include <QQmlEngine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qqmlcontext.h>
#include "gen_qqmlcontext.h"
class VirtualQQmlContext final : public QQmlContext {
	const QQmlContext_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlContext_VTable* QQmlContext_vtbl(const VirtualQQmlContext* self);
	friend void* QQmlContext_vdata(const VirtualQQmlContext* self);
	friend void QQmlContext_setVdata(VirtualQQmlContext* self, void* vdata);

	VirtualQQmlContext(const QQmlContext_VTable* vtbl, void* vdata, QQmlEngine* parent): QQmlContext(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlContext(const QQmlContext_VTable* vtbl, void* vdata, QQmlContext* parent): QQmlContext(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlContext(const QQmlContext_VTable* vtbl, void* vdata, QQmlEngine* parent, QObject* objParent): QQmlContext(parent, objParent), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlContext(const QQmlContext_VTable* vtbl, void* vdata, QQmlContext* parent, QObject* objParent): QQmlContext(parent, objParent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlContext() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlContext::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlContext_virtualbase_metaObject(const VirtualQQmlContext* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlContext::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlContext_virtualbase_metacast(VirtualQQmlContext* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlContext::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlContext_virtualbase_metacall(VirtualQQmlContext* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlContext::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlContext_virtualbase_event(VirtualQQmlContext* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlContext::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlContext_virtualbase_eventFilter(VirtualQQmlContext* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlContext::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQmlContext_virtualbase_timerEvent(VirtualQQmlContext* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlContext::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQmlContext_virtualbase_childEvent(VirtualQQmlContext* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlContext::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQmlContext_virtualbase_customEvent(VirtualQQmlContext* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlContext::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQmlContext_virtualbase_connectNotify(VirtualQQmlContext* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlContext::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQmlContext_virtualbase_disconnectNotify(VirtualQQmlContext* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlContext_protectedbase_sender(const VirtualQQmlContext* self);
	friend int QQmlContext_protectedbase_senderSignalIndex(const VirtualQQmlContext* self);
	friend int QQmlContext_protectedbase_receivers(const VirtualQQmlContext* self, const char* signal);
	friend bool QQmlContext_protectedbase_isSignalConnected(const VirtualQQmlContext* self, QMetaMethod* signal);
};

VirtualQQmlContext* QQmlContext_new(const QQmlContext_VTable* vtbl, void* vdata, QQmlEngine* parent) {
	return new VirtualQQmlContext(vtbl, vdata, parent);
}

VirtualQQmlContext* QQmlContext_new2(const QQmlContext_VTable* vtbl, void* vdata, QQmlContext* parent) {
	return new VirtualQQmlContext(vtbl, vdata, parent);
}

VirtualQQmlContext* QQmlContext_new3(const QQmlContext_VTable* vtbl, void* vdata, QQmlEngine* parent, QObject* objParent) {
	return new VirtualQQmlContext(vtbl, vdata, parent, objParent);
}

VirtualQQmlContext* QQmlContext_new4(const QQmlContext_VTable* vtbl, void* vdata, QQmlContext* parent, QObject* objParent) {
	return new VirtualQQmlContext(vtbl, vdata, parent, objParent);
}

void QQmlContext_virtbase(QQmlContext* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlContext_metaObject(const QQmlContext* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlContext_metacast(QQmlContext* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlContext_metacall(QQmlContext* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlContext_tr(const char* s) {
	QString _ret = QQmlContext::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_trUtf8(const char* s) {
	QString _ret = QQmlContext::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQmlContext_isValid(const QQmlContext* self) {
	return self->isValid();
}

QQmlEngine* QQmlContext_engine(const QQmlContext* self) {
	return self->engine();
}

QQmlContext* QQmlContext_parentContext(const QQmlContext* self) {
	return self->parentContext();
}

QObject* QQmlContext_contextObject(const QQmlContext* self) {
	return self->contextObject();
}

void QQmlContext_setContextObject(QQmlContext* self, QObject* contextObject) {
	self->setContextObject(contextObject);
}

QVariant* QQmlContext_contextProperty(const QQmlContext* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return new QVariant(self->contextProperty(param1_QString));
}

void QQmlContext_setContextProperty(QQmlContext* self, struct miqt_string param1, QObject* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->setContextProperty(param1_QString, param2);
}

void QQmlContext_setContextProperty2(QQmlContext* self, struct miqt_string param1, QVariant* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->setContextProperty(param1_QString, *param2);
}

void QQmlContext_setContextProperties(QQmlContext* self, struct miqt_array /* of QQmlContext__PropertyPair* */  properties) {
	QVector<QQmlContext::PropertyPair> properties_QList;
	properties_QList.reserve(properties.len);
	QQmlContext__PropertyPair** properties_arr = static_cast<QQmlContext__PropertyPair**>(properties.data);
	for(size_t i = 0; i < properties.len; ++i) {
		properties_QList.push_back(*(properties_arr[i]));
	}
	self->setContextProperties(properties_QList);
}

struct miqt_string QQmlContext_nameForObject(const QQmlContext* self, QObject* param1) {
	QString _ret = self->nameForObject(param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQmlContext_resolvedUrl(QQmlContext* self, QUrl* param1) {
	return new QUrl(self->resolvedUrl(*param1));
}

void QQmlContext_setBaseUrl(QQmlContext* self, QUrl* baseUrl) {
	self->setBaseUrl(*baseUrl);
}

QUrl* QQmlContext_baseUrl(const QQmlContext* self) {
	return new QUrl(self->baseUrl());
}

struct miqt_string QQmlContext_tr2(const char* s, const char* c) {
	QString _ret = QQmlContext::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlContext::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlContext::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlContext::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQmlContext_virtualbase_metaObject(const VirtualQQmlContext* self) {

	return (QMetaObject*) self->QQmlContext::metaObject();
}

void* QQmlContext_virtualbase_metacast(VirtualQQmlContext* self, const char* param1) {

	return self->QQmlContext::qt_metacast(param1);
}

int QQmlContext_virtualbase_metacall(VirtualQQmlContext* self, int param1, int param2, void** param3) {

	return self->QQmlContext::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQmlContext_virtualbase_event(VirtualQQmlContext* self, QEvent* event) {

	return self->QQmlContext::event(event);
}

bool QQmlContext_virtualbase_eventFilter(VirtualQQmlContext* self, QObject* watched, QEvent* event) {

	return self->QQmlContext::eventFilter(watched, event);
}

void QQmlContext_virtualbase_timerEvent(VirtualQQmlContext* self, QTimerEvent* event) {

	self->QQmlContext::timerEvent(event);
}

void QQmlContext_virtualbase_childEvent(VirtualQQmlContext* self, QChildEvent* event) {

	self->QQmlContext::childEvent(event);
}

void QQmlContext_virtualbase_customEvent(VirtualQQmlContext* self, QEvent* event) {

	self->QQmlContext::customEvent(event);
}

void QQmlContext_virtualbase_connectNotify(VirtualQQmlContext* self, QMetaMethod* signal) {

	self->QQmlContext::connectNotify(*signal);
}

void QQmlContext_virtualbase_disconnectNotify(VirtualQQmlContext* self, QMetaMethod* signal) {

	self->QQmlContext::disconnectNotify(*signal);
}

const QMetaObject* QQmlContext_staticMetaObject() { return &QQmlContext::staticMetaObject; }

const QQmlContext_VTable* QQmlContext_vtbl(const VirtualQQmlContext* self) { return self->vtbl; }
void* QQmlContext_vdata(const VirtualQQmlContext* self) { return self->vdata; }
void QQmlContext_setVdata(VirtualQQmlContext* self, void* vdata) { self->vdata = vdata; }

QObject* QQmlContext_protectedbase_sender(const VirtualQQmlContext* self) {
	return self->sender();
}

int QQmlContext_protectedbase_senderSignalIndex(const VirtualQQmlContext* self) {
	return self->senderSignalIndex();
}

int QQmlContext_protectedbase_receivers(const VirtualQQmlContext* self, const char* signal) {
	return self->receivers(signal);
}

bool QQmlContext_protectedbase_isSignalConnected(const VirtualQQmlContext* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQmlContext_delete(QQmlContext* self) {
	delete self;
}

QQmlContext__PropertyPair* QQmlContext__PropertyPair_new(QQmlContext__PropertyPair* param1) {
	return new QQmlContext__PropertyPair(*param1);
}

void QQmlContext__PropertyPair_operatorAssign(QQmlContext__PropertyPair* self, QQmlContext__PropertyPair* param1) {
	self->operator=(*param1);
}

void QQmlContext__PropertyPair_delete(QQmlContext__PropertyPair* self) {
	delete self;
}

