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

struct QTranslator_VTable {
	void (*destructor)(struct QTranslator_VTable* vtbl, QTranslator* self);
	QMetaObject* (*metaObject)(struct QTranslator_VTable* vtbl, const QTranslator* self);
	void* (*metacast)(struct QTranslator_VTable* vtbl, QTranslator* self, const char* param1);
	int (*metacall)(struct QTranslator_VTable* vtbl, QTranslator* self, int param1, int param2, void** param3);
	struct miqt_string (*translate)(struct QTranslator_VTable* vtbl, const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
	bool (*isEmpty)(struct QTranslator_VTable* vtbl, const QTranslator* self);
	bool (*event)(struct QTranslator_VTable* vtbl, QTranslator* self, QEvent* event);
	bool (*eventFilter)(struct QTranslator_VTable* vtbl, QTranslator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTranslator_VTable* vtbl, QTranslator* self, QTimerEvent* event);
	void (*childEvent)(struct QTranslator_VTable* vtbl, QTranslator* self, QChildEvent* event);
	void (*customEvent)(struct QTranslator_VTable* vtbl, QTranslator* self, QEvent* event);
	void (*connectNotify)(struct QTranslator_VTable* vtbl, QTranslator* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTranslator_VTable* vtbl, QTranslator* self, QMetaMethod* signal);
};
QTranslator* QTranslator_new(struct QTranslator_VTable* vtbl);
QTranslator* QTranslator_new2(struct QTranslator_VTable* vtbl, QObject* parent);
void QTranslator_virtbase(QTranslator* src, QObject** outptr_QObject);
QMetaObject* QTranslator_metaObject(const QTranslator* self);
void* QTranslator_metacast(QTranslator* self, const char* param1);
int QTranslator_metacall(QTranslator* self, int param1, int param2, void** param3);
struct miqt_string QTranslator_tr(const char* s);
struct miqt_string QTranslator_trUtf8(const char* s);
struct miqt_string QTranslator_translate(const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
bool QTranslator_isEmpty(const QTranslator* self);
struct miqt_string QTranslator_language(const QTranslator* self);
struct miqt_string QTranslator_filePath(const QTranslator* self);
bool QTranslator_load(QTranslator* self, struct miqt_string filename);
bool QTranslator_load2(QTranslator* self, QLocale* locale, struct miqt_string filename);
bool QTranslator_load3(QTranslator* self, const unsigned char* data, int len);
struct miqt_string QTranslator_tr2(const char* s, const char* c);
struct miqt_string QTranslator_tr3(const char* s, const char* c, int n);
struct miqt_string QTranslator_trUtf82(const char* s, const char* c);
struct miqt_string QTranslator_trUtf83(const char* s, const char* c, int n);
bool QTranslator_load22(QTranslator* self, struct miqt_string filename, struct miqt_string directory);
bool QTranslator_load32(QTranslator* self, struct miqt_string filename, struct miqt_string directory, struct miqt_string search_delimiters);
bool QTranslator_load4(QTranslator* self, struct miqt_string filename, struct miqt_string directory, struct miqt_string search_delimiters, struct miqt_string suffix);
bool QTranslator_load33(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix);
bool QTranslator_load42(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix, struct miqt_string directory);
bool QTranslator_load5(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix, struct miqt_string directory, struct miqt_string suffix);
bool QTranslator_load34(QTranslator* self, const unsigned char* data, int len, struct miqt_string directory);
QMetaObject* QTranslator_virtualbase_metaObject(const void* self);
void* QTranslator_virtualbase_metacast(void* self, const char* param1);
int QTranslator_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_string QTranslator_virtualbase_translate(const void* self, const char* context, const char* sourceText, const char* disambiguation, int n);
bool QTranslator_virtualbase_isEmpty(const void* self);
bool QTranslator_virtualbase_event(void* self, QEvent* event);
bool QTranslator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTranslator_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTranslator_virtualbase_childEvent(void* self, QChildEvent* event);
void QTranslator_virtualbase_customEvent(void* self, QEvent* event);
void QTranslator_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTranslator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QTranslator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTranslator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTranslator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTranslator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTranslator_staticMetaObject();
void QTranslator_delete(QTranslator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
