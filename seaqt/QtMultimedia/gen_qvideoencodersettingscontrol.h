#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QVIDEOENCODERSETTINGSCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QVIDEOENCODERSETTINGSCONTROL_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QSize;
class QVideoEncoderSettings;
class QVideoEncoderSettingsControl;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QVideoEncoderSettings QVideoEncoderSettings;
typedef struct QVideoEncoderSettingsControl QVideoEncoderSettingsControl;
#endif

void QVideoEncoderSettingsControl_virtbase(QVideoEncoderSettingsControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QVideoEncoderSettingsControl_metaObject(const QVideoEncoderSettingsControl* self);
void* QVideoEncoderSettingsControl_metacast(QVideoEncoderSettingsControl* self, const char* param1);
int QVideoEncoderSettingsControl_metacall(QVideoEncoderSettingsControl* self, int param1, int param2, void** param3);
struct seaqt_string QVideoEncoderSettingsControl_tr_s(const char* s);
struct seaqt_string QVideoEncoderSettingsControl_trUtf8_s(const char* s);
struct seaqt_array /* of QSize* */  QVideoEncoderSettingsControl_supportedResolutions(const QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings, bool* continuous);
struct seaqt_array /* of double */  QVideoEncoderSettingsControl_supportedFrameRates(const QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings, bool* continuous);
struct seaqt_array /* of struct seaqt_string */  QVideoEncoderSettingsControl_supportedVideoCodecs(const QVideoEncoderSettingsControl* self);
struct seaqt_string QVideoEncoderSettingsControl_videoCodecDescription(const QVideoEncoderSettingsControl* self, struct seaqt_string codec);
QVideoEncoderSettings* QVideoEncoderSettingsControl_videoSettings(const QVideoEncoderSettingsControl* self);
void QVideoEncoderSettingsControl_setVideoSettings(QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings);
struct seaqt_string QVideoEncoderSettingsControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QVideoEncoderSettingsControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QVideoEncoderSettingsControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QVideoEncoderSettingsControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QVideoEncoderSettingsControl_delete(QVideoEncoderSettingsControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
