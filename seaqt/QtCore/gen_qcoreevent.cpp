#include <QByteArray>
#include <QChildEvent>
#include <QDynamicPropertyChangeEvent>
#include <QEvent>
#include <QMetaObject>
#include <QObject>
#include <QTimerEvent>
#include <qcoreevent.h>
#include "gen_qcoreevent.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQEvent final : public QEvent {
	const QEvent_VTable* vtbl;
public:
	friend void* QEvent_vdata(VirtualQEvent* self);
	friend VirtualQEvent* vdata_QEvent(void* vdata);

	VirtualQEvent(const QEvent_VTable* vtbl, QEvent::Type type): QEvent(type), vtbl(vtbl) {}

	virtual ~VirtualQEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQEvent* QEvent_new(const QEvent_VTable* vtbl, size_t vdata, int type) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQEvent(vtbl, static_cast<QEvent::Type>(type)) : nullptr;
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

int QEvent_registerEventTypeWithHint(int hint) {
	return QEvent::registerEventType(static_cast<int>(hint));
}

const QMetaObject* QEvent_staticMetaObject() { return &QEvent::staticMetaObject; }
void* QEvent_vdata(VirtualQEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQEvent>()); }
VirtualQEvent* vdata_QEvent(void* vdata) { return reinterpret_cast<VirtualQEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQEvent>()); }

void QEvent_virtualbase_setAccepted(VirtualQEvent* self, bool accepted) {

	self->QEvent::setAccepted(accepted);
}

QEvent* QEvent_virtualbase_clone(const VirtualQEvent* self) {

	return self->QEvent::clone();
}

void QEvent_delete(QEvent* self) {
	delete self;
}

class VirtualQTimerEvent final : public QTimerEvent {
	const QTimerEvent_VTable* vtbl;
public:
	friend void* QTimerEvent_vdata(VirtualQTimerEvent* self);
	friend VirtualQTimerEvent* vdata_QTimerEvent(void* vdata);

	VirtualQTimerEvent(const QTimerEvent_VTable* vtbl, int timerId): QTimerEvent(timerId), vtbl(vtbl) {}

	virtual ~VirtualQTimerEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQTimerEvent* QTimerEvent_new(const QTimerEvent_VTable* vtbl, size_t vdata, int timerId) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTimerEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTimerEvent(vtbl, static_cast<int>(timerId)) : nullptr;
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

void* QTimerEvent_vdata(VirtualQTimerEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQTimerEvent>()); }
VirtualQTimerEvent* vdata_QTimerEvent(void* vdata) { return reinterpret_cast<VirtualQTimerEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQTimerEvent>()); }

QTimerEvent* QTimerEvent_virtualbase_clone(const VirtualQTimerEvent* self) {

	return self->QTimerEvent::clone();
}

void QTimerEvent_virtualbase_setAccepted(VirtualQTimerEvent* self, bool accepted) {

	self->QTimerEvent::setAccepted(accepted);
}

void QTimerEvent_delete(QTimerEvent* self) {
	delete self;
}

class VirtualQChildEvent final : public QChildEvent {
	const QChildEvent_VTable* vtbl;
public:
	friend void* QChildEvent_vdata(VirtualQChildEvent* self);
	friend VirtualQChildEvent* vdata_QChildEvent(void* vdata);

	VirtualQChildEvent(const QChildEvent_VTable* vtbl, QEvent::Type type, QObject* child): QChildEvent(type, child), vtbl(vtbl) {}

	virtual ~VirtualQChildEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQChildEvent* QChildEvent_new(const QChildEvent_VTable* vtbl, size_t vdata, int type, QObject* child) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQChildEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQChildEvent(vtbl, static_cast<QEvent::Type>(type), child) : nullptr;
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

void* QChildEvent_vdata(VirtualQChildEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQChildEvent>()); }
VirtualQChildEvent* vdata_QChildEvent(void* vdata) { return reinterpret_cast<VirtualQChildEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQChildEvent>()); }

QChildEvent* QChildEvent_virtualbase_clone(const VirtualQChildEvent* self) {

	return self->QChildEvent::clone();
}

void QChildEvent_virtualbase_setAccepted(VirtualQChildEvent* self, bool accepted) {

	self->QChildEvent::setAccepted(accepted);
}

void QChildEvent_delete(QChildEvent* self) {
	delete self;
}

class VirtualQDynamicPropertyChangeEvent final : public QDynamicPropertyChangeEvent {
	const QDynamicPropertyChangeEvent_VTable* vtbl;
public:
	friend void* QDynamicPropertyChangeEvent_vdata(VirtualQDynamicPropertyChangeEvent* self);
	friend VirtualQDynamicPropertyChangeEvent* vdata_QDynamicPropertyChangeEvent(void* vdata);

	VirtualQDynamicPropertyChangeEvent(const QDynamicPropertyChangeEvent_VTable* vtbl, const QByteArray& name): QDynamicPropertyChangeEvent(name), vtbl(vtbl) {}

	virtual ~VirtualQDynamicPropertyChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(const QDynamicPropertyChangeEvent_VTable* vtbl, size_t vdata, struct seaqt_string name) {
	QByteArray name_QByteArray(name.data, name.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDynamicPropertyChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDynamicPropertyChangeEvent(vtbl, name_QByteArray) : nullptr;
}

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_clone(const QDynamicPropertyChangeEvent* self) {
	return self->clone();
}

struct seaqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self) {
	QByteArray _qb = self->propertyName();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void* QDynamicPropertyChangeEvent_vdata(VirtualQDynamicPropertyChangeEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDynamicPropertyChangeEvent>()); }
VirtualQDynamicPropertyChangeEvent* vdata_QDynamicPropertyChangeEvent(void* vdata) { return reinterpret_cast<VirtualQDynamicPropertyChangeEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDynamicPropertyChangeEvent>()); }

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const VirtualQDynamicPropertyChangeEvent* self) {

	return self->QDynamicPropertyChangeEvent::clone();
}

void QDynamicPropertyChangeEvent_virtualbase_setAccepted(VirtualQDynamicPropertyChangeEvent* self, bool accepted) {

	self->QDynamicPropertyChangeEvent::setAccepted(accepted);
}

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self) {
	delete self;
}

