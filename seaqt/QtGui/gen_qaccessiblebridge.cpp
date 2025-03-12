#include <QAccessibleBridge>
#include <QAccessibleBridgePlugin>
#include <QAccessibleEvent>
#include <QAccessibleInterface>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaccessiblebridge.h>
#include "gen_qaccessiblebridge.h"
void QAccessibleBridge_setRootObject(QAccessibleBridge* self, QAccessibleInterface* rootObject) {
	self->setRootObject(rootObject);
}

void QAccessibleBridge_notifyAccessibilityUpdate(QAccessibleBridge* self, QAccessibleEvent* event) {
	self->notifyAccessibilityUpdate(event);
}

void QAccessibleBridge_operatorAssign(QAccessibleBridge* self, QAccessibleBridge* param1) {
	self->operator=(*param1);
}

void QAccessibleBridge_delete(QAccessibleBridge* self) {
	delete self;
}

class VirtualQAccessibleBridgePlugin final : public QAccessibleBridgePlugin {
	const QAccessibleBridgePlugin_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleBridgePlugin_VTable* QAccessibleBridgePlugin_vtbl(const VirtualQAccessibleBridgePlugin* self);
	friend void* QAccessibleBridgePlugin_vdata(const VirtualQAccessibleBridgePlugin* self);
	friend void QAccessibleBridgePlugin_setVdata(VirtualQAccessibleBridgePlugin* self, void* vdata);

