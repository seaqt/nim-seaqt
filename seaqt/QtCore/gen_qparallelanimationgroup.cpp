#include <QAbstractAnimation>
#include <QAnimationGroup>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QParallelAnimationGroup>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qparallelanimationgroup.h>
#include "gen_qparallelanimationgroup.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQParallelAnimationGroup final : public QParallelAnimationGroup {
	const QParallelAnimationGroup_VTable* vtbl;
public:
	friend void* QParallelAnimationGroup_vdata(VirtualQParallelAnimationGroup* self);
	friend VirtualQParallelAnimationGroup* vdata_QParallelAnimationGroup(void* vdata);

	VirtualQParallelAnimationGroup(const QParallelAnimationGroup_VTable* vtbl): QParallelAnimationGroup(), vtbl(vtbl) {}
	VirtualQParallelAnimationGroup(const QParallelAnimationGroup_VTable* vtbl, QObject* parent): QParallelAnimationGroup(parent), vtbl(vtbl) {}

	virtual ~VirtualQParallelAnimationGroup() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QParallelAnimationGroup::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QParallelAnimationGroup_virtualbase_metaObject(const VirtualQParallelAnimationGroup* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QParallelAnimationGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QParallelAnimationGroup_virtualbase_metacast(VirtualQParallelAnimationGroup* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QParallelAnimationGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QParallelAnimationGroup_virtualbase_metacall(VirtualQParallelAnimationGroup* self, int param1, int param2, void** param3);

	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QParallelAnimationGroup::duration();
		}

		int callback_return_value = vtbl->duration(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QParallelAnimationGroup_virtualbase_duration(const VirtualQParallelAnimationGroup* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QParallelAnimationGroup::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QParallelAnimationGroup_virtualbase_event(VirtualQParallelAnimationGroup* self, QEvent* event);

	virtual void updateCurrentTime(int currentTime) override {
		if (vtbl->updateCurrentTime == 0) {
			QParallelAnimationGroup::updateCurrentTime(currentTime);
			return;
		}

		int sigval1 = currentTime;
		vtbl->updateCurrentTime(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_updateCurrentTime(VirtualQParallelAnimationGroup* self, int currentTime);

	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QParallelAnimationGroup::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);
		vtbl->updateState(this, sigval1, sigval2);
	}

	friend void QParallelAnimationGroup_virtualbase_updateState(VirtualQParallelAnimationGroup* self, int newState, int oldState);

	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QParallelAnimationGroup::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);
		vtbl->updateDirection(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_updateDirection(VirtualQParallelAnimationGroup* self, int direction);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QParallelAnimationGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QParallelAnimationGroup_virtualbase_eventFilter(VirtualQParallelAnimationGroup* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QParallelAnimationGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_timerEvent(VirtualQParallelAnimationGroup* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QParallelAnimationGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_childEvent(VirtualQParallelAnimationGroup* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QParallelAnimationGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_customEvent(VirtualQParallelAnimationGroup* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QParallelAnimationGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_connectNotify(VirtualQParallelAnimationGroup* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QParallelAnimationGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QParallelAnimationGroup_virtualbase_disconnectNotify(VirtualQParallelAnimationGroup* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QParallelAnimationGroup_protectedbase_sender(const VirtualQParallelAnimationGroup* self);
	friend int QParallelAnimationGroup_protectedbase_senderSignalIndex(const VirtualQParallelAnimationGroup* self);
	friend int QParallelAnimationGroup_protectedbase_receivers(const VirtualQParallelAnimationGroup* self, const char* signal);
	friend bool QParallelAnimationGroup_protectedbase_isSignalConnected(const VirtualQParallelAnimationGroup* self, QMetaMethod* signal);
};

VirtualQParallelAnimationGroup* QParallelAnimationGroup_new(const QParallelAnimationGroup_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQParallelAnimationGroup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQParallelAnimationGroup(vtbl) : nullptr;
}

VirtualQParallelAnimationGroup* QParallelAnimationGroup_new_parent(const QParallelAnimationGroup_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQParallelAnimationGroup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQParallelAnimationGroup(vtbl, parent) : nullptr;
}

void QParallelAnimationGroup_virtbase(QParallelAnimationGroup* src, QAnimationGroup** outptr_QAnimationGroup) {
	*outptr_QAnimationGroup = static_cast<QAnimationGroup*>(src);
}

QMetaObject* QParallelAnimationGroup_metaObject(const QParallelAnimationGroup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QParallelAnimationGroup_metacast(QParallelAnimationGroup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QParallelAnimationGroup_metacall(QParallelAnimationGroup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QParallelAnimationGroup_tr_s(const char* s) {
	QString _ret = QParallelAnimationGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QParallelAnimationGroup_duration(const QParallelAnimationGroup* self) {
	return self->duration();
}

struct seaqt_string QParallelAnimationGroup_tr_s_c(const char* s, const char* c) {
	QString _ret = QParallelAnimationGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QParallelAnimationGroup_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QParallelAnimationGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QParallelAnimationGroup_staticMetaObject() { return &QParallelAnimationGroup::staticMetaObject; }
void* QParallelAnimationGroup_vdata(VirtualQParallelAnimationGroup* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQParallelAnimationGroup>()); }
VirtualQParallelAnimationGroup* vdata_QParallelAnimationGroup(void* vdata) { return reinterpret_cast<VirtualQParallelAnimationGroup*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQParallelAnimationGroup>()); }

QMetaObject* QParallelAnimationGroup_virtualbase_metaObject(const VirtualQParallelAnimationGroup* self) {

	return (QMetaObject*) self->QParallelAnimationGroup::metaObject();
}

void* QParallelAnimationGroup_virtualbase_metacast(VirtualQParallelAnimationGroup* self, const char* param1) {

	return self->QParallelAnimationGroup::qt_metacast(param1);
}

int QParallelAnimationGroup_virtualbase_metacall(VirtualQParallelAnimationGroup* self, int param1, int param2, void** param3) {

	return self->QParallelAnimationGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QParallelAnimationGroup_virtualbase_duration(const VirtualQParallelAnimationGroup* self) {

	return self->QParallelAnimationGroup::duration();
}

bool QParallelAnimationGroup_virtualbase_event(VirtualQParallelAnimationGroup* self, QEvent* event) {

	return self->QParallelAnimationGroup::event(event);
}

void QParallelAnimationGroup_virtualbase_updateCurrentTime(VirtualQParallelAnimationGroup* self, int currentTime) {

	self->QParallelAnimationGroup::updateCurrentTime(static_cast<int>(currentTime));
}

void QParallelAnimationGroup_virtualbase_updateState(VirtualQParallelAnimationGroup* self, int newState, int oldState) {

	self->QParallelAnimationGroup::updateState(static_cast<VirtualQParallelAnimationGroup::State>(newState), static_cast<VirtualQParallelAnimationGroup::State>(oldState));
}

void QParallelAnimationGroup_virtualbase_updateDirection(VirtualQParallelAnimationGroup* self, int direction) {

	self->QParallelAnimationGroup::updateDirection(static_cast<VirtualQParallelAnimationGroup::Direction>(direction));
}

bool QParallelAnimationGroup_virtualbase_eventFilter(VirtualQParallelAnimationGroup* self, QObject* watched, QEvent* event) {

	return self->QParallelAnimationGroup::eventFilter(watched, event);
}

void QParallelAnimationGroup_virtualbase_timerEvent(VirtualQParallelAnimationGroup* self, QTimerEvent* event) {

	self->QParallelAnimationGroup::timerEvent(event);
}

void QParallelAnimationGroup_virtualbase_childEvent(VirtualQParallelAnimationGroup* self, QChildEvent* event) {

	self->QParallelAnimationGroup::childEvent(event);
}

void QParallelAnimationGroup_virtualbase_customEvent(VirtualQParallelAnimationGroup* self, QEvent* event) {

	self->QParallelAnimationGroup::customEvent(event);
}

void QParallelAnimationGroup_virtualbase_connectNotify(VirtualQParallelAnimationGroup* self, QMetaMethod* signal) {

	self->QParallelAnimationGroup::connectNotify(*signal);
}

void QParallelAnimationGroup_virtualbase_disconnectNotify(VirtualQParallelAnimationGroup* self, QMetaMethod* signal) {

	self->QParallelAnimationGroup::disconnectNotify(*signal);
}

QObject* QParallelAnimationGroup_protectedbase_sender(const VirtualQParallelAnimationGroup* self) {
	return self->QParallelAnimationGroup::sender();
}

int QParallelAnimationGroup_protectedbase_senderSignalIndex(const VirtualQParallelAnimationGroup* self) {
	return self->QParallelAnimationGroup::senderSignalIndex();
}

int QParallelAnimationGroup_protectedbase_receivers(const VirtualQParallelAnimationGroup* self, const char* signal) {
	return self->QParallelAnimationGroup::receivers(signal);
}

bool QParallelAnimationGroup_protectedbase_isSignalConnected(const VirtualQParallelAnimationGroup* self, QMetaMethod* signal) {
	return self->QParallelAnimationGroup::isSignalConnected(*signal);
}

void QParallelAnimationGroup_delete(QParallelAnimationGroup* self) {
	delete self;
}

