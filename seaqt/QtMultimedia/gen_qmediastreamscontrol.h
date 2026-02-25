#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIASTREAMSCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIASTREAMSCONTROL_H

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
class QMediaStreamsControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMediaStreamsControl QMediaStreamsControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

void QMediaStreamsControl_virtbase(QMediaStreamsControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMediaStreamsControl_metaObject(const QMediaStreamsControl* self);
void* QMediaStreamsControl_metacast(QMediaStreamsControl* self, const char* param1);
int QMediaStreamsControl_metacall(QMediaStreamsControl* self, int param1, int param2, void** param3);
struct seaqt_string QMediaStreamsControl_tr_s(const char* s);
struct seaqt_string QMediaStreamsControl_trUtf8_s(const char* s);
int QMediaStreamsControl_streamCount(QMediaStreamsControl* self);
int QMediaStreamsControl_streamType(QMediaStreamsControl* self, int streamNumber);
QVariant* QMediaStreamsControl_metaData(QMediaStreamsControl* self, int streamNumber, struct seaqt_string key);
bool QMediaStreamsControl_isActive(QMediaStreamsControl* self, int streamNumber);
void QMediaStreamsControl_setActive(QMediaStreamsControl* self, int streamNumber, bool state);
void QMediaStreamsControl_streamsChanged(QMediaStreamsControl* self);
void QMediaStreamsControl_connect_streamsChanged(QMediaStreamsControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaStreamsControl_activeStreamsChanged(QMediaStreamsControl* self);
void QMediaStreamsControl_connect_activeStreamsChanged(QMediaStreamsControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QMediaStreamsControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaStreamsControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaStreamsControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaStreamsControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QMediaStreamsControl_staticMetaObject();
void QMediaStreamsControl_delete(QMediaStreamsControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
