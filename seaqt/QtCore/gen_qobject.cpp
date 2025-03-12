#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectData>
#include <QObjectUserData>
#include <QSignalBlocker>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qobject.h>
#include "gen_qobject.h"
QMetaObject* QObjectData_dynamicMetaObject(const QObjectData* self) {
	return self->dynamicMetaObject();
}

void QObjectData_delete(QObjectData* self) {
	delete self;
}

class VirtualQObject final : public QObject {
	const QObject_VTable* vtbl;
	void* vdata;
public:
	friend const QObject_VTable* QObject_vtbl(const VirtualQObject* self);
	friend void* QObject_vdata(const VirtualQObject* self);
	friend void QObject_setVdata(VirtualQObject* self, void* vdata);

	VirtualQObject(const QObject_VTable* vtbl, void* vdata): QObject(), vtbl(vtbl), vdata(vdata) {}
	VirtualQObject(const QObject_VTable* vtbl, void* vdata, QObject* parent): QObject(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQObject() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QObject::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QObject_virtualbase_metaObject(const VirtualQObject* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QObject::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QObject_virtualbase_metacast(VirtualQObject* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QObject::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QObject_virtualbase_metacall(VirtualQObject* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QObject::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QObject_virtualbase_event(VirtualQObject* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QObject::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QObject_virtualbase_eventFilter(VirtualQObject* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QObject::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QObject_virtualbase_timerEvent(VirtualQObject* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QObject::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QObject_virtualbase_childEvent(VirtualQObject* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QObject::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QObject_virtualbase_customEvent(VirtualQObject* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QObject::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QObject_virtualbase_connectNotify(VirtualQObject* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QObject::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QObject_virtualbase_disconnectNotify(VirtualQObject* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QObject_protectedbase_sender(const VirtualQObject* self);
	friend int QObject_protectedbase_senderSignalIndex(const VirtualQObject* self);
	friend int QObject_protectedbase_receivers(const VirtualQObject* self, const char* signal);
	friend bool QObject_protectedbase_isSignalConnected(const VirtualQObject* self, QMetaMethod* signal);
};

VirtualQObject* QObject_new(const QObject_VTable* vtbl, void* vdata) {
	return new VirtualQObject(vtbl, vdata);
}

VirtualQObject* QObject_new2(const QObject_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQObject(vtbl, vdata, parent);
}

QMetaObject* QObject_metaObject(const QObject* self) {
	return (QMetaObject*) self->metaObject();
}

void* QObject_metacast(QObject* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QObject_metacall(QObject* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QObject_tr(const char* s) {
	QString _ret = QObject::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObject_trUtf8(const char* s) {
	QString _ret = QObject::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QObject_event(QObject* self, QEvent* event) {
	return self->event(event);
}

bool QObject_eventFilter(QObject* self, QObject* watched, QEvent* event) {
	return self->eventFilter(watched, event);
}

struct miqt_string QObject_objectName(const QObject* self) {
	QString _ret = self->objectName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QObject_setObjectName(QObject* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setObjectName(name_QString);
}

bool QObject_isWidgetType(const QObject* self) {
	return self->isWidgetType();
}

bool QObject_isWindowType(const QObject* self) {
	return self->isWindowType();
}

bool QObject_signalsBlocked(const QObject* self) {
	return self->signalsBlocked();
}

bool QObject_blockSignals(QObject* self, bool b) {
	return self->blockSignals(b);
}

QThread* QObject_thread(const QObject* self) {
	return self->thread();
}

void QObject_moveToThread(QObject* self, QThread* thread) {
	self->moveToThread(thread);
}

int QObject_startTimer(QObject* self, int interval) {
	return self->startTimer(static_cast<int>(interval));
}

void QObject_killTimer(QObject* self, int id) {
	self->killTimer(static_cast<int>(id));
}

struct miqt_array /* of QObject* */  QObject_children(const QObject* self) {
	const QObjectList& _ret = self->children();
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

void QObject_setParent(QObject* self, QObject* parent) {
	self->setParent(parent);
}

void QObject_installEventFilter(QObject* self, QObject* filterObj) {
	self->installEventFilter(filterObj);
}

void QObject_removeEventFilter(QObject* self, QObject* obj) {
	self->removeEventFilter(obj);
}

QMetaObject__Connection* QObject_connect(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method) {
	return new QMetaObject::Connection(QObject::connect(sender, *signal, receiver, *method));
}

QMetaObject__Connection* QObject_connect2(const QObject* self, QObject* sender, const char* signal, const char* member) {
	return new QMetaObject::Connection(self->connect(sender, signal, member));
}

bool QObject_disconnect(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* member) {
	return QObject::disconnect(sender, *signal, receiver, *member);
}

bool QObject_disconnectWithQMetaObjectConnection(QMetaObject__Connection* param1) {
	return QObject::disconnect(*param1);
}

void QObject_dumpObjectTree(QObject* self) {
	self->dumpObjectTree();
}

void QObject_dumpObjectInfo(QObject* self) {
	self->dumpObjectInfo();
}

void QObject_dumpObjectTree2(const QObject* self) {
	self->dumpObjectTree();
}

void QObject_dumpObjectInfo2(const QObject* self) {
	self->dumpObjectInfo();
}

bool QObject_setProperty(QObject* self, const char* name, QVariant* value) {
	return self->setProperty(name, *value);
}

QVariant* QObject_property(const QObject* self, const char* name) {
	return new QVariant(self->property(name));
}

struct miqt_array /* of struct miqt_string */  QObject_dynamicPropertyNames(const QObject* self) {
	QList<QByteArray> _ret = self->dynamicPropertyNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

unsigned int QObject_registerUserData() {
	uint _ret = QObject::registerUserData();
	return static_cast<unsigned int>(_ret);
}

void QObject_setUserData(QObject* self, unsigned int id, QObjectUserData* data) {
	self->setUserData(static_cast<uint>(id), data);
}

QObjectUserData* QObject_userData(const QObject* self, unsigned int id) {
	return self->userData(static_cast<uint>(id));
}

void QObject_destroyed(QObject* self) {
	self->destroyed();
}

void QObject_connect_destroyed(VirtualQObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQObject::connect(self, static_cast<void (QObject::*)(QObject*)>(&QObject::destroyed), self, local_caller{slot, callback, release});
}

QObject* QObject_parent(const QObject* self) {
	return self->parent();
}

bool QObject_inherits(const QObject* self, const char* classname) {
	return self->inherits(classname);
}

void QObject_deleteLater(QObject* self) {
	self->deleteLater();
}

struct miqt_string QObject_tr2(const char* s, const char* c) {
	QString _ret = QObject::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObject_tr3(const char* s, const char* c, int n) {
	QString _ret = QObject::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObject_trUtf82(const char* s, const char* c) {
	QString _ret = QObject::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObject_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QObject::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QObject_startTimer2(QObject* self, int interval, int timerType) {
	return self->startTimer(static_cast<int>(interval), static_cast<Qt::TimerType>(timerType));
}

QMetaObject__Connection* QObject_connect5(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method, int type) {
	return new QMetaObject::Connection(QObject::connect(sender, *signal, receiver, *method, static_cast<Qt::ConnectionType>(type)));
}

QMetaObject__Connection* QObject_connect4(const QObject* self, QObject* sender, const char* signal, const char* member, int type) {
	return new QMetaObject::Connection(self->connect(sender, signal, member, static_cast<Qt::ConnectionType>(type)));
}

void QObject_destroyed1(QObject* self, QObject* param1) {
	self->destroyed(param1);
}

void QObject_connect_destroyed1(VirtualQObject* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*);
		void operator()(QObject* param1) {
			QObject* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQObject::connect(self, static_cast<void (QObject::*)(QObject*)>(&QObject::destroyed), self, local_caller{slot, callback, release});
}

QMetaObject* QObject_virtualbase_metaObject(const VirtualQObject* self) {

	return (QMetaObject*) self->QObject::metaObject();
}

void* QObject_virtualbase_metacast(VirtualQObject* self, const char* param1) {

	return self->QObject::qt_metacast(param1);
}

int QObject_virtualbase_metacall(VirtualQObject* self, int param1, int param2, void** param3) {

	return self->QObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QObject_virtualbase_event(VirtualQObject* self, QEvent* event) {

	return self->QObject::event(event);
}

bool QObject_virtualbase_eventFilter(VirtualQObject* self, QObject* watched, QEvent* event) {

	return self->QObject::eventFilter(watched, event);
}

void QObject_virtualbase_timerEvent(VirtualQObject* self, QTimerEvent* event) {

	self->QObject::timerEvent(event);
}

void QObject_virtualbase_childEvent(VirtualQObject* self, QChildEvent* event) {

	self->QObject::childEvent(event);
}

void QObject_virtualbase_customEvent(VirtualQObject* self, QEvent* event) {

	self->QObject::customEvent(event);
}

void QObject_virtualbase_connectNotify(VirtualQObject* self, QMetaMethod* signal) {

	self->QObject::connectNotify(*signal);
}

void QObject_virtualbase_disconnectNotify(VirtualQObject* self, QMetaMethod* signal) {

	self->QObject::disconnectNotify(*signal);
}

const QMetaObject* QObject_staticMetaObject() { return &QObject::staticMetaObject; }

const QObject_VTable* QObject_vtbl(const VirtualQObject* self) { return self->vtbl; }
void* QObject_vdata(const VirtualQObject* self) { return self->vdata; }
void QObject_setVdata(VirtualQObject* self, void* vdata) { self->vdata = vdata; }

QObject* QObject_protectedbase_sender(const VirtualQObject* self) {
	return self->sender();
}

int QObject_protectedbase_senderSignalIndex(const VirtualQObject* self) {
	return self->senderSignalIndex();
}

int QObject_protectedbase_receivers(const VirtualQObject* self, const char* signal) {
	return self->receivers(signal);
}

bool QObject_protectedbase_isSignalConnected(const VirtualQObject* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QObject_delete(QObject* self) {
	delete self;
}

QObjectUserData* QObjectUserData_new() {
	return new QObjectUserData();
}

void QObjectUserData_delete(QObjectUserData* self) {
	delete self;
}

QSignalBlocker* QSignalBlocker_new(QObject* o) {
	return new QSignalBlocker(o);
}

QSignalBlocker* QSignalBlocker_new2(QObject* o) {
	return new QSignalBlocker(*o);
}

void QSignalBlocker_reblock(QSignalBlocker* self) {
	self->reblock();
}

void QSignalBlocker_unblock(QSignalBlocker* self) {
	self->unblock();
}

void QSignalBlocker_delete(QSignalBlocker* self) {
	delete self;
}

