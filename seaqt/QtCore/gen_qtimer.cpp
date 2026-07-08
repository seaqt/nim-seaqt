#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimer>
#include <QTimerEvent>
#include <qtimer.h>
#include "gen_qtimer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQTimer final : public QTimer {
	const QTimer_VTable* vtbl;
public:
	friend void* QTimer_vdata(VirtualQTimer* self);
	friend VirtualQTimer* vdata_QTimer(void* vdata);

	VirtualQTimer(const QTimer_VTable* vtbl): QTimer(), vtbl(vtbl) {}
	VirtualQTimer(const QTimer_VTable* vtbl, QObject* parent): QTimer(parent), vtbl(vtbl) {}

	virtual ~VirtualQTimer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QTimer_virtualbase_metaObject(const VirtualQTimer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QTimer_virtualbase_metacast(VirtualQTimer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QTimer_virtualbase_metacall(VirtualQTimer* self, int param1, int param2, void** param3);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QTimer::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QTimer_virtualbase_timerEvent(VirtualQTimer* self, QTimerEvent* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QTimer_virtualbase_event(VirtualQTimer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QTimer_virtualbase_eventFilter(VirtualQTimer* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QTimer_virtualbase_childEvent(VirtualQTimer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QTimer_virtualbase_customEvent(VirtualQTimer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QTimer_virtualbase_connectNotify(VirtualQTimer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QTimer_virtualbase_disconnectNotify(VirtualQTimer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTimer_protectedbase_sender(const VirtualQTimer* self);
	friend int QTimer_protectedbase_senderSignalIndex(const VirtualQTimer* self);
	friend int QTimer_protectedbase_receivers(const VirtualQTimer* self, const char* signal);
	friend bool QTimer_protectedbase_isSignalConnected(const VirtualQTimer* self, QMetaMethod* signal);
};

VirtualQTimer* QTimer_new(const QTimer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTimer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTimer(vtbl) : nullptr;
}

VirtualQTimer* QTimer_new_parent(const QTimer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTimer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTimer(vtbl, parent) : nullptr;
}

void QTimer_virtbase(QTimer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QTimer_metaObject(const QTimer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTimer_metacast(QTimer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTimer_metacall(QTimer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QTimer_tr_s(const char* s) {
	QString _ret = QTimer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTimer_isActive(const QTimer* self) {
	return self->isActive();
}

int QTimer_timerId(const QTimer* self) {
	return self->timerId();
}

void QTimer_setInterval_msec(QTimer* self, int msec) {
	self->setInterval(static_cast<int>(msec));
}

int QTimer_interval(const QTimer* self) {
	return self->interval();
}

int QTimer_remainingTime(const QTimer* self) {
	return self->remainingTime();
}

void QTimer_setTimerType(QTimer* self, int atype) {
	self->setTimerType(static_cast<Qt::TimerType>(atype));
}

int QTimer_timerType(const QTimer* self) {
	Qt::TimerType _ret = self->timerType();
	return static_cast<int>(_ret);
}

void QTimer_setSingleShot(QTimer* self, bool singleShot) {
	self->setSingleShot(singleShot);
}

bool QTimer_isSingleShot(const QTimer* self) {
	return self->isSingleShot();
}

void QTimer_start_msec(QTimer* self, int msec) {
	self->start(static_cast<int>(msec));
}

void QTimer_start(QTimer* self) {
	self->start();
}

void QTimer_stop(QTimer* self) {
	self->stop();
}

struct seaqt_string QTimer_tr_s_c(const char* s, const char* c) {
	QString _ret = QTimer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QTimer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QTimer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTimer_connect_timeout(QTimer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QTimer::connect(self, &QTimer::timeout, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

const QMetaObject* QTimer_staticMetaObject() { return &QTimer::staticMetaObject; }
void* QTimer_vdata(VirtualQTimer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQTimer>()); }
VirtualQTimer* vdata_QTimer(void* vdata) { return reinterpret_cast<VirtualQTimer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQTimer>()); }

QMetaObject* QTimer_virtualbase_metaObject(const VirtualQTimer* self) {

	return (QMetaObject*) self->QTimer::metaObject();
}

void* QTimer_virtualbase_metacast(VirtualQTimer* self, const char* param1) {

	return self->QTimer::qt_metacast(param1);
}

int QTimer_virtualbase_metacall(VirtualQTimer* self, int param1, int param2, void** param3) {

	return self->QTimer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTimer_virtualbase_timerEvent(VirtualQTimer* self, QTimerEvent* param1) {

	self->QTimer::timerEvent(param1);
}

bool QTimer_virtualbase_event(VirtualQTimer* self, QEvent* event) {

	return self->QTimer::event(event);
}

bool QTimer_virtualbase_eventFilter(VirtualQTimer* self, QObject* watched, QEvent* event) {

	return self->QTimer::eventFilter(watched, event);
}

void QTimer_virtualbase_childEvent(VirtualQTimer* self, QChildEvent* event) {

	self->QTimer::childEvent(event);
}

void QTimer_virtualbase_customEvent(VirtualQTimer* self, QEvent* event) {

	self->QTimer::customEvent(event);
}

void QTimer_virtualbase_connectNotify(VirtualQTimer* self, QMetaMethod* signal) {

	self->QTimer::connectNotify(*signal);
}

void QTimer_virtualbase_disconnectNotify(VirtualQTimer* self, QMetaMethod* signal) {

	self->QTimer::disconnectNotify(*signal);
}

QObject* QTimer_protectedbase_sender(const VirtualQTimer* self) {
	return self->QTimer::sender();
}

int QTimer_protectedbase_senderSignalIndex(const VirtualQTimer* self) {
	return self->QTimer::senderSignalIndex();
}

int QTimer_protectedbase_receivers(const VirtualQTimer* self, const char* signal) {
	return self->QTimer::receivers(signal);
}

bool QTimer_protectedbase_isSignalConnected(const VirtualQTimer* self, QMetaMethod* signal) {
	return self->QTimer::isSignalConnected(*signal);
}

void QTimer_delete(QTimer* self) {
	delete self;
}

