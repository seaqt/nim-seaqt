#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTREEWIDGETITEMITERATOR_H
#define SEAQT_QTWIDGETS_GEN_QTREEWIDGETITEMITERATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QTreeWidget;
class QTreeWidgetItem;
class QTreeWidgetItemIterator;
#else
typedef struct QTreeWidget QTreeWidget;
typedef struct QTreeWidgetItem QTreeWidgetItem;
typedef struct QTreeWidgetItemIterator QTreeWidgetItemIterator;
#endif

QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_from(QTreeWidgetItemIterator* from);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_widget(QTreeWidget* widget);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_item(QTreeWidgetItem* item);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_widget_flags(QTreeWidget* widget, int flags);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_new_item_flags(QTreeWidgetItem* item, int flags);

void QTreeWidgetItemIterator_operatorAssign(QTreeWidgetItemIterator* self, QTreeWidgetItemIterator* from);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorPlusPlus(QTreeWidgetItemIterator* self);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorPlusPlus_int(QTreeWidgetItemIterator* self, int param1);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorPlusAssign(QTreeWidgetItemIterator* self, int n);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorMinusMinus(QTreeWidgetItemIterator* self);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorMinusMinus_int(QTreeWidgetItemIterator* self, int param1);
QTreeWidgetItemIterator* QTreeWidgetItemIterator_operatorMinusAssign(QTreeWidgetItemIterator* self, int n);
QTreeWidgetItem* QTreeWidgetItemIterator_operatorMultiply(const QTreeWidgetItemIterator* self);

void QTreeWidgetItemIterator_delete(QTreeWidgetItemIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
