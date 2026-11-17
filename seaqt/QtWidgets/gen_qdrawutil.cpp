#include <QTileRules>
#include <qdrawutil.h>
#include "gen_qdrawutil.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QTileRules* QTileRules_new_horizontalRule_verticalRule(int horizontalRule, int verticalRule) {
	return new (std::nothrow) QTileRules(static_cast<Qt::TileRule>(horizontalRule), static_cast<Qt::TileRule>(verticalRule));
}

QTileRules* QTileRules_new() {
	return new (std::nothrow) QTileRules();
}

QTileRules* QTileRules_new_from(QTileRules* from) {
	return new (std::nothrow) QTileRules(*from);
}

QTileRules* QTileRules_new_rule(int rule) {
	return new (std::nothrow) QTileRules(static_cast<Qt::TileRule>(rule));
}

int QTileRules_horizontal(const QTileRules* self) {
	Qt::TileRule horizontal_ret = self->horizontal;
	return static_cast<int>(horizontal_ret);
}

void QTileRules_setHorizontal(QTileRules* self, int horizontal) {
	self->horizontal = static_cast<Qt::TileRule>(horizontal);
}

int QTileRules_vertical(const QTileRules* self) {
	Qt::TileRule vertical_ret = self->vertical;
	return static_cast<int>(vertical_ret);
}

void QTileRules_setVertical(QTileRules* self, int vertical) {
	self->vertical = static_cast<Qt::TileRule>(vertical);
}

void QTileRules_delete(QTileRules* self) {
	delete self;
}

