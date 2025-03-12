#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCOMPLETER_H
#define SEAQT_QTWIDGETS_GEN_QCOMPLETER_H

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
class QAbstractItemView;
class QChildEvent;
class QCompleter;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QRect;
class QTimerEvent;
class QWidget;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QChildEvent QChildEvent;
typedef struct QCompleter QCompleter;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQCompleter VirtualQCompleter;
typedef struct QCompleter_VTable{
	void (*destructor)(VirtualQCompleter* self);
	QMetaObject* (*metaObject)(const VirtualQCompleter* self);
	void* (*metacast)(VirtualQCompleter* self, const char* param1);
	int (*metacall)(VirtualQCompleter* self, int param1, int param2, void** param3);
	struct miqt_string (*pathFromIndex)(const VirtualQCompleter* self, QModelIndex* index);
	struct miqt_array /* of struct miqt_string */  (*splitPath)(const VirtualQCompleter* self, struct miqt_string path);
	bool (*eventFilter)(VirtualQCompleter* self, QObject* o, QEvent* e);
	bool (*event)(VirtualQCompleter* self, QEvent* param1);
	void (*timerEvent)(VirtualQCompleter* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCompleter* self, QChildEvent* event);
	void (*customEvent)(VirtualQCompleter* self, QEvent* event);
	void (*connectNotify)(VirtualQCompleter* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCompleter* self, QMetaMethod* signal);
}QCompleter_VTable;

const QCompleter_VTable* QCompleter_vtbl(const VirtualQCompleter* self);
void* QCompleter_vdata(const VirtualQCompleter* self);
void QCompleter_setVdata(VirtualQCompleter* self, void* vdata);

VirtualQCompleter* QCompleter_new(const QCompleter_VTable* vtbl, void* vdata);
VirtualQCompleter* QCompleter_new2(const QCompleter_VTable* vtbl, void* vdata, QAbstractItemModel* model);
VirtualQCompleter* QCompleter_new3(const QCompleter_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  completions);
VirtualQCompleter* QCompleter_new4(const QCompleter_VTable* vtbl, void* vdata, QObject* parent);
VirtualQCompleter* QCompleter_new5(const QCompleter_VTable* vtbl, void* vdata, QAbstractItemModel* model, QObject* parent);
VirtualQCompleter* QCompleter_new6(const QCompleter_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  completions, QObject* parent);

