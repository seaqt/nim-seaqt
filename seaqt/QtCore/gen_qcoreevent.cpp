#include <QByteArray>
#include <QChildEvent>
#include <QDynamicPropertyChangeEvent>
#include <QEvent>
#include <QObject>
#include <QTimerEvent>
#include <qcoreevent.h>
#include "gen_qcoreevent.h"
class VirtualQEvent final : public QEvent {
	const QEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QEvent_VTable* QEvent_vtbl(const VirtualQEvent* self);
	friend void* QEvent_vdata(const VirtualQEvent* self);
	friend void QEvent_setVdata(VirtualQEvent* self, void* vdata);

	VirtualQEvent(const QEvent_VTable* vtbl, void* vdata, QEvent::Type type): QEvent(type), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QEvent_virtualbase_setAccepted(VirtualQEvent* self, bool accepted);

	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QEvent* QEvent_virtualbase_clone(const VirtualQEvent* self);

};

VirtualQEvent* QEvent_new(const QEvent_VTable* vtbl, void* vdata, int type) {
	return new VirtualQEvent(vtbl, vdata, static_cast<QEvent::Type>(type));
}

int QEvent_type(const QEvent* self) {
	QEvent::Type _ret = self->type();
	return static_cast<int>(_ret);
}

bool QEvent_spontaneous(const QEvent* self) {
	return self->spontaneous();
}

void QEvent_setAccepted(QEvent* self, bool accepted) {
	self->setAccepted(accepted);
}

bool QEvent_isAccepted(const QEvent* self) {
	return self->isAccepted();
}

void QEvent_accept(QEvent* self) {
	self->accept();
}

void QEvent_ignore(QEvent* self) {
	self->ignore();
}

bool QEvent_isInputEvent(const QEvent* self) {
	return self->isInputEvent();
}

bool QEvent_isPointerEvent(const QEvent* self) {
	return self->isPointerEvent();
}

bool QEvent_isSinglePointEvent(const QEvent* self) {
	return self->isSinglePointEvent();
}

int QEvent_registerEventType() {
	return QEvent::registerEventType();
}

QEvent* QEvent_clone(const QEvent* self) {
	return self->clone();
}

int QEvent_registerEventType1(int hint) {
	return QEvent::registerEventType(static_cast<int>(hint));
}

void QEvent_virtualbase_setAccepted(VirtualQEvent* self, bool accepted) {

	self->QEvent::setAccepted(accepted);
}

QEvent* QEvent_virtualbase_clone(const VirtualQEvent* self) {

	return self->QEvent::clone();
}

const QMetaObject* QEvent_staticMetaObject() { return &QEvent::staticMetaObject; }

const QEvent_VTable* QEvent_vtbl(const VirtualQEvent* self) { return self->vtbl; }
void* QEvent_vdata(const VirtualQEvent* self) { return self->vdata; }
void QEvent_setVdata(VirtualQEvent* self, void* vdata) { self->vdata = vdata; }

void QEvent_delete(QEvent* self) {
	delete self;
}

class VirtualQTimerEvent final : public QTimerEvent {
	const QTimerEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QTimerEvent_VTable* QTimerEvent_vtbl(const VirtualQTimerEvent* self);
	friend void* QTimerEvent_vdata(const VirtualQTimerEvent* self);
	friend void QTimerEvent_setVdata(VirtualQTimerEvent* self, void* vdata);

	VirtualQTimerEvent(const QTimerEvent_VTable* vtbl, void* vdata, int timerId): QTimerEvent(timerId), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTimerEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QTimerEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTimerEvent::clone();
		}


		QTimerEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QTimerEvent* QTimerEvent_virtualbase_clone(const VirtualQTimerEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTimerEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QTimerEvent_virtualbase_setAccepted(VirtualQTimerEvent* self, bool accepted);

};

VirtualQTimerEvent* QTimerEvent_new(const QTimerEvent_VTable* vtbl, void* vdata, int timerId) {
	return new VirtualQTimerEvent(vtbl, vdata, static_cast<int>(timerId));
}

void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QTimerEvent* QTimerEvent_clone(const QTimerEvent* self) {
	return self->clone();
}

int QTimerEvent_timerId(const QTimerEvent* self) {
	return self->timerId();
}

QTimerEvent* QTimerEvent_virtualbase_clone(const VirtualQTimerEvent* self) {

	return self->QTimerEvent::clone();
}

void QTimerEvent_virtualbase_setAccepted(VirtualQTimerEvent* self, bool accepted) {

	self->QTimerEvent::setAccepted(accepted);
}

const QTimerEvent_VTable* QTimerEvent_vtbl(const VirtualQTimerEvent* self) { return self->vtbl; }
void* QTimerEvent_vdata(const VirtualQTimerEvent* self) { return self->vdata; }
void QTimerEvent_setVdata(VirtualQTimerEvent* self, void* vdata) { self->vdata = vdata; }

