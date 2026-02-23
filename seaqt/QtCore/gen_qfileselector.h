#pragma once
#ifndef SEAQT_QTCORE_GEN_QFILESELECTOR_H
#define SEAQT_QTCORE_GEN_QFILESELECTOR_H

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
class QFileSelector;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFileSelector QFileSelector;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQFileSelector VirtualQFileSelector;
typedef struct QFileSelector_VTable{
	void (*destructor)(VirtualQFileSelector* self);
	QMetaObject* (*metaObject)(const VirtualQFileSelector* self);
	void* (*metacast)(VirtualQFileSelector* self, const char* param1);
	int (*metacall)(VirtualQFileSelector* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQFileSelector* self, QEvent* event);
	bool (*eventFilter)(VirtualQFileSelector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFileSelector* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFileSelector* self, QChildEvent* event);
	void (*customEvent)(VirtualQFileSelector* self, QEvent* event);
	void (*connectNotify)(VirtualQFileSelector* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFileSelector* self, QMetaMethod* signal);
}QFileSelector_VTable;

void* QFileSelector_vdata(VirtualQFileSelector* self);
VirtualQFileSelector* vdata_QFileSelector(void* vdata);

VirtualQFileSelector* QFileSelector_new(const QFileSelector_VTable* vtbl, size_t vdata);
VirtualQFileSelector* QFileSelector_new_parent(const QFileSelector_VTable* vtbl, size_t vdata, QObject* parent);

void QFileSelector_virtbase(QFileSelector* src, QObject** outptr_QObject);
QMetaObject* QFileSelector_metaObject(const QFileSelector* self);
void* QFileSelector_metacast(QFileSelector* self, const char* param1);
int QFileSelector_metacall(QFileSelector* self, int param1, int param2, void** param3);
struct seaqt_string QFileSelector_tr_s(const char* s);
struct seaqt_string QFileSelector_trUtf8_s(const char* s);
struct seaqt_string QFileSelector_select_QString(const QFileSelector* self, struct seaqt_string filePath);
QUrl* QFileSelector_select_QUrl(const QFileSelector* self, QUrl* filePath);
struct seaqt_array /* of struct seaqt_string */  QFileSelector_extraSelectors(const QFileSelector* self);
void QFileSelector_setExtraSelectors(QFileSelector* self, struct seaqt_array /* of struct seaqt_string */  list);
struct seaqt_array /* of struct seaqt_string */  QFileSelector_allSelectors(const QFileSelector* self);
struct seaqt_string QFileSelector_tr_s_c(const char* s, const char* c);
struct seaqt_string QFileSelector_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QFileSelector_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QFileSelector_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QFileSelector_virtualbase_metaObject(const VirtualQFileSelector* self);
void* QFileSelector_virtualbase_metacast(VirtualQFileSelector* self, const char* param1);
int QFileSelector_virtualbase_metacall(VirtualQFileSelector* self, int param1, int param2, void** param3);
bool QFileSelector_virtualbase_event(VirtualQFileSelector* self, QEvent* event);
bool QFileSelector_virtualbase_eventFilter(VirtualQFileSelector* self, QObject* watched, QEvent* event);
void QFileSelector_virtualbase_timerEvent(VirtualQFileSelector* self, QTimerEvent* event);
void QFileSelector_virtualbase_childEvent(VirtualQFileSelector* self, QChildEvent* event);
void QFileSelector_virtualbase_customEvent(VirtualQFileSelector* self, QEvent* event);
void QFileSelector_virtualbase_connectNotify(VirtualQFileSelector* self, QMetaMethod* signal);
void QFileSelector_virtualbase_disconnectNotify(VirtualQFileSelector* self, QMetaMethod* signal);

QObject* QFileSelector_protectedbase_sender(const VirtualQFileSelector* self);
int QFileSelector_protectedbase_senderSignalIndex(const VirtualQFileSelector* self);
int QFileSelector_protectedbase_receivers(const VirtualQFileSelector* self, const char* signal);
bool QFileSelector_protectedbase_isSignalConnected(const VirtualQFileSelector* self, QMetaMethod* signal);

void QFileSelector_delete(QFileSelector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
