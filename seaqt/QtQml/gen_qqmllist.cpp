#include <QMetaObject>
#include <QObject>
#include <QQmlEngine>
#include <QQmlListReference>
#include <qqmllist.h>
#include "gen_qqmllist.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQmlListReference* QQmlListReference_new() {
	return new (std::nothrow) QQmlListReference();
}

QQmlListReference* QQmlListReference_new_QObject_char(QObject* param1, const char* property) {
	return new (std::nothrow) QQmlListReference(param1, property);
}

QQmlListReference* QQmlListReference_new_QQmlListReference(QQmlListReference* from) {
	return new (std::nothrow) QQmlListReference(*from);
}

QQmlListReference* QQmlListReference_new_QObject_char_QQmlEngine(QObject* param1, const char* property, QQmlEngine* param3) {
	return new (std::nothrow) QQmlListReference(param1, property, param3);
}

void QQmlListReference_operatorAssign(QQmlListReference* self, QQmlListReference* from) {
	self->operator=(*from);
}

bool QQmlListReference_isValid(const QQmlListReference* self) {
	return self->isValid();
}

QObject* QQmlListReference_object(const QQmlListReference* self) {
	return self->object();
}

QMetaObject* QQmlListReference_listElementType(const QQmlListReference* self) {
	return (QMetaObject*) self->listElementType();
}

bool QQmlListReference_canAppend(const QQmlListReference* self) {
	return self->canAppend();
}

bool QQmlListReference_canAt(const QQmlListReference* self) {
	return self->canAt();
}

bool QQmlListReference_canClear(const QQmlListReference* self) {
	return self->canClear();
}

bool QQmlListReference_canCount(const QQmlListReference* self) {
	return self->canCount();
}

bool QQmlListReference_canReplace(const QQmlListReference* self) {
	return self->canReplace();
}

bool QQmlListReference_canRemoveLast(const QQmlListReference* self) {
	return self->canRemoveLast();
}

bool QQmlListReference_isManipulable(const QQmlListReference* self) {
	return self->isManipulable();
}

bool QQmlListReference_isReadable(const QQmlListReference* self) {
	return self->isReadable();
}

bool QQmlListReference_append(const QQmlListReference* self, QObject* param1) {
	return self->append(param1);
}

QObject* QQmlListReference_at(const QQmlListReference* self, int param1) {
	return self->at(static_cast<int>(param1));
}

bool QQmlListReference_clear(const QQmlListReference* self) {
	return self->clear();
}

int QQmlListReference_count(const QQmlListReference* self) {
	return self->count();
}

bool QQmlListReference_replace(const QQmlListReference* self, int param1, QObject* param2) {
	return self->replace(static_cast<int>(param1), param2);
}

bool QQmlListReference_removeLast(const QQmlListReference* self) {
	return self->removeLast();
}

void QQmlListReference_delete(QQmlListReference* self) {
	delete self;
}

