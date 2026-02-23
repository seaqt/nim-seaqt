#pragma once
#ifndef SEAQT_QTCORE_GEN_QTRANSLATOR_H
#define SEAQT_QTCORE_GEN_QTRANSLATOR_H

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
	struct seaqt_string (*translate)(const VirtualQTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
	bool (*isEmpty)(const VirtualQTranslator* self);
	bool (*event)(VirtualQTranslator* self, QEvent* event);
	bool (*eventFilter)(VirtualQTranslator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTranslator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTranslator* self, QChildEvent* event);
	void (*customEvent)(VirtualQTranslator* self, QEvent* event);
	void (*connectNotify)(VirtualQTranslator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTranslator* self, QMetaMethod* signal);
}QTranslator_VTable;

void* QTranslator_vdata(VirtualQTranslator* self);
VirtualQTranslator* vdata_QTranslator(void* vdata);

VirtualQTranslator* QTranslator_new(const QTranslator_VTable* vtbl, size_t vdata);
VirtualQTranslator* QTranslator_new_parent(const QTranslator_VTable* vtbl, size_t vdata, QObject* parent);

void QTranslator_virtbase(QTranslator* src, QObject** outptr_QObject);
QMetaObject* QTranslator_metaObject(const QTranslator* self);
void* QTranslator_metacast(QTranslator* self, const char* param1);
int QTranslator_metacall(QTranslator* self, int param1, int param2, void** param3);
struct seaqt_string QTranslator_tr_s(const char* s);
struct seaqt_string QTranslator_translate(const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
bool QTranslator_isEmpty(const QTranslator* self);
struct seaqt_string QTranslator_language(const QTranslator* self);
struct seaqt_string QTranslator_filePath(const QTranslator* self);
bool QTranslator_load_filename(QTranslator* self, struct seaqt_string filename);
bool QTranslator_load_locale_filename(QTranslator* self, QLocale* locale, struct seaqt_string filename);
bool QTranslator_load_data_len(QTranslator* self, const unsigned char* data, int len);
struct seaqt_string QTranslator_tr_s_c(const char* s, const char* c);
struct seaqt_string QTranslator_tr_s_c_n(const char* s, const char* c, int n);
bool QTranslator_load_filename_directory(QTranslator* self, struct seaqt_string filename, struct seaqt_string directory);
bool QTranslator_load_filename_directory_search_delimiters(QTranslator* self, struct seaqt_string filename, struct seaqt_string directory, struct seaqt_string search_delimiters);
bool QTranslator_load_filename_directory_search_delimiters_suffix(QTranslator* self, struct seaqt_string filename, struct seaqt_string directory, struct seaqt_string search_delimiters, struct seaqt_string suffix);
bool QTranslator_load_locale_filename_prefix(QTranslator* self, QLocale* locale, struct seaqt_string filename, struct seaqt_string prefix);
bool QTranslator_load_locale_filename_prefix_directory(QTranslator* self, QLocale* locale, struct seaqt_string filename, struct seaqt_string prefix, struct seaqt_string directory);
bool QTranslator_load_locale_filename_prefix_directory_suffix(QTranslator* self, QLocale* locale, struct seaqt_string filename, struct seaqt_string prefix, struct seaqt_string directory, struct seaqt_string suffix);
bool QTranslator_load_data_len_directory(QTranslator* self, const unsigned char* data, int len, struct seaqt_string directory);

QMetaObject* QTranslator_virtualbase_metaObject(const VirtualQTranslator* self);
void* QTranslator_virtualbase_metacast(VirtualQTranslator* self, const char* param1);
int QTranslator_virtualbase_metacall(VirtualQTranslator* self, int param1, int param2, void** param3);
struct seaqt_string QTranslator_virtualbase_translate(const VirtualQTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
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

void QTranslator_delete(QTranslator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
