#include <QAbstractAnimation>
#include <QChildEvent>
#include <QEasingCurve>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVariantAnimation>
#include <qvariantanimation.h>
#include "gen_qvariantanimation.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQVariantAnimation final : public QVariantAnimation {
	const QVariantAnimation_VTable* vtbl;
public:
	friend void* QVariantAnimation_vdata(VirtualQVariantAnimation* self);
	friend VirtualQVariantAnimation* vdata_QVariantAnimation(void* vdata);

	VirtualQVariantAnimation(const QVariantAnimation_VTable* vtbl): QVariantAnimation(), vtbl(vtbl) {}
	VirtualQVariantAnimation(const QVariantAnimation_VTable* vtbl, QObject* parent): QVariantAnimation(parent), vtbl(vtbl) {}

	virtual ~VirtualQVariantAnimation() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVariantAnimation::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QVariantAnimation_virtualbase_metaObject(const VirtualQVariantAnimation* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVariantAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QVariantAnimation_virtualbase_metacast(VirtualQVariantAnimation* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVariantAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QVariantAnimation_virtualbase_metacall(VirtualQVariantAnimation* self, int param1, int param2, void** param3);

	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QVariantAnimation::duration();
		}

		int callback_return_value = vtbl->duration(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QVariantAnimation_virtualbase_duration(const VirtualQVariantAnimation* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVariantAnimation::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QVariantAnimation_virtualbase_event(VirtualQVariantAnimation* self, QEvent* event);

	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QVariantAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;
		vtbl->updateCurrentTime(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_updateCurrentTime(VirtualQVariantAnimation* self, int param1);

	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QVariantAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);
		vtbl->updateState(this, sigval1, sigval2);
	}

	friend void QVariantAnimation_virtualbase_updateState(VirtualQVariantAnimation* self, int newState, int oldState);

	virtual void updateCurrentValue(const QVariant& value) override {
		if (vtbl->updateCurrentValue == 0) {
			QVariantAnimation::updateCurrentValue(value);
			return;
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
		vtbl->updateCurrentValue(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_updateCurrentValue(VirtualQVariantAnimation* self, QVariant* value);

	virtual QVariant interpolated(const QVariant& from, const QVariant& to, qreal progress) const override {
		if (vtbl->interpolated == 0) {
			return QVariantAnimation::interpolated(from, to, progress);
		}

		const QVariant& from_ret = from;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&from_ret);
		const QVariant& to_ret = to;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&to_ret);
		qreal progress_ret = progress;
		double sigval3 = static_cast<double>(progress_ret);
		QVariant* callback_return_value = vtbl->interpolated(this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QVariantAnimation_virtualbase_interpolated(const VirtualQVariantAnimation* self, QVariant* from, QVariant* to, double progress);

	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QVariantAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);
		vtbl->updateDirection(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_updateDirection(VirtualQVariantAnimation* self, int direction);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVariantAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QVariantAnimation_virtualbase_eventFilter(VirtualQVariantAnimation* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVariantAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_timerEvent(VirtualQVariantAnimation* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVariantAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_childEvent(VirtualQVariantAnimation* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVariantAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_customEvent(VirtualQVariantAnimation* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVariantAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_connectNotify(VirtualQVariantAnimation* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVariantAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QVariantAnimation_virtualbase_disconnectNotify(VirtualQVariantAnimation* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QVariantAnimation_protectedbase_sender(const VirtualQVariantAnimation* self);
	friend int QVariantAnimation_protectedbase_senderSignalIndex(const VirtualQVariantAnimation* self);
	friend int QVariantAnimation_protectedbase_receivers(const VirtualQVariantAnimation* self, const char* signal);
	friend bool QVariantAnimation_protectedbase_isSignalConnected(const VirtualQVariantAnimation* self, QMetaMethod* signal);
};

VirtualQVariantAnimation* QVariantAnimation_new(const QVariantAnimation_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVariantAnimation>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVariantAnimation(vtbl) : nullptr;
}

VirtualQVariantAnimation* QVariantAnimation_new_parent(const QVariantAnimation_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVariantAnimation>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVariantAnimation(vtbl, parent) : nullptr;
}

void QVariantAnimation_virtbase(QVariantAnimation* src, QAbstractAnimation** outptr_QAbstractAnimation) {
	*outptr_QAbstractAnimation = static_cast<QAbstractAnimation*>(src);
}

QMetaObject* QVariantAnimation_metaObject(const QVariantAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVariantAnimation_metacast(QVariantAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVariantAnimation_metacall(QVariantAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QVariantAnimation_tr_s(const char* s) {
	QString _ret = QVariantAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QVariantAnimation_startValue(const QVariantAnimation* self) {
	return new QVariant(self->startValue());
}

void QVariantAnimation_setStartValue(QVariantAnimation* self, QVariant* value) {
	self->setStartValue(*value);
}

QVariant* QVariantAnimation_endValue(const QVariantAnimation* self) {
	return new QVariant(self->endValue());
}

void QVariantAnimation_setEndValue(QVariantAnimation* self, QVariant* value) {
	self->setEndValue(*value);
}

QVariant* QVariantAnimation_keyValueAt(const QVariantAnimation* self, double step) {
	return new QVariant(self->keyValueAt(static_cast<qreal>(step)));
}

void QVariantAnimation_setKeyValueAt(QVariantAnimation* self, double step, QVariant* value) {
	self->setKeyValueAt(static_cast<qreal>(step), *value);
}

QVariant* QVariantAnimation_currentValue(const QVariantAnimation* self) {
	return new QVariant(self->currentValue());
}

int QVariantAnimation_duration(const QVariantAnimation* self) {
	return self->duration();
}

void QVariantAnimation_setDuration(QVariantAnimation* self, int msecs) {
	self->setDuration(static_cast<int>(msecs));
}

QEasingCurve* QVariantAnimation_easingCurve(const QVariantAnimation* self) {
	return new QEasingCurve(self->easingCurve());
}

void QVariantAnimation_setEasingCurve(QVariantAnimation* self, QEasingCurve* easing) {
	self->setEasingCurve(*easing);
}

void QVariantAnimation_valueChanged(QVariantAnimation* self, QVariant* value) {
	self->valueChanged(*value);
}

void QVariantAnimation_connect_valueChanged(QVariantAnimation* self, intptr_t slot, void (*callback)(intptr_t, QVariant*), void (*release)(intptr_t)) {
	QVariantAnimation::connect(self, static_cast<void (QVariantAnimation::*)(const QVariant&)>(&QVariantAnimation::valueChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QVariant& value) {
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QVariantAnimation_tr_s_c(const char* s, const char* c) {
	QString _ret = QVariantAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVariantAnimation_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVariantAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVariantAnimation_staticMetaObject() { return &QVariantAnimation::staticMetaObject; }
void* QVariantAnimation_vdata(VirtualQVariantAnimation* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQVariantAnimation>()); }
VirtualQVariantAnimation* vdata_QVariantAnimation(void* vdata) { return reinterpret_cast<VirtualQVariantAnimation*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQVariantAnimation>()); }

QMetaObject* QVariantAnimation_virtualbase_metaObject(const VirtualQVariantAnimation* self) {

	return (QMetaObject*) self->QVariantAnimation::metaObject();
}

void* QVariantAnimation_virtualbase_metacast(VirtualQVariantAnimation* self, const char* param1) {

	return self->QVariantAnimation::qt_metacast(param1);
}

int QVariantAnimation_virtualbase_metacall(VirtualQVariantAnimation* self, int param1, int param2, void** param3) {

	return self->QVariantAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QVariantAnimation_virtualbase_duration(const VirtualQVariantAnimation* self) {

	return self->QVariantAnimation::duration();
}

bool QVariantAnimation_virtualbase_event(VirtualQVariantAnimation* self, QEvent* event) {

	return self->QVariantAnimation::event(event);
}

void QVariantAnimation_virtualbase_updateCurrentTime(VirtualQVariantAnimation* self, int param1) {

	self->QVariantAnimation::updateCurrentTime(static_cast<int>(param1));
}

void QVariantAnimation_virtualbase_updateState(VirtualQVariantAnimation* self, int newState, int oldState) {

	self->QVariantAnimation::updateState(static_cast<VirtualQVariantAnimation::State>(newState), static_cast<VirtualQVariantAnimation::State>(oldState));
}

void QVariantAnimation_virtualbase_updateCurrentValue(VirtualQVariantAnimation* self, QVariant* value) {

	self->QVariantAnimation::updateCurrentValue(*value);
}

QVariant* QVariantAnimation_virtualbase_interpolated(const VirtualQVariantAnimation* self, QVariant* from, QVariant* to, double progress) {

	return new QVariant(self->QVariantAnimation::interpolated(*from, *to, static_cast<qreal>(progress)));
}

void QVariantAnimation_virtualbase_updateDirection(VirtualQVariantAnimation* self, int direction) {

	self->QVariantAnimation::updateDirection(static_cast<VirtualQVariantAnimation::Direction>(direction));
}

bool QVariantAnimation_virtualbase_eventFilter(VirtualQVariantAnimation* self, QObject* watched, QEvent* event) {

	return self->QVariantAnimation::eventFilter(watched, event);
}

void QVariantAnimation_virtualbase_timerEvent(VirtualQVariantAnimation* self, QTimerEvent* event) {

	self->QVariantAnimation::timerEvent(event);
}

void QVariantAnimation_virtualbase_childEvent(VirtualQVariantAnimation* self, QChildEvent* event) {

	self->QVariantAnimation::childEvent(event);
}

void QVariantAnimation_virtualbase_customEvent(VirtualQVariantAnimation* self, QEvent* event) {

	self->QVariantAnimation::customEvent(event);
}

void QVariantAnimation_virtualbase_connectNotify(VirtualQVariantAnimation* self, QMetaMethod* signal) {

	self->QVariantAnimation::connectNotify(*signal);
}

void QVariantAnimation_virtualbase_disconnectNotify(VirtualQVariantAnimation* self, QMetaMethod* signal) {

	self->QVariantAnimation::disconnectNotify(*signal);
}

QObject* QVariantAnimation_protectedbase_sender(const VirtualQVariantAnimation* self) {
	return self->QVariantAnimation::sender();
}

int QVariantAnimation_protectedbase_senderSignalIndex(const VirtualQVariantAnimation* self) {
	return self->QVariantAnimation::senderSignalIndex();
}

int QVariantAnimation_protectedbase_receivers(const VirtualQVariantAnimation* self, const char* signal) {
	return self->QVariantAnimation::receivers(signal);
}

bool QVariantAnimation_protectedbase_isSignalConnected(const VirtualQVariantAnimation* self, QMetaMethod* signal) {
	return self->QVariantAnimation::isSignalConnected(*signal);
}

void QVariantAnimation_delete(QVariantAnimation* self) {
	delete self;
}

