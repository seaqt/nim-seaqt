#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSHORTCUT_H
#define SEAQT_QTWIDGETS_GEN_QSHORTCUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QShortcut QShortcut;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
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

void* QShortcut_vdata(VirtualQShortcut* self);
VirtualQShortcut* vdata_QShortcut(void* vdata);

VirtualQShortcut* QShortcut_new_parent(const QShortcut_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQShortcut* QShortcut_new_key_parent(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QWidget* parent);
VirtualQShortcut* QShortcut_new_key_parent_member(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QWidget* parent, const char* member);
VirtualQShortcut* QShortcut_new_key_parent_member_ambiguousMember(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QWidget* parent, const char* member, const char* ambiguousMember);
VirtualQShortcut* QShortcut_new_key_parent_member_ambiguousMember_shortcutContext(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QWidget* parent, const char* member, const char* ambiguousMember, int shortcutContext);

void QShortcut_virtbase(QShortcut* src, QObject** outptr_QObject);
QMetaObject* QShortcut_metaObject(const QShortcut* self);
void* QShortcut_metacast(QShortcut* self, const char* param1);
int QShortcut_metacall(QShortcut* self, int param1, int param2, void** param3);
struct seaqt_string QShortcut_tr_s(const char* s);
struct seaqt_string QShortcut_trUtf8_s(const char* s);
void QShortcut_setKey(QShortcut* self, QKeySequence* key);
QKeySequence* QShortcut_key(const QShortcut* self);
void QShortcut_setEnabled(QShortcut* self, bool enable);
bool QShortcut_isEnabled(const QShortcut* self);
void QShortcut_setContext(QShortcut* self, int context);
int QShortcut_context(const QShortcut* self);
void QShortcut_setWhatsThis(QShortcut* self, struct seaqt_string text);
struct seaqt_string QShortcut_whatsThis(const QShortcut* self);
void QShortcut_setAutoRepeat(QShortcut* self, bool on);
bool QShortcut_autoRepeat(const QShortcut* self);
int QShortcut_id(const QShortcut* self);
QWidget* QShortcut_parentWidget(const QShortcut* self);
void QShortcut_activated(QShortcut* self);
void QShortcut_connect_activated(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QShortcut_activatedAmbiguously(QShortcut* self);
void QShortcut_connect_activatedAmbiguously(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QShortcut_event(QShortcut* self, QEvent* e);
struct seaqt_string QShortcut_tr_s_c(const char* s, const char* c);
struct seaqt_string QShortcut_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QShortcut_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QShortcut_trUtf8_s_c_n(const char* s, const char* c, int n);

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

void QShortcut_delete(QShortcut* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
