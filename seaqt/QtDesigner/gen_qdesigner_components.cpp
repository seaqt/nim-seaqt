#include <QDesignerComponents>
#include <qdesigner_components.h>
#include "gen_qdesigner_components.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerComponents_initializeResources() {
	QDesignerComponents::initializeResources();
}

void QDesignerComponents_delete(QDesignerComponents* self) {
	delete self;
}

