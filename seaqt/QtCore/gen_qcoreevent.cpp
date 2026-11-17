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

QEvent* QEvent_new_type(int type) {
	return new (std::nothrow) QEvent(static_cast<QEvent::Type>(type));
}

QEvent* QEvent_new_from(QEvent* from) {
	return new (std::nothrow) QEvent(*from);
}

void QEvent_operatorAssign(QEvent* self, QEvent* from) {
	self->operator=(*from);
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

int QEvent_registerEventType() {
	return QEvent::registerEventType();
}

int QEvent_registerEventType_hint(int hint) {
	return QEvent::registerEventType(static_cast<int>(hint));
}

const QMetaObject* QEvent_staticMetaObject() { return &QEvent::staticMetaObject; }
void QEvent_delete(QEvent* self) {
	delete self;
}

QTimerEvent* QTimerEvent_new_timerId(int timerId) {
	return new (std::nothrow) QTimerEvent(static_cast<int>(timerId));
}

QTimerEvent* QTimerEvent_new_from(QTimerEvent* from) {
	return new (std::nothrow) QTimerEvent(*from);
}

void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

int QTimerEvent_timerId(const QTimerEvent* self) {
	return self->timerId();
}

void QTimerEvent_operatorAssign(QTimerEvent* self, QTimerEvent* from) {
	self->operator=(*from);
}

void QTimerEvent_delete(QTimerEvent* self) {
	delete self;
}

QChildEvent* QChildEvent_new_type_child(int type, QObject* child) {
	return new (std::nothrow) QChildEvent(static_cast<QEvent::Type>(type), child);
}

QChildEvent* QChildEvent_new_from(QChildEvent* from) {
	return new (std::nothrow) QChildEvent(*from);
}

void QChildEvent_virtbase(QChildEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
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

void QChildEvent_operatorAssign(QChildEvent* self, QChildEvent* from) {
	self->operator=(*from);
}

void QChildEvent_delete(QChildEvent* self) {
	delete self;
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new_name(struct seaqt_string name) {
	QByteArray name_QByteArray(name.data, name.len);
	return new (std::nothrow) QDynamicPropertyChangeEvent(name_QByteArray);
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new_from(QDynamicPropertyChangeEvent* from) {
	return new (std::nothrow) QDynamicPropertyChangeEvent(*from);
}

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

struct seaqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self) {
	QByteArray _qb = self->propertyName();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QDynamicPropertyChangeEvent_operatorAssign(QDynamicPropertyChangeEvent* self, QDynamicPropertyChangeEvent* from) {
	self->operator=(*from);
}

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self) {
	delete self;
}

