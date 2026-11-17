#include <QPoint>
#include <QPointF>
#include <QVariant>
#include <QVector2D>
#include <QVector3D>
#include <QVector4D>
#include <qvector4d.h>
#include "gen_qvector4d.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QVector4D* QVector4D_new() {
	return new (std::nothrow) QVector4D();
}

QVector4D* QVector4D_new_Qt_Initialization(int param1) {
	return new (std::nothrow) QVector4D(static_cast<Qt::Initialization>(param1));
}

QVector4D* QVector4D_new_float_float_float_float(float xpos, float ypos, float zpos, float wpos) {
	return new (std::nothrow) QVector4D(static_cast<float>(xpos), static_cast<float>(ypos), static_cast<float>(zpos), static_cast<float>(wpos));
}

QVector4D* QVector4D_new_QPoint(QPoint* point) {
	return new (std::nothrow) QVector4D(*point);
}

QVector4D* QVector4D_new_QPointF(QPointF* point) {
	return new (std::nothrow) QVector4D(*point);
}

QVector4D* QVector4D_new_QVector2D(QVector2D* vector) {
	return new (std::nothrow) QVector4D(*vector);
}

QVector4D* QVector4D_new_QVector2D_float_float(QVector2D* vector, float zpos, float wpos) {
	return new (std::nothrow) QVector4D(*vector, static_cast<float>(zpos), static_cast<float>(wpos));
}

QVector4D* QVector4D_new_QVector3D(QVector3D* vector) {
	return new (std::nothrow) QVector4D(*vector);
}

QVector4D* QVector4D_new_QVector3D_float(QVector3D* vector, float wpos) {
	return new (std::nothrow) QVector4D(*vector, static_cast<float>(wpos));
}

QVector4D* QVector4D_new_QVector4D(QVector4D* from) {
	return new (std::nothrow) QVector4D(*from);
}

bool QVector4D_isNull(const QVector4D* self) {
	return self->isNull();
}

float QVector4D_x(const QVector4D* self) {
	return self->x();
}

float QVector4D_y(const QVector4D* self) {
	return self->y();
}

float QVector4D_z(const QVector4D* self) {
	return self->z();
}

float QVector4D_w(const QVector4D* self) {
	return self->w();
}

void QVector4D_setX(QVector4D* self, float x) {
	self->setX(static_cast<float>(x));
}

void QVector4D_setY(QVector4D* self, float y) {
	self->setY(static_cast<float>(y));
}

void QVector4D_setZ(QVector4D* self, float z) {
	self->setZ(static_cast<float>(z));
}

void QVector4D_setW(QVector4D* self, float w) {
	self->setW(static_cast<float>(w));
}

float QVector4D_operatorSubscript(const QVector4D* self, int i) {
	return self->operator[](static_cast<int>(i));
}

float QVector4D_length(const QVector4D* self) {
	return self->length();
}

float QVector4D_lengthSquared(const QVector4D* self) {
	return self->lengthSquared();
}

QVector4D* QVector4D_normalized(const QVector4D* self) {
	return new QVector4D(self->normalized());
}

void QVector4D_normalize(QVector4D* self) {
	self->normalize();
}

QVector4D* QVector4D_operatorPlusAssign(QVector4D* self, QVector4D* vector) {
	QVector4D& _ret = self->operator+=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

QVector4D* QVector4D_operatorMinusAssign(QVector4D* self, QVector4D* vector) {
	QVector4D& _ret = self->operator-=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

QVector4D* QVector4D_operatorMultiplyAssign_factor(QVector4D* self, float factor) {
	QVector4D& _ret = self->operator*=(static_cast<float>(factor));
	// Cast returned reference into pointer
	return &_ret;
}

QVector4D* QVector4D_operatorMultiplyAssign_vector(QVector4D* self, QVector4D* vector) {
	QVector4D& _ret = self->operator*=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

QVector4D* QVector4D_operatorDivideAssign_divisor(QVector4D* self, float divisor) {
	QVector4D& _ret = self->operator/=(static_cast<float>(divisor));
	// Cast returned reference into pointer
	return &_ret;
}

QVector4D* QVector4D_operatorDivideAssign_vector(QVector4D* self, QVector4D* vector) {
	QVector4D& _ret = self->operator/=(*vector);
	// Cast returned reference into pointer
	return &_ret;
}

float QVector4D_dotProduct(QVector4D* v1, QVector4D* v2) {
	return QVector4D::dotProduct(*v1, *v2);
}

QVector2D* QVector4D_toVector2D(const QVector4D* self) {
	return new QVector2D(self->toVector2D());
}

QVector2D* QVector4D_toVector2DAffine(const QVector4D* self) {
	return new QVector2D(self->toVector2DAffine());
}

QVector3D* QVector4D_toVector3D(const QVector4D* self) {
	return new QVector3D(self->toVector3D());
}

QVector3D* QVector4D_toVector3DAffine(const QVector4D* self) {
	return new QVector3D(self->toVector3DAffine());
}

QPoint* QVector4D_toPoint(const QVector4D* self) {
	return new QPoint(self->toPoint());
}

QPointF* QVector4D_toPointF(const QVector4D* self) {
	return new QPointF(self->toPointF());
}

QVariant* QVector4D_ToQVariant(const QVector4D* self) {
	return new QVariant(self->operator QVariant());
}

void QVector4D_delete(QVector4D* self) {
	delete self;
}

