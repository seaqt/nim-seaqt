#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIAAUDIOPROBECONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIAAUDIOPROBECONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioBuffer;
class QMediaAudioProbeControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QMediaAudioProbeControl QMediaAudioProbeControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QMediaAudioProbeControl_virtbase(QMediaAudioProbeControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMediaAudioProbeControl_metaObject(const QMediaAudioProbeControl* self);
void* QMediaAudioProbeControl_metacast(QMediaAudioProbeControl* self, const char* param1);
int QMediaAudioProbeControl_metacall(QMediaAudioProbeControl* self, int param1, int param2, void** param3);
struct miqt_string QMediaAudioProbeControl_tr(const char* s);
struct miqt_string QMediaAudioProbeControl_trUtf8(const char* s);
void QMediaAudioProbeControl_audioBufferProbed(QMediaAudioProbeControl* self, QAudioBuffer* buffer);
void QMediaAudioProbeControl_connect_audioBufferProbed(QMediaAudioProbeControl* self, intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t));
void QMediaAudioProbeControl_flush(QMediaAudioProbeControl* self);
void QMediaAudioProbeControl_connect_flush(QMediaAudioProbeControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QMediaAudioProbeControl_tr2(const char* s, const char* c);
struct miqt_string QMediaAudioProbeControl_tr3(const char* s, const char* c, int n);
struct miqt_string QMediaAudioProbeControl_trUtf82(const char* s, const char* c);
struct miqt_string QMediaAudioProbeControl_trUtf83(const char* s, const char* c, int n);

const QMetaObject* QMediaAudioProbeControl_staticMetaObject();
void QMediaAudioProbeControl_delete(QMediaAudioProbeControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
