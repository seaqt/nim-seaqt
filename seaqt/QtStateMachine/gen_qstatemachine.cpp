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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQStateMachine final : public QStateMachine {
	const QStateMachine_VTable* vtbl;
public:
	friend void* QStateMachine_vdata(VirtualQStateMachine* self);
	friend VirtualQStateMachine* vdata_QStateMachine(void* vdata);

	VirtualQStateMachine(const QStateMachine_VTable* vtbl): QStateMachine(), vtbl(vtbl) {}
	VirtualQStateMachine(const QStateMachine_VTable* vtbl, QState::ChildMode childMode): QStateMachine(childMode), vtbl(vtbl) {}
	VirtualQStateMachine(const QStateMachine_VTable* vtbl, QObject* parent): QStateMachine(parent), vtbl(vtbl) {}
	VirtualQStateMachine(const QStateMachine_VTable* vtbl, QState::ChildMode childMode, QObject* parent): QStateMachine(childMode, parent), vtbl(vtbl) {}

	virtual ~VirtualQStateMachine() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQStateMachine* QStateMachine_new(const QStateMachine_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachine(vtbl) : nullptr;
}

VirtualQStateMachine* QStateMachine_new_childMode(const QStateMachine_VTable* vtbl, size_t vdata, int childMode) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachine(vtbl, static_cast<QState::ChildMode>(childMode)) : nullptr;
}

VirtualQStateMachine* QStateMachine_new_parent(const QStateMachine_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachine(vtbl, parent) : nullptr;
}

