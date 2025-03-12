#pragma once
#ifndef SEAQT_QTCORE_GEN_QITEMSELECTIONMODEL_H
#define SEAQT_QTCORE_GEN_QITEMSELECTIONMODEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QChildEvent;
class QEvent;
class QItemSelection;
class QItemSelectionModel;
class QItemSelectionRange;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QPersistentModelIndex;
class QTimerEvent;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QItemSelectionRange QItemSelectionRange;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QTimerEvent QTimerEvent;
#endif

QItemSelectionRange* QItemSelectionRange_new();
QItemSelectionRange* QItemSelectionRange_new2(QItemSelectionRange* other);
QItemSelectionRange* QItemSelectionRange_new3(QModelIndex* topL, QModelIndex* bottomR);
QItemSelectionRange* QItemSelectionRange_new4(QModelIndex* index);

void QItemSelectionRange_operatorAssign(QItemSelectionRange* self, QItemSelectionRange* other);
void QItemSelectionRange_swap(QItemSelectionRange* self, QItemSelectionRange* other);
int QItemSelectionRange_top(const QItemSelectionRange* self);
int QItemSelectionRange_left(const QItemSelectionRange* self);
int QItemSelectionRange_bottom(const QItemSelectionRange* self);
int QItemSelectionRange_right(const QItemSelectionRange* self);
int QItemSelectionRange_width(const QItemSelectionRange* self);
int QItemSelectionRange_height(const QItemSelectionRange* self);
QPersistentModelIndex* QItemSelectionRange_topLeft(const QItemSelectionRange* self);
QPersistentModelIndex* QItemSelectionRange_bottomRight(const QItemSelectionRange* self);
QModelIndex* QItemSelectionRange_parent(const QItemSelectionRange* self);
QAbstractItemModel* QItemSelectionRange_model(const QItemSelectionRange* self);
bool QItemSelectionRange_contains(const QItemSelectionRange* self, QModelIndex* index);
bool QItemSelectionRange_contains2(const QItemSelectionRange* self, int row, int column, QModelIndex* parentIndex);
bool QItemSelectionRange_intersects(const QItemSelectionRange* self, QItemSelectionRange* other);
QItemSelectionRange* QItemSelectionRange_intersected(const QItemSelectionRange* self, QItemSelectionRange* other);
bool QItemSelectionRange_operatorEqual(const QItemSelectionRange* self, QItemSelectionRange* other);
bool QItemSelectionRange_operatorNotEqual(const QItemSelectionRange* self, QItemSelectionRange* other);
bool QItemSelectionRange_operatorLesser(const QItemSelectionRange* self, QItemSelectionRange* other);
bool QItemSelectionRange_isValid(const QItemSelectionRange* self);
bool QItemSelectionRange_isEmpty(const QItemSelectionRange* self);
struct miqt_array /* of QModelIndex* */  QItemSelectionRange_indexes(const QItemSelectionRange* self);

void QItemSelectionRange_delete(QItemSelectionRange* self);

typedef struct VirtualQItemSelectionModel VirtualQItemSelectionModel;
typedef struct QItemSelectionModel_VTable{
	void (*destructor)(VirtualQItemSelectionModel* self);
	QMetaObject* (*metaObject)(const VirtualQItemSelectionModel* self);
	void* (*metacast)(VirtualQItemSelectionModel* self, const char* param1);
	int (*metacall)(VirtualQItemSelectionModel* self, int param1, int param2, void** param3);
	void (*setCurrentIndex)(VirtualQItemSelectionModel* self, QModelIndex* index, int command);
	void (*select)(VirtualQItemSelectionModel* self, QModelIndex* index, int command);
	void (*select2)(VirtualQItemSelectionModel* self, QItemSelection* selection, int command);
	void (*clear)(VirtualQItemSelectionModel* self);
	void (*reset)(VirtualQItemSelectionModel* self);
	void (*clearCurrentIndex)(VirtualQItemSelectionModel* self);
	bool (*event)(VirtualQItemSelectionModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQItemSelectionModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQItemSelectionModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQItemSelectionModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQItemSelectionModel* self, QEvent* event);
	void (*connectNotify)(VirtualQItemSelectionModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQItemSelectionModel* self, QMetaMethod* signal);
}QItemSelectionModel_VTable;

