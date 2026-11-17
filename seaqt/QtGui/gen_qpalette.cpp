#include <QBrush>
#include <QColor>
#include <QMetaObject>
#include <QPalette>
#include <QVariant>
#include <qpalette.h>
#include "gen_qpalette.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPalette* QPalette_new() {
	return new (std::nothrow) QPalette();
}

QPalette* QPalette_new_QColor(QColor* button) {
	return new (std::nothrow) QPalette(*button);
}

QPalette* QPalette_new_Qt_GlobalColor(int button) {
	return new (std::nothrow) QPalette(static_cast<Qt::GlobalColor>(button));
}

QPalette* QPalette_new_QColor_QColor(QColor* button, QColor* window) {
	return new (std::nothrow) QPalette(*button, *window);
}

QPalette* QPalette_new_QBrush_QBrush_QBrush_QBrush_QBrush_QBrush_QBrush_QBrush_QBrush(QBrush* windowText, QBrush* button, QBrush* light, QBrush* dark, QBrush* mid, QBrush* text, QBrush* bright_text, QBrush* base, QBrush* window) {
	return new (std::nothrow) QPalette(*windowText, *button, *light, *dark, *mid, *text, *bright_text, *base, *window);
}

QPalette* QPalette_new_QColor_QColor_QColor_QColor_QColor_QColor_QColor(QColor* windowText, QColor* window, QColor* light, QColor* dark, QColor* mid, QColor* text, QColor* base) {
	return new (std::nothrow) QPalette(*windowText, *window, *light, *dark, *mid, *text, *base);
}

QPalette* QPalette_new_QPalette(QPalette* from) {
	return new (std::nothrow) QPalette(*from);
}

void QPalette_operatorAssign(QPalette* self, QPalette* from) {
	self->operator=(*from);
}

void QPalette_swap(QPalette* self, QPalette* other) {
	self->swap(*other);
}

QVariant* QPalette_ToQVariant(const QPalette* self) {
	return new QVariant(self->operator QVariant());
}

int QPalette_currentColorGroup(const QPalette* self) {
	QPalette::ColorGroup _ret = self->currentColorGroup();
	return static_cast<int>(_ret);
}

void QPalette_setCurrentColorGroup(QPalette* self, int cg) {
	self->setCurrentColorGroup(static_cast<QPalette::ColorGroup>(cg));
}

QColor* QPalette_color_cg_cr(const QPalette* self, int cg, int cr) {
	const QColor& _ret = self->color(static_cast<QPalette::ColorGroup>(cg), static_cast<QPalette::ColorRole>(cr));
	// Cast returned reference into pointer
	return const_cast<QColor*>(&_ret);
}