void QTimerEvent_delete(QTimerEvent* self) {
	delete self;
}

class VirtualQChildEvent final : public QChildEvent {
	const QChildEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QChildEvent_VTable* QChildEvent_vtbl(const VirtualQChildEvent* self);
	friend void* QChildEvent_vdata(const VirtualQChildEvent* self);
	friend void QChildEvent_setVdata(VirtualQChildEvent* self, void* vdata);

	VirtualQChildEvent(const QChildEvent_VTable* vtbl, void* vdata, QEvent::Type type, QObject* child): QChildEvent(type, child), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQChildEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QChildEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QChildEvent::clone();
		}


		QChildEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QChildEvent* QChildEvent_virtualbase_clone(const VirtualQChildEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QChildEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QChildEvent_virtualbase_setAccepted(VirtualQChildEvent* self, bool accepted);

};

VirtualQChildEvent* QChildEvent_new(const QChildEvent_VTable* vtbl, void* vdata, int type, QObject* child) {
	return new VirtualQChildEvent(vtbl, vdata, static_cast<QEvent::Type>(type), child);
}

void QChildEvent_virtbase(QChildEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QChildEvent* QChildEvent_clone(const QChildEvent* self) {
	return self->clone();
}

QObject* QChildEvent_child(const QChildEvent* self) {
	return self->child();
}

bool QChildEvent_added(const QChildEvent* self) {
	return self->added();
}

bool QChildEvent_polished(const QChildEvent* self) {
	return self->polished();
}

bool QChildEvent_removed(const QChildEvent* self) {
	return self->removed();
}

QChildEvent* QChildEvent_virtualbase_clone(const VirtualQChildEvent* self) {

	return self->QChildEvent::clone();
}

void QChildEvent_virtualbase_setAccepted(VirtualQChildEvent* self, bool accepted) {

	self->QChildEvent::setAccepted(accepted);
}

const QChildEvent_VTable* QChildEvent_vtbl(const VirtualQChildEvent* self) { return self->vtbl; }
void* QChildEvent_vdata(const VirtualQChildEvent* self) { return self->vdata; }
void QChildEvent_setVdata(VirtualQChildEvent* self, void* vdata) { self->vdata = vdata; }

void QChildEvent_delete(QChildEvent* self) {
	delete self;
}

class VirtualQDynamicPropertyChangeEvent final : public QDynamicPropertyChangeEvent {
	const QDynamicPropertyChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QDynamicPropertyChangeEvent_VTable* QDynamicPropertyChangeEvent_vtbl(const VirtualQDynamicPropertyChangeEvent* self);
	friend void* QDynamicPropertyChangeEvent_vdata(const VirtualQDynamicPropertyChangeEvent* self);
	friend void QDynamicPropertyChangeEvent_setVdata(VirtualQDynamicPropertyChangeEvent* self, void* vdata);

	VirtualQDynamicPropertyChangeEvent(const QDynamicPropertyChangeEvent_VTable* vtbl, void* vdata, const QByteArray& name): QDynamicPropertyChangeEvent(name), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDynamicPropertyChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QDynamicPropertyChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDynamicPropertyChangeEvent::clone();
		}


		QDynamicPropertyChangeEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const VirtualQDynamicPropertyChangeEvent* self);

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDynamicPropertyChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QDynamicPropertyChangeEvent_virtualbase_setAccepted(VirtualQDynamicPropertyChangeEvent* self, bool accepted);

};

VirtualQDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(const QDynamicPropertyChangeEvent_VTable* vtbl, void* vdata, struct miqt_string name) {
	QByteArray name_QByteArray(name.data, name.len);
	return new VirtualQDynamicPropertyChangeEvent(vtbl, vdata, name_QByteArray);
}

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_clone(const QDynamicPropertyChangeEvent* self) {
	return self->clone();
}

struct miqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self) {
	QByteArray _qb = self->propertyName();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const VirtualQDynamicPropertyChangeEvent* self) {

	return self->QDynamicPropertyChangeEvent::clone();
}

void QDynamicPropertyChangeEvent_virtualbase_setAccepted(VirtualQDynamicPropertyChangeEvent* self, bool accepted) {

	self->QDynamicPropertyChangeEvent::setAccepted(accepted);
}

const QDynamicPropertyChangeEvent_VTable* QDynamicPropertyChangeEvent_vtbl(const VirtualQDynamicPropertyChangeEvent* self) { return self->vtbl; }
void* QDynamicPropertyChangeEvent_vdata(const VirtualQDynamicPropertyChangeEvent* self) { return self->vdata; }
void QDynamicPropertyChangeEvent_setVdata(VirtualQDynamicPropertyChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self) {
	delete self;
}

