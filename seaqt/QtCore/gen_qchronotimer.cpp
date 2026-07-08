#include <QChildEvent>
#include <QChronoTimer>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qchronotimer.h>
#include "gen_qchronotimer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQChronoTimer final : public QChronoTimer {
	const QChronoTimer_VTable* vtbl;
public:
	friend void* QChronoTimer_vdata(VirtualQChronoTimer* self);
	friend VirtualQChronoTimer* vdata_QChronoTimer(void* vdata);

	VirtualQChronoTimer(const QChronoTimer_VTable* vtbl): QChronoTimer(), vtbl(vtbl) {}
	VirtualQChronoTimer(const QChronoTimer_VTable* vtbl, QObject* parent): QChronoTimer(parent), vtbl(vtbl) {}

	virtual ~VirtualQChronoTimer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QChronoTimer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QChronoTimer_virtualbase_metaObject(const VirtualQChronoTimer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QChronoTimer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QChronoTimer_virtualbase_metacast(VirtualQChronoTimer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QChronoTimer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QChronoTimer_virtualbase_metacall(VirtualQChronoTimer* self, int param1, int param2, void** param3);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QChronoTimer::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QChronoTimer_virtualbase_timerEvent(VirtualQChronoTimer* self, QTimerEvent* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QChronoTimer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QChronoTimer_virtualbase_event(VirtualQChronoTimer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QChronoTimer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QChronoTimer_virtualbase_eventFilter(VirtualQChronoTimer* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QChronoTimer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QChronoTimer_virtualbase_childEvent(VirtualQChronoTimer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QChronoTimer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QChronoTimer_virtualbase_customEvent(VirtualQChronoTimer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QChronoTimer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QChronoTimer_virtualbase_connectNotify(VirtualQChronoTimer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QChronoTimer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QChronoTimer_virtualbase_disconnectNotify(VirtualQChronoTimer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QChronoTimer_protectedbase_sender(const VirtualQChronoTimer* self);
	friend int QChronoTimer_protectedbase_senderSignalIndex(const VirtualQChronoTimer* self);
	friend int QChronoTimer_protectedbase_receivers(const VirtualQChronoTimer* self, const char* signal);
	friend bool QChronoTimer_protectedbase_isSignalConnected(const VirtualQChronoTimer* self, QMetaMethod* signal);
};

VirtualQChronoTimer* QChronoTimer_new(const QChronoTimer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQChronoTimer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQChronoTimer(vtbl) : nullptr;
}

VirtualQChronoTimer* QChronoTimer_new_parent(const QChronoTimer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQChronoTimer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQChronoTimer(vtbl, parent) : nullptr;
}

void QChronoTimer_virtbase(QChronoTimer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QChronoTimer_metaObject(const QChronoTimer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QChronoTimer_metacast(QChronoTimer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QChronoTimer_metacall(QChronoTimer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QChronoTimer_tr_s(const char* s) {
	QString _ret = QChronoTimer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QChronoTimer_isActive(const QChronoTimer* self) {
	return self->isActive();
}

int QChronoTimer_id(const QChronoTimer* self) {
	Qt::TimerId _ret = self->id();
	return static_cast<int>(_ret);
}

void QChronoTimer_setTimerType(QChronoTimer* self, int atype) {
	self->setTimerType(static_cast<Qt::TimerType>(atype));
}

int QChronoTimer_timerType(const QChronoTimer* self) {
	Qt::TimerType _ret = self->timerType();
	return static_cast<int>(_ret);
}

void QChronoTimer_setSingleShot(QChronoTimer* self, bool singleShot) {
	self->setSingleShot(singleShot);
}

bool QChronoTimer_isSingleShot(const QChronoTimer* self) {
	return self->isSingleShot();
}

void QChronoTimer_start(QChronoTimer* self) {
	self->start();
}

void QChronoTimer_stop(QChronoTimer* self) {
	self->stop();
}

struct seaqt_string QChronoTimer_tr_s_c(const char* s, const char* c) {
	QString _ret = QChronoTimer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QChronoTimer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QChronoTimer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QChronoTimer_connect_timeout(QChronoTimer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QChronoTimer::connect(self, &QChronoTimer::timeout, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

const QMetaObject* QChronoTimer_staticMetaObject() { return &QChronoTimer::staticMetaObject; }
void* QChronoTimer_vdata(VirtualQChronoTimer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQChronoTimer>()); }
VirtualQChronoTimer* vdata_QChronoTimer(void* vdata) { return reinterpret_cast<VirtualQChronoTimer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQChronoTimer>()); }

QMetaObject* QChronoTimer_virtualbase_metaObject(const VirtualQChronoTimer* self) {

	return (QMetaObject*) self->QChronoTimer::metaObject();
}

void* QChronoTimer_virtualbase_metacast(VirtualQChronoTimer* self, const char* param1) {

	return self->QChronoTimer::qt_metacast(param1);
}

int QChronoTimer_virtualbase_metacall(VirtualQChronoTimer* self, int param1, int param2, void** param3) {

	return self->QChronoTimer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QChronoTimer_virtualbase_timerEvent(VirtualQChronoTimer* self, QTimerEvent* param1) {

	self->QChronoTimer::timerEvent(param1);
}

bool QChronoTimer_virtualbase_event(VirtualQChronoTimer* self, QEvent* event) {

	return self->QChronoTimer::event(event);
}

bool QChronoTimer_virtualbase_eventFilter(VirtualQChronoTimer* self, QObject* watched, QEvent* event) {

	return self->QChronoTimer::eventFilter(watched, event);
}

void QChronoTimer_virtualbase_childEvent(VirtualQChronoTimer* self, QChildEvent* event) {

	self->QChronoTimer::childEvent(event);
}

void QChronoTimer_virtualbase_customEvent(VirtualQChronoTimer* self, QEvent* event) {

	self->QChronoTimer::customEvent(event);
}

void QChronoTimer_virtualbase_connectNotify(VirtualQChronoTimer* self, QMetaMethod* signal) {

	self->QChronoTimer::connectNotify(*signal);
}

void QChronoTimer_virtualbase_disconnectNotify(VirtualQChronoTimer* self, QMetaMethod* signal) {

	self->QChronoTimer::disconnectNotify(*signal);
}

QObject* QChronoTimer_protectedbase_sender(const VirtualQChronoTimer* self) {
	return self->QChronoTimer::sender();
}

int QChronoTimer_protectedbase_senderSignalIndex(const VirtualQChronoTimer* self) {
	return self->QChronoTimer::senderSignalIndex();
}

int QChronoTimer_protectedbase_receivers(const VirtualQChronoTimer* self, const char* signal) {
	return self->QChronoTimer::receivers(signal);
}

bool QChronoTimer_protectedbase_isSignalConnected(const VirtualQChronoTimer* self, QMetaMethod* signal) {
	return self->QChronoTimer::isSignalConnected(*signal);
}

void QChronoTimer_delete(QChronoTimer* self) {
	delete self;
}

