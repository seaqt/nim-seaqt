#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSCROLLER_H
#define SEAQT_QTWIDGETS_GEN_QSCROLLER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QPointF;
class QRectF;
class QScroller;
class QScrollerProperties;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QScroller QScroller;
typedef struct QScrollerProperties QScrollerProperties;
#endif

void QScroller_virtbase(QScroller* src, QObject** outptr_QObject);
QMetaObject* QScroller_metaObject(const QScroller* self);
void* QScroller_metacast(QScroller* self, const char* param1);
int QScroller_metacall(QScroller* self, int param1, int param2, void** param3);
struct seaqt_string QScroller_tr_s(const char* s);
struct seaqt_string QScroller_trUtf8_s(const char* s);
bool QScroller_hasScroller(QObject* target);
QScroller* QScroller_scroller_pQObject(QObject* target);
QScroller* QScroller_scroller_pcQObject(QObject* target);
int QScroller_grabGesture_target(QObject* target);
int QScroller_grabbedGesture(QObject* target);
void QScroller_ungrabGesture(QObject* target);
struct seaqt_array /* of QScroller* */  QScroller_activeScrollers();
QObject* QScroller_target(const QScroller* self);
int QScroller_state(const QScroller* self);
bool QScroller_handleInput_input_position(QScroller* self, int input, QPointF* position);
void QScroller_stop(QScroller* self);
QPointF* QScroller_velocity(const QScroller* self);
QPointF* QScroller_finalPosition(const QScroller* self);
QPointF* QScroller_pixelPerMeter(const QScroller* self);
QScrollerProperties* QScroller_scrollerProperties(const QScroller* self);
void QScroller_setSnapPositionsX_positions(QScroller* self, struct seaqt_array /* of double */  positions);
void QScroller_setSnapPositionsX_first_interval(QScroller* self, double first, double interval);
void QScroller_setSnapPositionsY_positions(QScroller* self, struct seaqt_array /* of double */  positions);
void QScroller_setSnapPositionsY_first_interval(QScroller* self, double first, double interval);
void QScroller_setScrollerProperties(QScroller* self, QScrollerProperties* prop);
void QScroller_scrollTo_pos(QScroller* self, QPointF* pos);
void QScroller_scrollTo_pos_scrollTime(QScroller* self, QPointF* pos, int scrollTime);
void QScroller_ensureVisible_rect_xmargin_ymargin(QScroller* self, QRectF* rect, double xmargin, double ymargin);
void QScroller_ensureVisible_rect_xmargin_ymargin_scrollTime(QScroller* self, QRectF* rect, double xmargin, double ymargin, int scrollTime);
void QScroller_resendPrepareEvent(QScroller* self);
void QScroller_stateChanged(QScroller* self, int newstate);
void QScroller_connect_stateChanged(QScroller* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QScroller_scrollerPropertiesChanged(QScroller* self, QScrollerProperties* param1);
void QScroller_connect_scrollerPropertiesChanged(QScroller* self, intptr_t slot, void (*callback)(intptr_t, QScrollerProperties*), void (*release)(intptr_t));
struct seaqt_string QScroller_tr_s_c(const char* s, const char* c);
struct seaqt_string QScroller_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QScroller_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QScroller_trUtf8_s_c_n(const char* s, const char* c, int n);
int QScroller_grabGesture_target_gestureType(QObject* target, int gestureType);
bool QScroller_handleInput_input_position_timestamp(QScroller* self, int input, QPointF* position, long long timestamp);

const QMetaObject* QScroller_staticMetaObject();

#ifdef __cplusplus
} /* extern C */
#endif

#endif
