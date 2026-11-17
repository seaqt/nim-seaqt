#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMETADATAREADERCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMETADATAREADERCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaControl;
class QMetaDataReaderControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMetaDataReaderControl QMetaDataReaderControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

void QMetaDataReaderControl_virtbase(QMetaDataReaderControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMetaDataReaderControl_metaObject(const QMetaDataReaderControl* self);
void* QMetaDataReaderControl_metacast(QMetaDataReaderControl* self, const char* param1);
int QMetaDataReaderControl_metacall(QMetaDataReaderControl* self, int param1, int param2, void** param3);
struct seaqt_string QMetaDataReaderControl_tr_s(const char* s);
struct seaqt_string QMetaDataReaderControl_trUtf8_s(const char* s);
bool QMetaDataReaderControl_isMetaDataAvailable(const QMetaDataReaderControl* self);
QVariant* QMetaDataReaderControl_metaData(const QMetaDataReaderControl* self, struct seaqt_string key);
struct seaqt_array /* of struct seaqt_string */  QMetaDataReaderControl_availableMetaData(const QMetaDataReaderControl* self);
void QMetaDataReaderControl_metaDataChanged(QMetaDataReaderControl* self);
void QMetaDataReaderControl_connect_metaDataChanged(QMetaDataReaderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMetaDataReaderControl_metaDataChanged_key_value(QMetaDataReaderControl* self, struct seaqt_string key, QVariant* value);
void QMetaDataReaderControl_connect_metaDataChanged_key_value(QMetaDataReaderControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t));
void QMetaDataReaderControl_metaDataAvailableChanged(QMetaDataReaderControl* self, bool available);
void QMetaDataReaderControl_connect_metaDataAvailableChanged(QMetaDataReaderControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QMetaDataReaderControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMetaDataReaderControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMetaDataReaderControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMetaDataReaderControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QMetaDataReaderControl_delete(QMetaDataReaderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
