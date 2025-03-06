#include <QAbstractAnimation>
#include <QChildEvent>
#include <QEasingCurve>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVariantAnimation>
#include <qvariantanimation.h>
#include "gen_qvariantanimation.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQVariantAnimation final : public QVariantAnimation {
	struct QVariantAnimation_VTable* vtbl;
public:

	VirtualQVariantAnimation(struct QVariantAnimation_VTable* vtbl): QVariantAnimation(), vtbl(vtbl) {};
	VirtualQVariantAnimation(struct QVariantAnimation_VTable* vtbl, QObject* parent): QVariantAnimation(parent), vtbl(vtbl) {};

	virtual ~VirtualQVariantAnimation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVariantAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QVariantAnimation_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVariantAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QVariantAnimation_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVariantAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVariantAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QVariantAnimation::duration();
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QVariantAnimation_virtualbase_duration(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVariantAnimation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QVariantAnimation_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QVariantAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_updateCurrentTime(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QVariantAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(vtbl, this, sigval1, sigval2);

	}

	friend void QVariantAnimation_virtualbase_updateState(void* self, int newState, int oldState);

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentValue(const QVariant& value) override {
		if (vtbl->updateCurrentValue == 0) {
			QVariantAnimation::updateCurrentValue(value);
			return;
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);

		vtbl->updateCurrentValue(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_updateCurrentValue(void* self, QVariant* value);

	// Subclass to allow providing a Go implementation
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

		QVariant* callback_return_value = vtbl->interpolated(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QVariant* QVariantAnimation_virtualbase_interpolated(const void* self, QVariant* from, QVariant* to, double progress);

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QVariantAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_updateDirection(void* self, int direction);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVariantAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVariantAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVariantAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVariantAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVariantAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVariantAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVariantAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QVariantAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QVariantAnimation_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QVariantAnimation_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QVariantAnimation_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QVariantAnimation_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QVariantAnimation* QVariantAnimation_new(struct QVariantAnimation_VTable* vtbl) {
	return new VirtualQVariantAnimation(vtbl);
}

QVariantAnimation* QVariantAnimation_new2(struct QVariantAnimation_VTable* vtbl, QObject* parent) {
	return new VirtualQVariantAnimation(vtbl, parent);
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

struct miqt_string QVariantAnimation_tr(const char* s) {
	QString _ret = QVariantAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

struct miqt_array /* of struct miqt_map  tuple of double and QVariant*   */  QVariantAnimation_keyValues(const QVariantAnimation* self) {
	QVariantAnimation::KeyValues _ret = self->keyValues();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and QVariant* */ * _arr = static_cast<struct miqt_map /* tuple of double and QVariant* */ *>(malloc(sizeof(struct miqt_map /* tuple of double and QVariant* */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, QVariant> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _lv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		QVariant** _lv_second_arr = static_cast<QVariant**>(malloc(sizeof(QVariant*)));
		_lv_first_arr[0] = _lv_ret.first;
		_lv_second_arr[0] = new QVariant(_lv_ret.second);
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QVariantAnimation_setKeyValues(QVariantAnimation* self, struct miqt_array /* of struct miqt_map  tuple of double and QVariant*   */  values) {
	QVariantAnimation::KeyValues values_QList;
	values_QList.reserve(values.len);
	struct miqt_map /* tuple of double and QVariant* */ * values_arr = static_cast<struct miqt_map /* tuple of double and QVariant* */ *>(values.data);
	for(size_t i = 0; i < values.len; ++i) {
		QPair<double, QVariant> values_arr_i_QPair;
		double* values_arr_i_first_arr = static_cast<double*>(values_arr[i].keys);
		QVariant** values_arr_i_second_arr = static_cast<QVariant**>(values_arr[i].values);
		values_arr_i_QPair.first = static_cast<double>(values_arr_i_first_arr[0]);
		values_arr_i_QPair.second = *(values_arr_i_second_arr[0]);
		values_QList.push_back(values_arr_i_QPair);
	}
	self->setKeyValues(values_QList);
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
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QVariant*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QVariant*);
		void operator()(const QVariant& value) {
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQVariantAnimation::connect(self, static_cast<void (QVariantAnimation::*)(const QVariant&)>(&QVariantAnimation::valueChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QVariantAnimation_tr2(const char* s, const char* c) {
	QString _ret = QVariantAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVariantAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QVariantAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVariantAnimation_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQVariantAnimation*)(self) )->QVariantAnimation::metaObject();

}

void* QVariantAnimation_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::qt_metacast(param1);

}

int QVariantAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QVariantAnimation_virtualbase_duration(const void* self) {

	return ( (const VirtualQVariantAnimation*)(self) )->QVariantAnimation::duration();

}

bool QVariantAnimation_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::event(event);

}

void QVariantAnimation_virtualbase_updateCurrentTime(void* self, int param1) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::updateCurrentTime(static_cast<int>(param1));

}

void QVariantAnimation_virtualbase_updateState(void* self, int newState, int oldState) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::updateState(static_cast<VirtualQVariantAnimation::State>(newState), static_cast<VirtualQVariantAnimation::State>(oldState));

}

void QVariantAnimation_virtualbase_updateCurrentValue(void* self, QVariant* value) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::updateCurrentValue(*value);

}

QVariant* QVariantAnimation_virtualbase_interpolated(const void* self, QVariant* from, QVariant* to, double progress) {

	return new QVariant(( (const VirtualQVariantAnimation*)(self) )->QVariantAnimation::interpolated(*from, *to, static_cast<qreal>(progress)));

}

void QVariantAnimation_virtualbase_updateDirection(void* self, int direction) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::updateDirection(static_cast<VirtualQVariantAnimation::Direction>(direction));

}

bool QVariantAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::eventFilter(watched, event);

}

void QVariantAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::timerEvent(event);

}

void QVariantAnimation_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::childEvent(event);

}

void QVariantAnimation_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::customEvent(event);

}

void QVariantAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::connectNotify(*signal);

}

void QVariantAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVariantAnimation*)(self) )->QVariantAnimation::disconnectNotify(*signal);

}

const QMetaObject* QVariantAnimation_staticMetaObject() { return &QVariantAnimation::staticMetaObject; }
QObject* QVariantAnimation_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVariantAnimation* self_cast = dynamic_cast<VirtualQVariantAnimation*>( (QVariantAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QVariantAnimation_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVariantAnimation* self_cast = dynamic_cast<VirtualQVariantAnimation*>( (QVariantAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QVariantAnimation_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQVariantAnimation* self_cast = dynamic_cast<VirtualQVariantAnimation*>( (QVariantAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QVariantAnimation_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQVariantAnimation* self_cast = dynamic_cast<VirtualQVariantAnimation*>( (QVariantAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QVariantAnimation_delete(QVariantAnimation* self) {
	delete self;
}

