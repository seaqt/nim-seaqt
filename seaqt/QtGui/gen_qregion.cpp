#include <QBitmap>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QVariant>
#include <qregion.h>
#include "gen_qregion.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QRegion* QRegion_new() {
	return new (std::nothrow) QRegion();
}

QRegion* QRegion_new_x_y_w_h(int x, int y, int w, int h) {
	return new (std::nothrow) QRegion(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

QRegion* QRegion_new_r(QRect* r) {
	return new (std::nothrow) QRegion(*r);
}

QRegion* QRegion_new_from(QRegion* from) {
	return new (std::nothrow) QRegion(*from);
}

QRegion* QRegion_new_bitmap(QBitmap* bitmap) {
	return new (std::nothrow) QRegion(*bitmap);
}

QRegion* QRegion_new_x_y_w_h_t(int x, int y, int w, int h, int t) {
	return new (std::nothrow) QRegion(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<QRegion::RegionType>(t));
}

QRegion* QRegion_new_r_t(QRect* r, int t) {
	return new (std::nothrow) QRegion(*r, static_cast<QRegion::RegionType>(t));
}

void QRegion_operatorAssign(QRegion* self, QRegion* from) {
	self->operator=(*from);
}

void QRegion_swap(QRegion* self, QRegion* other) {
	self->swap(*other);
}

bool QRegion_isEmpty(const QRegion* self) {
	return self->isEmpty();
}

bool QRegion_isNull(const QRegion* self) {
	return self->isNull();
}

QRect* QRegion_begin(const QRegion* self) {
	QRegion::const_iterator _ret = self->begin();
	return const_cast<QRect*>(static_cast<const QRect*>(_ret));
}

QRect* QRegion_cbegin(const QRegion* self) {
	QRegion::const_iterator _ret = self->cbegin();
	return const_cast<QRect*>(static_cast<const QRect*>(_ret));
}

QRect* QRegion_end(const QRegion* self) {
	QRegion::const_iterator _ret = self->end();
	return const_cast<QRect*>(static_cast<const QRect*>(_ret));
}

QRect* QRegion_cend(const QRegion* self) {
	QRegion::const_iterator _ret = self->cend();
	return const_cast<QRect*>(static_cast<const QRect*>(_ret));
}

bool QRegion_contains_p(const QRegion* self, QPoint* p) {
	return self->contains(*p);
}

bool QRegion_contains_r(const QRegion* self, QRect* r) {
	return self->contains(*r);
}

void QRegion_translate_dx_dy(QRegion* self, int dx, int dy) {
	self->translate(static_cast<int>(dx), static_cast<int>(dy));
}

void QRegion_translate_p(QRegion* self, QPoint* p) {
	self->translate(*p);
}

QRegion* QRegion_translated_dx_dy(const QRegion* self, int dx, int dy) {
	return new QRegion(self->translated(static_cast<int>(dx), static_cast<int>(dy)));
}

QRegion* QRegion_translated_p(const QRegion* self, QPoint* p) {
	return new QRegion(self->translated(*p));
}

QRegion* QRegion_united_QRegion(const QRegion* self, QRegion* r) {
	return new QRegion(self->united(*r));
}

QRegion* QRegion_united_QRect(const QRegion* self, QRect* r) {
	return new QRegion(self->united(*r));
}

QRegion* QRegion_intersected_QRegion(const QRegion* self, QRegion* r) {
	return new QRegion(self->intersected(*r));
}

QRegion* QRegion_intersected_QRect(const QRegion* self, QRect* r) {
	return new QRegion(self->intersected(*r));
}

QRegion* QRegion_subtracted(const QRegion* self, QRegion* r) {
	return new QRegion(self->subtracted(*r));
}

QRegion* QRegion_xored(const QRegion* self, QRegion* r) {
	return new QRegion(self->xored(*r));
}

bool QRegion_intersects_QRegion(const QRegion* self, QRegion* r) {
	return self->intersects(*r);
}

bool QRegion_intersects_QRect(const QRegion* self, QRect* r) {
	return self->intersects(*r);
}

QRect* QRegion_boundingRect(const QRegion* self) {
	return new QRect(self->boundingRect());
}

void QRegion_setRects_rect_num(QRegion* self, QRect* rect, int num) {
	self->setRects(rect, static_cast<int>(num));
}

int QRegion_rectCount(const QRegion* self) {
	return self->rectCount();
}

QRegion* QRegion_operatorBitwiseOr(const QRegion* self, QRegion* r) {
	return new QRegion(self->operator|(*r));
}

QRegion* QRegion_operatorPlus_QRegion(const QRegion* self, QRegion* r) {
	return new QRegion(self->operator+(*r));
}

QRegion* QRegion_operatorPlus_QRect(const QRegion* self, QRect* r) {
	return new QRegion(self->operator+(*r));
}

QRegion* QRegion_operatorBitwiseAnd_QRegion(const QRegion* self, QRegion* r) {
	return new QRegion(self->operator&(*r));
}

QRegion* QRegion_operatorBitwiseAnd_QRect(const QRegion* self, QRect* r) {
	return new QRegion(self->operator&(*r));
}

QRegion* QRegion_operatorMinus(const QRegion* self, QRegion* r) {
	return new QRegion(self->operator-(*r));
}

QRegion* QRegion_operatorBitwiseNot(const QRegion* self, QRegion* r) {
	return new QRegion(self->operator^(*r));
}

void QRegion_operatorBitwiseOrAssign(QRegion* self, QRegion* r) {
	self->operator|=(*r);
}

QRegion* QRegion_operatorPlusAssign_QRegion(QRegion* self, QRegion* r) {
	QRegion& _ret = self->operator+=(*r);
	// Cast returned reference into pointer
	return &_ret;
}

QRegion* QRegion_operatorPlusAssign_QRect(QRegion* self, QRect* r) {
	QRegion& _ret = self->operator+=(*r);
	// Cast returned reference into pointer
	return &_ret;
}

void QRegion_operatorBitwiseAndAssign_QRegion(QRegion* self, QRegion* r) {
	self->operator&=(*r);
}

void QRegion_operatorBitwiseAndAssign_QRect(QRegion* self, QRect* r) {
	self->operator&=(*r);
}

QRegion* QRegion_operatorMinusAssign(QRegion* self, QRegion* r) {
	QRegion& _ret = self->operator-=(*r);
	// Cast returned reference into pointer
	return &_ret;
}

void QRegion_operatorBitwiseNotAssign(QRegion* self, QRegion* r) {
	self->operator^=(*r);
}

bool QRegion_operatorEqual(const QRegion* self, QRegion* r) {
	return (*self == *r);
}

bool QRegion_operatorNotEqual(const QRegion* self, QRegion* r) {
	return (*self != *r);
}

QVariant* QRegion_ToQVariant(const QRegion* self) {
	return new QVariant(self->operator QVariant());
}

void QRegion_delete(QRegion* self) {
	delete self;
}

