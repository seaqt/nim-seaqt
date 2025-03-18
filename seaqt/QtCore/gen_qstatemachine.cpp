#include <QAbstractAnimation>
#include <QAbstractState>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSet>
#include <QState>
#include <QStateMachine>
#define WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__SignalEvent
#define WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__WrappedEvent
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qstatemachine.h>
#include "gen_qstatemachine.h"
class VirtualQStateMachine final : public QStateMachine {
	const QStateMachine_VTable* vtbl;
	void* vdata;
public:
	friend const QStateMachine_VTable* QStateMachine_vtbl(const VirtualQStateMachine* self);
	friend void* QStateMachine_vdata(const VirtualQStateMachine* self);
	friend void QStateMachine_setVdata(VirtualQStateMachine* self, void* vdata);

	VirtualQStateMachine(const QStateMachine_VTable* vtbl, void* vdata): QStateMachine(), vtbl(vtbl), vdata(vdata) {}
	VirtualQStateMachine(const QStateMachine_VTable* vtbl, void* vdata, QState::ChildMode childMode): QStateMachine(childMode), vtbl(vtbl), vdata(vdata) {}
	VirtualQStateMachine(const QStateMachine_VTable* vtbl, void* vdata, QObject* parent): QStateMachine(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQStateMachine(const QStateMachine_VTable* vtbl, void* vdata, QState::ChildMode childMode, QObject* parent): QStateMachine(childMode, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQStateMachine() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStateMachine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QStateMachine_virtualbase_metaObject(const VirtualQStateMachine* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStateMachine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QStateMachine_virtualbase_metacast(VirtualQStateMachine* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStateMachine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStateMachine_virtualbase_metacall(VirtualQStateMachine* self, int param1, int param2, void** param3);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStateMachine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStateMachine_virtualbase_eventFilter(VirtualQStateMachine* self, QObject* watched, QEvent* event);

	virtual void onEntry(QEvent* event) override {
		if (vtbl->onEntry == 0) {
			QStateMachine::onEntry(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onEntry(this, sigval1);

	}

	friend void QStateMachine_virtualbase_onEntry(VirtualQStateMachine* self, QEvent* event);

	virtual void onExit(QEvent* event) override {
		if (vtbl->onExit == 0) {
			QStateMachine::onExit(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onExit(this, sigval1);

	}

	friend void QStateMachine_virtualbase_onExit(VirtualQStateMachine* self, QEvent* event);

	virtual void beginSelectTransitions(QEvent* event) override {
		if (vtbl->beginSelectTransitions == 0) {
			QStateMachine::beginSelectTransitions(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->beginSelectTransitions(this, sigval1);

	}

	friend void QStateMachine_virtualbase_beginSelectTransitions(VirtualQStateMachine* self, QEvent* event);

	virtual void endSelectTransitions(QEvent* event) override {
		if (vtbl->endSelectTransitions == 0) {
			QStateMachine::endSelectTransitions(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->endSelectTransitions(this, sigval1);

	}

	friend void QStateMachine_virtualbase_endSelectTransitions(VirtualQStateMachine* self, QEvent* event);

	virtual void beginMicrostep(QEvent* event) override {
		if (vtbl->beginMicrostep == 0) {
			QStateMachine::beginMicrostep(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->beginMicrostep(this, sigval1);

	}

	friend void QStateMachine_virtualbase_beginMicrostep(VirtualQStateMachine* self, QEvent* event);

	virtual void endMicrostep(QEvent* event) override {
		if (vtbl->endMicrostep == 0) {
			QStateMachine::endMicrostep(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->endMicrostep(this, sigval1);

	}

	friend void QStateMachine_virtualbase_endMicrostep(VirtualQStateMachine* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QStateMachine::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QStateMachine_virtualbase_event(VirtualQStateMachine* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStateMachine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QStateMachine_virtualbase_timerEvent(VirtualQStateMachine* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStateMachine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QStateMachine_virtualbase_childEvent(VirtualQStateMachine* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStateMachine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QStateMachine_virtualbase_customEvent(VirtualQStateMachine* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStateMachine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QStateMachine_virtualbase_connectNotify(VirtualQStateMachine* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStateMachine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QStateMachine_virtualbase_disconnectNotify(VirtualQStateMachine* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QStateMachine_protectedbase_sender(const VirtualQStateMachine* self);
	friend int QStateMachine_protectedbase_senderSignalIndex(const VirtualQStateMachine* self);
	friend int QStateMachine_protectedbase_receivers(const VirtualQStateMachine* self, const char* signal);
	friend bool QStateMachine_protectedbase_isSignalConnected(const VirtualQStateMachine* self, QMetaMethod* signal);
};

VirtualQStateMachine* QStateMachine_new(const QStateMachine_VTable* vtbl, void* vdata) {
	return new VirtualQStateMachine(vtbl, vdata);
}

VirtualQStateMachine* QStateMachine_new2(const QStateMachine_VTable* vtbl, void* vdata, int childMode) {
	return new VirtualQStateMachine(vtbl, vdata, static_cast<QState::ChildMode>(childMode));
}

VirtualQStateMachine* QStateMachine_new3(const QStateMachine_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQStateMachine(vtbl, vdata, parent);
}

VirtualQStateMachine* QStateMachine_new4(const QStateMachine_VTable* vtbl, void* vdata, int childMode, QObject* parent) {
	return new VirtualQStateMachine(vtbl, vdata, static_cast<QState::ChildMode>(childMode), parent);
}

void QStateMachine_virtbase(QStateMachine* src, QState** outptr_QState) {
	*outptr_QState = static_cast<QState*>(src);
}

QMetaObject* QStateMachine_metaObject(const QStateMachine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStateMachine_metacast(QStateMachine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStateMachine_metacall(QStateMachine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStateMachine_tr(const char* s) {
	QString _ret = QStateMachine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStateMachine_trUtf8(const char* s) {
	QString _ret = QStateMachine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStateMachine_addState(QStateMachine* self, QAbstractState* state) {
	self->addState(state);
}

void QStateMachine_removeState(QStateMachine* self, QAbstractState* state) {
	self->removeState(state);
}

int QStateMachine_error(const QStateMachine* self) {
	QStateMachine::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QStateMachine_errorString(const QStateMachine* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStateMachine_clearError(QStateMachine* self) {
	self->clearError();
}

bool QStateMachine_isRunning(const QStateMachine* self) {
	return self->isRunning();
}

bool QStateMachine_isAnimated(const QStateMachine* self) {
	return self->isAnimated();
}

void QStateMachine_setAnimated(QStateMachine* self, bool enabled) {
	self->setAnimated(enabled);
}

void QStateMachine_addDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation) {
	self->addDefaultAnimation(animation);
}

struct miqt_array /* of QAbstractAnimation* */  QStateMachine_defaultAnimations(const QStateMachine* self) {
	QList<QAbstractAnimation *> _ret = self->defaultAnimations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractAnimation** _arr = static_cast<QAbstractAnimation**>(malloc(sizeof(QAbstractAnimation*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QStateMachine_removeDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation) {
	self->removeDefaultAnimation(animation);
}

int QStateMachine_globalRestorePolicy(const QStateMachine* self) {
	QState::RestorePolicy _ret = self->globalRestorePolicy();
	return static_cast<int>(_ret);
}

void QStateMachine_setGlobalRestorePolicy(QStateMachine* self, int restorePolicy) {
	self->setGlobalRestorePolicy(static_cast<QState::RestorePolicy>(restorePolicy));
}

void QStateMachine_postEvent(QStateMachine* self, QEvent* event) {
	self->postEvent(event);
}

int QStateMachine_postDelayedEvent(QStateMachine* self, QEvent* event, int delay) {
	return self->postDelayedEvent(event, static_cast<int>(delay));
}

bool QStateMachine_cancelDelayedEvent(QStateMachine* self, int id) {
	return self->cancelDelayedEvent(static_cast<int>(id));
}

struct miqt_array /* set of QAbstractState* */  QStateMachine_configuration(const QStateMachine* self) {
	QSet<QAbstractState *> _ret = self->configuration();
	// Convert QSet<> from C++ memory to manually-managed C memory
	QAbstractState** _arr = static_cast<QAbstractState**>(malloc(sizeof(QAbstractState*) * _ret.size()));
	int _ctr = 0;
	QSetIterator<QAbstractState*> _itr(_ret);
	while (_itr.hasNext()) {
		_arr[_ctr++] = _itr.next();
	}
	struct miqt_array _out;
	_out.len = _ret.size();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QStateMachine_eventFilter(QStateMachine* self, QObject* watched, QEvent* event) {
	return self->eventFilter(watched, event);
}

void QStateMachine_start(QStateMachine* self) {
	self->start();
}

void QStateMachine_stop(QStateMachine* self) {
	self->stop();
}

void QStateMachine_setRunning(QStateMachine* self, bool running) {
	self->setRunning(running);
}

void QStateMachine_runningChanged(QStateMachine* self, bool running) {
	self->runningChanged(running);
}

void QStateMachine_connect_runningChanged(VirtualQStateMachine* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool running) {
			bool sigval1 = running;
			callback(slot, sigval1);
		}
	};
	VirtualQStateMachine::connect(self, static_cast<void (QStateMachine::*)(bool)>(&QStateMachine::runningChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QStateMachine_tr2(const char* s, const char* c) {
	QString _ret = QStateMachine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStateMachine_tr3(const char* s, const char* c, int n) {
	QString _ret = QStateMachine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStateMachine_trUtf82(const char* s, const char* c) {
	QString _ret = QStateMachine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStateMachine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStateMachine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStateMachine_postEvent2(QStateMachine* self, QEvent* event, int priority) {
	self->postEvent(event, static_cast<QStateMachine::EventPriority>(priority));
}

QMetaObject* QStateMachine_virtualbase_metaObject(const VirtualQStateMachine* self) {

	return (QMetaObject*) self->QStateMachine::metaObject();
}

void* QStateMachine_virtualbase_metacast(VirtualQStateMachine* self, const char* param1) {

	return self->QStateMachine::qt_metacast(param1);
}

int QStateMachine_virtualbase_metacall(VirtualQStateMachine* self, int param1, int param2, void** param3) {

	return self->QStateMachine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QStateMachine_virtualbase_eventFilter(VirtualQStateMachine* self, QObject* watched, QEvent* event) {

	return self->QStateMachine::eventFilter(watched, event);
}

void QStateMachine_virtualbase_onEntry(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::onEntry(event);
}

void QStateMachine_virtualbase_onExit(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::onExit(event);
}

void QStateMachine_virtualbase_beginSelectTransitions(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::beginSelectTransitions(event);
}

void QStateMachine_virtualbase_endSelectTransitions(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::endSelectTransitions(event);
}

void QStateMachine_virtualbase_beginMicrostep(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::beginMicrostep(event);
}

void QStateMachine_virtualbase_endMicrostep(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::endMicrostep(event);
}

bool QStateMachine_virtualbase_event(VirtualQStateMachine* self, QEvent* e) {

	return self->QStateMachine::event(e);
}

void QStateMachine_virtualbase_timerEvent(VirtualQStateMachine* self, QTimerEvent* event) {

	self->QStateMachine::timerEvent(event);
}

void QStateMachine_virtualbase_childEvent(VirtualQStateMachine* self, QChildEvent* event) {

	self->QStateMachine::childEvent(event);
}

void QStateMachine_virtualbase_customEvent(VirtualQStateMachine* self, QEvent* event) {

	self->QStateMachine::customEvent(event);
}

void QStateMachine_virtualbase_connectNotify(VirtualQStateMachine* self, QMetaMethod* signal) {

	self->QStateMachine::connectNotify(*signal);
}

void QStateMachine_virtualbase_disconnectNotify(VirtualQStateMachine* self, QMetaMethod* signal) {

	self->QStateMachine::disconnectNotify(*signal);
}

const QMetaObject* QStateMachine_staticMetaObject() { return &QStateMachine::staticMetaObject; }

const QStateMachine_VTable* QStateMachine_vtbl(const VirtualQStateMachine* self) { return self->vtbl; }
void* QStateMachine_vdata(const VirtualQStateMachine* self) { return self->vdata; }
void QStateMachine_setVdata(VirtualQStateMachine* self, void* vdata) { self->vdata = vdata; }

QObject* QStateMachine_protectedbase_sender(const VirtualQStateMachine* self) {
	return self->sender();
}

int QStateMachine_protectedbase_senderSignalIndex(const VirtualQStateMachine* self) {
	return self->senderSignalIndex();
}

int QStateMachine_protectedbase_receivers(const VirtualQStateMachine* self, const char* signal) {
	return self->receivers(signal);
}

bool QStateMachine_protectedbase_isSignalConnected(const VirtualQStateMachine* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QStateMachine_delete(QStateMachine* self) {
	delete self;
}

QStateMachine__SignalEvent* QStateMachine__SignalEvent_new(QObject* sender, int signalIndex, struct miqt_array /* of QVariant* */  arguments) {
	QList<QVariant> arguments_QList;
	arguments_QList.reserve(arguments.len);
	QVariant** arguments_arr = static_cast<QVariant**>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		arguments_QList.push_back(*(arguments_arr[i]));
	}
	return new QStateMachine__SignalEvent(sender, static_cast<int>(signalIndex), arguments_QList);
}

QStateMachine__SignalEvent* QStateMachine__SignalEvent_new2(QStateMachine__SignalEvent* param1) {
	return new QStateMachine__SignalEvent(*param1);
}

void QStateMachine__SignalEvent_virtbase(QStateMachine__SignalEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QObject* QStateMachine__SignalEvent_sender(const QStateMachine__SignalEvent* self) {
	return self->sender();
}

int QStateMachine__SignalEvent_signalIndex(const QStateMachine__SignalEvent* self) {
	return self->signalIndex();
}

struct miqt_array /* of QVariant* */  QStateMachine__SignalEvent_arguments(const QStateMachine__SignalEvent* self) {
	QList<QVariant> _ret = self->arguments();
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QStateMachine__SignalEvent_delete(QStateMachine__SignalEvent* self) {
	delete self;
}

QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new(QObject* object, QEvent* event) {
	return new QStateMachine__WrappedEvent(object, event);
}

QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new2(QStateMachine__WrappedEvent* param1) {
	return new QStateMachine__WrappedEvent(*param1);
}

void QStateMachine__WrappedEvent_virtbase(QStateMachine__WrappedEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QObject* QStateMachine__WrappedEvent_object(const QStateMachine__WrappedEvent* self) {
	return self->object();
}

QEvent* QStateMachine__WrappedEvent_event(const QStateMachine__WrappedEvent* self) {
	return self->event();
}

void QStateMachine__WrappedEvent_delete(QStateMachine__WrappedEvent* self) {
	delete self;
}

