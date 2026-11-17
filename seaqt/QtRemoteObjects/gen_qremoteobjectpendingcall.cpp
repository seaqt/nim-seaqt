#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRemoteObjectPendingCall>
#include <QRemoteObjectPendingCallWatcher>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qremoteobjectpendingcall.h>
#include "gen_qremoteobjectpendingcall.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QRemoteObjectPendingCall* QRemoteObjectPendingCall_new() {
	return new (std::nothrow) QRemoteObjectPendingCall();
}

QRemoteObjectPendingCall* QRemoteObjectPendingCall_new_from(QRemoteObjectPendingCall* from) {
	return new (std::nothrow) QRemoteObjectPendingCall(*from);
}

void QRemoteObjectPendingCall_operatorAssign(QRemoteObjectPendingCall* self, QRemoteObjectPendingCall* from) {
	self->operator=(*from);
}

QVariant* QRemoteObjectPendingCall_returnValue(const QRemoteObjectPendingCall* self) {
	return new QVariant(self->returnValue());
}

int QRemoteObjectPendingCall_error(const QRemoteObjectPendingCall* self) {
	QRemoteObjectPendingCall::Error _ret = self->error();
	return static_cast<int>(_ret);
}

bool QRemoteObjectPendingCall_isFinished(const QRemoteObjectPendingCall* self) {
	return self->isFinished();
}

bool QRemoteObjectPendingCall_waitForFinished(QRemoteObjectPendingCall* self) {
	return self->waitForFinished();
}

QRemoteObjectPendingCall* QRemoteObjectPendingCall_fromCompletedCall(QVariant* returnValue) {
	return new QRemoteObjectPendingCall(QRemoteObjectPendingCall::fromCompletedCall(*returnValue));
}

bool QRemoteObjectPendingCall_waitForFinished_timeout(QRemoteObjectPendingCall* self, int timeout) {
	return self->waitForFinished(static_cast<int>(timeout));
}

void QRemoteObjectPendingCall_delete(QRemoteObjectPendingCall* self) {
	delete self;
}

class VirtualQRemoteObjectPendingCallWatcher final : public QRemoteObjectPendingCallWatcher {
	const QRemoteObjectPendingCallWatcher_VTable* vtbl;
public:
	friend void* QRemoteObjectPendingCallWatcher_vdata(VirtualQRemoteObjectPendingCallWatcher* self);
	friend VirtualQRemoteObjectPendingCallWatcher* vdata_QRemoteObjectPendingCallWatcher(void* vdata);

	VirtualQRemoteObjectPendingCallWatcher(const QRemoteObjectPendingCallWatcher_VTable* vtbl, const QRemoteObjectPendingCall& call): QRemoteObjectPendingCallWatcher(call), vtbl(vtbl) {}
	VirtualQRemoteObjectPendingCallWatcher(const QRemoteObjectPendingCallWatcher_VTable* vtbl, const QRemoteObjectPendingCall& call, QObject* parent): QRemoteObjectPendingCallWatcher(call, parent), vtbl(vtbl) {}

