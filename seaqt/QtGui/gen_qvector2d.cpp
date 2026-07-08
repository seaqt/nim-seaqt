#include <QPoint>
#include <QPointF>
#include <QVariant>
#include <QVector2D>
#include <QVector3D>
#include <QVector4D>
#include <qvector2d.h>
#include "gen_qvector2d.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QVector2D* QVector2D_new() {
	return new (std::nothrow) QVector2D();
}

QVector2D* QVector2D_new_Qt_Initialization(int param1) {
	return new (std::nothrow) QVector2D(static_cast<Qt::Initialization>(param1));
}

QVector2D* QVector2D_new_float_float(float xpos, float ypos) {
	return new (std::nothrow) QVector2D(static_cast<float>(xpos), static_cast<float>(ypos));
}

QVector2D* QVector2D_new_QPoint(QPoint* point) {
	return new (std::nothrow) QVector2D(*point);
}

QVector2D* QVector2D_new_QPointF(QPointF* point) {
	return new (std::nothrow) QVector2D(*point);
}

QVector2D* QVector2D_new_QVector3D(QVector3D* vector) {
	return new (std::nothrow) QVector2D(*vector);
}

QVector2D* QVector2D_new_QVector4D(QVector4D* vector) {
	return new (std::nothrow) QVector2D(*vector);
}

QVector2D* QVector2D_new_QVector2D(QVector2D* from) {
	return new (std::nothrow) QVector2D(*from);
}

bool QVector2D_isNull(const QVector2D* self) {
	return self->isNull();
}

float QVector2D_x(const QVector2D* self) {
	return self->x();
}

float QVector2D_y(const QVector2D* self) {
	return self->y();
}

void QVector2D_setX(QVector2D* self, float x) {
	self->setX(static_cast<float>(x));
}

void QVector2D_setY(QVector2D* self, float y) {
	self->setY(static_cast<float>(y));
}

float QVector2D_operatorSubscript(const QVector2D* self, int i) {
	return self->operator[](static_cast<int>(i));
}

float QVector2D_length(const QVector2D* self) {
	return self->length();
}

float QVector2D_lengthSquared(const QVector2D* self) {
	return self->lengthSquared();
}

QVector2D* QVector2D_normalized(const QVector2D* self) {
	return new QVector2D(self->normalized());
}

void QVector2D_normalize(QVector2D* self) {
	self->normalize();
}

float QVector2D_distanceToPoint(const QVector2D* self, QVector2D* point) {
	return self->distanceToPoint(*point);
}

float QVector2D_distanceToLine(const QVector2D* self, QVector2D* point, QVector2D* direction) {
	return self->distanceToLine(*point, *direction);
}

QVector2D* QVector2D_operatorPlusAssign(QVector2D* self, QVector2D* vector) {
	QVector2D& _ret = self->operator+=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

QVector2D* QVector2D_operatorMinusAssign(QVector2D* self, QVector2D* vector) {
	QVector2D& _ret = self->operator-=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

QVector2D* QVector2D_operatorMultiplyAssign_factor(QVector2D* self, float factor) {
	QVector2D& _ret = self->operator*=(static_cast<float>(factor));
	// Cast returned reference into pointer
	return &_ret;
}

QVector2D* QVector2D_operatorMultiplyAssign_vector(QVector2D* self, QVector2D* vector) {
	QVector2D& _ret = self->operator*=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

QVector2D* QVector2D_operatorDivideAssign_divisor(QVector2D* self, float divisor) {
	QVector2D& _ret = self->operator/=(static_cast<float>(divisor));
	// Cast returned reference into pointer
	return &_ret;
}

QVector2D* QVector2D_operatorDivideAssign_vector(QVector2D* self, QVector2D* vector) {
	QVector2D& _ret = self->operator/=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

float QVector2D_dotProduct(QVector2D* v1, QVector2D* v2) {
	return QVector2D::dotProduct(*v1, *v2);
}

QVector3D* QVector2D_toVector3D(const QVector2D* self) {
	return new QVector3D(self->toVector3D());
}

QVector4D* QVector2D_toVector4D(const QVector2D* self) {
	return new QVector4D(self->toVector4D());
}

QPoint* QVector2D_toPoint(const QVector2D* self) {
	return new QPoint(self->toPoint());
}

QPointF* QVector2D_toPointF(const QVector2D* self) {
	return new QPointF(self->toPointF());
}

QVariant* QVector2D_ToQVariant(const QVector2D* self) {
	return new QVariant(self->operator QVariant());
}

void QVector2D_delete(QVector2D* self) {
	delete self;
}

