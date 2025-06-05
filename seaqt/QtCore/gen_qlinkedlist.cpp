#include <QLinkedListData>
#include <qlinkedlist.h>
#include "gen_qlinkedlist.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QLinkedListData* QLinkedListData_new() {
	return new (std::nothrow) QLinkedListData();
}

void QLinkedListData_delete(QLinkedListData* self) {
	delete self;
}

