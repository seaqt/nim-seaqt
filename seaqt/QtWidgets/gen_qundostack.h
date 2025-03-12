#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QUNDOSTACK_H
#define SEAQT_QTWIDGETS_GEN_QUNDOSTACK_H

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
class QUndoCommand;
class QUndoStack;
#else
typedef struct QAction QAction;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUndoCommand QUndoCommand;
typedef struct QUndoStack QUndoStack;
#endif

typedef struct VirtualQUndoCommand VirtualQUndoCommand;
typedef struct QUndoCommand_VTable{
	void (*destructor)(VirtualQUndoCommand* self);
	void (*undo)(VirtualQUndoCommand* self);
	void (*redo)(VirtualQUndoCommand* self);
	int (*id)(const VirtualQUndoCommand* self);
	bool (*mergeWith)(VirtualQUndoCommand* self, QUndoCommand* other);
}QUndoCommand_VTable;

const QUndoCommand_VTable* QUndoCommand_vtbl(const VirtualQUndoCommand* self);
void* QUndoCommand_vdata(const VirtualQUndoCommand* self);
void QUndoCommand_setVdata(VirtualQUndoCommand* self, void* vdata);

VirtualQUndoCommand* QUndoCommand_new(const QUndoCommand_VTable* vtbl, void* vdata);
VirtualQUndoCommand* QUndoCommand_new2(const QUndoCommand_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQUndoCommand* QUndoCommand_new3(const QUndoCommand_VTable* vtbl, void* vdata, QUndoCommand* parent);
VirtualQUndoCommand* QUndoCommand_new4(const QUndoCommand_VTable* vtbl, void* vdata, struct miqt_string text, QUndoCommand* parent);

void QUndoCommand_undo(QUndoCommand* self);
void QUndoCommand_redo(QUndoCommand* self);
struct miqt_string QUndoCommand_text(const QUndoCommand* self);
struct miqt_string QUndoCommand_actionText(const QUndoCommand* self);
void QUndoCommand_setText(QUndoCommand* self, struct miqt_string text);
bool QUndoCommand_isObsolete(const QUndoCommand* self);
void QUndoCommand_setObsolete(QUndoCommand* self, bool obsolete);
int QUndoCommand_id(const QUndoCommand* self);
bool QUndoCommand_mergeWith(QUndoCommand* self, QUndoCommand* other);
int QUndoCommand_childCount(const QUndoCommand* self);
QUndoCommand* QUndoCommand_child(const QUndoCommand* self, int index);

void QUndoCommand_virtualbase_undo(VirtualQUndoCommand* self);
void QUndoCommand_virtualbase_redo(VirtualQUndoCommand* self);
int QUndoCommand_virtualbase_id(const VirtualQUndoCommand* self);
bool QUndoCommand_virtualbase_mergeWith(VirtualQUndoCommand* self, QUndoCommand* other);

void QUndoCommand_delete(QUndoCommand* self);

typedef struct VirtualQUndoStack VirtualQUndoStack;
typedef struct QUndoStack_VTable{
	void (*destructor)(VirtualQUndoStack* self);
	QMetaObject* (*metaObject)(const VirtualQUndoStack* self);
	void* (*metacast)(VirtualQUndoStack* self, const char* param1);
	int (*metacall)(VirtualQUndoStack* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQUndoStack* self, QEvent* event);
	bool (*eventFilter)(VirtualQUndoStack* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQUndoStack* self, QTimerEvent* event);
	void (*childEvent)(VirtualQUndoStack* self, QChildEvent* event);
	void (*customEvent)(VirtualQUndoStack* self, QEvent* event);
	void (*connectNotify)(VirtualQUndoStack* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQUndoStack* self, QMetaMethod* signal);
}QUndoStack_VTable;

const QUndoStack_VTable* QUndoStack_vtbl(const VirtualQUndoStack* self);
void* QUndoStack_vdata(const VirtualQUndoStack* self);
void QUndoStack_setVdata(VirtualQUndoStack* self, void* vdata);

VirtualQUndoStack* QUndoStack_new(const QUndoStack_VTable* vtbl, void* vdata);
VirtualQUndoStack* QUndoStack_new2(const QUndoStack_VTable* vtbl, void* vdata, QObject* parent);

void QUndoStack_virtbase(QUndoStack* src, QObject** outptr_QObject);
QMetaObject* QUndoStack_metaObject(const QUndoStack* self);
void* QUndoStack_metacast(QUndoStack* self, const char* param1);
int QUndoStack_metacall(QUndoStack* self, int param1, int param2, void** param3);
struct miqt_string QUndoStack_tr(const char* s);
struct miqt_string QUndoStack_trUtf8(const char* s);
void QUndoStack_clear(QUndoStack* self);
void QUndoStack_push(QUndoStack* self, QUndoCommand* cmd);
bool QUndoStack_canUndo(const QUndoStack* self);
bool QUndoStack_canRedo(const QUndoStack* self);
struct miqt_string QUndoStack_undoText(const QUndoStack* self);
struct miqt_string QUndoStack_redoText(const QUndoStack* self);
int QUndoStack_count(const QUndoStack* self);
int QUndoStack_index(const QUndoStack* self);
struct miqt_string QUndoStack_text(const QUndoStack* self, int idx);
QAction* QUndoStack_createUndoAction(const QUndoStack* self, QObject* parent);
QAction* QUndoStack_createRedoAction(const QUndoStack* self, QObject* parent);
bool QUndoStack_isActive(const QUndoStack* self);
bool QUndoStack_isClean(const QUndoStack* self);
int QUndoStack_cleanIndex(const QUndoStack* self);
void QUndoStack_beginMacro(QUndoStack* self, struct miqt_string text);
void QUndoStack_endMacro(QUndoStack* self);
void QUndoStack_setUndoLimit(QUndoStack* self, int limit);
int QUndoStack_undoLimit(const QUndoStack* self);
QUndoCommand* QUndoStack_command(const QUndoStack* self, int index);
void QUndoStack_setClean(QUndoStack* self);
void QUndoStack_resetClean(QUndoStack* self);
void QUndoStack_setIndex(QUndoStack* self, int idx);
void QUndoStack_undo(QUndoStack* self);
void QUndoStack_redo(QUndoStack* self);
void QUndoStack_setActive(QUndoStack* self);
void QUndoStack_indexChanged(QUndoStack* self, int idx);
void QUndoStack_connect_indexChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QUndoStack_cleanChanged(QUndoStack* self, bool clean);
void QUndoStack_connect_cleanChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QUndoStack_canUndoChanged(QUndoStack* self, bool canUndo);
void QUndoStack_connect_canUndoChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QUndoStack_canRedoChanged(QUndoStack* self, bool canRedo);
void QUndoStack_connect_canRedoChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QUndoStack_undoTextChanged(QUndoStack* self, struct miqt_string undoText);
void QUndoStack_connect_undoTextChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QUndoStack_redoTextChanged(QUndoStack* self, struct miqt_string redoText);
void QUndoStack_connect_redoTextChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
struct miqt_string QUndoStack_tr2(const char* s, const char* c);
struct miqt_string QUndoStack_tr3(const char* s, const char* c, int n);
struct miqt_string QUndoStack_trUtf82(const char* s, const char* c);
struct miqt_string QUndoStack_trUtf83(const char* s, const char* c, int n);
QAction* QUndoStack_createUndoAction2(const QUndoStack* self, QObject* parent, struct miqt_string prefix);
QAction* QUndoStack_createRedoAction2(const QUndoStack* self, QObject* parent, struct miqt_string prefix);
void QUndoStack_setActive1(QUndoStack* self, bool active);

QMetaObject* QUndoStack_virtualbase_metaObject(const VirtualQUndoStack* self);
void* QUndoStack_virtualbase_metacast(VirtualQUndoStack* self, const char* param1);
int QUndoStack_virtualbase_metacall(VirtualQUndoStack* self, int param1, int param2, void** param3);
bool QUndoStack_virtualbase_event(VirtualQUndoStack* self, QEvent* event);
bool QUndoStack_virtualbase_eventFilter(VirtualQUndoStack* self, QObject* watched, QEvent* event);
void QUndoStack_virtualbase_timerEvent(VirtualQUndoStack* self, QTimerEvent* event);
void QUndoStack_virtualbase_childEvent(VirtualQUndoStack* self, QChildEvent* event);
void QUndoStack_virtualbase_customEvent(VirtualQUndoStack* self, QEvent* event);
void QUndoStack_virtualbase_connectNotify(VirtualQUndoStack* self, QMetaMethod* signal);
void QUndoStack_virtualbase_disconnectNotify(VirtualQUndoStack* self, QMetaMethod* signal);

QObject* QUndoStack_protectedbase_sender(const VirtualQUndoStack* self);
int QUndoStack_protectedbase_senderSignalIndex(const VirtualQUndoStack* self);
int QUndoStack_protectedbase_receivers(const VirtualQUndoStack* self, const char* signal);
bool QUndoStack_protectedbase_isSignalConnected(const VirtualQUndoStack* self, QMetaMethod* signal);

const QMetaObject* QUndoStack_staticMetaObject();
void QUndoStack_delete(QUndoStack* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
