#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINECLIENTHINTS_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINECLIENTHINTS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
class QWebEngineClientHints;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
typedef struct QWebEngineClientHints QWebEngineClientHints;
#endif

void QWebEngineClientHints_virtbase(QWebEngineClientHints* src, QObject** outptr_QObject);
QMetaObject* QWebEngineClientHints_metaObject(const QWebEngineClientHints* self);
void* QWebEngineClientHints_metacast(QWebEngineClientHints* self, const char* param1);
int QWebEngineClientHints_metacall(QWebEngineClientHints* self, int param1, int param2, void** param3);
struct seaqt_string QWebEngineClientHints_tr_s(const char* s);
struct seaqt_string QWebEngineClientHints_arch(const QWebEngineClientHints* self);
struct seaqt_string QWebEngineClientHints_platform(const QWebEngineClientHints* self);
struct seaqt_string QWebEngineClientHints_model(const QWebEngineClientHints* self);
bool QWebEngineClientHints_isMobile(const QWebEngineClientHints* self);
struct seaqt_string QWebEngineClientHints_fullVersion(const QWebEngineClientHints* self);
struct seaqt_string QWebEngineClientHints_platformVersion(const QWebEngineClientHints* self);
struct seaqt_string QWebEngineClientHints_bitness(const QWebEngineClientHints* self);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QWebEngineClientHints_fullVersionList(const QWebEngineClientHints* self);
bool QWebEngineClientHints_isWow64(const QWebEngineClientHints* self);
struct seaqt_array /* of struct seaqt_string */  QWebEngineClientHints_formFactors(const QWebEngineClientHints* self);
void QWebEngineClientHints_setArch(QWebEngineClientHints* self, struct seaqt_string arch);
void QWebEngineClientHints_setPlatform(QWebEngineClientHints* self, struct seaqt_string platform);
void QWebEngineClientHints_setModel(QWebEngineClientHints* self, struct seaqt_string model);
void QWebEngineClientHints_setIsMobile(QWebEngineClientHints* self, bool isMobile);
void QWebEngineClientHints_setFullVersion(QWebEngineClientHints* self, struct seaqt_string fullVersion);
void QWebEngineClientHints_setPlatformVersion(QWebEngineClientHints* self, struct seaqt_string platformVersion);
void QWebEngineClientHints_setBitness(QWebEngineClientHints* self, struct seaqt_string bitness);
void QWebEngineClientHints_setFullVersionList(QWebEngineClientHints* self, struct seaqt_map /* of struct seaqt_string to QVariant* */  fullVersionList);
void QWebEngineClientHints_setIsWow64(QWebEngineClientHints* self, bool isWow64);
void QWebEngineClientHints_setFormFactors(QWebEngineClientHints* self, struct seaqt_array /* of struct seaqt_string */  formFactors);
bool QWebEngineClientHints_isAllClientHintsEnabled(QWebEngineClientHints* self);
void QWebEngineClientHints_setAllClientHintsEnabled(QWebEngineClientHints* self, bool enabled);
void QWebEngineClientHints_resetAll(QWebEngineClientHints* self);
struct seaqt_string QWebEngineClientHints_tr_s_c(const char* s, const char* c);
struct seaqt_string QWebEngineClientHints_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QWebEngineClientHints_staticMetaObject();
void QWebEngineClientHints_delete(QWebEngineClientHints* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
