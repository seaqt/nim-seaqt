#pragma once
#ifndef SEAQT_QTCORE_GEN_QSETTINGS_H
#define SEAQT_QTCORE_GEN_QSETTINGS_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QSettings;
class QTextCodec;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSettings QSettings;
typedef struct QTextCodec QTextCodec;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQSettings VirtualQSettings;
typedef struct QSettings_VTable{
	void (*destructor)(VirtualQSettings* self);
	QMetaObject* (*metaObject)(const VirtualQSettings* self);
	void* (*metacast)(VirtualQSettings* self, const char* param1);
	int (*metacall)(VirtualQSettings* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSettings* self, QEvent* event);
	bool (*eventFilter)(VirtualQSettings* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSettings* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSettings* self, QChildEvent* event);
	void (*customEvent)(VirtualQSettings* self, QEvent* event);
	void (*connectNotify)(VirtualQSettings* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSettings* self, QMetaMethod* signal);
}QSettings_VTable;

const QSettings_VTable* QSettings_vtbl(const VirtualQSettings* self);
void* QSettings_vdata(const VirtualQSettings* self);
void QSettings_setVdata(VirtualQSettings* self, void* vdata);

VirtualQSettings* QSettings_new(const QSettings_VTable* vtbl, void* vdata, struct miqt_string organization);
VirtualQSettings* QSettings_new2(const QSettings_VTable* vtbl, void* vdata, int scope, struct miqt_string organization);
VirtualQSettings* QSettings_new3(const QSettings_VTable* vtbl, void* vdata, int format, int scope, struct miqt_string organization);
VirtualQSettings* QSettings_new4(const QSettings_VTable* vtbl, void* vdata, struct miqt_string fileName, int format);
VirtualQSettings* QSettings_new5(const QSettings_VTable* vtbl, void* vdata);
VirtualQSettings* QSettings_new6(const QSettings_VTable* vtbl, void* vdata, int scope);
VirtualQSettings* QSettings_new7(const QSettings_VTable* vtbl, void* vdata, struct miqt_string organization, struct miqt_string application);
VirtualQSettings* QSettings_new8(const QSettings_VTable* vtbl, void* vdata, struct miqt_string organization, struct miqt_string application, QObject* parent);
VirtualQSettings* QSettings_new9(const QSettings_VTable* vtbl, void* vdata, int scope, struct miqt_string organization, struct miqt_string application);
VirtualQSettings* QSettings_new10(const QSettings_VTable* vtbl, void* vdata, int scope, struct miqt_string organization, struct miqt_string application, QObject* parent);
VirtualQSettings* QSettings_new11(const QSettings_VTable* vtbl, void* vdata, int format, int scope, struct miqt_string organization, struct miqt_string application);
VirtualQSettings* QSettings_new12(const QSettings_VTable* vtbl, void* vdata, int format, int scope, struct miqt_string organization, struct miqt_string application, QObject* parent);
VirtualQSettings* QSettings_new13(const QSettings_VTable* vtbl, void* vdata, struct miqt_string fileName, int format, QObject* parent);
VirtualQSettings* QSettings_new14(const QSettings_VTable* vtbl, void* vdata, QObject* parent);
VirtualQSettings* QSettings_new15(const QSettings_VTable* vtbl, void* vdata, int scope, QObject* parent);

