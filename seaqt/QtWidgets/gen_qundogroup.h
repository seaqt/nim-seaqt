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

QUndoGroup* QUndoGroup_new();
QUndoGroup* QUndoGroup_new2(QObject* parent);
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
void QUndoGroup_connect_activeStackChanged(QUndoGroup* self, intptr_t slot);
void QUndoGroup_indexChanged(QUndoGroup* self, int idx);
void QUndoGroup_connect_indexChanged(QUndoGroup* self, intptr_t slot);
void QUndoGroup_cleanChanged(QUndoGroup* self, bool clean);
void QUndoGroup_connect_cleanChanged(QUndoGroup* self, intptr_t slot);
void QUndoGroup_canUndoChanged(QUndoGroup* self, bool canUndo);
void QUndoGroup_connect_canUndoChanged(QUndoGroup* self, intptr_t slot);
void QUndoGroup_canRedoChanged(QUndoGroup* self, bool canRedo);
void QUndoGroup_connect_canRedoChanged(QUndoGroup* self, intptr_t slot);
void QUndoGroup_undoTextChanged(QUndoGroup* self, struct miqt_string undoText);
void QUndoGroup_connect_undoTextChanged(QUndoGroup* self, intptr_t slot);
void QUndoGroup_redoTextChanged(QUndoGroup* self, struct miqt_string redoText);
void QUndoGroup_connect_redoTextChanged(QUndoGroup* self, intptr_t slot);
struct miqt_string QUndoGroup_tr2(const char* s, const char* c);
struct miqt_string QUndoGroup_tr3(const char* s, const char* c, int n);
struct miqt_string QUndoGroup_trUtf82(const char* s, const char* c);
struct miqt_string QUndoGroup_trUtf83(const char* s, const char* c, int n);
QAction* QUndoGroup_createUndoAction2(const QUndoGroup* self, QObject* parent, struct miqt_string prefix);
QAction* QUndoGroup_createRedoAction2(const QUndoGroup* self, QObject* parent, struct miqt_string prefix);
bool QUndoGroup_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QUndoGroup_virtualbase_metaObject(const void* self);
bool QUndoGroup_override_virtual_metacast(void* self, intptr_t slot);
void* QUndoGroup_virtualbase_metacast(void* self, const char* param1);
bool QUndoGroup_override_virtual_metacall(void* self, intptr_t slot);
int QUndoGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QUndoGroup_override_virtual_event(void* self, intptr_t slot);
bool QUndoGroup_virtualbase_event(void* self, QEvent* event);
bool QUndoGroup_override_virtual_eventFilter(void* self, intptr_t slot);
bool QUndoGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QUndoGroup_override_virtual_timerEvent(void* self, intptr_t slot);
void QUndoGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QUndoGroup_override_virtual_childEvent(void* self, intptr_t slot);
void QUndoGroup_virtualbase_childEvent(void* self, QChildEvent* event);
bool QUndoGroup_override_virtual_customEvent(void* self, intptr_t slot);
void QUndoGroup_virtualbase_customEvent(void* self, QEvent* event);
bool QUndoGroup_override_virtual_connectNotify(void* self, intptr_t slot);
void QUndoGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QUndoGroup_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QUndoGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QUndoGroup_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QUndoGroup_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QUndoGroup_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QUndoGroup_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QUndoGroup_staticMetaObject();
void QUndoGroup_delete(QUndoGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