	VirtualQAccessibleBridgePlugin(const QAccessibleBridgePlugin_VTable* vtbl, void* vdata): QAccessibleBridgePlugin(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleBridgePlugin(const QAccessibleBridgePlugin_VTable* vtbl, void* vdata, QObject* parent): QAccessibleBridgePlugin(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleBridgePlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAccessibleBridgePlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAccessibleBridgePlugin_virtualbase_metaObject(const VirtualQAccessibleBridgePlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAccessibleBridgePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAccessibleBridgePlugin_virtualbase_metacast(VirtualQAccessibleBridgePlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAccessibleBridgePlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAccessibleBridgePlugin_virtualbase_metacall(VirtualQAccessibleBridgePlugin* self, int param1, int param2, void** param3);

	virtual QAccessibleBridge* create(const QString& key) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct miqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct miqt_string sigval1 = key_ms;

		QAccessibleBridge* callback_return_value = vtbl->create(this, sigval1);

		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAccessibleBridgePlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAccessibleBridgePlugin_virtualbase_event(VirtualQAccessibleBridgePlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAccessibleBridgePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAccessibleBridgePlugin_virtualbase_eventFilter(VirtualQAccessibleBridgePlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAccessibleBridgePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_timerEvent(VirtualQAccessibleBridgePlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAccessibleBridgePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_childEvent(VirtualQAccessibleBridgePlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAccessibleBridgePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_customEvent(VirtualQAccessibleBridgePlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAccessibleBridgePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_connectNotify(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAccessibleBridgePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_disconnectNotify(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAccessibleBridgePlugin_protectedbase_sender(const VirtualQAccessibleBridgePlugin* self);
	friend int QAccessibleBridgePlugin_protectedbase_senderSignalIndex(const VirtualQAccessibleBridgePlugin* self);
	friend int QAccessibleBridgePlugin_protectedbase_receivers(const VirtualQAccessibleBridgePlugin* self, const char* signal);
	friend bool QAccessibleBridgePlugin_protectedbase_isSignalConnected(const VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);
};

VirtualQAccessibleBridgePlugin* QAccessibleBridgePlugin_new(const QAccessibleBridgePlugin_VTable* vtbl, void* vdata) {
	return new VirtualQAccessibleBridgePlugin(vtbl, vdata);
}

VirtualQAccessibleBridgePlugin* QAccessibleBridgePlugin_new2(const QAccessibleBridgePlugin_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAccessibleBridgePlugin(vtbl, vdata, parent);
}

void QAccessibleBridgePlugin_virtbase(QAccessibleBridgePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAccessibleBridgePlugin_metaObject(const QAccessibleBridgePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAccessibleBridgePlugin_metacast(QAccessibleBridgePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAccessibleBridgePlugin_metacall(QAccessibleBridgePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAccessibleBridgePlugin_tr(const char* s) {
	QString _ret = QAccessibleBridgePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleBridgePlugin_trUtf8(const char* s) {
	QString _ret = QAccessibleBridgePlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAccessibleBridge* QAccessibleBridgePlugin_create(QAccessibleBridgePlugin* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->create(key_QString);
}

struct miqt_string QAccessibleBridgePlugin_tr2(const char* s, const char* c) {
	QString _ret = QAccessibleBridgePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleBridgePlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QAccessibleBridgePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleBridgePlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QAccessibleBridgePlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleBridgePlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAccessibleBridgePlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAccessibleBridgePlugin_virtualbase_metaObject(const VirtualQAccessibleBridgePlugin* self) {

	return (QMetaObject*) self->QAccessibleBridgePlugin::metaObject();
}

void* QAccessibleBridgePlugin_virtualbase_metacast(VirtualQAccessibleBridgePlugin* self, const char* param1) {

	return self->QAccessibleBridgePlugin::qt_metacast(param1);
}

int QAccessibleBridgePlugin_virtualbase_metacall(VirtualQAccessibleBridgePlugin* self, int param1, int param2, void** param3) {

	return self->QAccessibleBridgePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAccessibleBridgePlugin_virtualbase_event(VirtualQAccessibleBridgePlugin* self, QEvent* event) {

	return self->QAccessibleBridgePlugin::event(event);
}

bool QAccessibleBridgePlugin_virtualbase_eventFilter(VirtualQAccessibleBridgePlugin* self, QObject* watched, QEvent* event) {

	return self->QAccessibleBridgePlugin::eventFilter(watched, event);
}

void QAccessibleBridgePlugin_virtualbase_timerEvent(VirtualQAccessibleBridgePlugin* self, QTimerEvent* event) {

	self->QAccessibleBridgePlugin::timerEvent(event);
}

void QAccessibleBridgePlugin_virtualbase_childEvent(VirtualQAccessibleBridgePlugin* self, QChildEvent* event) {

	self->QAccessibleBridgePlugin::childEvent(event);
}

void QAccessibleBridgePlugin_virtualbase_customEvent(VirtualQAccessibleBridgePlugin* self, QEvent* event) {

	self->QAccessibleBridgePlugin::customEvent(event);
}

void QAccessibleBridgePlugin_virtualbase_connectNotify(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal) {

	self->QAccessibleBridgePlugin::connectNotify(*signal);
}

void QAccessibleBridgePlugin_virtualbase_disconnectNotify(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal) {

	self->QAccessibleBridgePlugin::disconnectNotify(*signal);
}

const QMetaObject* QAccessibleBridgePlugin_staticMetaObject() { return &QAccessibleBridgePlugin::staticMetaObject; }

const QAccessibleBridgePlugin_VTable* QAccessibleBridgePlugin_vtbl(const VirtualQAccessibleBridgePlugin* self) { return self->vtbl; }
void* QAccessibleBridgePlugin_vdata(const VirtualQAccessibleBridgePlugin* self) { return self->vdata; }
void QAccessibleBridgePlugin_setVdata(VirtualQAccessibleBridgePlugin* self, void* vdata) { self->vdata = vdata; }

QObject* QAccessibleBridgePlugin_protectedbase_sender(const VirtualQAccessibleBridgePlugin* self) {
	return self->sender();
}

int QAccessibleBridgePlugin_protectedbase_senderSignalIndex(const VirtualQAccessibleBridgePlugin* self) {
	return self->senderSignalIndex();
}

int QAccessibleBridgePlugin_protectedbase_receivers(const VirtualQAccessibleBridgePlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QAccessibleBridgePlugin_protectedbase_isSignalConnected(const VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAccessibleBridgePlugin_delete(QAccessibleBridgePlugin* self) {
	delete self;
}

