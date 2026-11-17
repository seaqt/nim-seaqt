#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAPTURABLEWINDOW_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAPTURABLEWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCapturableWindow;
class QMetaObject;
class QWindow;
#else
typedef struct QCapturableWindow QCapturableWindow;
typedef struct QMetaObject QMetaObject;
typedef struct QWindow QWindow;
#endif

QCapturableWindow* QCapturableWindow_new();
QCapturableWindow* QCapturableWindow_new_window(QWindow* window);
QCapturableWindow* QCapturableWindow_new_from(QCapturableWindow* from);

void QCapturableWindow_operatorAssign(QCapturableWindow* self, QCapturableWindow* from);
void QCapturableWindow_swap(QCapturableWindow* self, QCapturableWindow* other);
bool QCapturableWindow_isValid(const QCapturableWindow* self);
struct seaqt_string QCapturableWindow_description(const QCapturableWindow* self);

const QMetaObject* QCapturableWindow_staticMetaObject();
void QCapturableWindow_delete(QCapturableWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
