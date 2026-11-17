#pragma once
#ifndef SEAQT_QTGUI_GEN_QACCESSIBILITYHINTS_H
#define SEAQT_QTGUI_GEN_QACCESSIBILITYHINTS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibilityHints;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAccessibilityHints QAccessibilityHints;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAccessibilityHints VirtualQAccessibilityHints;
typedef struct QAccessibilityHints_VTable{
	void (*destructor)(VirtualQAccessibilityHints* self);
	QMetaObject* (*metaObject)(const VirtualQAccessibilityHints* self);
	void* (*metacast)(VirtualQAccessibilityHints* self, const char* param1);
	int (*metacall)(VirtualQAccessibilityHints* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAccessibilityHints* self, QEvent* event);
	bool (*eventFilter)(VirtualQAccessibilityHints* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAccessibilityHints* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAccessibilityHints* self, QChildEvent* event);
	void (*customEvent)(VirtualQAccessibilityHints* self, QEvent* event);
	void (*connectNotify)(VirtualQAccessibilityHints* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAccessibilityHints* self, QMetaMethod* signal);
}QAccessibilityHints_VTable;

void* QAccessibilityHints_vdata(VirtualQAccessibilityHints* self);
VirtualQAccessibilityHints* vdata_QAccessibilityHints(void* vdata);

VirtualQAccessibilityHints* QAccessibilityHints_new(const QAccessibilityHints_VTable* vtbl, size_t vdata);
VirtualQAccessibilityHints* QAccessibilityHints_new_parent(const QAccessibilityHints_VTable* vtbl, size_t vdata, QObject* parent);

void QAccessibilityHints_virtbase(QAccessibilityHints* src, QObject** outptr_QObject);
QMetaObject* QAccessibilityHints_metaObject(const QAccessibilityHints* self);
void* QAccessibilityHints_metacast(QAccessibilityHints* self, const char* param1);
int QAccessibilityHints_metacall(QAccessibilityHints* self, int param1, int param2, void** param3);
struct seaqt_string QAccessibilityHints_tr_s(const char* s);
int QAccessibilityHints_contrastPreference(const QAccessibilityHints* self);
void QAccessibilityHints_contrastPreferenceChanged(QAccessibilityHints* self, int contrastPreference);
void QAccessibilityHints_connect_contrastPreferenceChanged(QAccessibilityHints* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QAccessibilityHints_event(QAccessibilityHints* self, QEvent* event);
struct seaqt_string QAccessibilityHints_tr_s_c(const char* s, const char* c);
struct seaqt_string QAccessibilityHints_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QAccessibilityHints_virtualbase_metaObject(const VirtualQAccessibilityHints* self);
void* QAccessibilityHints_virtualbase_metacast(VirtualQAccessibilityHints* self, const char* param1);
int QAccessibilityHints_virtualbase_metacall(VirtualQAccessibilityHints* self, int param1, int param2, void** param3);
bool QAccessibilityHints_virtualbase_event(VirtualQAccessibilityHints* self, QEvent* event);
bool QAccessibilityHints_virtualbase_eventFilter(VirtualQAccessibilityHints* self, QObject* watched, QEvent* event);
void QAccessibilityHints_virtualbase_timerEvent(VirtualQAccessibilityHints* self, QTimerEvent* event);
void QAccessibilityHints_virtualbase_childEvent(VirtualQAccessibilityHints* self, QChildEvent* event);
void QAccessibilityHints_virtualbase_customEvent(VirtualQAccessibilityHints* self, QEvent* event);
void QAccessibilityHints_virtualbase_connectNotify(VirtualQAccessibilityHints* self, QMetaMethod* signal);
void QAccessibilityHints_virtualbase_disconnectNotify(VirtualQAccessibilityHints* self, QMetaMethod* signal);

QObject* QAccessibilityHints_protectedbase_sender(const VirtualQAccessibilityHints* self);
int QAccessibilityHints_protectedbase_senderSignalIndex(const VirtualQAccessibilityHints* self);
int QAccessibilityHints_protectedbase_receivers(const VirtualQAccessibilityHints* self, const char* signal);
bool QAccessibilityHints_protectedbase_isSignalConnected(const VirtualQAccessibilityHints* self, QMetaMethod* signal);

const QMetaObject* QAccessibilityHints_staticMetaObject();
void QAccessibilityHints_delete(QAccessibilityHints* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
