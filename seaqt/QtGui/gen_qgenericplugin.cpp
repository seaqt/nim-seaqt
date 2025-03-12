#include <QChildEvent>
#include <QEvent>
#include <QGenericPlugin>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qgenericplugin.h>
#include "gen_qgenericplugin.h"
class VirtualQGenericPlugin final : public QGenericPlugin {
	const QGenericPlugin_VTable* vtbl;
	void* vdata;
public:
	friend const QGenericPlugin_VTable* QGenericPlugin_vtbl(const VirtualQGenericPlugin* self);
	friend void* QGenericPlugin_vdata(const VirtualQGenericPlugin* self);
	friend void QGenericPlugin_setVdata(VirtualQGenericPlugin* self, void* vdata);

	VirtualQGenericPlugin(const QGenericPlugin_VTable* vtbl, void* vdata): QGenericPlugin(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGenericPlugin(const QGenericPlugin_VTable* vtbl, void* vdata, QObject* parent): QGenericPlugin(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGenericPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGenericPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGenericPlugin_virtualbase_metaObject(const VirtualQGenericPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGenericPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGenericPlugin_virtualbase_metacast(VirtualQGenericPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGenericPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGenericPlugin_virtualbase_metacall(VirtualQGenericPlugin* self, int param1, int param2, void** param3);

	virtual QObject* create(const QString& name, const QString& spec) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct miqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct miqt_string sigval1 = name_ms;
		const QString spec_ret = spec;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray spec_b = spec_ret.toUtf8();
		struct miqt_string spec_ms;
		spec_ms.len = spec_b.length();
		spec_ms.data = static_cast<char*>(malloc(spec_ms.len));
		memcpy(spec_ms.data, spec_b.data(), spec_ms.len);
		struct miqt_string sigval2 = spec_ms;

		QObject* callback_return_value = vtbl->create(this, sigval1, sigval2);

		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGenericPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGenericPlugin_virtualbase_event(VirtualQGenericPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGenericPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGenericPlugin_virtualbase_eventFilter(VirtualQGenericPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGenericPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGenericPlugin_virtualbase_timerEvent(VirtualQGenericPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGenericPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGenericPlugin_virtualbase_childEvent(VirtualQGenericPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGenericPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGenericPlugin_virtualbase_customEvent(VirtualQGenericPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGenericPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGenericPlugin_virtualbase_connectNotify(VirtualQGenericPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGenericPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGenericPlugin_virtualbase_disconnectNotify(VirtualQGenericPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGenericPlugin_protectedbase_sender(const VirtualQGenericPlugin* self);
	friend int QGenericPlugin_protectedbase_senderSignalIndex(const VirtualQGenericPlugin* self);
	friend int QGenericPlugin_protectedbase_receivers(const VirtualQGenericPlugin* self, const char* signal);
	friend bool QGenericPlugin_protectedbase_isSignalConnected(const VirtualQGenericPlugin* self, QMetaMethod* signal);
};

VirtualQGenericPlugin* QGenericPlugin_new(const QGenericPlugin_VTable* vtbl, void* vdata) {
	return new VirtualQGenericPlugin(vtbl, vdata);
}

VirtualQGenericPlugin* QGenericPlugin_new2(const QGenericPlugin_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGenericPlugin(vtbl, vdata, parent);
}

void QGenericPlugin_virtbase(QGenericPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGenericPlugin_metaObject(const QGenericPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGenericPlugin_metacast(QGenericPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGenericPlugin_metacall(QGenericPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGenericPlugin_tr(const char* s) {
	QString _ret = QGenericPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QGenericPlugin_create(QGenericPlugin* self, struct miqt_string name, struct miqt_string spec) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString spec_QString = QString::fromUtf8(spec.data, spec.len);
	return self->create(name_QString, spec_QString);
}

struct miqt_string QGenericPlugin_tr2(const char* s, const char* c) {
	QString _ret = QGenericPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGenericPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QGenericPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGenericPlugin_virtualbase_metaObject(const VirtualQGenericPlugin* self) {

	return (QMetaObject*) self->QGenericPlugin::metaObject();
}

void* QGenericPlugin_virtualbase_metacast(VirtualQGenericPlugin* self, const char* param1) {

	return self->QGenericPlugin::qt_metacast(param1);
}

int QGenericPlugin_virtualbase_metacall(VirtualQGenericPlugin* self, int param1, int param2, void** param3) {

	return self->QGenericPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QGenericPlugin_virtualbase_event(VirtualQGenericPlugin* self, QEvent* event) {

	return self->QGenericPlugin::event(event);
}

bool QGenericPlugin_virtualbase_eventFilter(VirtualQGenericPlugin* self, QObject* watched, QEvent* event) {

	return self->QGenericPlugin::eventFilter(watched, event);
}

void QGenericPlugin_virtualbase_timerEvent(VirtualQGenericPlugin* self, QTimerEvent* event) {

	self->QGenericPlugin::timerEvent(event);
}

void QGenericPlugin_virtualbase_childEvent(VirtualQGenericPlugin* self, QChildEvent* event) {

	self->QGenericPlugin::childEvent(event);
}

void QGenericPlugin_virtualbase_customEvent(VirtualQGenericPlugin* self, QEvent* event) {

	self->QGenericPlugin::customEvent(event);
}

void QGenericPlugin_virtualbase_connectNotify(VirtualQGenericPlugin* self, QMetaMethod* signal) {

	self->QGenericPlugin::connectNotify(*signal);
}

void QGenericPlugin_virtualbase_disconnectNotify(VirtualQGenericPlugin* self, QMetaMethod* signal) {

	self->QGenericPlugin::disconnectNotify(*signal);
}

const QMetaObject* QGenericPlugin_staticMetaObject() { return &QGenericPlugin::staticMetaObject; }

const QGenericPlugin_VTable* QGenericPlugin_vtbl(const VirtualQGenericPlugin* self) { return self->vtbl; }
void* QGenericPlugin_vdata(const VirtualQGenericPlugin* self) { return self->vdata; }
void QGenericPlugin_setVdata(VirtualQGenericPlugin* self, void* vdata) { self->vdata = vdata; }

QObject* QGenericPlugin_protectedbase_sender(const VirtualQGenericPlugin* self) {
	return self->sender();
}

int QGenericPlugin_protectedbase_senderSignalIndex(const VirtualQGenericPlugin* self) {
	return self->senderSignalIndex();
}

int QGenericPlugin_protectedbase_receivers(const VirtualQGenericPlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QGenericPlugin_protectedbase_isSignalConnected(const VirtualQGenericPlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGenericPlugin_delete(QGenericPlugin* self) {
	delete self;
}

