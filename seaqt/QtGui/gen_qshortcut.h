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

typedef struct VirtualQShortcut VirtualQShortcut;
typedef struct QShortcut_VTable{
	void (*destructor)(VirtualQShortcut* self);
	QMetaObject* (*metaObject)(const VirtualQShortcut* self);
	void* (*metacast)(VirtualQShortcut* self, const char* param1);
	int (*metacall)(VirtualQShortcut* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQShortcut* self, QEvent* e);
	bool (*eventFilter)(VirtualQShortcut* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQShortcut* self, QTimerEvent* event);
	void (*childEvent)(VirtualQShortcut* self, QChildEvent* event);
	void (*customEvent)(VirtualQShortcut* self, QEvent* event);
	void (*connectNotify)(VirtualQShortcut* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQShortcut* self, QMetaMethod* signal);
}QShortcut_VTable;

const QShortcut_VTable* QShortcut_vtbl(const VirtualQShortcut* self);
void* QShortcut_vdata(const VirtualQShortcut* self);
void QShortcut_setVdata(VirtualQShortcut* self, void* vdata);

VirtualQShortcut* QShortcut_new(const QShortcut_VTable* vtbl, void* vdata, QObject* parent);
VirtualQShortcut* QShortcut_new2(const QShortcut_VTable* vtbl, void* vdata, QKeySequence* key, QObject* parent);
VirtualQShortcut* QShortcut_new3(const QShortcut_VTable* vtbl, void* vdata, int key, QObject* parent);
VirtualQShortcut* QShortcut_new4(const QShortcut_VTable* vtbl, void* vdata, QKeySequence* key, QObject* parent, const char* member);
VirtualQShortcut* QShortcut_new5(const QShortcut_VTable* vtbl, void* vdata, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember);
VirtualQShortcut* QShortcut_new6(const QShortcut_VTable* vtbl, void* vdata, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember, int context);
VirtualQShortcut* QShortcut_new7(const QShortcut_VTable* vtbl, void* vdata, int key, QObject* parent, const char* member);
VirtualQShortcut* QShortcut_new8(const QShortcut_VTable* vtbl, void* vdata, int key, QObject* parent, const char* member, const char* ambiguousMember);
VirtualQShortcut* QShortcut_new9(const QShortcut_VTable* vtbl, void* vdata, int key, QObject* parent, const char* member, const char* ambiguousMember, int context);

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
void QShortcut_connect_activated(VirtualQShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QShortcut_activatedAmbiguously(QShortcut* self);
void QShortcut_connect_activatedAmbiguously(VirtualQShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QShortcut_event(QShortcut* self, QEvent* e);
struct miqt_string QShortcut_tr2(const char* s, const char* c);
struct miqt_string QShortcut_tr3(const char* s, const char* c, int n);

QMetaObject* QShortcut_virtualbase_metaObject(const VirtualQShortcut* self);
void* QShortcut_virtualbase_metacast(VirtualQShortcut* self, const char* param1);
int QShortcut_virtualbase_metacall(VirtualQShortcut* self, int param1, int param2, void** param3);
bool QShortcut_virtualbase_event(VirtualQShortcut* self, QEvent* e);
bool QShortcut_virtualbase_eventFilter(VirtualQShortcut* self, QObject* watched, QEvent* event);
void QShortcut_virtualbase_timerEvent(VirtualQShortcut* self, QTimerEvent* event);
void QShortcut_virtualbase_childEvent(VirtualQShortcut* self, QChildEvent* event);
void QShortcut_virtualbase_customEvent(VirtualQShortcut* self, QEvent* event);
void QShortcut_virtualbase_connectNotify(VirtualQShortcut* self, QMetaMethod* signal);
void QShortcut_virtualbase_disconnectNotify(VirtualQShortcut* self, QMetaMethod* signal);

QObject* QShortcut_protectedbase_sender(const VirtualQShortcut* self);
int QShortcut_protectedbase_senderSignalIndex(const VirtualQShortcut* self);
int QShortcut_protectedbase_receivers(const VirtualQShortcut* self, const char* signal);
bool QShortcut_protectedbase_isSignalConnected(const VirtualQShortcut* self, QMetaMethod* signal);

const QMetaObject* QShortcut_staticMetaObject();
void QShortcut_delete(QShortcut* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
