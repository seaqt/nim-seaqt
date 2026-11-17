#include <QJSNumberCoercion>
#include <qjsnumbercoercion.h>
#include "gen_qjsnumbercoercion.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QJSNumberCoercion* QJSNumberCoercion_new(QJSNumberCoercion* param1) {
	return new (std::nothrow) QJSNumberCoercion(*param1);
}

bool QJSNumberCoercion_isInteger(double d) {
	return QJSNumberCoercion::isInteger(static_cast<double>(d));
}

int QJSNumberCoercion_toInteger(double d) {
	return QJSNumberCoercion::toInteger(static_cast<double>(d));
}

bool QJSNumberCoercion_equals(double lhs, double rhs) {
	return QJSNumberCoercion::equals(static_cast<double>(lhs), static_cast<double>(rhs));
}

void QJSNumberCoercion_delete(QJSNumberCoercion* self) {
	delete self;
}