VirtualQStateMachine* QStateMachine_new_childMode_parent(const QStateMachine_VTable* vtbl, size_t vdata, int childMode, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachine(vtbl, static_cast<QState::ChildMode>(childMode), parent) : nullptr;
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

struct seaqt_string QStateMachine_tr_s(const char* s) {
	QString _ret = QStateMachine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

struct seaqt_string QStateMachine_errorString(const QStateMachine* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

struct seaqt_array /* of QAbstractAnimation* */  QStateMachine_defaultAnimations(const QStateMachine* self) {
	QList<QAbstractAnimation *> _ret = self->defaultAnimations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractAnimation** _arr = static_cast<QAbstractAnimation**>(malloc(sizeof(QAbstractAnimation*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
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

void QStateMachine_postEvent_event(QStateMachine* self, QEvent* event) {
	self->postEvent(event);
}

int QStateMachine_postDelayedEvent_QEvent_int(QStateMachine* self, QEvent* event, int delay) {
	return self->postDelayedEvent(event, static_cast<int>(delay));
}

bool QStateMachine_cancelDelayedEvent(QStateMachine* self, int id) {
	return self->cancelDelayedEvent(static_cast<int>(id));
}

struct seaqt_array /* set of QAbstractState* */  QStateMachine_configuration(const QStateMachine* self) {
	QSet<QAbstractState *> _ret = self->configuration();
	// Convert QSet<> from C++ memory to manually-managed C memory
	QAbstractState** _arr = static_cast<QAbstractState**>(malloc(sizeof(QAbstractState*) * _ret.size()));
	int _ctr = 0;
	QSetIterator<QAbstractState*> _itr(_ret);
	while (_itr.hasNext()) {
		_arr[_ctr++] = _itr.next();
	}
	struct seaqt_array _out;
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

void QStateMachine_connect_runningChanged(QStateMachine* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QStateMachine::connect(self, static_cast<void (QStateMachine::*)(bool)>(&QStateMachine::runningChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool running) {
			bool sigval1 = running;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QStateMachine_tr_s_c(const char* s, const char* c) {
	QString _ret = QStateMachine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QStateMachine_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QStateMachine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStateMachine_postEvent_event_priority(QStateMachine* self, QEvent* event, int priority) {
	self->postEvent(event, static_cast<QStateMachine::EventPriority>(priority));
}

void QStateMachine_connect_started(QStateMachine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QStateMachine::connect(self, &QStateMachine::started, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

void QStateMachine_connect_stopped(QStateMachine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QStateMachine::connect(self, &QStateMachine::stopped, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

const QMetaObject* QStateMachine_staticMetaObject() { return &QStateMachine::staticMetaObject; }
void* QStateMachine_vdata(VirtualQStateMachine* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQStateMachine>()); }
VirtualQStateMachine* vdata_QStateMachine(void* vdata) { return reinterpret_cast<VirtualQStateMachine*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQStateMachine>()); }

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

QObject* QStateMachine_protectedbase_sender(const VirtualQStateMachine* self) {
	return self->QStateMachine::sender();
}

int QStateMachine_protectedbase_senderSignalIndex(const VirtualQStateMachine* self) {
	return self->QStateMachine::senderSignalIndex();
}

int QStateMachine_protectedbase_receivers(const VirtualQStateMachine* self, const char* signal) {
	return self->QStateMachine::receivers(signal);
}

bool QStateMachine_protectedbase_isSignalConnected(const VirtualQStateMachine* self, QMetaMethod* signal) {
	return self->QStateMachine::isSignalConnected(*signal);
}

void QStateMachine_delete(QStateMachine* self) {
	delete self;
}

class VirtualQStateMachineSignalEvent final : public QStateMachine::SignalEvent {
	const QStateMachine__SignalEvent_VTable* vtbl;
public:
	friend void* QStateMachine__SignalEvent_vdata(VirtualQStateMachineSignalEvent* self);
	friend VirtualQStateMachineSignalEvent* vdata_QStateMachine__SignalEvent(void* vdata);

	VirtualQStateMachineSignalEvent(const QStateMachine__SignalEvent_VTable* vtbl, QObject* sender, int signalIndex, const QList<QVariant>& arguments): QStateMachine::SignalEvent(sender, signalIndex, arguments), vtbl(vtbl) {}
	VirtualQStateMachineSignalEvent(const QStateMachine__SignalEvent_VTable* vtbl, const QStateMachine::SignalEvent& from): QStateMachine::SignalEvent(from), vtbl(vtbl) {}

	virtual ~VirtualQStateMachineSignalEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QStateMachine::SignalEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;
		vtbl->setAccepted(this, sigval1);
	}

	friend void QStateMachine__SignalEvent_virtualbase_setAccepted(VirtualQStateMachineSignalEvent* self, bool accepted);

	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QStateMachine::SignalEvent::clone();
		}

		QEvent* callback_return_value = vtbl->clone(this);
		return callback_return_value;
	}

	friend QEvent* QStateMachine__SignalEvent_virtualbase_clone(const VirtualQStateMachineSignalEvent* self);

};

VirtualQStateMachineSignalEvent* QStateMachine__SignalEvent_new_sender_signalIndex_arguments(const QStateMachine__SignalEvent_VTable* vtbl, size_t vdata, QObject* sender, int signalIndex, struct seaqt_array /* of QVariant* */  arguments) {
	QList<QVariant> arguments_QList;
	arguments_QList.reserve(arguments.len);
	QVariant** arguments_arr = static_cast<QVariant**>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		arguments_QList.push_back(*(arguments_arr[i]));
	}
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachineSignalEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachineSignalEvent(vtbl, sender, static_cast<int>(signalIndex), arguments_QList) : nullptr;
}

VirtualQStateMachineSignalEvent* QStateMachine__SignalEvent_new_from(const QStateMachine__SignalEvent_VTable* vtbl, size_t vdata, QStateMachine__SignalEvent* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachineSignalEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachineSignalEvent(vtbl, *from) : nullptr;
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

struct seaqt_array /* of QVariant* */  QStateMachine__SignalEvent_arguments(const QStateMachine__SignalEvent* self) {
	QList<QVariant> _ret = self->arguments();
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QStateMachine__SignalEvent_operatorAssign(QStateMachine__SignalEvent* self, QStateMachine__SignalEvent* from) {
	self->operator=(*from);
}

void* QStateMachine__SignalEvent_vdata(VirtualQStateMachineSignalEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQStateMachineSignalEvent>()); }
VirtualQStateMachineSignalEvent* vdata_QStateMachine__SignalEvent(void* vdata) { return reinterpret_cast<VirtualQStateMachineSignalEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQStateMachineSignalEvent>()); }

void QStateMachine__SignalEvent_virtualbase_setAccepted(VirtualQStateMachineSignalEvent* self, bool accepted) {

	self->QStateMachine::SignalEvent::setAccepted(accepted);
}

QEvent* QStateMachine__SignalEvent_virtualbase_clone(const VirtualQStateMachineSignalEvent* self) {

	return self->QStateMachine::SignalEvent::clone();
}

void QStateMachine__SignalEvent_delete(QStateMachine__SignalEvent* self) {
	delete self;
}

class VirtualQStateMachineWrappedEvent final : public QStateMachine::WrappedEvent {
	const QStateMachine__WrappedEvent_VTable* vtbl;
public:
	friend void* QStateMachine__WrappedEvent_vdata(VirtualQStateMachineWrappedEvent* self);
	friend VirtualQStateMachineWrappedEvent* vdata_QStateMachine__WrappedEvent(void* vdata);

	VirtualQStateMachineWrappedEvent(const QStateMachine__WrappedEvent_VTable* vtbl, QObject* object, QEvent* event): QStateMachine::WrappedEvent(object, event), vtbl(vtbl) {}
	VirtualQStateMachineWrappedEvent(const QStateMachine__WrappedEvent_VTable* vtbl, const QStateMachine::WrappedEvent& from): QStateMachine::WrappedEvent(from), vtbl(vtbl) {}

	virtual ~VirtualQStateMachineWrappedEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QStateMachine::WrappedEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;
		vtbl->setAccepted(this, sigval1);
	}

	friend void QStateMachine__WrappedEvent_virtualbase_setAccepted(VirtualQStateMachineWrappedEvent* self, bool accepted);

	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QStateMachine::WrappedEvent::clone();
		}

		QEvent* callback_return_value = vtbl->clone(this);
		return callback_return_value;
	}

	friend QEvent* QStateMachine__WrappedEvent_virtualbase_clone(const VirtualQStateMachineWrappedEvent* self);

};

VirtualQStateMachineWrappedEvent* QStateMachine__WrappedEvent_new_object_event(const QStateMachine__WrappedEvent_VTable* vtbl, size_t vdata, QObject* object, QEvent* event) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachineWrappedEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachineWrappedEvent(vtbl, object, event) : nullptr;
}

VirtualQStateMachineWrappedEvent* QStateMachine__WrappedEvent_new_from(const QStateMachine__WrappedEvent_VTable* vtbl, size_t vdata, QStateMachine__WrappedEvent* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStateMachineWrappedEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStateMachineWrappedEvent(vtbl, *from) : nullptr;
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

void QStateMachine__WrappedEvent_operatorAssign(QStateMachine__WrappedEvent* self, QStateMachine__WrappedEvent* from) {
	self->operator=(*from);
}

void* QStateMachine__WrappedEvent_vdata(VirtualQStateMachineWrappedEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQStateMachineWrappedEvent>()); }
VirtualQStateMachineWrappedEvent* vdata_QStateMachine__WrappedEvent(void* vdata) { return reinterpret_cast<VirtualQStateMachineWrappedEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQStateMachineWrappedEvent>()); }

void QStateMachine__WrappedEvent_virtualbase_setAccepted(VirtualQStateMachineWrappedEvent* self, bool accepted) {

	self->QStateMachine::WrappedEvent::setAccepted(accepted);
}

QEvent* QStateMachine__WrappedEvent_virtualbase_clone(const VirtualQStateMachineWrappedEvent* self) {

	return self->QStateMachine::WrappedEvent::clone();
}

void QStateMachine__WrappedEvent_delete(QStateMachine__WrappedEvent* self) {
	delete self;
}

