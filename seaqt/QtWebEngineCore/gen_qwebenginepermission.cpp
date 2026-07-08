#include <QMetaObject>
#include <QUrl>
#include <QWebEnginePermission>
#include <qwebenginepermission.h>
#include "gen_qwebenginepermission.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEnginePermission* QWebEnginePermission_new() {
	return new (std::nothrow) QWebEnginePermission();
}

QWebEnginePermission* QWebEnginePermission_new_from(QWebEnginePermission* from) {
	return new (std::nothrow) QWebEnginePermission(*from);
}

void QWebEnginePermission_operatorAssign(QWebEnginePermission* self, QWebEnginePermission* from) {
	self->operator=(*from);
}

void QWebEnginePermission_swap(QWebEnginePermission* self, QWebEnginePermission* other) {
	self->swap(*other);
}

QUrl* QWebEnginePermission_origin(const QWebEnginePermission* self) {
	return new QUrl(self->origin());
}

uint8_t QWebEnginePermission_permissionType(const QWebEnginePermission* self) {
	QWebEnginePermission::PermissionType _ret = self->permissionType();
	return static_cast<uint8_t>(_ret);
}

uint8_t QWebEnginePermission_state(const QWebEnginePermission* self) {
	QWebEnginePermission::State _ret = self->state();
	return static_cast<uint8_t>(_ret);
}

bool QWebEnginePermission_isValid(const QWebEnginePermission* self) {
	return self->isValid();
}

void QWebEnginePermission_grant(const QWebEnginePermission* self) {
	self->grant();
}

void QWebEnginePermission_deny(const QWebEnginePermission* self) {
	self->deny();
}

void QWebEnginePermission_reset(const QWebEnginePermission* self) {
	self->reset();
}

bool QWebEnginePermission_isPersistent(uint8_t permissionType) {
	return QWebEnginePermission::isPersistent(static_cast<QWebEnginePermission::PermissionType>(permissionType));
}

const QMetaObject* QWebEnginePermission_staticMetaObject() { return &QWebEnginePermission::staticMetaObject; }
void QWebEnginePermission_delete(QWebEnginePermission* self) {
	delete self;
}