const QItemSelectionModel_VTable* QItemSelectionModel_vtbl(const VirtualQItemSelectionModel* self);
void* QItemSelectionModel_vdata(const VirtualQItemSelectionModel* self);
void QItemSelectionModel_setVdata(VirtualQItemSelectionModel* self, void* vdata);

VirtualQItemSelectionModel* QItemSelectionModel_new(const QItemSelectionModel_VTable* vtbl, void* vdata);
VirtualQItemSelectionModel* QItemSelectionModel_new2(const QItemSelectionModel_VTable* vtbl, void* vdata, QAbstractItemModel* model, QObject* parent);
VirtualQItemSelectionModel* QItemSelectionModel_new3(const QItemSelectionModel_VTable* vtbl, void* vdata, QAbstractItemModel* model);

void QItemSelectionModel_virtbase(QItemSelectionModel* src, QObject** outptr_QObject);
QMetaObject* QItemSelectionModel_metaObject(const QItemSelectionModel* self);
void* QItemSelectionModel_metacast(QItemSelectionModel* self, const char* param1);
int QItemSelectionModel_metacall(QItemSelectionModel* self, int param1, int param2, void** param3);
struct miqt_string QItemSelectionModel_tr(const char* s);
struct miqt_string QItemSelectionModel_trUtf8(const char* s);
QModelIndex* QItemSelectionModel_currentIndex(const QItemSelectionModel* self);
bool QItemSelectionModel_isSelected(const QItemSelectionModel* self, QModelIndex* index);
bool QItemSelectionModel_isRowSelected(const QItemSelectionModel* self, int row);
bool QItemSelectionModel_isColumnSelected(const QItemSelectionModel* self, int column);
bool QItemSelectionModel_rowIntersectsSelection(const QItemSelectionModel* self, int row);
bool QItemSelectionModel_columnIntersectsSelection(const QItemSelectionModel* self, int column);
bool QItemSelectionModel_hasSelection(const QItemSelectionModel* self);
struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedIndexes(const QItemSelectionModel* self);
struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedRows(const QItemSelectionModel* self);
struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedColumns(const QItemSelectionModel* self);
QItemSelection* QItemSelectionModel_selection(const QItemSelectionModel* self);
QAbstractItemModel* QItemSelectionModel_model(const QItemSelectionModel* self);
QAbstractItemModel* QItemSelectionModel_model2(QItemSelectionModel* self);
void QItemSelectionModel_setModel(QItemSelectionModel* self, QAbstractItemModel* model);
void QItemSelectionModel_setCurrentIndex(QItemSelectionModel* self, QModelIndex* index, int command);
void QItemSelectionModel_select(QItemSelectionModel* self, QModelIndex* index, int command);
void QItemSelectionModel_select2(QItemSelectionModel* self, QItemSelection* selection, int command);
void QItemSelectionModel_clear(QItemSelectionModel* self);
void QItemSelectionModel_reset(QItemSelectionModel* self);
void QItemSelectionModel_clearSelection(QItemSelectionModel* self);
void QItemSelectionModel_clearCurrentIndex(QItemSelectionModel* self);
void QItemSelectionModel_selectionChanged(QItemSelectionModel* self, QItemSelection* selected, QItemSelection* deselected);
void QItemSelectionModel_connect_selectionChanged(VirtualQItemSelectionModel* self, intptr_t slot, void (*callback)(intptr_t, QItemSelection*, QItemSelection*), void (*release)(intptr_t));
void QItemSelectionModel_currentChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous);
void QItemSelectionModel_connect_currentChanged(VirtualQItemSelectionModel* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*), void (*release)(intptr_t));
void QItemSelectionModel_currentRowChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous);
void QItemSelectionModel_connect_currentRowChanged(VirtualQItemSelectionModel* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*), void (*release)(intptr_t));
void QItemSelectionModel_currentColumnChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous);
void QItemSelectionModel_connect_currentColumnChanged(VirtualQItemSelectionModel* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*), void (*release)(intptr_t));
void QItemSelectionModel_modelChanged(QItemSelectionModel* self, QAbstractItemModel* model);
void QItemSelectionModel_connect_modelChanged(VirtualQItemSelectionModel* self, intptr_t slot, void (*callback)(intptr_t, QAbstractItemModel*), void (*release)(intptr_t));
struct miqt_string QItemSelectionModel_tr2(const char* s, const char* c);
struct miqt_string QItemSelectionModel_tr3(const char* s, const char* c, int n);
struct miqt_string QItemSelectionModel_trUtf82(const char* s, const char* c);
struct miqt_string QItemSelectionModel_trUtf83(const char* s, const char* c, int n);
bool QItemSelectionModel_isRowSelected2(const QItemSelectionModel* self, int row, QModelIndex* parent);
bool QItemSelectionModel_isColumnSelected2(const QItemSelectionModel* self, int column, QModelIndex* parent);
bool QItemSelectionModel_rowIntersectsSelection2(const QItemSelectionModel* self, int row, QModelIndex* parent);
bool QItemSelectionModel_columnIntersectsSelection2(const QItemSelectionModel* self, int column, QModelIndex* parent);
struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedRows1(const QItemSelectionModel* self, int column);
struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedColumns1(const QItemSelectionModel* self, int row);

