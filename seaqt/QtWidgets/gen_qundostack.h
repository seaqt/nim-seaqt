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

struct QUndoCommand_VTable {
	void (*destructor)(struct QUndoCommand_VTable* vtbl, QUndoCommand* self);
	void (*undo)(struct QUndoCommand_VTable* vtbl, QUndoCommand* self);
	void (*redo)(struct QUndoCommand_VTable* vtbl, QUndoCommand* self);
	int (*id)(struct QUndoCommand_VTable* vtbl, const QUndoCommand* self);
	bool (*mergeWith)(struct QUndoCommand_VTable* vtbl, QUndoCommand* self, QUndoCommand* other);
};
QUndoCommand* QUndoCommand_new(struct QUndoCommand_VTable* vtbl);
QUndoCommand* QUndoCommand_new2(struct QUndoCommand_VTable* vtbl, struct miqt_string text);
QUndoCommand* QUndoCommand_new3(struct QUndoCommand_VTable* vtbl, QUndoCommand* parent);
QUndoCommand* QUndoCommand_new4(struct QUndoCommand_VTable* vtbl, struct miqt_string text, QUndoCommand* parent);
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
void QUndoCommand_virtualbase_undo(void* self);
void QUndoCommand_virtualbase_redo(void* self);
int QUndoCommand_virtualbase_id(const void* self);
bool QUndoCommand_virtualbase_mergeWith(void* self, QUndoCommand* other);
void QUndoCommand_delete(QUndoCommand* self);

struct QUndoStack_VTable {
	void (*destructor)(struct QUndoStack_VTable* vtbl, QUndoStack* self);
	QMetaObject* (*metaObject)(struct QUndoStack_VTable* vtbl, const QUndoStack* self);
	void* (*metacast)(struct QUndoStack_VTable* vtbl, QUndoStack* self, const char* param1);
	int (*metacall)(struct QUndoStack_VTable* vtbl, QUndoStack* self, int param1, int param2, void** param3);
	bool (*event)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QEvent* event);
	bool (*eventFilter)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QTimerEvent* event);
	void (*childEvent)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QChildEvent* event);
	void (*customEvent)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QEvent* event);
	void (*connectNotify)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QUndoStack_VTable* vtbl, QUndoStack* self, QMetaMethod* signal);
};
QUndoStack* QUndoStack_new(struct QUndoStack_VTable* vtbl);
QUndoStack* QUndoStack_new2(struct QUndoStack_VTable* vtbl, QObject* parent);
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
void QUndoStack_connect_indexChanged(QUndoStack* self, intptr_t slot);
void QUndoStack_cleanChanged(QUndoStack* self, bool clean);
void QUndoStack_connect_cleanChanged(QUndoStack* self, intptr_t slot);
void QUndoStack_canUndoChanged(QUndoStack* self, bool canUndo);
void QUndoStack_connect_canUndoChanged(QUndoStack* self, intptr_t slot);
void QUndoStack_canRedoChanged(QUndoStack* self, bool canRedo);
void QUndoStack_connect_canRedoChanged(QUndoStack* self, intptr_t slot);
void QUndoStack_undoTextChanged(QUndoStack* self, struct miqt_string undoText);
void QUndoStack_connect_undoTextChanged(QUndoStack* self, intptr_t slot);
void QUndoStack_redoTextChanged(QUndoStack* self, struct miqt_string redoText);
void QUndoStack_connect_redoTextChanged(QUndoStack* self, intptr_t slot);
struct miqt_string QUndoStack_tr2(const char* s, const char* c);
struct miqt_string QUndoStack_tr3(const char* s, const char* c, int n);
struct miqt_string QUndoStack_trUtf82(const char* s, const char* c);
struct miqt_string QUndoStack_trUtf83(const char* s, const char* c, int n);
QAction* QUndoStack_createUndoAction2(const QUndoStack* self, QObject* parent, struct miqt_string prefix);
QAction* QUndoStack_createRedoAction2(const QUndoStack* self, QObject* parent, struct miqt_string prefix);
void QUndoStack_setActive1(QUndoStack* self, bool active);
QMetaObject* QUndoStack_virtualbase_metaObject(const void* self);
void* QUndoStack_virtualbase_metacast(void* self, const char* param1);
int QUndoStack_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QUndoStack_virtualbase_event(void* self, QEvent* event);
bool QUndoStack_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QUndoStack_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QUndoStack_virtualbase_childEvent(void* self, QChildEvent* event);
void QUndoStack_virtualbase_customEvent(void* self, QEvent* event);
void QUndoStack_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QUndoStack_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QUndoStack_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QUndoStack_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QUndoStack_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QUndoStack_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QUndoStack_staticMetaObject();
void QUndoStack_delete(QUndoStack* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
