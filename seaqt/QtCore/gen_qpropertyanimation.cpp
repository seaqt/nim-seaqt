#include <QAbstractAnimation>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPropertyAnimation>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVariantAnimation>
#include <qpropertyanimation.h>
#include "gen_qpropertyanimation.h"
class VirtualQPropertyAnimation final : public QPropertyAnimation {
	const QPropertyAnimation_VTable* vtbl;
	void* vdata;
public:
	friend const QPropertyAnimation_VTable* QPropertyAnimation_vtbl(const VirtualQPropertyAnimation* self);
	friend void* QPropertyAnimation_vdata(const VirtualQPropertyAnimation* self);
	friend void QPropertyAnimation_setVdata(VirtualQPropertyAnimation* self, void* vdata);

	VirtualQPropertyAnimation(const QPropertyAnimation_VTable* vtbl, void* vdata): QPropertyAnimation(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPropertyAnimation(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* target, const QByteArray& propertyName): QPropertyAnimation(target, propertyName), vtbl(vtbl), vdata(vdata) {}
	VirtualQPropertyAnimation(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* parent): QPropertyAnimation(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPropertyAnimation(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* target, const QByteArray& propertyName, QObject* parent): QPropertyAnimation(target, propertyName, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPropertyAnimation() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPropertyAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPropertyAnimation_virtualbase_metaObject(const VirtualQPropertyAnimation* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPropertyAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPropertyAnimation_virtualbase_metacast(VirtualQPropertyAnimation* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPropertyAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPropertyAnimation_virtualbase_metacall(VirtualQPropertyAnimation* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPropertyAnimation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPropertyAnimation_virtualbase_event(VirtualQPropertyAnimation* self, QEvent* event);

	virtual void updateCurrentValue(const QVariant& value) override {
		if (vtbl->updateCurrentValue == 0) {
			QPropertyAnimation::updateCurrentValue(value);
			return;
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);

		vtbl->updateCurrentValue(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_updateCurrentValue(VirtualQPropertyAnimation* self, QVariant* value);

	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QPropertyAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(this, sigval1, sigval2);

	}

	friend void QPropertyAnimation_virtualbase_updateState(VirtualQPropertyAnimation* self, int newState, int oldState);

	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QPropertyAnimation::duration();
		}


		int callback_return_value = vtbl->duration(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPropertyAnimation_virtualbase_duration(const VirtualQPropertyAnimation* self);

	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QPropertyAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_updateCurrentTime(VirtualQPropertyAnimation* self, int param1);

	virtual QVariant interpolated(const QVariant& from, const QVariant& to, qreal progress) const override {
		if (vtbl->interpolated == 0) {
			return QPropertyAnimation::interpolated(from, to, progress);
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

	friend QVariant* QPropertyAnimation_virtualbase_interpolated(const VirtualQPropertyAnimation* self, QVariant* from, QVariant* to, double progress);

	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QPropertyAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_updateDirection(VirtualQPropertyAnimation* self, int direction);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPropertyAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPropertyAnimation_virtualbase_eventFilter(VirtualQPropertyAnimation* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPropertyAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_timerEvent(VirtualQPropertyAnimation* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPropertyAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_childEvent(VirtualQPropertyAnimation* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPropertyAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_customEvent(VirtualQPropertyAnimation* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPropertyAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_connectNotify(VirtualQPropertyAnimation* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPropertyAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_disconnectNotify(VirtualQPropertyAnimation* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPropertyAnimation_protectedbase_sender(const VirtualQPropertyAnimation* self);
	friend int QPropertyAnimation_protectedbase_senderSignalIndex(const VirtualQPropertyAnimation* self);
	friend int QPropertyAnimation_protectedbase_receivers(const VirtualQPropertyAnimation* self, const char* signal);
	friend bool QPropertyAnimation_protectedbase_isSignalConnected(const VirtualQPropertyAnimation* self, QMetaMethod* signal);
};

VirtualQPropertyAnimation* QPropertyAnimation_new(const QPropertyAnimation_VTable* vtbl, void* vdata) {
	return new VirtualQPropertyAnimation(vtbl, vdata);
}

VirtualQPropertyAnimation* QPropertyAnimation_new2(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* target, struct miqt_string propertyName) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	return new VirtualQPropertyAnimation(vtbl, vdata, target, propertyName_QByteArray);
}

VirtualQPropertyAnimation* QPropertyAnimation_new3(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQPropertyAnimation(vtbl, vdata, parent);
}

VirtualQPropertyAnimation* QPropertyAnimation_new4(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* target, struct miqt_string propertyName, QObject* parent) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	return new VirtualQPropertyAnimation(vtbl, vdata, target, propertyName_QByteArray, parent);
}

void QPropertyAnimation_virtbase(QPropertyAnimation* src, QVariantAnimation** outptr_QVariantAnimation) {
	*outptr_QVariantAnimation = static_cast<QVariantAnimation*>(src);
}

QMetaObject* QPropertyAnimation_metaObject(const QPropertyAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPropertyAnimation_metacast(QPropertyAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPropertyAnimation_metacall(QPropertyAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPropertyAnimation_tr(const char* s) {
	QString _ret = QPropertyAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QPropertyAnimation_targetObject(const QPropertyAnimation* self) {
	return self->targetObject();
}

void QPropertyAnimation_setTargetObject(QPropertyAnimation* self, QObject* target) {
	self->setTargetObject(target);
}

struct miqt_string QPropertyAnimation_propertyName(const QPropertyAnimation* self) {
	QByteArray _qb = self->propertyName();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QPropertyAnimation_setPropertyName(QPropertyAnimation* self, struct miqt_string propertyName) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	self->setPropertyName(propertyName_QByteArray);
}

struct miqt_string QPropertyAnimation_tr2(const char* s, const char* c) {
	QString _ret = QPropertyAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPropertyAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QPropertyAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPropertyAnimation_virtualbase_metaObject(const VirtualQPropertyAnimation* self) {

	return (QMetaObject*) self->QPropertyAnimation::metaObject();
}

void* QPropertyAnimation_virtualbase_metacast(VirtualQPropertyAnimation* self, const char* param1) {

	return self->QPropertyAnimation::qt_metacast(param1);
}

int QPropertyAnimation_virtualbase_metacall(VirtualQPropertyAnimation* self, int param1, int param2, void** param3) {

	return self->QPropertyAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPropertyAnimation_virtualbase_event(VirtualQPropertyAnimation* self, QEvent* event) {

	return self->QPropertyAnimation::event(event);
}

void QPropertyAnimation_virtualbase_updateCurrentValue(VirtualQPropertyAnimation* self, QVariant* value) {

	self->QPropertyAnimation::updateCurrentValue(*value);
}

void QPropertyAnimation_virtualbase_updateState(VirtualQPropertyAnimation* self, int newState, int oldState) {

	self->QPropertyAnimation::updateState(static_cast<VirtualQPropertyAnimation::State>(newState), static_cast<VirtualQPropertyAnimation::State>(oldState));
}

int QPropertyAnimation_virtualbase_duration(const VirtualQPropertyAnimation* self) {

	return self->QPropertyAnimation::duration();
}

void QPropertyAnimation_virtualbase_updateCurrentTime(VirtualQPropertyAnimation* self, int param1) {

	self->QPropertyAnimation::updateCurrentTime(static_cast<int>(param1));
}

QVariant* QPropertyAnimation_virtualbase_interpolated(const VirtualQPropertyAnimation* self, QVariant* from, QVariant* to, double progress) {

	return new QVariant(self->QPropertyAnimation::interpolated(*from, *to, static_cast<qreal>(progress)));
}

void QPropertyAnimation_virtualbase_updateDirection(VirtualQPropertyAnimation* self, int direction) {

	self->QPropertyAnimation::updateDirection(static_cast<VirtualQPropertyAnimation::Direction>(direction));
}

bool QPropertyAnimation_virtualbase_eventFilter(VirtualQPropertyAnimation* self, QObject* watched, QEvent* event) {

	return self->QPropertyAnimation::eventFilter(watched, event);
}

void QPropertyAnimation_virtualbase_timerEvent(VirtualQPropertyAnimation* self, QTimerEvent* event) {

	self->QPropertyAnimation::timerEvent(event);
}

void QPropertyAnimation_virtualbase_childEvent(VirtualQPropertyAnimation* self, QChildEvent* event) {

	self->QPropertyAnimation::childEvent(event);
}

void QPropertyAnimation_virtualbase_customEvent(VirtualQPropertyAnimation* self, QEvent* event) {

	self->QPropertyAnimation::customEvent(event);
}

void QPropertyAnimation_virtualbase_connectNotify(VirtualQPropertyAnimation* self, QMetaMethod* signal) {

	self->QPropertyAnimation::connectNotify(*signal);
}

void QPropertyAnimation_virtualbase_disconnectNotify(VirtualQPropertyAnimation* self, QMetaMethod* signal) {

	self->QPropertyAnimation::disconnectNotify(*signal);
}

const QMetaObject* QPropertyAnimation_staticMetaObject() { return &QPropertyAnimation::staticMetaObject; }

const QPropertyAnimation_VTable* QPropertyAnimation_vtbl(const VirtualQPropertyAnimation* self) { return self->vtbl; }
void* QPropertyAnimation_vdata(const VirtualQPropertyAnimation* self) { return self->vdata; }
void QPropertyAnimation_setVdata(VirtualQPropertyAnimation* self, void* vdata) { self->vdata = vdata; }

QObject* QPropertyAnimation_protectedbase_sender(const VirtualQPropertyAnimation* self) {
	return self->sender();
}

int QPropertyAnimation_protectedbase_senderSignalIndex(const VirtualQPropertyAnimation* self) {
	return self->senderSignalIndex();
}

int QPropertyAnimation_protectedbase_receivers(const VirtualQPropertyAnimation* self, const char* signal) {
	return self->receivers(signal);
}

bool QPropertyAnimation_protectedbase_isSignalConnected(const VirtualQPropertyAnimation* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPropertyAnimation_delete(QPropertyAnimation* self) {
	delete self;
}

