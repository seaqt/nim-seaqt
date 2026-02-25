#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOOUTPUTSELECTORCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOOUTPUTSELECTORCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioOutputSelectorControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QAudioOutputSelectorControl QAudioOutputSelectorControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QAudioOutputSelectorControl_virtbase(QAudioOutputSelectorControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QAudioOutputSelectorControl_metaObject(const QAudioOutputSelectorControl* self);
void* QAudioOutputSelectorControl_metacast(QAudioOutputSelectorControl* self, const char* param1);
int QAudioOutputSelectorControl_metacall(QAudioOutputSelectorControl* self, int param1, int param2, void** param3);
struct seaqt_string QAudioOutputSelectorControl_tr_s(const char* s);
struct seaqt_string QAudioOutputSelectorControl_trUtf8_s(const char* s);
struct seaqt_array /* of struct seaqt_string */  QAudioOutputSelectorControl_availableOutputs(const QAudioOutputSelectorControl* self);
struct seaqt_string QAudioOutputSelectorControl_outputDescription(const QAudioOutputSelectorControl* self, struct seaqt_string name);
struct seaqt_string QAudioOutputSelectorControl_defaultOutput(const QAudioOutputSelectorControl* self);
struct seaqt_string QAudioOutputSelectorControl_activeOutput(const QAudioOutputSelectorControl* self);
void QAudioOutputSelectorControl_setActiveOutput(QAudioOutputSelectorControl* self, struct seaqt_string name);
void QAudioOutputSelectorControl_activeOutputChanged(QAudioOutputSelectorControl* self, struct seaqt_string name);
void QAudioOutputSelectorControl_connect_activeOutputChanged(QAudioOutputSelectorControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QAudioOutputSelectorControl_availableOutputsChanged(QAudioOutputSelectorControl* self);
void QAudioOutputSelectorControl_connect_availableOutputsChanged(QAudioOutputSelectorControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QAudioOutputSelectorControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioOutputSelectorControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAudioOutputSelectorControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAudioOutputSelectorControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QAudioOutputSelectorControl_staticMetaObject();
void QAudioOutputSelectorControl_delete(QAudioOutputSelectorControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
