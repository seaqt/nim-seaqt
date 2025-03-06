#include <QByteArray>
#include <QChildEvent>
#include <QDynamicPropertyChangeEvent>
#include <QEvent>
#include <QObject>
#include <QTimerEvent>
#include <qcoreevent.h>
#include "gen_qcoreevent.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQEvent final : public QEvent {
	struct QEvent_VTable* vtbl;
public:

	VirtualQEvent(struct QEvent_VTable* vtbl, QEvent::Type type): QEvent(type), vtbl(vtbl) {};

	virtual ~VirtualQEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QEvent_virtualbase_clone(const void* self);

};

QEvent* QEvent_new(struct QEvent_VTable* vtbl, int type) {
	return new VirtualQEvent(vtbl, static_cast<QEvent::Type>(type));
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

void QEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQEvent*)(self) )->QEvent::setAccepted(accepted);

}

QEvent* QEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQEvent*)(self) )->QEvent::clone();

}

const QMetaObject* QEvent_staticMetaObject() { return &QEvent::staticMetaObject; }
void QEvent_delete(QEvent* self) {
	delete self;
}

class VirtualQTimerEvent final : public QTimerEvent {
	struct QTimerEvent_VTable* vtbl;
public:

	VirtualQTimerEvent(struct QTimerEvent_VTable* vtbl, int timerId): QTimerEvent(timerId), vtbl(vtbl) {};

	virtual ~VirtualQTimerEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTimerEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTimerEvent::clone();
		}


		QTimerEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QTimerEvent* QTimerEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTimerEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QTimerEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QTimerEvent* QTimerEvent_new(struct QTimerEvent_VTable* vtbl, int timerId) {
	return new VirtualQTimerEvent(vtbl, static_cast<int>(timerId));
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

QTimerEvent* QTimerEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQTimerEvent*)(self) )->QTimerEvent::clone();

}

void QTimerEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQTimerEvent*)(self) )->QTimerEvent::setAccepted(accepted);

}

void QTimerEvent_delete(QTimerEvent* self) {
	delete self;
}

class VirtualQChildEvent final : public QChildEvent {
	struct QChildEvent_VTable* vtbl;
public:

	VirtualQChildEvent(struct QChildEvent_VTable* vtbl, QEvent::Type type, QObject* child): QChildEvent(type, child), vtbl(vtbl) {};

	virtual ~VirtualQChildEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QChildEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QChildEvent::clone();
		}


		QChildEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QChildEvent* QChildEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QChildEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QChildEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QChildEvent* QChildEvent_new(struct QChildEvent_VTable* vtbl, int type, QObject* child) {
	return new VirtualQChildEvent(vtbl, static_cast<QEvent::Type>(type), child);
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

QChildEvent* QChildEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQChildEvent*)(self) )->QChildEvent::clone();

}

void QChildEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQChildEvent*)(self) )->QChildEvent::setAccepted(accepted);

}

void QChildEvent_delete(QChildEvent* self) {
	delete self;
}

class VirtualQDynamicPropertyChangeEvent final : public QDynamicPropertyChangeEvent {
	struct QDynamicPropertyChangeEvent_VTable* vtbl;
public:

	VirtualQDynamicPropertyChangeEvent(struct QDynamicPropertyChangeEvent_VTable* vtbl, const QByteArray& name): QDynamicPropertyChangeEvent(name), vtbl(vtbl) {};

	virtual ~VirtualQDynamicPropertyChangeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QDynamicPropertyChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDynamicPropertyChangeEvent::clone();
		}


		QDynamicPropertyChangeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDynamicPropertyChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QDynamicPropertyChangeEvent_virtualbase_setAccepted(void* self, bool accepted);

};

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(struct QDynamicPropertyChangeEvent_VTable* vtbl, struct miqt_string name) {
	QByteArray name_QByteArray(name.data, name.len);
	return new VirtualQDynamicPropertyChangeEvent(vtbl, name_QByteArray);
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

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQDynamicPropertyChangeEvent*)(self) )->QDynamicPropertyChangeEvent::clone();

}

void QDynamicPropertyChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQDynamicPropertyChangeEvent*)(self) )->QDynamicPropertyChangeEvent::setAccepted(accepted);

}

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self) {
	delete self;
}

