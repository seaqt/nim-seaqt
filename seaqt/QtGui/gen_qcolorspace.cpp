#include <QByteArray>
#include <QColorSpace>
#include <QColorTransform>
#include <QMetaObject>
#include <QPointF>
#include <QVariant>
#include <qcolorspace.h>
#include "gen_qcolorspace.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QColorSpace* QColorSpace_new() {
	return new (std::nothrow) QColorSpace();
}

QColorSpace* QColorSpace_new_namedColorSpace(int namedColorSpace) {
	return new (std::nothrow) QColorSpace(static_cast<QColorSpace::NamedColorSpace>(namedColorSpace));
}

QColorSpace* QColorSpace_new_primaries_transferFunction(int primaries, int transferFunction) {
	return new (std::nothrow) QColorSpace(static_cast<QColorSpace::Primaries>(primaries), static_cast<QColorSpace::TransferFunction>(transferFunction));
}

QColorSpace* QColorSpace_new_primaries_gamma(int primaries, float gamma) {
	return new (std::nothrow) QColorSpace(static_cast<QColorSpace::Primaries>(primaries), static_cast<float>(gamma));
}

QColorSpace* QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int transferFunction) {
	return new (std::nothrow) QColorSpace(*whitePoint, *redPoint, *greenPoint, *bluePoint, static_cast<QColorSpace::TransferFunction>(transferFunction));
}

QColorSpace* QColorSpace_new_from(QColorSpace* from) {
	return new (std::nothrow) QColorSpace(*from);
}

QColorSpace* QColorSpace_new_primaries_transferFunction_gamma(int primaries, int transferFunction, float gamma) {
	return new (std::nothrow) QColorSpace(static_cast<QColorSpace::Primaries>(primaries), static_cast<QColorSpace::TransferFunction>(transferFunction), static_cast<float>(gamma));
}

QColorSpace* QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction_gamma(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int transferFunction, float gamma) {
	return new (std::nothrow) QColorSpace(*whitePoint, *redPoint, *greenPoint, *bluePoint, static_cast<QColorSpace::TransferFunction>(transferFunction), static_cast<float>(gamma));
}

void QColorSpace_operatorAssign(QColorSpace* self, QColorSpace* from) {
	self->operator=(*from);
}

void QColorSpace_swap(QColorSpace* self, QColorSpace* colorSpace) {
	self->swap(*colorSpace);
}

int QColorSpace_primaries(const QColorSpace* self) {
	QColorSpace::Primaries _ret = self->primaries();
	return static_cast<int>(_ret);
}

int QColorSpace_transferFunction(const QColorSpace* self) {
	QColorSpace::TransferFunction _ret = self->transferFunction();
	return static_cast<int>(_ret);
}

float QColorSpace_gamma(const QColorSpace* self) {
	return self->gamma();
}

void QColorSpace_setTransferFunction_transferFunction(QColorSpace* self, int transferFunction) {
	self->setTransferFunction(static_cast<QColorSpace::TransferFunction>(transferFunction));
}

QColorSpace* QColorSpace_withTransferFunction_transferFunction(const QColorSpace* self, int transferFunction) {
	return new QColorSpace(self->withTransferFunction(static_cast<QColorSpace::TransferFunction>(transferFunction)));
}

void QColorSpace_setPrimaries_primariesId(QColorSpace* self, int primariesId) {
	self->setPrimaries(static_cast<QColorSpace::Primaries>(primariesId));
}

void QColorSpace_setPrimaries_whitePoint_redPoint_greenPoint_bluePoint(QColorSpace* self, QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint) {
	self->setPrimaries(*whitePoint, *redPoint, *greenPoint, *bluePoint);
}

bool QColorSpace_isValid(const QColorSpace* self) {
	return self->isValid();
}

QColorSpace* QColorSpace_fromIccProfile(struct seaqt_string iccProfile) {
	QByteArray iccProfile_QByteArray(iccProfile.data, iccProfile.len);
	return new QColorSpace(QColorSpace::fromIccProfile(iccProfile_QByteArray));
}

struct seaqt_string QColorSpace_iccProfile(const QColorSpace* self) {
	QByteArray _qb = self->iccProfile();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QColorTransform* QColorSpace_transformationToColorSpace(const QColorSpace* self, QColorSpace* colorspace) {
	return new QColorTransform(self->transformationToColorSpace(*colorspace));
}

QVariant* QColorSpace_ToQVariant(const QColorSpace* self) {
	return new QVariant(self->operator QVariant());
}

void QColorSpace_setTransferFunction_transferFunction_gamma(QColorSpace* self, int transferFunction, float gamma) {
	self->setTransferFunction(static_cast<QColorSpace::TransferFunction>(transferFunction), static_cast<float>(gamma));
}

QColorSpace* QColorSpace_withTransferFunction_transferFunction_gamma(const QColorSpace* self, int transferFunction, float gamma) {
	return new QColorSpace(self->withTransferFunction(static_cast<QColorSpace::TransferFunction>(transferFunction), static_cast<float>(gamma)));
}

const QMetaObject* QColorSpace_staticMetaObject() { return &QColorSpace::staticMetaObject; }
void QColorSpace_delete(QColorSpace* self) {
	delete self;
}

