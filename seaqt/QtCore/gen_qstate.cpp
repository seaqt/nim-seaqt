#include <QAbstractState>
#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSignalTransition>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qstate.h>
#include "gen_qstate.h"
class VirtualQState final : public QState {
	const QState_VTable* vtbl;
	void* vdata;
public:
	friend const QState_VTable* QState_vtbl(const VirtualQState* self);
	friend void* QState_vdata(const VirtualQState* self);
	friend void QState_setVdata(VirtualQState* self, void* vdata);

	VirtualQState(const QState_VTable* vtbl, void* vdata): QState(), vtbl(vtbl), vdata(vdata) {}
	VirtualQState(const QState_VTable* vtbl, void* vdata, QState::ChildMode childMode): QState(childMode), vtbl(vtbl), vdata(vdata) {}
	VirtualQState(const QState_VTable* vtbl, void* vdata, QState* parent): QState(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQState(const QState_VTable* vtbl, void* vdata, QState::ChildMode childMode, QState* parent): QState(childMode, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQState() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QState::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QState_virtualbase_metaObject(const VirtualQState* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QState::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QState_virtualbase_metacast(VirtualQState* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QState::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QState_virtualbase_metacall(VirtualQState* self, int param1, int param2, void** param3);

	virtual void onEntry(QEvent* event) override {
		if (vtbl->onEntry == 0) {
			QState::onEntry(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onEntry(this, sigval1);

	}

	friend void QState_virtualbase_onEntry(VirtualQState* self, QEvent* event);

	virtual void onExit(QEvent* event) override {
		if (vtbl->onExit == 0) {
			QState::onExit(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onExit(this, sigval1);

	}

	friend void QState_virtualbase_onExit(VirtualQState* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QState::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QState_virtualbase_event(VirtualQState* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QState::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QState_virtualbase_eventFilter(VirtualQState* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QState::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QState_virtualbase_timerEvent(VirtualQState* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QState::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QState_virtualbase_childEvent(VirtualQState* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QState::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QState_virtualbase_customEvent(VirtualQState* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QState::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QState_virtualbase_connectNotify(VirtualQState* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QState::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QState_virtualbase_disconnectNotify(VirtualQState* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QState_protectedbase_sender(const VirtualQState* self);
	friend int QState_protectedbase_senderSignalIndex(const VirtualQState* self);
	friend int QState_protectedbase_receivers(const VirtualQState* self, const char* signal);
	friend bool QState_protectedbase_isSignalConnected(const VirtualQState* self, QMetaMethod* signal);
};

VirtualQState* QState_new(const QState_VTable* vtbl, void* vdata) {
	return new VirtualQState(vtbl, vdata);
}

VirtualQState* QState_new2(const QState_VTable* vtbl, void* vdata, int childMode) {
	return new VirtualQState(vtbl, vdata, static_cast<QState::ChildMode>(childMode));
}

VirtualQState* QState_new3(const QState_VTable* vtbl, void* vdata, QState* parent) {
	return new VirtualQState(vtbl, vdata, parent);
}

VirtualQState* QState_new4(const QState_VTable* vtbl, void* vdata, int childMode, QState* parent) {
	return new VirtualQState(vtbl, vdata, static_cast<QState::ChildMode>(childMode), parent);
}

void QState_virtbase(QState* src, QAbstractState** outptr_QAbstractState) {
	*outptr_QAbstractState = static_cast<QAbstractState*>(src);
}

QMetaObject* QState_metaObject(const QState* self) {
	return (QMetaObject*) self->metaObject();
}

void* QState_metacast(QState* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QState_metacall(QState* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QState_tr(const char* s) {
	QString _ret = QState::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QState_trUtf8(const char* s) {
	QString _ret = QState::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractState* QState_errorState(const QState* self) {
	return self->errorState();
}

void QState_setErrorState(QState* self, QAbstractState* state) {
	self->setErrorState(state);
}

void QState_addTransition(QState* self, QAbstractTransition* transition) {
	self->addTransition(transition);
}

QSignalTransition* QState_addTransition2(QState* self, QObject* sender, const char* signal, QAbstractState* target) {
	return self->addTransition(sender, signal, target);
}

QAbstractTransition* QState_addTransitionWithTarget(QState* self, QAbstractState* target) {
	return self->addTransition(target);
}

void QState_removeTransition(QState* self, QAbstractTransition* transition) {
	self->removeTransition(transition);
}

struct miqt_array /* of QAbstractTransition* */  QState_transitions(const QState* self) {
	QList<QAbstractTransition *> _ret = self->transitions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractTransition** _arr = static_cast<QAbstractTransition**>(malloc(sizeof(QAbstractTransition*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAbstractState* QState_initialState(const QState* self) {
	return self->initialState();
}

void QState_setInitialState(QState* self, QAbstractState* state) {
	self->setInitialState(state);
}

int QState_childMode(const QState* self) {
	QState::ChildMode _ret = self->childMode();
	return static_cast<int>(_ret);
}

void QState_setChildMode(QState* self, int mode) {
	self->setChildMode(static_cast<QState::ChildMode>(mode));
}

void QState_assignProperty(QState* self, QObject* object, const char* name, QVariant* value) {
	self->assignProperty(object, name, *value);
}

struct miqt_string QState_tr2(const char* s, const char* c) {
	QString _ret = QState::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QState_tr3(const char* s, const char* c, int n) {
	QString _ret = QState::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QState_trUtf82(const char* s, const char* c) {
	QString _ret = QState::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QState_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QState::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QState_virtualbase_metaObject(const VirtualQState* self) {

	return (QMetaObject*) self->QState::metaObject();
}

void* QState_virtualbase_metacast(VirtualQState* self, const char* param1) {

	return self->QState::qt_metacast(param1);
}

int QState_virtualbase_metacall(VirtualQState* self, int param1, int param2, void** param3) {

	return self->QState::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QState_virtualbase_onEntry(VirtualQState* self, QEvent* event) {

	self->QState::onEntry(event);
}

void QState_virtualbase_onExit(VirtualQState* self, QEvent* event) {

	self->QState::onExit(event);
}

bool QState_virtualbase_event(VirtualQState* self, QEvent* e) {

	return self->QState::event(e);
}

bool QState_virtualbase_eventFilter(VirtualQState* self, QObject* watched, QEvent* event) {

	return self->QState::eventFilter(watched, event);
}

void QState_virtualbase_timerEvent(VirtualQState* self, QTimerEvent* event) {

	self->QState::timerEvent(event);
}

void QState_virtualbase_childEvent(VirtualQState* self, QChildEvent* event) {

	self->QState::childEvent(event);
}

void QState_virtualbase_customEvent(VirtualQState* self, QEvent* event) {

	self->QState::customEvent(event);
}

void QState_virtualbase_connectNotify(VirtualQState* self, QMetaMethod* signal) {

	self->QState::connectNotify(*signal);
}

void QState_virtualbase_disconnectNotify(VirtualQState* self, QMetaMethod* signal) {

	self->QState::disconnectNotify(*signal);
}

const QMetaObject* QState_staticMetaObject() { return &QState::staticMetaObject; }

const QState_VTable* QState_vtbl(const VirtualQState* self) { return self->vtbl; }
void* QState_vdata(const VirtualQState* self) { return self->vdata; }
void QState_setVdata(VirtualQState* self, void* vdata) { self->vdata = vdata; }

QObject* QState_protectedbase_sender(const VirtualQState* self) {
	return self->sender();
}

int QState_protectedbase_senderSignalIndex(const VirtualQState* self) {
	return self->senderSignalIndex();
}

int QState_protectedbase_receivers(const VirtualQState* self, const char* signal) {
	return self->receivers(signal);
}

bool QState_protectedbase_isSignalConnected(const VirtualQState* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QState_delete(QState* self) {
	delete self;
}

