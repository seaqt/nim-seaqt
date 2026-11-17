#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOENCODERSETTINGSCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOENCODERSETTINGSCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioEncoderSettings;
class QAudioEncoderSettingsControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QAudioEncoderSettings QAudioEncoderSettings;
typedef struct QAudioEncoderSettingsControl QAudioEncoderSettingsControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QAudioEncoderSettingsControl_virtbase(QAudioEncoderSettingsControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QAudioEncoderSettingsControl_metaObject(const QAudioEncoderSettingsControl* self);
void* QAudioEncoderSettingsControl_metacast(QAudioEncoderSettingsControl* self, const char* param1);
int QAudioEncoderSettingsControl_metacall(QAudioEncoderSettingsControl* self, int param1, int param2, void** param3);
struct seaqt_string QAudioEncoderSettingsControl_tr_s(const char* s);
struct seaqt_string QAudioEncoderSettingsControl_trUtf8_s(const char* s);
struct seaqt_array /* of struct seaqt_string */  QAudioEncoderSettingsControl_supportedAudioCodecs(const QAudioEncoderSettingsControl* self);
struct seaqt_string QAudioEncoderSettingsControl_codecDescription(const QAudioEncoderSettingsControl* self, struct seaqt_string codecName);
struct seaqt_array /* of int */  QAudioEncoderSettingsControl_supportedSampleRates(const QAudioEncoderSettingsControl* self, QAudioEncoderSettings* settings, bool* continuous);
QAudioEncoderSettings* QAudioEncoderSettingsControl_audioSettings(const QAudioEncoderSettingsControl* self);
void QAudioEncoderSettingsControl_setAudioSettings(QAudioEncoderSettingsControl* self, QAudioEncoderSettings* settings);
struct seaqt_string QAudioEncoderSettingsControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioEncoderSettingsControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAudioEncoderSettingsControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAudioEncoderSettingsControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QAudioEncoderSettingsControl_staticMetaObject();
void QAudioEncoderSettingsControl_delete(QAudioEncoderSettingsControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
