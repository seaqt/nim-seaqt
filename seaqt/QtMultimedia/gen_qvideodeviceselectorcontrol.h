#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QVIDEODEVICESELECTORCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QVIDEODEVICESELECTORCONTROL_H

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
class QVideoDeviceSelectorControl;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVideoDeviceSelectorControl QVideoDeviceSelectorControl;
#endif

void QVideoDeviceSelectorControl_virtbase(QVideoDeviceSelectorControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QVideoDeviceSelectorControl_metaObject(const QVideoDeviceSelectorControl* self);
void* QVideoDeviceSelectorControl_metacast(QVideoDeviceSelectorControl* self, const char* param1);
int QVideoDeviceSelectorControl_metacall(QVideoDeviceSelectorControl* self, int param1, int param2, void** param3);
struct seaqt_string QVideoDeviceSelectorControl_tr_s(const char* s);
struct seaqt_string QVideoDeviceSelectorControl_trUtf8_s(const char* s);
int QVideoDeviceSelectorControl_deviceCount(const QVideoDeviceSelectorControl* self);
struct seaqt_string QVideoDeviceSelectorControl_deviceName(const QVideoDeviceSelectorControl* self, int index);
struct seaqt_string QVideoDeviceSelectorControl_deviceDescription(const QVideoDeviceSelectorControl* self, int index);
int QVideoDeviceSelectorControl_defaultDevice(const QVideoDeviceSelectorControl* self);
int QVideoDeviceSelectorControl_selectedDevice(const QVideoDeviceSelectorControl* self);
void QVideoDeviceSelectorControl_setSelectedDevice(QVideoDeviceSelectorControl* self, int index);
void QVideoDeviceSelectorControl_selectedDeviceChanged_index(QVideoDeviceSelectorControl* self, int index);
void QVideoDeviceSelectorControl_connect_selectedDeviceChanged_index(QVideoDeviceSelectorControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QVideoDeviceSelectorControl_selectedDeviceChanged_name(QVideoDeviceSelectorControl* self, struct seaqt_string name);
void QVideoDeviceSelectorControl_connect_selectedDeviceChanged_name(QVideoDeviceSelectorControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QVideoDeviceSelectorControl_devicesChanged(QVideoDeviceSelectorControl* self);
void QVideoDeviceSelectorControl_connect_devicesChanged(QVideoDeviceSelectorControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QVideoDeviceSelectorControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QVideoDeviceSelectorControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QVideoDeviceSelectorControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QVideoDeviceSelectorControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QVideoDeviceSelectorControl_delete(QVideoDeviceSelectorControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
