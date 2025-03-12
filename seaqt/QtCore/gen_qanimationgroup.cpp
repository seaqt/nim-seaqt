#include <QAbstractAnimation>
#include <QAnimationGroup>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qanimationgroup.h>
#include "gen_qanimationgroup.h"
class VirtualQAnimationGroup final : public QAnimationGroup {
	const QAnimationGroup_VTable* vtbl;
	void* vdata;
public:
	friend const QAnimationGroup_VTable* QAnimationGroup_vtbl(const VirtualQAnimationGroup* self);
	friend void* QAnimationGroup_vdata(const VirtualQAnimationGroup* self);
	friend void QAnimationGroup_setVdata(VirtualQAnimationGroup* self, void* vdata);

	VirtualQAnimationGroup(const QAnimationGroup_VTable* vtbl, void* vdata): QAnimationGroup(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAnimationGroup(const QAnimationGroup_VTable* vtbl, void* vdata, QObject* parent): QAnimationGroup(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAnimationGroup() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAnimationGroup::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAnimationGroup_virtualbase_metaObject(const VirtualQAnimationGroup* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAnimationGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAnimationGroup_virtualbase_metacast(VirtualQAnimationGroup* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAnimationGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAnimationGroup_virtualbase_metacall(VirtualQAnimationGroup* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAnimationGroup::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAnimationGroup_virtualbase_event(VirtualQAnimationGroup* self, QEvent* event);

	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->duration(this);

		return static_cast<int>(callback_return_value);
	}

	virtual void updateCurrentTime(int currentTime) override {
		if (vtbl->updateCurrentTime == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = currentTime;

		vtbl->updateCurrentTime(this, sigval1);

	}

	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QAnimationGroup::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(this, sigval1, sigval2);

	}

	friend void QAnimationGroup_virtualbase_updateState(VirtualQAnimationGroup* self, int newState, int oldState);

	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QAnimationGroup::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(this, sigval1);

	}

	friend void QAnimationGroup_virtualbase_updateDirection(VirtualQAnimationGroup* self, int direction);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAnimationGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAnimationGroup_virtualbase_eventFilter(VirtualQAnimationGroup* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAnimationGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAnimationGroup_virtualbase_timerEvent(VirtualQAnimationGroup* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAnimationGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAnimationGroup_virtualbase_childEvent(VirtualQAnimationGroup* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAnimationGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAnimationGroup_virtualbase_customEvent(VirtualQAnimationGroup* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAnimationGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAnimationGroup_virtualbase_connectNotify(VirtualQAnimationGroup* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAnimationGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAnimationGroup_virtualbase_disconnectNotify(VirtualQAnimationGroup* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAnimationGroup_protectedbase_sender(const VirtualQAnimationGroup* self);
	friend int QAnimationGroup_protectedbase_senderSignalIndex(const VirtualQAnimationGroup* self);
	friend int QAnimationGroup_protectedbase_receivers(const VirtualQAnimationGroup* self, const char* signal);
	friend bool QAnimationGroup_protectedbase_isSignalConnected(const VirtualQAnimationGroup* self, QMetaMethod* signal);
};

VirtualQAnimationGroup* QAnimationGroup_new(const QAnimationGroup_VTable* vtbl, void* vdata) {
	return new VirtualQAnimationGroup(vtbl, vdata);
}

VirtualQAnimationGroup* QAnimationGroup_new2(const QAnimationGroup_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAnimationGroup(vtbl, vdata, parent);
}

void QAnimationGroup_virtbase(QAnimationGroup* src, QAbstractAnimation** outptr_QAbstractAnimation) {
	*outptr_QAbstractAnimation = static_cast<QAbstractAnimation*>(src);
}

QMetaObject* QAnimationGroup_metaObject(const QAnimationGroup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAnimationGroup_metacast(QAnimationGroup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAnimationGroup_metacall(QAnimationGroup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAnimationGroup_tr(const char* s) {
	QString _ret = QAnimationGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationGroup_trUtf8(const char* s) {
	QString _ret = QAnimationGroup::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractAnimation* QAnimationGroup_animationAt(const QAnimationGroup* self, int index) {
	return self->animationAt(static_cast<int>(index));
}

int QAnimationGroup_animationCount(const QAnimationGroup* self) {
	return self->animationCount();
}

int QAnimationGroup_indexOfAnimation(const QAnimationGroup* self, QAbstractAnimation* animation) {
	return self->indexOfAnimation(animation);
}

void QAnimationGroup_addAnimation(QAnimationGroup* self, QAbstractAnimation* animation) {
	self->addAnimation(animation);
}

void QAnimationGroup_insertAnimation(QAnimationGroup* self, int index, QAbstractAnimation* animation) {
	self->insertAnimation(static_cast<int>(index), animation);
}

void QAnimationGroup_removeAnimation(QAnimationGroup* self, QAbstractAnimation* animation) {
	self->removeAnimation(animation);
}

QAbstractAnimation* QAnimationGroup_takeAnimation(QAnimationGroup* self, int index) {
	return self->takeAnimation(static_cast<int>(index));
}

void QAnimationGroup_clear(QAnimationGroup* self) {
	self->clear();
}

struct miqt_string QAnimationGroup_tr2(const char* s, const char* c) {
	QString _ret = QAnimationGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationGroup_tr3(const char* s, const char* c, int n) {
	QString _ret = QAnimationGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationGroup_trUtf82(const char* s, const char* c) {
	QString _ret = QAnimationGroup::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationGroup_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAnimationGroup::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAnimationGroup_virtualbase_metaObject(const VirtualQAnimationGroup* self) {

	return (QMetaObject*) self->QAnimationGroup::metaObject();
}

void* QAnimationGroup_virtualbase_metacast(VirtualQAnimationGroup* self, const char* param1) {

	return self->QAnimationGroup::qt_metacast(param1);
}

int QAnimationGroup_virtualbase_metacall(VirtualQAnimationGroup* self, int param1, int param2, void** param3) {

	return self->QAnimationGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAnimationGroup_virtualbase_event(VirtualQAnimationGroup* self, QEvent* event) {

	return self->QAnimationGroup::event(event);
}

void QAnimationGroup_virtualbase_updateState(VirtualQAnimationGroup* self, int newState, int oldState) {

	self->QAnimationGroup::updateState(static_cast<VirtualQAnimationGroup::State>(newState), static_cast<VirtualQAnimationGroup::State>(oldState));
}

void QAnimationGroup_virtualbase_updateDirection(VirtualQAnimationGroup* self, int direction) {

	self->QAnimationGroup::updateDirection(static_cast<VirtualQAnimationGroup::Direction>(direction));
}

bool QAnimationGroup_virtualbase_eventFilter(VirtualQAnimationGroup* self, QObject* watched, QEvent* event) {

	return self->QAnimationGroup::eventFilter(watched, event);
}

void QAnimationGroup_virtualbase_timerEvent(VirtualQAnimationGroup* self, QTimerEvent* event) {

	self->QAnimationGroup::timerEvent(event);
}

void QAnimationGroup_virtualbase_childEvent(VirtualQAnimationGroup* self, QChildEvent* event) {

	self->QAnimationGroup::childEvent(event);
}

void QAnimationGroup_virtualbase_customEvent(VirtualQAnimationGroup* self, QEvent* event) {

	self->QAnimationGroup::customEvent(event);
}

void QAnimationGroup_virtualbase_connectNotify(VirtualQAnimationGroup* self, QMetaMethod* signal) {

	self->QAnimationGroup::connectNotify(*signal);
}

void QAnimationGroup_virtualbase_disconnectNotify(VirtualQAnimationGroup* self, QMetaMethod* signal) {

	self->QAnimationGroup::disconnectNotify(*signal);
}

const QMetaObject* QAnimationGroup_staticMetaObject() { return &QAnimationGroup::staticMetaObject; }

const QAnimationGroup_VTable* QAnimationGroup_vtbl(const VirtualQAnimationGroup* self) { return self->vtbl; }
void* QAnimationGroup_vdata(const VirtualQAnimationGroup* self) { return self->vdata; }
void QAnimationGroup_setVdata(VirtualQAnimationGroup* self, void* vdata) { self->vdata = vdata; }

QObject* QAnimationGroup_protectedbase_sender(const VirtualQAnimationGroup* self) {
	return self->sender();
}

int QAnimationGroup_protectedbase_senderSignalIndex(const VirtualQAnimationGroup* self) {
	return self->senderSignalIndex();
}

int QAnimationGroup_protectedbase_receivers(const VirtualQAnimationGroup* self, const char* signal) {
	return self->receivers(signal);
}

bool QAnimationGroup_protectedbase_isSignalConnected(const VirtualQAnimationGroup* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAnimationGroup_delete(QAnimationGroup* self) {
	delete self;
}

