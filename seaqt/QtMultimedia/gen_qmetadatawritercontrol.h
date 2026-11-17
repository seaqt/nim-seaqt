#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMETADATAWRITERCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMETADATAWRITERCONTROL_H

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
class QMetaDataWriterControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMetaDataWriterControl QMetaDataWriterControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

void QMetaDataWriterControl_virtbase(QMetaDataWriterControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMetaDataWriterControl_metaObject(const QMetaDataWriterControl* self);
void* QMetaDataWriterControl_metacast(QMetaDataWriterControl* self, const char* param1);
int QMetaDataWriterControl_metacall(QMetaDataWriterControl* self, int param1, int param2, void** param3);
struct seaqt_string QMetaDataWriterControl_tr_s(const char* s);
struct seaqt_string QMetaDataWriterControl_trUtf8_s(const char* s);
bool QMetaDataWriterControl_isWritable(const QMetaDataWriterControl* self);
bool QMetaDataWriterControl_isMetaDataAvailable(const QMetaDataWriterControl* self);
QVariant* QMetaDataWriterControl_metaData(const QMetaDataWriterControl* self, struct seaqt_string key);
void QMetaDataWriterControl_setMetaData(QMetaDataWriterControl* self, struct seaqt_string key, QVariant* value);
struct seaqt_array /* of struct seaqt_string */  QMetaDataWriterControl_availableMetaData(const QMetaDataWriterControl* self);
void QMetaDataWriterControl_metaDataChanged(QMetaDataWriterControl* self);
void QMetaDataWriterControl_connect_metaDataChanged(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMetaDataWriterControl_metaDataChanged_key_value(QMetaDataWriterControl* self, struct seaqt_string key, QVariant* value);
void QMetaDataWriterControl_connect_metaDataChanged_key_value(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t));
void QMetaDataWriterControl_writableChanged(QMetaDataWriterControl* self, bool writable);
void QMetaDataWriterControl_connect_writableChanged(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMetaDataWriterControl_metaDataAvailableChanged(QMetaDataWriterControl* self, bool available);
void QMetaDataWriterControl_connect_metaDataAvailableChanged(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QMetaDataWriterControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMetaDataWriterControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMetaDataWriterControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMetaDataWriterControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QMetaDataWriterControl_delete(QMetaDataWriterControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
