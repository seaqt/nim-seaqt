#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIAVIDEOPROBECONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIAVIDEOPROBECONTROL_H

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
class QMediaVideoProbeControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVideoFrame;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMediaVideoProbeControl QMediaVideoProbeControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVideoFrame QVideoFrame;
#endif

void QMediaVideoProbeControl_virtbase(QMediaVideoProbeControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMediaVideoProbeControl_metaObject(const QMediaVideoProbeControl* self);
void* QMediaVideoProbeControl_metacast(QMediaVideoProbeControl* self, const char* param1);
int QMediaVideoProbeControl_metacall(QMediaVideoProbeControl* self, int param1, int param2, void** param3);
struct seaqt_string QMediaVideoProbeControl_tr_s(const char* s);
struct seaqt_string QMediaVideoProbeControl_trUtf8_s(const char* s);
void QMediaVideoProbeControl_videoFrameProbed(QMediaVideoProbeControl* self, QVideoFrame* frame);
void QMediaVideoProbeControl_connect_videoFrameProbed(QMediaVideoProbeControl* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t));
void QMediaVideoProbeControl_flush(QMediaVideoProbeControl* self);
void QMediaVideoProbeControl_connect_flush(QMediaVideoProbeControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QMediaVideoProbeControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaVideoProbeControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaVideoProbeControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaVideoProbeControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QMediaVideoProbeControl_delete(QMediaVideoProbeControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