	virtual ~VirtualQRemoteObjectPendingCallWatcher() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRemoteObjectPendingCallWatcher::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRemoteObjectPendingCallWatcher_virtualbase_metaObject(const VirtualQRemoteObjectPendingCallWatcher* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRemoteObjectPendingCallWatcher::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRemoteObjectPendingCallWatcher_virtualbase_metacast(VirtualQRemoteObjectPendingCallWatcher* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRemoteObjectPendingCallWatcher::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRemoteObjectPendingCallWatcher_virtualbase_metacall(VirtualQRemoteObjectPendingCallWatcher* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRemoteObjectPendingCallWatcher::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectPendingCallWatcher_virtualbase_event(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRemoteObjectPendingCallWatcher::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectPendingCallWatcher_virtualbase_eventFilter(VirtualQRemoteObjectPendingCallWatcher* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRemoteObjectPendingCallWatcher::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRemoteObjectPendingCallWatcher_virtualbase_timerEvent(VirtualQRemoteObjectPendingCallWatcher* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRemoteObjectPendingCallWatcher::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRemoteObjectPendingCallWatcher_virtualbase_childEvent(VirtualQRemoteObjectPendingCallWatcher* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRemoteObjectPendingCallWatcher::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRemoteObjectPendingCallWatcher_virtualbase_customEvent(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRemoteObjectPendingCallWatcher::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRemoteObjectPendingCallWatcher_virtualbase_connectNotify(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRemoteObjectPendingCallWatcher::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRemoteObjectPendingCallWatcher_virtualbase_disconnectNotify(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRemoteObjectPendingCallWatcher_protectedbase_sender(const VirtualQRemoteObjectPendingCallWatcher* self);
	friend int QRemoteObjectPendingCallWatcher_protectedbase_senderSignalIndex(const VirtualQRemoteObjectPendingCallWatcher* self);
	friend int QRemoteObjectPendingCallWatcher_protectedbase_receivers(const VirtualQRemoteObjectPendingCallWatcher* self, const char* signal);
	friend bool QRemoteObjectPendingCallWatcher_protectedbase_isSignalConnected(const VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);
};

VirtualQRemoteObjectPendingCallWatcher* QRemoteObjectPendingCallWatcher_new_call(const QRemoteObjectPendingCallWatcher_VTable* vtbl, size_t vdata, QRemoteObjectPendingCall* call) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectPendingCallWatcher>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectPendingCallWatcher(vtbl, *call) : nullptr;
}

VirtualQRemoteObjectPendingCallWatcher* QRemoteObjectPendingCallWatcher_new_call_parent(const QRemoteObjectPendingCallWatcher_VTable* vtbl, size_t vdata, QRemoteObjectPendingCall* call, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectPendingCallWatcher>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectPendingCallWatcher(vtbl, *call, parent) : nullptr;
}

void QRemoteObjectPendingCallWatcher_virtbase(QRemoteObjectPendingCallWatcher* src, QObject** outptr_QObject, QRemoteObjectPendingCall** outptr_QRemoteObjectPendingCall) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QRemoteObjectPendingCall = static_cast<QRemoteObjectPendingCall*>(src);
}

QMetaObject* QRemoteObjectPendingCallWatcher_metaObject(const QRemoteObjectPendingCallWatcher* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectPendingCallWatcher_metacast(QRemoteObjectPendingCallWatcher* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectPendingCallWatcher_metacall(QRemoteObjectPendingCallWatcher* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectPendingCallWatcher_tr_s(const char* s) {
	QString _ret = QRemoteObjectPendingCallWatcher::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRemoteObjectPendingCallWatcher_isFinished(const QRemoteObjectPendingCallWatcher* self) {
	return self->isFinished();
}

void QRemoteObjectPendingCallWatcher_waitForFinished(QRemoteObjectPendingCallWatcher* self) {
	self->waitForFinished();
}

void QRemoteObjectPendingCallWatcher_finished(QRemoteObjectPendingCallWatcher* self, QRemoteObjectPendingCallWatcher* selfVal) {
	self->finished(selfVal);
}

void QRemoteObjectPendingCallWatcher_connect_finished(QRemoteObjectPendingCallWatcher* self, intptr_t slot, void (*callback)(intptr_t, QRemoteObjectPendingCallWatcher*), void (*release)(intptr_t)) {
	QRemoteObjectPendingCallWatcher::connect(self, static_cast<void (QRemoteObjectPendingCallWatcher::*)(QRemoteObjectPendingCallWatcher*)>(&QRemoteObjectPendingCallWatcher::finished), self, [callback, release = seaqt::release_callback{slot,release}](QRemoteObjectPendingCallWatcher* selfVal) {
			QRemoteObjectPendingCallWatcher* sigval1 = selfVal;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRemoteObjectPendingCallWatcher_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectPendingCallWatcher::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectPendingCallWatcher_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectPendingCallWatcher::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRemoteObjectPendingCallWatcher_staticMetaObject() { return &QRemoteObjectPendingCallWatcher::staticMetaObject; }
void* QRemoteObjectPendingCallWatcher_vdata(VirtualQRemoteObjectPendingCallWatcher* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRemoteObjectPendingCallWatcher>()); }
VirtualQRemoteObjectPendingCallWatcher* vdata_QRemoteObjectPendingCallWatcher(void* vdata) { return reinterpret_cast<VirtualQRemoteObjectPendingCallWatcher*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRemoteObjectPendingCallWatcher>()); }

QMetaObject* QRemoteObjectPendingCallWatcher_virtualbase_metaObject(const VirtualQRemoteObjectPendingCallWatcher* self) {

	return (QMetaObject*) self->QRemoteObjectPendingCallWatcher::metaObject();
}

void* QRemoteObjectPendingCallWatcher_virtualbase_metacast(VirtualQRemoteObjectPendingCallWatcher* self, const char* param1) {

	return self->QRemoteObjectPendingCallWatcher::qt_metacast(param1);
}

int QRemoteObjectPendingCallWatcher_virtualbase_metacall(VirtualQRemoteObjectPendingCallWatcher* self, int param1, int param2, void** param3) {

	return self->QRemoteObjectPendingCallWatcher::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QRemoteObjectPendingCallWatcher_virtualbase_event(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event) {

	return self->QRemoteObjectPendingCallWatcher::event(event);
}

bool QRemoteObjectPendingCallWatcher_virtualbase_eventFilter(VirtualQRemoteObjectPendingCallWatcher* self, QObject* watched, QEvent* event) {

	return self->QRemoteObjectPendingCallWatcher::eventFilter(watched, event);
}

void QRemoteObjectPendingCallWatcher_virtualbase_timerEvent(VirtualQRemoteObjectPendingCallWatcher* self, QTimerEvent* event) {

	self->QRemoteObjectPendingCallWatcher::timerEvent(event);
}

void QRemoteObjectPendingCallWatcher_virtualbase_childEvent(VirtualQRemoteObjectPendingCallWatcher* self, QChildEvent* event) {

	self->QRemoteObjectPendingCallWatcher::childEvent(event);
}

void QRemoteObjectPendingCallWatcher_virtualbase_customEvent(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event) {

	self->QRemoteObjectPendingCallWatcher::customEvent(event);
}

void QRemoteObjectPendingCallWatcher_virtualbase_connectNotify(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal) {

	self->QRemoteObjectPendingCallWatcher::connectNotify(*signal);
}

void QRemoteObjectPendingCallWatcher_virtualbase_disconnectNotify(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal) {

	self->QRemoteObjectPendingCallWatcher::disconnectNotify(*signal);
}

QObject* QRemoteObjectPendingCallWatcher_protectedbase_sender(const VirtualQRemoteObjectPendingCallWatcher* self) {
	return self->QRemoteObjectPendingCallWatcher::sender();
}

int QRemoteObjectPendingCallWatcher_protectedbase_senderSignalIndex(const VirtualQRemoteObjectPendingCallWatcher* self) {
	return self->QRemoteObjectPendingCallWatcher::senderSignalIndex();
}

int QRemoteObjectPendingCallWatcher_protectedbase_receivers(const VirtualQRemoteObjectPendingCallWatcher* self, const char* signal) {
	return self->QRemoteObjectPendingCallWatcher::receivers(signal);
}

bool QRemoteObjectPendingCallWatcher_protectedbase_isSignalConnected(const VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal) {
	return self->QRemoteObjectPendingCallWatcher::isSignalConnected(*signal);
}

void QRemoteObjectPendingCallWatcher_delete(QRemoteObjectPendingCallWatcher* self) {
	delete self;
}

