#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAINTDEVICEWINDOW_H
#define SEAQT_QTGUI_GEN_QPAINTDEVICEWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QExposeEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPaintDevice;
class QPaintDeviceWindow;
class QPaintEvent;
class QRect;
class QRegion;
class QSurface;
class QWindow;
#else
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintDeviceWindow QPaintDeviceWindow;
typedef struct QPaintEvent QPaintEvent;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QSurface QSurface;
typedef struct QWindow QWindow;
#endif

void QPaintDeviceWindow_virtbase(QPaintDeviceWindow* src, QWindow** outptr_QWindow, QPaintDevice** outptr_QPaintDevice);
QMetaObject* QPaintDeviceWindow_metaObject(const QPaintDeviceWindow* self);
void* QPaintDeviceWindow_metacast(QPaintDeviceWindow* self, const char* param1);
int QPaintDeviceWindow_metacall(QPaintDeviceWindow* self, int param1, int param2, void** param3);
struct miqt_string QPaintDeviceWindow_tr(const char* s);
void QPaintDeviceWindow_update(QPaintDeviceWindow* self, QRect* rect);
void QPaintDeviceWindow_updateWithRegion(QPaintDeviceWindow* self, QRegion* region);
void QPaintDeviceWindow_update2(QPaintDeviceWindow* self);
void QPaintDeviceWindow_exposeEvent(QPaintDeviceWindow* self, QExposeEvent* param1);
void QPaintDeviceWindow_paintEvent(QPaintDeviceWindow* self, QPaintEvent* event);
int QPaintDeviceWindow_metric(const QPaintDeviceWindow* self, int metric);
bool QPaintDeviceWindow_event(QPaintDeviceWindow* self, QEvent* event);
struct miqt_string QPaintDeviceWindow_tr2(const char* s, const char* c);
struct miqt_string QPaintDeviceWindow_tr3(const char* s, const char* c, int n);

const QMetaObject* QPaintDeviceWindow_staticMetaObject();
void QPaintDeviceWindow_delete(QPaintDeviceWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
