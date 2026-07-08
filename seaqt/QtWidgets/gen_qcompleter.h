#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCOMPLETER_H
#define SEAQT_QTWIDGETS_GEN_QCOMPLETER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
	struct seaqt_string (*pathFromIndex)(const VirtualQCompleter* self, QModelIndex* index);
	struct seaqt_array /* of struct seaqt_string */  (*splitPath)(const VirtualQCompleter* self, struct seaqt_string path);
	bool (*eventFilter)(VirtualQCompleter* self, QObject* o, QEvent* e);
	bool (*event)(VirtualQCompleter* self, QEvent* param1);
	void (*timerEvent)(VirtualQCompleter* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCompleter* self, QChildEvent* event);
	void (*customEvent)(VirtualQCompleter* self, QEvent* event);
	void (*connectNotify)(VirtualQCompleter* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCompleter* self, QMetaMethod* signal);
}QCompleter_VTable;

void* QCompleter_vdata(VirtualQCompleter* self);
VirtualQCompleter* vdata_QCompleter(void* vdata);

VirtualQCompleter* QCompleter_new(const QCompleter_VTable* vtbl, size_t vdata);
VirtualQCompleter* QCompleter_new_model(const QCompleter_VTable* vtbl, size_t vdata, QAbstractItemModel* model);
VirtualQCompleter* QCompleter_new_completions(const QCompleter_VTable* vtbl, size_t vdata, struct seaqt_array /* of struct seaqt_string */  completions);
VirtualQCompleter* QCompleter_new_parent(const QCompleter_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQCompleter* QCompleter_new_model_parent(const QCompleter_VTable* vtbl, size_t vdata, QAbstractItemModel* model, QObject* parent);
VirtualQCompleter* QCompleter_new_completions_parent(const QCompleter_VTable* vtbl, size_t vdata, struct seaqt_array /* of struct seaqt_string */  completions, QObject* parent);

void QCompleter_virtbase(QCompleter* src, QObject** outptr_QObject);
QMetaObject* QCompleter_metaObject(const QCompleter* self);
void* QCompleter_metacast(QCompleter* self, const char* param1);
int QCompleter_metacall(QCompleter* self, int param1, int param2, void** param3);
struct seaqt_string QCompleter_tr_s(const char* s);
struct seaqt_string QCompleter_trUtf8_s(const char* s);
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
struct seaqt_string QCompleter_currentCompletion(const QCompleter* self);
QAbstractItemModel* QCompleter_completionModel(const QCompleter* self);
struct seaqt_string QCompleter_completionPrefix(const QCompleter* self);
void QCompleter_setCompletionPrefix(QCompleter* self, struct seaqt_string prefix);
void QCompleter_complete(QCompleter* self);
void QCompleter_setWrapAround(QCompleter* self, bool wrap);
struct seaqt_string QCompleter_pathFromIndex(const QCompleter* self, QModelIndex* index);
struct seaqt_array /* of struct seaqt_string */  QCompleter_splitPath(const QCompleter* self, struct seaqt_string path);
bool QCompleter_eventFilter(QCompleter* self, QObject* o, QEvent* e);
bool QCompleter_event(QCompleter* self, QEvent* param1);
void QCompleter_activated_text(QCompleter* self, struct seaqt_string text);
void QCompleter_connect_activated_text(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QCompleter_activated_index(QCompleter* self, QModelIndex* index);
void QCompleter_connect_activated_index(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QCompleter_highlighted_text(QCompleter* self, struct seaqt_string text);
void QCompleter_connect_highlighted_text(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QCompleter_highlighted_index(QCompleter* self, QModelIndex* index);
void QCompleter_connect_highlighted_index(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
struct seaqt_string QCompleter_tr_s_c(const char* s, const char* c);
struct seaqt_string QCompleter_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCompleter_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCompleter_trUtf8_s_c_n(const char* s, const char* c, int n);
void QCompleter_complete_rect(QCompleter* self, QRect* rect);

QMetaObject* QCompleter_virtualbase_metaObject(const VirtualQCompleter* self);
void* QCompleter_virtualbase_metacast(VirtualQCompleter* self, const char* param1);
int QCompleter_virtualbase_metacall(VirtualQCompleter* self, int param1, int param2, void** param3);
struct seaqt_string QCompleter_virtualbase_pathFromIndex(const VirtualQCompleter* self, QModelIndex* index);
struct seaqt_array /* of struct seaqt_string */  QCompleter_virtualbase_splitPath(const VirtualQCompleter* self, struct seaqt_string path);
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
