#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGESTURERECOGNIZER_H
#define SEAQT_QTWIDGETS_GEN_QGESTURERECOGNIZER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQGestureRecognizer VirtualQGestureRecognizer;
typedef struct QGestureRecognizer_VTable{
	void (*destructor)(VirtualQGestureRecognizer* self);
	QGesture* (*create)(VirtualQGestureRecognizer* self, QObject* target);
	int (*recognize)(VirtualQGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
	void (*reset)(VirtualQGestureRecognizer* self, QGesture* state);
}QGestureRecognizer_VTable;

void* QGestureRecognizer_vdata(VirtualQGestureRecognizer* self);
VirtualQGestureRecognizer* vdata_QGestureRecognizer(void* vdata);

VirtualQGestureRecognizer* QGestureRecognizer_new(const QGestureRecognizer_VTable* vtbl, size_t vdata);

QGesture* QGestureRecognizer_create(QGestureRecognizer* self, QObject* target);
int QGestureRecognizer_recognize(QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
void QGestureRecognizer_reset(QGestureRecognizer* self, QGesture* state);
int QGestureRecognizer_registerRecognizer(QGestureRecognizer* recognizer);
void QGestureRecognizer_unregisterRecognizer(int type);
void QGestureRecognizer_operatorAssign(QGestureRecognizer* self, QGestureRecognizer* from);

QGesture* QGestureRecognizer_virtualbase_create(VirtualQGestureRecognizer* self, QObject* target);
int QGestureRecognizer_virtualbase_recognize(VirtualQGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
void QGestureRecognizer_virtualbase_reset(VirtualQGestureRecognizer* self, QGesture* state);

void QGestureRecognizer_delete(QGestureRecognizer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