void QCompleter_virtbase(QCompleter* src, QObject** outptr_QObject);
QMetaObject* QCompleter_metaObject(const QCompleter* self);
void* QCompleter_metacast(QCompleter* self, const char* param1);
int QCompleter_metacall(QCompleter* self, int param1, int param2, void** param3);
struct miqt_string QCompleter_tr(const char* s);
struct miqt_string QCompleter_trUtf8(const char* s);
void QCompleter_setWidget(QCompleter* self, QWidget* widget);
QWidget* QCompleter_widget(const QCompleter* self);
void QCompleter_setModel(QCompleter* self, QAbstractItemModel* c);
QAbstractItemModel* QCompleter_model(const QCompleter* self);
void QCompleter_setCompletionMode(QCompleter* self, int mode);
int QCompleter_completionMode(const QCompleter* self);
void QCompleter_setFilterMode(QCompleter* self, int filterMode);
int QCompleter_filterMode(const QCompleter* self);
QAbstractItemView* QCompleter_popup(const QCompleter* self);
void QCompleter_setPopup(QCompleter* self, QAbstractItemView* popup);
void QCompleter_setCaseSensitivity(QCompleter* self, int caseSensitivity);
int QCompleter_caseSensitivity(const QCompleter* self);
void QCompleter_setModelSorting(QCompleter* self, int sorting);
int QCompleter_modelSorting(const QCompleter* self);
void QCompleter_setCompletionColumn(QCompleter* self, int column);
int QCompleter_completionColumn(const QCompleter* self);
void QCompleter_setCompletionRole(QCompleter* self, int role);
int QCompleter_completionRole(const QCompleter* self);
bool QCompleter_wrapAround(const QCompleter* self);
int QCompleter_maxVisibleItems(const QCompleter* self);
void QCompleter_setMaxVisibleItems(QCompleter* self, int maxItems);
int QCompleter_completionCount(const QCompleter* self);
bool QCompleter_setCurrentRow(QCompleter* self, int row);
int QCompleter_currentRow(const QCompleter* self);
QModelIndex* QCompleter_currentIndex(const QCompleter* self);
struct miqt_string QCompleter_currentCompletion(const QCompleter* self);
QAbstractItemModel* QCompleter_completionModel(const QCompleter* self);
struct miqt_string QCompleter_completionPrefix(const QCompleter* self);
void QCompleter_setCompletionPrefix(QCompleter* self, struct miqt_string prefix);
void QCompleter_complete(QCompleter* self);
void QCompleter_setWrapAround(QCompleter* self, bool wrap);
struct miqt_string QCompleter_pathFromIndex(const QCompleter* self, QModelIndex* index);
struct miqt_array /* of struct miqt_string */  QCompleter_splitPath(const QCompleter* self, struct miqt_string path);
bool QCompleter_eventFilter(QCompleter* self, QObject* o, QEvent* e);
bool QCompleter_event(QCompleter* self, QEvent* param1);
void QCompleter_activated(QCompleter* self, struct miqt_string text);
void QCompleter_connect_activated(VirtualQCompleter* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QCompleter_activatedWithIndex(QCompleter* self, QModelIndex* index);
void QCompleter_connect_activatedWithIndex(VirtualQCompleter* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QCompleter_highlighted(QCompleter* self, struct miqt_string text);
void QCompleter_connect_highlighted(VirtualQCompleter* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QCompleter_highlightedWithIndex(QCompleter* self, QModelIndex* index);
void QCompleter_connect_highlightedWithIndex(VirtualQCompleter* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
struct miqt_string QCompleter_tr2(const char* s, const char* c);
struct miqt_string QCompleter_tr3(const char* s, const char* c, int n);
struct miqt_string QCompleter_trUtf82(const char* s, const char* c);
struct miqt_string QCompleter_trUtf83(const char* s, const char* c, int n);
void QCompleter_complete1(QCompleter* self, QRect* rect);

QMetaObject* QCompleter_virtualbase_metaObject(const VirtualQCompleter* self);
void* QCompleter_virtualbase_metacast(VirtualQCompleter* self, const char* param1);
int QCompleter_virtualbase_metacall(VirtualQCompleter* self, int param1, int param2, void** param3);
struct miqt_string QCompleter_virtualbase_pathFromIndex(const VirtualQCompleter* self, QModelIndex* index);
struct miqt_array /* of struct miqt_string */  QCompleter_virtualbase_splitPath(const VirtualQCompleter* self, struct miqt_string path);
bool QCompleter_virtualbase_eventFilter(VirtualQCompleter* self, QObject* o, QEvent* e);
bool QCompleter_virtualbase_event(VirtualQCompleter* self, QEvent* param1);
void QCompleter_virtualbase_timerEvent(VirtualQCompleter* self, QTimerEvent* event);
void QCompleter_virtualbase_childEvent(VirtualQCompleter* self, QChildEvent* event);
void QCompleter_virtualbase_customEvent(VirtualQCompleter* self, QEvent* event);
void QCompleter_virtualbase_connectNotify(VirtualQCompleter* self, QMetaMethod* signal);
void QCompleter_virtualbase_disconnectNotify(VirtualQCompleter* self, QMetaMethod* signal);

QObject* QCompleter_protectedbase_sender(const VirtualQCompleter* self);
int QCompleter_protectedbase_senderSignalIndex(const VirtualQCompleter* self);
int QCompleter_protectedbase_receivers(const VirtualQCompleter* self, const char* signal);
bool QCompleter_protectedbase_isSignalConnected(const VirtualQCompleter* self, QMetaMethod* signal);

const QMetaObject* QCompleter_staticMetaObject();
void QCompleter_delete(QCompleter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