void QSettings_virtbase(QSettings* src, QObject** outptr_QObject);
QMetaObject* QSettings_metaObject(const QSettings* self);
void* QSettings_metacast(QSettings* self, const char* param1);
int QSettings_metacall(QSettings* self, int param1, int param2, void** param3);
struct miqt_string QSettings_tr(const char* s);
struct miqt_string QSettings_trUtf8(const char* s);
void QSettings_clear(QSettings* self);
void QSettings_sync(QSettings* self);
int QSettings_status(const QSettings* self);
bool QSettings_isAtomicSyncRequired(const QSettings* self);
void QSettings_setAtomicSyncRequired(QSettings* self, bool enable);
void QSettings_beginGroup(QSettings* self, struct miqt_string prefix);
void QSettings_endGroup(QSettings* self);
struct miqt_string QSettings_group(const QSettings* self);
int QSettings_beginReadArray(QSettings* self, struct miqt_string prefix);
void QSettings_beginWriteArray(QSettings* self, struct miqt_string prefix);
void QSettings_endArray(QSettings* self);
void QSettings_setArrayIndex(QSettings* self, int i);
struct miqt_array /* of struct miqt_string */  QSettings_allKeys(const QSettings* self);
struct miqt_array /* of struct miqt_string */  QSettings_childKeys(const QSettings* self);
struct miqt_array /* of struct miqt_string */  QSettings_childGroups(const QSettings* self);
bool QSettings_isWritable(const QSettings* self);
void QSettings_setValue(QSettings* self, struct miqt_string key, QVariant* value);
QVariant* QSettings_value(const QSettings* self, struct miqt_string key);
void QSettings_remove(QSettings* self, struct miqt_string key);
bool QSettings_contains(const QSettings* self, struct miqt_string key);
void QSettings_setFallbacksEnabled(QSettings* self, bool b);
bool QSettings_fallbacksEnabled(const QSettings* self);
struct miqt_string QSettings_fileName(const QSettings* self);
int QSettings_format(const QSettings* self);
int QSettings_scope(const QSettings* self);
struct miqt_string QSettings_organizationName(const QSettings* self);
struct miqt_string QSettings_applicationName(const QSettings* self);
void QSettings_setIniCodec(QSettings* self, QTextCodec* codec);
void QSettings_setIniCodecWithCodecName(QSettings* self, const char* codecName);
QTextCodec* QSettings_iniCodec(const QSettings* self);
void QSettings_setDefaultFormat(int format);
int QSettings_defaultFormat();
void QSettings_setSystemIniPath(struct miqt_string dir);
void QSettings_setUserIniPath(struct miqt_string dir);
void QSettings_setPath(int format, int scope, struct miqt_string path);
bool QSettings_event(QSettings* self, QEvent* event);
struct miqt_string QSettings_tr2(const char* s, const char* c);
struct miqt_string QSettings_tr3(const char* s, const char* c, int n);
struct miqt_string QSettings_trUtf82(const char* s, const char* c);
struct miqt_string QSettings_trUtf83(const char* s, const char* c, int n);
void QSettings_beginWriteArray2(QSettings* self, struct miqt_string prefix, int size);
QVariant* QSettings_value2(const QSettings* self, struct miqt_string key, QVariant* defaultValue);

QMetaObject* QSettings_virtualbase_metaObject(const VirtualQSettings* self);
void* QSettings_virtualbase_metacast(VirtualQSettings* self, const char* param1);
int QSettings_virtualbase_metacall(VirtualQSettings* self, int param1, int param2, void** param3);
bool QSettings_virtualbase_event(VirtualQSettings* self, QEvent* event);
bool QSettings_virtualbase_eventFilter(VirtualQSettings* self, QObject* watched, QEvent* event);
void QSettings_virtualbase_timerEvent(VirtualQSettings* self, QTimerEvent* event);
void QSettings_virtualbase_childEvent(VirtualQSettings* self, QChildEvent* event);
void QSettings_virtualbase_customEvent(VirtualQSettings* self, QEvent* event);
void QSettings_virtualbase_connectNotify(VirtualQSettings* self, QMetaMethod* signal);
void QSettings_virtualbase_disconnectNotify(VirtualQSettings* self, QMetaMethod* signal);

QObject* QSettings_protectedbase_sender(const VirtualQSettings* self);
int QSettings_protectedbase_senderSignalIndex(const VirtualQSettings* self);
int QSettings_protectedbase_receivers(const VirtualQSettings* self, const char* signal);
bool QSettings_protectedbase_isSignalConnected(const VirtualQSettings* self, QMetaMethod* signal);

const QMetaObject* QSettings_staticMetaObject();
void QSettings_delete(QSettings* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
