#include <QBrush>
#include <QColor>
#include <QPen>
#include <QVariant>
#include <QVector>
#include <qpen.h>
#include "gen_qpen.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPen* QPen_new() {
	return new (std::nothrow) QPen();
}

QPen* QPen_new_Qt_PenStyle(int param1) {
	return new (std::nothrow) QPen(static_cast<Qt::PenStyle>(param1));
}

QPen* QPen_new_QColor(QColor* color) {
	return new (std::nothrow) QPen(*color);
}

QPen* QPen_new_QBrush_qreal(QBrush* brush, double width) {
	return new (std::nothrow) QPen(*brush, static_cast<qreal>(width));
}

QPen* QPen_new_QPen(QPen* from) {
	return new (std::nothrow) QPen(*from);
}

QPen* QPen_new_QBrush_qreal_Qt_PenStyle(QBrush* brush, double width, int s) {
	return new (std::nothrow) QPen(*brush, static_cast<qreal>(width), static_cast<Qt::PenStyle>(s));
}

QPen* QPen_new_QBrush_qreal_Qt_PenStyle_Qt_PenCapStyle(QBrush* brush, double width, int s, int c) {
	return new (std::nothrow) QPen(*brush, static_cast<qreal>(width), static_cast<Qt::PenStyle>(s), static_cast<Qt::PenCapStyle>(c));
}

QPen* QPen_new_QBrush_qreal_Qt_PenStyle_Qt_PenCapStyle_Qt_PenJoinStyle(QBrush* brush, double width, int s, int c, int j) {
	return new (std::nothrow) QPen(*brush, static_cast<qreal>(width), static_cast<Qt::PenStyle>(s), static_cast<Qt::PenCapStyle>(c), static_cast<Qt::PenJoinStyle>(j));
}

void QPen_operatorAssign(QPen* self, QPen* from) {
	self->operator=(*from);
}

void QPen_swap(QPen* self, QPen* other) {
	self->swap(*other);
}

int QPen_style(const QPen* self) {
	Qt::PenStyle _ret = self->style();
	return static_cast<int>(_ret);
}

void QPen_setStyle(QPen* self, int style) {
	self->setStyle(static_cast<Qt::PenStyle>(style));
}

struct seaqt_array /* of double */  QPen_dashPattern(const QPen* self) {
	QVector<qreal> _ret = self->dashPattern();
	// Convert QList<> from C++ memory to manually-managed C memory
	double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QPen_setDashPattern(QPen* self, struct seaqt_array /* of double */  pattern) {
	QVector<qreal> pattern_QList;
	pattern_QList.reserve(pattern.len);
	double* pattern_arr = static_cast<double*>(pattern.data);
	for(size_t i = 0; i < pattern.len; ++i) {
		pattern_QList.push_back(static_cast<double>(pattern_arr[i]));
	}
	self->setDashPattern(pattern_QList);
}

double QPen_dashOffset(const QPen* self) {
	qreal _ret = self->dashOffset();
	return static_cast<double>(_ret);
}

void QPen_setDashOffset(QPen* self, double doffset) {
	self->setDashOffset(static_cast<qreal>(doffset));
}

double QPen_miterLimit(const QPen* self) {
	qreal _ret = self->miterLimit();
	return static_cast<double>(_ret);
}

void QPen_setMiterLimit(QPen* self, double limit) {
	self->setMiterLimit(static_cast<qreal>(limit));
}

double QPen_widthF(const QPen* self) {
	qreal _ret = self->widthF();
	return static_cast<double>(_ret);
}

void QPen_setWidthF(QPen* self, double width) {
	self->setWidthF(static_cast<qreal>(width));
}

int QPen_width(const QPen* self) {
	return self->width();
}

void QPen_setWidth(QPen* self, int width) {
	self->setWidth(static_cast<int>(width));
}

QColor* QPen_color(const QPen* self) {
	return new QColor(self->color());
}

void QPen_setColor(QPen* self, QColor* color) {
	self->setColor(*color);
}

QBrush* QPen_brush(const QPen* self) {
	return new QBrush(self->brush());
}

void QPen_setBrush(QPen* self, QBrush* brush) {
	self->setBrush(*brush);
}

bool QPen_isSolid(const QPen* self) {
	return self->isSolid();
}

int QPen_capStyle(const QPen* self) {
	Qt::PenCapStyle _ret = self->capStyle();
	return static_cast<int>(_ret);
}

void QPen_setCapStyle(QPen* self, int pcs) {
	self->setCapStyle(static_cast<Qt::PenCapStyle>(pcs));
}

int QPen_joinStyle(const QPen* self) {
	Qt::PenJoinStyle _ret = self->joinStyle();
	return static_cast<int>(_ret);
}

void QPen_setJoinStyle(QPen* self, int pcs) {
	self->setJoinStyle(static_cast<Qt::PenJoinStyle>(pcs));
}

bool QPen_isCosmetic(const QPen* self) {
	return self->isCosmetic();
}

void QPen_setCosmetic(QPen* self, bool cosmetic) {
	self->setCosmetic(cosmetic);
}

bool QPen_operatorEqual(const QPen* self, QPen* p) {
	return (*self == *p);
}

bool QPen_operatorNotEqual(const QPen* self, QPen* p) {
	return (*self != *p);
}

QVariant* QPen_ToQVariant(const QPen* self) {
	return new QVariant(self->operator QVariant());
}

bool QPen_isDetached(QPen* self) {
	return self->isDetached();
}

void QPen_delete(QPen* self) {
	delete self;
}

