#include <QTreeWidget>
#include <QTreeWidgetItem>
#include <QTreeWidgetItemIterator>
#include <qtreewidgetitemiterator.h>
#include "gen_qtreewidgetitemiterator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_from(QTreeWidgetItemIterator* from) {
	return new (std::nothrow) QTreeWidgetItemIterator(*from);
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_widget(QTreeWidget* widget) {
	return new (std::nothrow) QTreeWidgetItemIterator(widget);
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_item(QTreeWidgetItem* item) {
	return new (std::nothrow) QTreeWidgetItemIterator(item);
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_widget_flags(QTreeWidget* widget, int flags) {
	return new (std::nothrow) QTreeWidgetItemIterator(widget, static_cast<QTreeWidgetItemIterator::IteratorFlags>(flags));
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_item_flags(QTreeWidgetItem* item, int flags) {
	return new (std::nothrow) QTreeWidgetItemIterator(item, static_cast<QTreeWidgetItemIterator::IteratorFlags>(flags));
}

void QTreeWidgetItemIterator_operatorAssign(QTreeWidgetItemIterator* self, QTreeWidgetItemIterator* from) {
	self->operator=(*from);
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorPlusPlus(QTreeWidgetItemIterator* self) {
	QTreeWidgetItemIterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorPlusPlus_int(QTreeWidgetItemIterator* self, int param1) {
	return new QTreeWidgetItemIterator(self->operator++(static_cast<int>(param1)));
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorPlusAssign(QTreeWidgetItemIterator* self, int n) {
	QTreeWidgetItemIterator& _ret = self->operator+=(static_cast<int>(n));
	// Cast returned reference into pointer
	return &_ret;
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorMinusMinus(QTreeWidgetItemIterator* self) {
	QTreeWidgetItemIterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorMinusMinus_int(QTreeWidgetItemIterator* self, int param1) {
	return new QTreeWidgetItemIterator(self->operator--(static_cast<int>(param1)));
}

QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorMinusAssign(QTreeWidgetItemIterator* self, int n) {
	QTreeWidgetItemIterator& _ret = self->operator-=(static_cast<int>(n));
	// Cast returned reference into pointer
	return &_ret;
}

QTreeWidgetItem* QTreeWidgetItemIterator_operatorMultiply(const QTreeWidgetItemIterator* self) {
	return self->operator*();
}

void QTreeWidgetItemIterator_delete(QTreeWidgetItemIterator* self) {
	delete self;
}

