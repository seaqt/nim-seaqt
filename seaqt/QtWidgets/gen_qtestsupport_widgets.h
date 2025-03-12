#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTESTSUPPORT_WIDGETS_H
#define SEAQT_QTWIDGETS_GEN_QTESTSUPPORT_WIDGETS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEventPoint;
class QPoint;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence)
typedef QTest::QTouchEventSequence QTest__QTouchEventSequence;
#else
class QTest__QTouchEventSequence;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventWidgetSequence)
typedef QTest::QTouchEventWidgetSequence QTest__QTouchEventWidgetSequence;
#else
class QTest__QTouchEventWidgetSequence;
#endif
class QWidget;
#else
typedef struct QEventPoint QEventPoint;
typedef struct QPoint QPoint;
typedef struct QTest__QTouchEventSequence QTest__QTouchEventSequence;
typedef struct QTest__QTouchEventWidgetSequence QTest__QTouchEventWidgetSequence;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQTestQTouchEventWidgetSequence VirtualQTestQTouchEventWidgetSequence;
typedef struct QTest__QTouchEventWidgetSequence_VTable{
	void (*destructor)(VirtualQTestQTouchEventWidgetSequence* self);
	QTest__QTouchEventWidgetSequence* (*stationary)(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
	bool (*commit)(VirtualQTestQTouchEventWidgetSequence* self, bool processEvents);
}QTest__QTouchEventWidgetSequence_VTable;

const QTest__QTouchEventWidgetSequence_VTable* QTest__QTouchEventWidgetSequence_vtbl(const VirtualQTestQTouchEventWidgetSequence* self);
void* QTest__QTouchEventWidgetSequence_vdata(const VirtualQTestQTouchEventWidgetSequence* self);
void QTest__QTouchEventWidgetSequence_setVdata(VirtualQTestQTouchEventWidgetSequence* self, void* vdata);

VirtualQTestQTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_new(const QTest__QTouchEventWidgetSequence_VTable* vtbl, void* vdata, QTest__QTouchEventWidgetSequence* param1);

void QTest__QTouchEventWidgetSequence_virtbase(QTest__QTouchEventWidgetSequence* src, QTest__QTouchEventSequence** outptr_QTest__QTouchEventSequence);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_stationary(QTest__QTouchEventWidgetSequence* self, int touchId);
bool QTest__QTouchEventWidgetSequence_commit(QTest__QTouchEventWidgetSequence* self, bool processEvents);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget);
QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget);

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
bool QTest__QTouchEventWidgetSequence_virtualbase_commit(VirtualQTestQTouchEventWidgetSequence* self, bool processEvents);

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(VirtualQTestQTouchEventWidgetSequence* self, int touchId);

void QTest__QTouchEventWidgetSequence_delete(QTest__QTouchEventWidgetSequence* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
