#include <QScrollerProperties>
#include <QVariant>
#include <qscrollerproperties.h>
#include "gen_qscrollerproperties.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QScrollerProperties* QScrollerProperties_new() {
	return new (std::nothrow) QScrollerProperties();
}

QScrollerProperties* QScrollerProperties_new_from(QScrollerProperties* from) {
	return new (std::nothrow) QScrollerProperties(*from);
}

void QScrollerProperties_operatorAssign(QScrollerProperties* self, QScrollerProperties* from) {
	self->operator=(*from);
}

bool QScrollerProperties_operatorEqual(const QScrollerProperties* self, QScrollerProperties* sp) {
	return (*self == *sp);
}

bool QScrollerProperties_operatorNotEqual(const QScrollerProperties* self, QScrollerProperties* sp) {
	return (*self != *sp);
}

void QScrollerProperties_setDefaultScrollerProperties(QScrollerProperties* sp) {
	QScrollerProperties::setDefaultScrollerProperties(*sp);
}

void QScrollerProperties_unsetDefaultScrollerProperties() {
	QScrollerProperties::unsetDefaultScrollerProperties();
}

QVariant* QScrollerProperties_scrollMetric(const QScrollerProperties* self, int metric) {
	return new QVariant(self->scrollMetric(static_cast<QScrollerProperties::ScrollMetric>(metric)));
}

void QScrollerProperties_setScrollMetric(QScrollerProperties* self, int metric, QVariant* value) {
	self->setScrollMetric(static_cast<QScrollerProperties::ScrollMetric>(metric), *value);
}

void QScrollerProperties_delete(QScrollerProperties* self) {
	delete self;
}