QMetaObject* QItemSelectionModel_virtualbase_metaObject(const VirtualQItemSelectionModel* self);
void* QItemSelectionModel_virtualbase_metacast(VirtualQItemSelectionModel* self, const char* param1);
int QItemSelectionModel_virtualbase_metacall(VirtualQItemSelectionModel* self, int param1, int param2, void** param3);
void QItemSelectionModel_virtualbase_setCurrentIndex(VirtualQItemSelectionModel* self, QModelIndex* index, int command);
void QItemSelectionModel_virtualbase_select(VirtualQItemSelectionModel* self, QModelIndex* index, int command);
void QItemSelectionModel_virtualbase_select2(VirtualQItemSelectionModel* self, QItemSelection* selection, int command);
void QItemSelectionModel_virtualbase_clear(VirtualQItemSelectionModel* self);
void QItemSelectionModel_virtualbase_reset(VirtualQItemSelectionModel* self);
void QItemSelectionModel_virtualbase_clearCurrentIndex(VirtualQItemSelectionModel* self);
bool QItemSelectionModel_virtualbase_event(VirtualQItemSelectionModel* self, QEvent* event);
bool QItemSelectionModel_virtualbase_eventFilter(VirtualQItemSelectionModel* self, QObject* watched, QEvent* event);
void QItemSelectionModel_virtualbase_timerEvent(VirtualQItemSelectionModel* self, QTimerEvent* event);
void QItemSelectionModel_virtualbase_childEvent(VirtualQItemSelectionModel* self, QChildEvent* event);
void QItemSelectionModel_virtualbase_customEvent(VirtualQItemSelectionModel* self, QEvent* event);
void QItemSelectionModel_virtualbase_connectNotify(VirtualQItemSelectionModel* self, QMetaMethod* signal);
void QItemSelectionModel_virtualbase_disconnectNotify(VirtualQItemSelectionModel* self, QMetaMethod* signal);

void QItemSelectionModel_protectedbase_emitSelectionChanged(VirtualQItemSelectionModel* self, QItemSelection* newSelection, QItemSelection* oldSelection);
QObject* QItemSelectionModel_protectedbase_sender(const VirtualQItemSelectionModel* self);
int QItemSelectionModel_protectedbase_senderSignalIndex(const VirtualQItemSelectionModel* self);
int QItemSelectionModel_protectedbase_receivers(const VirtualQItemSelectionModel* self, const char* signal);
bool QItemSelectionModel_protectedbase_isSignalConnected(const VirtualQItemSelectionModel* self, QMetaMethod* signal);

const QMetaObject* QItemSelectionModel_staticMetaObject();
void QItemSelectionModel_delete(QItemSelectionModel* self);

QItemSelection* QItemSelection_new();
QItemSelection* QItemSelection_new2(QModelIndex* topLeft, QModelIndex* bottomRight);

void QItemSelection_select(QItemSelection* self, QModelIndex* topLeft, QModelIndex* bottomRight);
bool QItemSelection_contains(const QItemSelection* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QItemSelection_indexes(const QItemSelection* self);
void QItemSelection_merge(QItemSelection* self, QItemSelection* other, int command);
void QItemSelection_split(QItemSelectionRange* range, QItemSelectionRange* other, QItemSelection* result);
void QItemSelection_operatorAssign(QItemSelection* self, QItemSelection* param1);

void QItemSelection_delete(QItemSelection* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
