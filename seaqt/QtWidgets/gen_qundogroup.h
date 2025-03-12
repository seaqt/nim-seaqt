#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QUNDOGROUP_H
#define SEAQT_QTWIDGETS_GEN_QUNDOGROUP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUndoGroup;
class QUndoStack;
#else
typedef struct QAction QAction;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUndoGroup QUndoGroup;
typedef struct QUndoStack QUndoStack;
#endif

typedef struct VirtualQUndoGroup VirtualQUndoGroup;
typedef struct QUndoGroup_VTable{
	void (*destructor)(VirtualQUndoGroup* self);
	QMetaObject* (*metaObject)(const VirtualQUndoGroup* self);
	void* (*metacast)(VirtualQUndoGroup* self, const char* param1);
	int (*metacall)(VirtualQUndoGroup* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQUndoGroup* self, QEvent* event);
	bool (*eventFilter)(VirtualQUndoGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQUndoGroup* self, QTimerEvent* event);
	void (*childEvent)(VirtualQUndoGroup* self, QChildEvent* event);
	void (*customEvent)(VirtualQUndoGroup* self, QEvent* event);
	void (*connectNotify)(VirtualQUndoGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQUndoGroup* self, QMetaMethod* signal);
}QUndoGroup_VTable;

const QUndoGroup_VTable* QUndoGroup_vtbl(const VirtualQUndoGroup* self);
void* QUndoGroup_vdata(const VirtualQUndoGroup* self);
void QUndoGroup_setVdata(VirtualQUndoGroup* self, void* vdata);

VirtualQUndoGroup* QUndoGroup_new(const QUndoGroup_VTable* vtbl, void* vdata);
VirtualQUndoGroup* QUndoGroup_new2(const QUndoGroup_VTable* vtbl, void* vdata, QObject* parent);

void QUndoGroup_virtbase(QUndoGroup* src, QObject** outptr_QObject);
QMetaObject* QUndoGroup_metaObject(const QUndoGroup* self);
void* QUndoGroup_metacast(QUndoGroup* self, const char* param1);
int QUndoGroup_metacall(QUndoGroup* self, int param1, int param2, void** param3);
struct miqt_string QUndoGroup_tr(const char* s);
struct miqt_string QUndoGroup_trUtf8(const char* s);
void QUndoGroup_addStack(QUndoGroup* self, QUndoStack* stack);
void QUndoGroup_removeStack(QUndoGroup* self, QUndoStack* stack);
struct miqt_array /* of QUndoStack* */  QUndoGroup_stacks(const QUndoGroup* self);
QUndoStack* QUndoGroup_activeStack(const QUndoGroup* self);
QAction* QUndoGroup_createUndoAction(const QUndoGroup* self, QObject* parent);
QAction* QUndoGroup_createRedoAction(const QUndoGroup* self, QObject* parent);
bool QUndoGroup_canUndo(const QUndoGroup* self);
bool QUndoGroup_canRedo(const QUndoGroup* self);
struct miqt_string QUndoGroup_undoText(const QUndoGroup* self);
struct miqt_string QUndoGroup_redoText(const QUndoGroup* self);
bool QUndoGroup_isClean(const QUndoGroup* self);
void QUndoGroup_undo(QUndoGroup* self);
void QUndoGroup_redo(QUndoGroup* self);
void QUndoGroup_setActiveStack(QUndoGroup* self, QUndoStack* stack);
void QUndoGroup_activeStackChanged(QUndoGroup* self, QUndoStack* stack);
void QUndoGroup_connect_activeStackChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, QUndoStack*), void (*release)(intptr_t));
void QUndoGroup_indexChanged(QUndoGroup* self, int idx);
void QUndoGroup_connect_indexChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QUndoGroup_cleanChanged(QUndoGroup* self, bool clean);
void QUndoGroup_connect_cleanChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QUndoGroup_canUndoChanged(QUndoGroup* self, bool canUndo);
void QUndoGroup_connect_canUndoChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QUndoGroup_canRedoChanged(QUndoGroup* self, bool canRedo);
void QUndoGroup_connect_canRedoChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QUndoGroup_undoTextChanged(QUndoGroup* self, struct miqt_string undoText);
void QUndoGroup_connect_undoTextChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QUndoGroup_redoTextChanged(QUndoGroup* self, struct miqt_string redoText);
void QUndoGroup_connect_redoTextChanged(VirtualQUndoGroup* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
struct miqt_string QUndoGroup_tr2(const char* s, const char* c);
struct miqt_string QUndoGroup_tr3(const char* s, const char* c, int n);
struct miqt_string QUndoGroup_trUtf82(const char* s, const char* c);
struct miqt_string QUndoGroup_trUtf83(const char* s, const char* c, int n);
QAction* QUndoGroup_createUndoAction2(const QUndoGroup* self, QObject* parent, struct miqt_string prefix);
QAction* QUndoGroup_createRedoAction2(const QUndoGroup* self, QObject* parent, struct miqt_string prefix);

QMetaObject* QUndoGroup_virtualbase_metaObject(const VirtualQUndoGroup* self);
void* QUndoGroup_virtualbase_metacast(VirtualQUndoGroup* self, const char* param1);
int QUndoGroup_virtualbase_metacall(VirtualQUndoGroup* self, int param1, int param2, void** param3);
bool QUndoGroup_virtualbase_event(VirtualQUndoGroup* self, QEvent* event);
bool QUndoGroup_virtualbase_eventFilter(VirtualQUndoGroup* self, QObject* watched, QEvent* event);
void QUndoGroup_virtualbase_timerEvent(VirtualQUndoGroup* self, QTimerEvent* event);
void QUndoGroup_virtualbase_childEvent(VirtualQUndoGroup* self, QChildEvent* event);
void QUndoGroup_virtualbase_customEvent(VirtualQUndoGroup* self, QEvent* event);
void QUndoGroup_virtualbase_connectNotify(VirtualQUndoGroup* self, QMetaMethod* signal);
void QUndoGroup_virtualbase_disconnectNotify(VirtualQUndoGroup* self, QMetaMethod* signal);

QObject* QUndoGroup_protectedbase_sender(const VirtualQUndoGroup* self);
int QUndoGroup_protectedbase_senderSignalIndex(const VirtualQUndoGroup* self);
int QUndoGroup_protectedbase_receivers(const VirtualQUndoGroup* self, const char* signal);
bool QUndoGroup_protectedbase_isSignalConnected(const VirtualQUndoGroup* self, QMetaMethod* signal);

const QMetaObject* QUndoGroup_staticMetaObject();
void QUndoGroup_delete(QUndoGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
