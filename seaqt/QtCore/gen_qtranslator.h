#pragma once
#ifndef SEAQT_QTCORE_GEN_QTRANSLATOR_H
#define SEAQT_QTCORE_GEN_QTRANSLATOR_H

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
class QLocale;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QTranslator;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTranslator QTranslator;
#endif

typedef struct VirtualQTranslator VirtualQTranslator;
typedef struct QTranslator_VTable{
	void (*destructor)(VirtualQTranslator* self);
	QMetaObject* (*metaObject)(const VirtualQTranslator* self);
	void* (*metacast)(VirtualQTranslator* self, const char* param1);
	int (*metacall)(VirtualQTranslator* self, int param1, int param2, void** param3);
	struct miqt_string (*translate)(const VirtualQTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
	bool (*isEmpty)(const VirtualQTranslator* self);
	bool (*event)(VirtualQTranslator* self, QEvent* event);
	bool (*eventFilter)(VirtualQTranslator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTranslator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTranslator* self, QChildEvent* event);
	void (*customEvent)(VirtualQTranslator* self, QEvent* event);
	void (*connectNotify)(VirtualQTranslator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTranslator* self, QMetaMethod* signal);
}QTranslator_VTable;

const QTranslator_VTable* QTranslator_vtbl(const VirtualQTranslator* self);
void* QTranslator_vdata(const VirtualQTranslator* self);
void QTranslator_setVdata(VirtualQTranslator* self, void* vdata);

VirtualQTranslator* QTranslator_new(const QTranslator_VTable* vtbl, void* vdata);
VirtualQTranslator* QTranslator_new2(const QTranslator_VTable* vtbl, void* vdata, QObject* parent);

void QTranslator_virtbase(QTranslator* src, QObject** outptr_QObject);
QMetaObject* QTranslator_metaObject(const QTranslator* self);
void* QTranslator_metacast(QTranslator* self, const char* param1);
int QTranslator_metacall(QTranslator* self, int param1, int param2, void** param3);
struct miqt_string QTranslator_tr(const char* s);
struct miqt_string QTranslator_translate(const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
bool QTranslator_isEmpty(const QTranslator* self);
struct miqt_string QTranslator_language(const QTranslator* self);
struct miqt_string QTranslator_filePath(const QTranslator* self);
bool QTranslator_load(QTranslator* self, struct miqt_string filename);
bool QTranslator_load2(QTranslator* self, QLocale* locale, struct miqt_string filename);
bool QTranslator_load3(QTranslator* self, const unsigned char* data, int len);
struct miqt_string QTranslator_tr2(const char* s, const char* c);
struct miqt_string QTranslator_tr3(const char* s, const char* c, int n);
bool QTranslator_load22(QTranslator* self, struct miqt_string filename, struct miqt_string directory);
bool QTranslator_load32(QTranslator* self, struct miqt_string filename, struct miqt_string directory, struct miqt_string search_delimiters);
bool QTranslator_load4(QTranslator* self, struct miqt_string filename, struct miqt_string directory, struct miqt_string search_delimiters, struct miqt_string suffix);
bool QTranslator_load33(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix);
bool QTranslator_load42(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix, struct miqt_string directory);
bool QTranslator_load5(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix, struct miqt_string directory, struct miqt_string suffix);
bool QTranslator_load34(QTranslator* self, const unsigned char* data, int len, struct miqt_string directory);

QMetaObject* QTranslator_virtualbase_metaObject(const VirtualQTranslator* self);
void* QTranslator_virtualbase_metacast(VirtualQTranslator* self, const char* param1);
int QTranslator_virtualbase_metacall(VirtualQTranslator* self, int param1, int param2, void** param3);
struct miqt_string QTranslator_virtualbase_translate(const VirtualQTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
bool QTranslator_virtualbase_isEmpty(const VirtualQTranslator* self);
bool QTranslator_virtualbase_event(VirtualQTranslator* self, QEvent* event);
bool QTranslator_virtualbase_eventFilter(VirtualQTranslator* self, QObject* watched, QEvent* event);
void QTranslator_virtualbase_timerEvent(VirtualQTranslator* self, QTimerEvent* event);
void QTranslator_virtualbase_childEvent(VirtualQTranslator* self, QChildEvent* event);
void QTranslator_virtualbase_customEvent(VirtualQTranslator* self, QEvent* event);
void QTranslator_virtualbase_connectNotify(VirtualQTranslator* self, QMetaMethod* signal);
void QTranslator_virtualbase_disconnectNotify(VirtualQTranslator* self, QMetaMethod* signal);

QObject* QTranslator_protectedbase_sender(const VirtualQTranslator* self);
int QTranslator_protectedbase_senderSignalIndex(const VirtualQTranslator* self);
int QTranslator_protectedbase_receivers(const VirtualQTranslator* self, const char* signal);
bool QTranslator_protectedbase_isSignalConnected(const VirtualQTranslator* self, QMetaMethod* signal);

const QMetaObject* QTranslator_staticMetaObject();
void QTranslator_delete(QTranslator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
