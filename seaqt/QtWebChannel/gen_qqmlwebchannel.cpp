#include <QChildEvent>
#include <QEvent>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlWebChannel>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QWebChannel>
#include <qqmlwebchannel.h>
#include "gen_qqmlwebchannel.h"
class VirtualQQmlWebChannel final : public QQmlWebChannel {
	const QQmlWebChannel_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlWebChannel_VTable* QQmlWebChannel_vtbl(const VirtualQQmlWebChannel* self);
	friend void* QQmlWebChannel_vdata(const VirtualQQmlWebChannel* self);
	friend void QQmlWebChannel_setVdata(VirtualQQmlWebChannel* self, void* vdata);

	VirtualQQmlWebChannel(const QQmlWebChannel_VTable* vtbl, void* vdata): QQmlWebChannel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlWebChannel(const QQmlWebChannel_VTable* vtbl, void* vdata, QObject* parent): QQmlWebChannel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlWebChannel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlWebChannel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlWebChannel_virtualbase_metaObject(const VirtualQQmlWebChannel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlWebChannel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlWebChannel_virtualbase_metacast(VirtualQQmlWebChannel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlWebChannel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlWebChannel_virtualbase_metacall(VirtualQQmlWebChannel* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlWebChannel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlWebChannel_virtualbase_event(VirtualQQmlWebChannel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlWebChannel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlWebChannel_virtualbase_eventFilter(VirtualQQmlWebChannel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlWebChannel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQmlWebChannel_virtualbase_timerEvent(VirtualQQmlWebChannel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlWebChannel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQmlWebChannel_virtualbase_childEvent(VirtualQQmlWebChannel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlWebChannel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQmlWebChannel_virtualbase_customEvent(VirtualQQmlWebChannel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlWebChannel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQmlWebChannel_virtualbase_connectNotify(VirtualQQmlWebChannel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlWebChannel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQmlWebChannel_virtualbase_disconnectNotify(VirtualQQmlWebChannel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlWebChannel_protectedbase_sender(const VirtualQQmlWebChannel* self);
	friend int QQmlWebChannel_protectedbase_senderSignalIndex(const VirtualQQmlWebChannel* self);
	friend int QQmlWebChannel_protectedbase_receivers(const VirtualQQmlWebChannel* self, const char* signal);
	friend bool QQmlWebChannel_protectedbase_isSignalConnected(const VirtualQQmlWebChannel* self, QMetaMethod* signal);
};

VirtualQQmlWebChannel* QQmlWebChannel_new(const QQmlWebChannel_VTable* vtbl, void* vdata) {
	return new VirtualQQmlWebChannel(vtbl, vdata);
}

VirtualQQmlWebChannel* QQmlWebChannel_new2(const QQmlWebChannel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQQmlWebChannel(vtbl, vdata, parent);
}

void QQmlWebChannel_virtbase(QQmlWebChannel* src, QWebChannel** outptr_QWebChannel) {
	*outptr_QWebChannel = static_cast<QWebChannel*>(src);
}

QMetaObject* QQmlWebChannel_metaObject(const QQmlWebChannel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlWebChannel_metacast(QQmlWebChannel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlWebChannel_metacall(QQmlWebChannel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlWebChannel_tr(const char* s) {
	QString _ret = QQmlWebChannel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlWebChannel_registerObjects(QQmlWebChannel* self, struct miqt_map /* of struct miqt_string to QVariant* */  objects) {
	QVariantMap objects_QMap;
	struct miqt_string* objects_karr = static_cast<struct miqt_string*>(objects.keys);
	QVariant** objects_varr = static_cast<QVariant**>(objects.values);
	for(size_t i = 0; i < objects.len; ++i) {
		QString objects_karr_i_QString = QString::fromUtf8(objects_karr[i].data, objects_karr[i].len);
		objects_QMap[objects_karr_i_QString] = *(objects_varr[i]);
	}
	self->registerObjects(objects_QMap);
}

void QQmlWebChannel_connectTo(QQmlWebChannel* self, QObject* transport) {
	self->connectTo(transport);
}

void QQmlWebChannel_disconnectFrom(QQmlWebChannel* self, QObject* transport) {
	self->disconnectFrom(transport);
}

struct miqt_string QQmlWebChannel_tr2(const char* s, const char* c) {
	QString _ret = QQmlWebChannel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlWebChannel_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlWebChannel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQmlWebChannel_virtualbase_metaObject(const VirtualQQmlWebChannel* self) {

	return (QMetaObject*) self->QQmlWebChannel::metaObject();
}

void* QQmlWebChannel_virtualbase_metacast(VirtualQQmlWebChannel* self, const char* param1) {

	return self->QQmlWebChannel::qt_metacast(param1);
}

int QQmlWebChannel_virtualbase_metacall(VirtualQQmlWebChannel* self, int param1, int param2, void** param3) {

	return self->QQmlWebChannel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQmlWebChannel_virtualbase_event(VirtualQQmlWebChannel* self, QEvent* event) {

	return self->QQmlWebChannel::event(event);
}

bool QQmlWebChannel_virtualbase_eventFilter(VirtualQQmlWebChannel* self, QObject* watched, QEvent* event) {

	return self->QQmlWebChannel::eventFilter(watched, event);
}

void QQmlWebChannel_virtualbase_timerEvent(VirtualQQmlWebChannel* self, QTimerEvent* event) {

	self->QQmlWebChannel::timerEvent(event);
}

void QQmlWebChannel_virtualbase_childEvent(VirtualQQmlWebChannel* self, QChildEvent* event) {

	self->QQmlWebChannel::childEvent(event);
}

void QQmlWebChannel_virtualbase_customEvent(VirtualQQmlWebChannel* self, QEvent* event) {

	self->QQmlWebChannel::customEvent(event);
}

void QQmlWebChannel_virtualbase_connectNotify(VirtualQQmlWebChannel* self, QMetaMethod* signal) {

	self->QQmlWebChannel::connectNotify(*signal);
}

void QQmlWebChannel_virtualbase_disconnectNotify(VirtualQQmlWebChannel* self, QMetaMethod* signal) {

	self->QQmlWebChannel::disconnectNotify(*signal);
}

const QMetaObject* QQmlWebChannel_staticMetaObject() { return &QQmlWebChannel::staticMetaObject; }

const QQmlWebChannel_VTable* QQmlWebChannel_vtbl(const VirtualQQmlWebChannel* self) { return self->vtbl; }
void* QQmlWebChannel_vdata(const VirtualQQmlWebChannel* self) { return self->vdata; }
void QQmlWebChannel_setVdata(VirtualQQmlWebChannel* self, void* vdata) { self->vdata = vdata; }

QObject* QQmlWebChannel_protectedbase_sender(const VirtualQQmlWebChannel* self) {
	return self->sender();
}

int QQmlWebChannel_protectedbase_senderSignalIndex(const VirtualQQmlWebChannel* self) {
	return self->senderSignalIndex();
}

int QQmlWebChannel_protectedbase_receivers(const VirtualQQmlWebChannel* self, const char* signal) {
	return self->receivers(signal);
}

bool QQmlWebChannel_protectedbase_isSignalConnected(const VirtualQQmlWebChannel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQmlWebChannel_delete(QQmlWebChannel* self) {
	delete self;
}

