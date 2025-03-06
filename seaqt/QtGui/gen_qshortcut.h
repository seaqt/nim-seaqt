#pragma once
#ifndef SEAQT_QTGUI_GEN_QSHORTCUT_H
#define SEAQT_QTGUI_GEN_QSHORTCUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QKeySequence;
class QMetaMethod;
class QMetaObject;
class QObject;
class QShortcut;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QShortcut QShortcut;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QShortcut_VTable {
	void (*destructor)(struct QShortcut_VTable* vtbl, QShortcut* self);
	QMetaObject* (*metaObject)(struct QShortcut_VTable* vtbl, const QShortcut* self);
	void* (*metacast)(struct QShortcut_VTable* vtbl, QShortcut* self, const char* param1);
	int (*metacall)(struct QShortcut_VTable* vtbl, QShortcut* self, int param1, int param2, void** param3);
	bool (*event)(struct QShortcut_VTable* vtbl, QShortcut* self, QEvent* e);
	bool (*eventFilter)(struct QShortcut_VTable* vtbl, QShortcut* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QShortcut_VTable* vtbl, QShortcut* self, QTimerEvent* event);
	void (*childEvent)(struct QShortcut_VTable* vtbl, QShortcut* self, QChildEvent* event);
	void (*customEvent)(struct QShortcut_VTable* vtbl, QShortcut* self, QEvent* event);
	void (*connectNotify)(struct QShortcut_VTable* vtbl, QShortcut* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QShortcut_VTable* vtbl, QShortcut* self, QMetaMethod* signal);
};
QShortcut* QShortcut_new(struct QShortcut_VTable* vtbl, QObject* parent);
QShortcut* QShortcut_new2(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent);
QShortcut* QShortcut_new3(struct QShortcut_VTable* vtbl, int key, QObject* parent);
QShortcut* QShortcut_new4(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent, const char* member);
QShortcut* QShortcut_new5(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember);
QShortcut* QShortcut_new6(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember, int context);
QShortcut* QShortcut_new7(struct QShortcut_VTable* vtbl, int key, QObject* parent, const char* member);
QShortcut* QShortcut_new8(struct QShortcut_VTable* vtbl, int key, QObject* parent, const char* member, const char* ambiguousMember);
QShortcut* QShortcut_new9(struct QShortcut_VTable* vtbl, int key, QObject* parent, const char* member, const char* ambiguousMember, int context);
void QShortcut_virtbase(QShortcut* src, QObject** outptr_QObject);
QMetaObject* QShortcut_metaObject(const QShortcut* self);
void* QShortcut_metacast(QShortcut* self, const char* param1);
int QShortcut_metacall(QShortcut* self, int param1, int param2, void** param3);
struct miqt_string QShortcut_tr(const char* s);
void QShortcut_setKey(QShortcut* self, QKeySequence* key);
QKeySequence* QShortcut_key(const QShortcut* self);
void QShortcut_setKeys(QShortcut* self, int key);
void QShortcut_setKeysWithKeys(QShortcut* self, struct miqt_array /* of QKeySequence* */  keys);
struct miqt_array /* of QKeySequence* */  QShortcut_keys(const QShortcut* self);
void QShortcut_setEnabled(QShortcut* self, bool enable);
bool QShortcut_isEnabled(const QShortcut* self);
void QShortcut_setContext(QShortcut* self, int context);
int QShortcut_context(const QShortcut* self);
void QShortcut_setAutoRepeat(QShortcut* self, bool on);
bool QShortcut_autoRepeat(const QShortcut* self);
int QShortcut_id(const QShortcut* self);
void QShortcut_setWhatsThis(QShortcut* self, struct miqt_string text);
struct miqt_string QShortcut_whatsThis(const QShortcut* self);
void QShortcut_activated(QShortcut* self);
void QShortcut_connect_activated(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QShortcut_activatedAmbiguously(QShortcut* self);
void QShortcut_connect_activatedAmbiguously(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QShortcut_event(QShortcut* self, QEvent* e);
struct miqt_string QShortcut_tr2(const char* s, const char* c);
struct miqt_string QShortcut_tr3(const char* s, const char* c, int n);
QMetaObject* QShortcut_virtualbase_metaObject(const void* self);
void* QShortcut_virtualbase_metacast(void* self, const char* param1);
int QShortcut_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QShortcut_virtualbase_event(void* self, QEvent* e);
bool QShortcut_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QShortcut_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QShortcut_virtualbase_childEvent(void* self, QChildEvent* event);
void QShortcut_virtualbase_customEvent(void* self, QEvent* event);
void QShortcut_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QShortcut_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QShortcut_protectedbase_sender(const void* self);
int QShortcut_protectedbase_senderSignalIndex(const void* self);
int QShortcut_protectedbase_receivers(const void* self, const char* signal);
bool QShortcut_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QShortcut_staticMetaObject();
void QShortcut_delete(QShortcut* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
