#include <QMetaType>
#include <QPermission>
#include <qpermissions.h>
#include "gen_qpermissions.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPermission* QPermission_new() {
	return new (std::nothrow) QPermission();
}

QPermission* QPermission_new_from(QPermission* from) {
	return new (std::nothrow) QPermission(*from);
}

int QPermission_status(const QPermission* self) {
	Qt::PermissionStatus _ret = self->status();
	return static_cast<int>(_ret);
}

QMetaType* QPermission_type(const QPermission* self) {
	return new QMetaType(self->type());
}

void QPermission_operatorAssign(QPermission* self, QPermission* from) {
	self->operator=(*from);
}

void QPermission_delete(QPermission* self) {
	delete self;
}

