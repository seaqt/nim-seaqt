#include <QDateTime>
#include <QGeoCoordinate>
#include <QGeoPositionInfo>
#include <qgeopositioninfo.h>
#include "gen_qgeopositioninfo.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QGeoPositionInfo* QGeoPositionInfo_new() {
	return new (std::nothrow) QGeoPositionInfo();
}

QGeoPositionInfo* QGeoPositionInfo_new_coordinate_updateTime(QGeoCoordinate* coordinate, QDateTime* updateTime) {
	return new (std::nothrow) QGeoPositionInfo(*coordinate, *updateTime);
}

QGeoPositionInfo* QGeoPositionInfo_new_from(QGeoPositionInfo* from) {
	return new (std::nothrow) QGeoPositionInfo(*from);
}

void QGeoPositionInfo_operatorAssign(QGeoPositionInfo* self, QGeoPositionInfo* from) {
	self->operator=(*from);
}

bool QGeoPositionInfo_operatorEqual(const QGeoPositionInfo* self, QGeoPositionInfo* other) {
	return (*self == *other);
}

bool QGeoPositionInfo_operatorNotEqual(const QGeoPositionInfo* self, QGeoPositionInfo* other) {
	return (*self != *other);
}

bool QGeoPositionInfo_isValid(const QGeoPositionInfo* self) {
	return self->isValid();
}

void QGeoPositionInfo_setTimestamp(QGeoPositionInfo* self, QDateTime* timestamp) {
	self->setTimestamp(*timestamp);
}

QDateTime* QGeoPositionInfo_timestamp(const QGeoPositionInfo* self) {
	return new QDateTime(self->timestamp());
}

void QGeoPositionInfo_setCoordinate(QGeoPositionInfo* self, QGeoCoordinate* coordinate) {
	self->setCoordinate(*coordinate);
}

QGeoCoordinate* QGeoPositionInfo_coordinate(const QGeoPositionInfo* self) {
	return new QGeoCoordinate(self->coordinate());
}

void QGeoPositionInfo_setAttribute(QGeoPositionInfo* self, int attribute, double value) {
	self->setAttribute(static_cast<QGeoPositionInfo::Attribute>(attribute), static_cast<qreal>(value));
}

double QGeoPositionInfo_attribute(const QGeoPositionInfo* self, int attribute) {
	qreal _ret = self->attribute(static_cast<QGeoPositionInfo::Attribute>(attribute));
	return static_cast<double>(_ret);
}

void QGeoPositionInfo_removeAttribute(QGeoPositionInfo* self, int attribute) {
	self->removeAttribute(static_cast<QGeoPositionInfo::Attribute>(attribute));
}

bool QGeoPositionInfo_hasAttribute(const QGeoPositionInfo* self, int attribute) {
	return self->hasAttribute(static_cast<QGeoPositionInfo::Attribute>(attribute));
}

void QGeoPositionInfo_delete(QGeoPositionInfo* self) {
	delete self;
}

