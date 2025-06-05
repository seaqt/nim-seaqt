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

QTileRules* QTileRules_new(int horizontalRule, int verticalRule) {
	return new (std::nothrow) QTileRules(static_cast<Qt::TileRule>(horizontalRule), static_cast<Qt::TileRule>(verticalRule));
}

QTileRules* QTileRules_new2() {
	return new (std::nothrow) QTileRules();
}

QTileRules* QTileRules_new3(QTileRules* param1) {
	return new (std::nothrow) QTileRules(*param1);
}

QTileRules* QTileRules_new4(int rule) {
	return new (std::nothrow) QTileRules(static_cast<Qt::TileRule>(rule));
}

void QTileRules_delete(QTileRules* self) {
	delete self;
}

