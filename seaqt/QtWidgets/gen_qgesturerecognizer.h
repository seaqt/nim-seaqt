#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGESTURERECOGNIZER_H
#define SEAQT_QTWIDGETS_GEN_QGESTURERECOGNIZER_H

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
class QGesture;
class QGestureRecognizer;
class QObject;
#else
typedef struct QEvent QEvent;
typedef struct QGesture QGesture;
typedef struct QGestureRecognizer QGestureRecognizer;
typedef struct QObject QObject;
#endif

struct QGestureRecognizer_VTable {
	void (*destructor)(struct QGestureRecognizer_VTable* vtbl, QGestureRecognizer* self);
	QGesture* (*create)(struct QGestureRecognizer_VTable* vtbl, QGestureRecognizer* self, QObject* target);
	int (*recognize)(struct QGestureRecognizer_VTable* vtbl, QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
	void (*reset)(struct QGestureRecognizer_VTable* vtbl, QGestureRecognizer* self, QGesture* state);
};
QGestureRecognizer* QGestureRecognizer_new(struct QGestureRecognizer_VTable* vtbl);
QGesture* QGestureRecognizer_create(QGestureRecognizer* self, QObject* target);
int QGestureRecognizer_recognize(QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
void QGestureRecognizer_reset(QGestureRecognizer* self, QGesture* state);
int QGestureRecognizer_registerRecognizer(QGestureRecognizer* recognizer);
void QGestureRecognizer_unregisterRecognizer(int type);
void QGestureRecognizer_operatorAssign(QGestureRecognizer* self, QGestureRecognizer* param1);
QGesture* QGestureRecognizer_virtualbase_create(void* self, QObject* target);
int QGestureRecognizer_virtualbase_recognize(void* self, QGesture* state, QObject* watched, QEvent* event);
void QGestureRecognizer_virtualbase_reset(void* self, QGesture* state);
void QGestureRecognizer_delete(QGestureRecognizer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