QBrush* QPalette_brush_cg_cr(const QPalette* self, int cg, int cr) {
	const QBrush& _ret = self->brush(static_cast<QPalette::ColorGroup>(cg), static_cast<QPalette::ColorRole>(cr));
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

void QPalette_setColor_cg_cr_color(QPalette* self, int cg, int cr, QColor* color) {
	self->setColor(static_cast<QPalette::ColorGroup>(cg), static_cast<QPalette::ColorRole>(cr), *color);
}

void QPalette_setColor_cr_color(QPalette* self, int cr, QColor* color) {
	self->setColor(static_cast<QPalette::ColorRole>(cr), *color);
}

void QPalette_setBrush_cr_brush(QPalette* self, int cr, QBrush* brush) {
	self->setBrush(static_cast<QPalette::ColorRole>(cr), *brush);
}

bool QPalette_isBrushSet(const QPalette* self, int cg, int cr) {
	return self->isBrushSet(static_cast<QPalette::ColorGroup>(cg), static_cast<QPalette::ColorRole>(cr));
}

void QPalette_setBrush_cg_cr_brush(QPalette* self, int cg, int cr, QBrush* brush) {
	self->setBrush(static_cast<QPalette::ColorGroup>(cg), static_cast<QPalette::ColorRole>(cr), *brush);
}

void QPalette_setColorGroup(QPalette* self, int cr, QBrush* windowText, QBrush* button, QBrush* light, QBrush* dark, QBrush* mid, QBrush* text, QBrush* bright_text, QBrush* base, QBrush* window) {
	self->setColorGroup(static_cast<QPalette::ColorGroup>(cr), *windowText, *button, *light, *dark, *mid, *text, *bright_text, *base, *window);
}

bool QPalette_isEqual(const QPalette* self, int cr1, int cr2) {
	return self->isEqual(static_cast<QPalette::ColorGroup>(cr1), static_cast<QPalette::ColorGroup>(cr2));
}

QColor* QPalette_color_cr(const QPalette* self, int cr) {
	const QColor& _ret = self->color(static_cast<QPalette::ColorRole>(cr));
	// Cast returned reference into pointer
	return const_cast<QColor*>(&_ret);
}

QBrush* QPalette_brush_cr(const QPalette* self, int cr) {
	const QBrush& _ret = self->brush(static_cast<QPalette::ColorRole>(cr));
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_windowText(const QPalette* self) {
	const QBrush& _ret = self->windowText();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_button(const QPalette* self) {
	const QBrush& _ret = self->button();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_light(const QPalette* self) {
	const QBrush& _ret = self->light();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_dark(const QPalette* self) {
	const QBrush& _ret = self->dark();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_mid(const QPalette* self) {
	const QBrush& _ret = self->mid();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_text(const QPalette* self) {
	const QBrush& _ret = self->text();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_base(const QPalette* self) {
	const QBrush& _ret = self->base();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_alternateBase(const QPalette* self) {
	const QBrush& _ret = self->alternateBase();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_toolTipBase(const QPalette* self) {
	const QBrush& _ret = self->toolTipBase();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_toolTipText(const QPalette* self) {
	const QBrush& _ret = self->toolTipText();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_window(const QPalette* self) {
	const QBrush& _ret = self->window();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_midlight(const QPalette* self) {
	const QBrush& _ret = self->midlight();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_brightText(const QPalette* self) {
	const QBrush& _ret = self->brightText();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_buttonText(const QPalette* self) {
	const QBrush& _ret = self->buttonText();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_shadow(const QPalette* self) {
	const QBrush& _ret = self->shadow();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_highlight(const QPalette* self) {
	const QBrush& _ret = self->highlight();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_highlightedText(const QPalette* self) {
	const QBrush& _ret = self->highlightedText();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_link(const QPalette* self) {
	const QBrush& _ret = self->link();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_linkVisited(const QPalette* self) {
	const QBrush& _ret = self->linkVisited();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_placeholderText(const QPalette* self) {
	const QBrush& _ret = self->placeholderText();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

QBrush* QPalette_accent(const QPalette* self) {
	const QBrush& _ret = self->accent();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

bool QPalette_operatorEqual(const QPalette* self, QPalette* p) {
	return (*self == *p);
}

bool QPalette_operatorNotEqual(const QPalette* self, QPalette* p) {
	return (*self != *p);
}

bool QPalette_isCopyOf(const QPalette* self, QPalette* p) {
	return self->isCopyOf(*p);
}

long long QPalette_cacheKey(const QPalette* self) {
	qint64 _ret = self->cacheKey();
	return static_cast<long long>(_ret);
}

QPalette* QPalette_resolve(const QPalette* self, QPalette* other) {
	return new QPalette(self->resolve(*other));
}

unsigned long long QPalette_resolveMask(const QPalette* self) {
	QPalette::ResolveMask _ret = self->resolveMask();
	return static_cast<unsigned long long>(_ret);
}

void QPalette_setResolveMask(QPalette* self, unsigned long long mask) {
	self->setResolveMask(static_cast<QPalette::ResolveMask>(mask));
}

const QMetaObject* QPalette_staticMetaObject() { return &QPalette::staticMetaObject; }
void QPalette_delete(QPalette* self) {
	delete self;
}

