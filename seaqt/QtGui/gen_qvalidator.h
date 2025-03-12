#pragma once
#ifndef SEAQT_QTGUI_GEN_QVALIDATOR_H
#define SEAQT_QTGUI_GEN_QVALIDATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QDoubleValidator;
class QEvent;
class QIntValidator;
class QLocale;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRegularExpression;
class QRegularExpressionValidator;
class QTimerEvent;
class QValidator;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDoubleValidator QDoubleValidator;
typedef struct QEvent QEvent;
typedef struct QIntValidator QIntValidator;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRegularExpression QRegularExpression;
typedef struct QRegularExpressionValidator QRegularExpressionValidator;
typedef struct QTimerEvent QTimerEvent;
typedef struct QValidator QValidator;
#endif

typedef struct VirtualQValidator VirtualQValidator;
typedef struct QValidator_VTable{
	void (*destructor)(VirtualQValidator* self);
	QMetaObject* (*metaObject)(const VirtualQValidator* self);
	void* (*metacast)(VirtualQValidator* self, const char* param1);
	int (*metacall)(VirtualQValidator* self, int param1, int param2, void** param3);
	int (*validate)(const VirtualQValidator* self, struct miqt_string param1, int* param2);
	void (*fixup)(const VirtualQValidator* self, struct miqt_string param1);
	bool (*event)(VirtualQValidator* self, QEvent* event);
	bool (*eventFilter)(VirtualQValidator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQValidator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQValidator* self, QChildEvent* event);
	void (*customEvent)(VirtualQValidator* self, QEvent* event);
	void (*connectNotify)(VirtualQValidator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQValidator* self, QMetaMethod* signal);
}QValidator_VTable;

const QValidator_VTable* QValidator_vtbl(const VirtualQValidator* self);
void* QValidator_vdata(const VirtualQValidator* self);
void QValidator_setVdata(VirtualQValidator* self, void* vdata);

VirtualQValidator* QValidator_new(const QValidator_VTable* vtbl, void* vdata);
VirtualQValidator* QValidator_new2(const QValidator_VTable* vtbl, void* vdata, QObject* parent);

void QValidator_virtbase(QValidator* src, QObject** outptr_QObject);
QMetaObject* QValidator_metaObject(const QValidator* self);
void* QValidator_metacast(QValidator* self, const char* param1);
int QValidator_metacall(QValidator* self, int param1, int param2, void** param3);
struct miqt_string QValidator_tr(const char* s);
void QValidator_setLocale(QValidator* self, QLocale* locale);
QLocale* QValidator_locale(const QValidator* self);
int QValidator_validate(const QValidator* self, struct miqt_string param1, int* param2);
void QValidator_fixup(const QValidator* self, struct miqt_string param1);
void QValidator_changed(QValidator* self);
void QValidator_connect_changed(VirtualQValidator* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QValidator_tr2(const char* s, const char* c);
struct miqt_string QValidator_tr3(const char* s, const char* c, int n);

QMetaObject* QValidator_virtualbase_metaObject(const VirtualQValidator* self);
void* QValidator_virtualbase_metacast(VirtualQValidator* self, const char* param1);
int QValidator_virtualbase_metacall(VirtualQValidator* self, int param1, int param2, void** param3);
int QValidator_virtualbase_validate(const VirtualQValidator* self, struct miqt_string param1, int* param2);
void QValidator_virtualbase_fixup(const VirtualQValidator* self, struct miqt_string param1);
bool QValidator_virtualbase_event(VirtualQValidator* self, QEvent* event);
bool QValidator_virtualbase_eventFilter(VirtualQValidator* self, QObject* watched, QEvent* event);
void QValidator_virtualbase_timerEvent(VirtualQValidator* self, QTimerEvent* event);
void QValidator_virtualbase_childEvent(VirtualQValidator* self, QChildEvent* event);
void QValidator_virtualbase_customEvent(VirtualQValidator* self, QEvent* event);
void QValidator_virtualbase_connectNotify(VirtualQValidator* self, QMetaMethod* signal);
void QValidator_virtualbase_disconnectNotify(VirtualQValidator* self, QMetaMethod* signal);

QObject* QValidator_protectedbase_sender(const VirtualQValidator* self);
int QValidator_protectedbase_senderSignalIndex(const VirtualQValidator* self);
int QValidator_protectedbase_receivers(const VirtualQValidator* self, const char* signal);
bool QValidator_protectedbase_isSignalConnected(const VirtualQValidator* self, QMetaMethod* signal);

const QMetaObject* QValidator_staticMetaObject();
void QValidator_delete(QValidator* self);

typedef struct VirtualQIntValidator VirtualQIntValidator;
typedef struct QIntValidator_VTable{
	void (*destructor)(VirtualQIntValidator* self);
	QMetaObject* (*metaObject)(const VirtualQIntValidator* self);
	void* (*metacast)(VirtualQIntValidator* self, const char* param1);
	int (*metacall)(VirtualQIntValidator* self, int param1, int param2, void** param3);
	int (*validate)(const VirtualQIntValidator* self, struct miqt_string param1, int* param2);
	void (*fixup)(const VirtualQIntValidator* self, struct miqt_string input);
	bool (*event)(VirtualQIntValidator* self, QEvent* event);
	bool (*eventFilter)(VirtualQIntValidator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQIntValidator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQIntValidator* self, QChildEvent* event);
	void (*customEvent)(VirtualQIntValidator* self, QEvent* event);
	void (*connectNotify)(VirtualQIntValidator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQIntValidator* self, QMetaMethod* signal);
}QIntValidator_VTable;

const QIntValidator_VTable* QIntValidator_vtbl(const VirtualQIntValidator* self);
void* QIntValidator_vdata(const VirtualQIntValidator* self);
void QIntValidator_setVdata(VirtualQIntValidator* self, void* vdata);

VirtualQIntValidator* QIntValidator_new(const QIntValidator_VTable* vtbl, void* vdata);
VirtualQIntValidator* QIntValidator_new2(const QIntValidator_VTable* vtbl, void* vdata, int bottom, int top);
VirtualQIntValidator* QIntValidator_new3(const QIntValidator_VTable* vtbl, void* vdata, QObject* parent);
VirtualQIntValidator* QIntValidator_new4(const QIntValidator_VTable* vtbl, void* vdata, int bottom, int top, QObject* parent);

void QIntValidator_virtbase(QIntValidator* src, QValidator** outptr_QValidator);
QMetaObject* QIntValidator_metaObject(const QIntValidator* self);
void* QIntValidator_metacast(QIntValidator* self, const char* param1);
int QIntValidator_metacall(QIntValidator* self, int param1, int param2, void** param3);
struct miqt_string QIntValidator_tr(const char* s);
int QIntValidator_validate(const QIntValidator* self, struct miqt_string param1, int* param2);
void QIntValidator_fixup(const QIntValidator* self, struct miqt_string input);
void QIntValidator_setBottom(QIntValidator* self, int bottom);
void QIntValidator_setTop(QIntValidator* self, int top);
void QIntValidator_setRange(QIntValidator* self, int bottom, int top);
int QIntValidator_bottom(const QIntValidator* self);
int QIntValidator_top(const QIntValidator* self);
void QIntValidator_bottomChanged(QIntValidator* self, int bottom);
void QIntValidator_connect_bottomChanged(VirtualQIntValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QIntValidator_topChanged(QIntValidator* self, int top);
void QIntValidator_connect_topChanged(VirtualQIntValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QIntValidator_tr2(const char* s, const char* c);
struct miqt_string QIntValidator_tr3(const char* s, const char* c, int n);

QMetaObject* QIntValidator_virtualbase_metaObject(const VirtualQIntValidator* self);
void* QIntValidator_virtualbase_metacast(VirtualQIntValidator* self, const char* param1);
int QIntValidator_virtualbase_metacall(VirtualQIntValidator* self, int param1, int param2, void** param3);
int QIntValidator_virtualbase_validate(const VirtualQIntValidator* self, struct miqt_string param1, int* param2);
void QIntValidator_virtualbase_fixup(const VirtualQIntValidator* self, struct miqt_string input);
bool QIntValidator_virtualbase_event(VirtualQIntValidator* self, QEvent* event);
bool QIntValidator_virtualbase_eventFilter(VirtualQIntValidator* self, QObject* watched, QEvent* event);
void QIntValidator_virtualbase_timerEvent(VirtualQIntValidator* self, QTimerEvent* event);
void QIntValidator_virtualbase_childEvent(VirtualQIntValidator* self, QChildEvent* event);
void QIntValidator_virtualbase_customEvent(VirtualQIntValidator* self, QEvent* event);
void QIntValidator_virtualbase_connectNotify(VirtualQIntValidator* self, QMetaMethod* signal);
void QIntValidator_virtualbase_disconnectNotify(VirtualQIntValidator* self, QMetaMethod* signal);

QObject* QIntValidator_protectedbase_sender(const VirtualQIntValidator* self);
int QIntValidator_protectedbase_senderSignalIndex(const VirtualQIntValidator* self);
int QIntValidator_protectedbase_receivers(const VirtualQIntValidator* self, const char* signal);
bool QIntValidator_protectedbase_isSignalConnected(const VirtualQIntValidator* self, QMetaMethod* signal);

const QMetaObject* QIntValidator_staticMetaObject();
void QIntValidator_delete(QIntValidator* self);

typedef struct VirtualQDoubleValidator VirtualQDoubleValidator;
typedef struct QDoubleValidator_VTable{
	void (*destructor)(VirtualQDoubleValidator* self);
	QMetaObject* (*metaObject)(const VirtualQDoubleValidator* self);
	void* (*metacast)(VirtualQDoubleValidator* self, const char* param1);
	int (*metacall)(VirtualQDoubleValidator* self, int param1, int param2, void** param3);
	int (*validate)(const VirtualQDoubleValidator* self, struct miqt_string param1, int* param2);
	void (*fixup)(const VirtualQDoubleValidator* self, struct miqt_string input);
	bool (*event)(VirtualQDoubleValidator* self, QEvent* event);
	bool (*eventFilter)(VirtualQDoubleValidator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDoubleValidator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDoubleValidator* self, QChildEvent* event);
	void (*customEvent)(VirtualQDoubleValidator* self, QEvent* event);
	void (*connectNotify)(VirtualQDoubleValidator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDoubleValidator* self, QMetaMethod* signal);
}QDoubleValidator_VTable;

const QDoubleValidator_VTable* QDoubleValidator_vtbl(const VirtualQDoubleValidator* self);
void* QDoubleValidator_vdata(const VirtualQDoubleValidator* self);
void QDoubleValidator_setVdata(VirtualQDoubleValidator* self, void* vdata);

VirtualQDoubleValidator* QDoubleValidator_new(const QDoubleValidator_VTable* vtbl, void* vdata);
VirtualQDoubleValidator* QDoubleValidator_new2(const QDoubleValidator_VTable* vtbl, void* vdata, double bottom, double top, int decimals);
VirtualQDoubleValidator* QDoubleValidator_new3(const QDoubleValidator_VTable* vtbl, void* vdata, QObject* parent);
VirtualQDoubleValidator* QDoubleValidator_new4(const QDoubleValidator_VTable* vtbl, void* vdata, double bottom, double top, int decimals, QObject* parent);

void QDoubleValidator_virtbase(QDoubleValidator* src, QValidator** outptr_QValidator);
QMetaObject* QDoubleValidator_metaObject(const QDoubleValidator* self);
void* QDoubleValidator_metacast(QDoubleValidator* self, const char* param1);
int QDoubleValidator_metacall(QDoubleValidator* self, int param1, int param2, void** param3);
struct miqt_string QDoubleValidator_tr(const char* s);
int QDoubleValidator_validate(const QDoubleValidator* self, struct miqt_string param1, int* param2);
void QDoubleValidator_fixup(const QDoubleValidator* self, struct miqt_string input);
void QDoubleValidator_setRange(QDoubleValidator* self, double bottom, double top, int decimals);
void QDoubleValidator_setRange2(QDoubleValidator* self, double bottom, double top);
void QDoubleValidator_setBottom(QDoubleValidator* self, double bottom);
void QDoubleValidator_setTop(QDoubleValidator* self, double top);
void QDoubleValidator_setDecimals(QDoubleValidator* self, int decimals);
void QDoubleValidator_setNotation(QDoubleValidator* self, int notation);
double QDoubleValidator_bottom(const QDoubleValidator* self);
double QDoubleValidator_top(const QDoubleValidator* self);
int QDoubleValidator_decimals(const QDoubleValidator* self);
int QDoubleValidator_notation(const QDoubleValidator* self);
void QDoubleValidator_bottomChanged(QDoubleValidator* self, double bottom);
void QDoubleValidator_connect_bottomChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QDoubleValidator_topChanged(QDoubleValidator* self, double top);
void QDoubleValidator_connect_topChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QDoubleValidator_decimalsChanged(QDoubleValidator* self, int decimals);
void QDoubleValidator_connect_decimalsChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDoubleValidator_notationChanged(QDoubleValidator* self, int notation);
void QDoubleValidator_connect_notationChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QDoubleValidator_tr2(const char* s, const char* c);
struct miqt_string QDoubleValidator_tr3(const char* s, const char* c, int n);

QMetaObject* QDoubleValidator_virtualbase_metaObject(const VirtualQDoubleValidator* self);
void* QDoubleValidator_virtualbase_metacast(VirtualQDoubleValidator* self, const char* param1);
int QDoubleValidator_virtualbase_metacall(VirtualQDoubleValidator* self, int param1, int param2, void** param3);
int QDoubleValidator_virtualbase_validate(const VirtualQDoubleValidator* self, struct miqt_string param1, int* param2);
void QDoubleValidator_virtualbase_fixup(const VirtualQDoubleValidator* self, struct miqt_string input);
bool QDoubleValidator_virtualbase_event(VirtualQDoubleValidator* self, QEvent* event);
bool QDoubleValidator_virtualbase_eventFilter(VirtualQDoubleValidator* self, QObject* watched, QEvent* event);
void QDoubleValidator_virtualbase_timerEvent(VirtualQDoubleValidator* self, QTimerEvent* event);
void QDoubleValidator_virtualbase_childEvent(VirtualQDoubleValidator* self, QChildEvent* event);
void QDoubleValidator_virtualbase_customEvent(VirtualQDoubleValidator* self, QEvent* event);
void QDoubleValidator_virtualbase_connectNotify(VirtualQDoubleValidator* self, QMetaMethod* signal);
void QDoubleValidator_virtualbase_disconnectNotify(VirtualQDoubleValidator* self, QMetaMethod* signal);

QObject* QDoubleValidator_protectedbase_sender(const VirtualQDoubleValidator* self);
int QDoubleValidator_protectedbase_senderSignalIndex(const VirtualQDoubleValidator* self);
int QDoubleValidator_protectedbase_receivers(const VirtualQDoubleValidator* self, const char* signal);
bool QDoubleValidator_protectedbase_isSignalConnected(const VirtualQDoubleValidator* self, QMetaMethod* signal);

const QMetaObject* QDoubleValidator_staticMetaObject();
void QDoubleValidator_delete(QDoubleValidator* self);

typedef struct VirtualQRegularExpressionValidator VirtualQRegularExpressionValidator;
typedef struct QRegularExpressionValidator_VTable{
	void (*destructor)(VirtualQRegularExpressionValidator* self);
	QMetaObject* (*metaObject)(const VirtualQRegularExpressionValidator* self);
	void* (*metacast)(VirtualQRegularExpressionValidator* self, const char* param1);
	int (*metacall)(VirtualQRegularExpressionValidator* self, int param1, int param2, void** param3);
	int (*validate)(const VirtualQRegularExpressionValidator* self, struct miqt_string input, int* pos);
	void (*fixup)(const VirtualQRegularExpressionValidator* self, struct miqt_string param1);
	bool (*event)(VirtualQRegularExpressionValidator* self, QEvent* event);
	bool (*eventFilter)(VirtualQRegularExpressionValidator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRegularExpressionValidator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRegularExpressionValidator* self, QChildEvent* event);
	void (*customEvent)(VirtualQRegularExpressionValidator* self, QEvent* event);
	void (*connectNotify)(VirtualQRegularExpressionValidator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRegularExpressionValidator* self, QMetaMethod* signal);
}QRegularExpressionValidator_VTable;

const QRegularExpressionValidator_VTable* QRegularExpressionValidator_vtbl(const VirtualQRegularExpressionValidator* self);
void* QRegularExpressionValidator_vdata(const VirtualQRegularExpressionValidator* self);
void QRegularExpressionValidator_setVdata(VirtualQRegularExpressionValidator* self, void* vdata);

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new(const QRegularExpressionValidator_VTable* vtbl, void* vdata);
VirtualQRegularExpressionValidator* QRegularExpressionValidator_new2(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QRegularExpression* re);
VirtualQRegularExpressionValidator* QRegularExpressionValidator_new3(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QObject* parent);
VirtualQRegularExpressionValidator* QRegularExpressionValidator_new4(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QRegularExpression* re, QObject* parent);

void QRegularExpressionValidator_virtbase(QRegularExpressionValidator* src, QValidator** outptr_QValidator);
QMetaObject* QRegularExpressionValidator_metaObject(const QRegularExpressionValidator* self);
void* QRegularExpressionValidator_metacast(QRegularExpressionValidator* self, const char* param1);
int QRegularExpressionValidator_metacall(QRegularExpressionValidator* self, int param1, int param2, void** param3);
struct miqt_string QRegularExpressionValidator_tr(const char* s);
int QRegularExpressionValidator_validate(const QRegularExpressionValidator* self, struct miqt_string input, int* pos);
QRegularExpression* QRegularExpressionValidator_regularExpression(const QRegularExpressionValidator* self);
void QRegularExpressionValidator_setRegularExpression(QRegularExpressionValidator* self, QRegularExpression* re);
void QRegularExpressionValidator_regularExpressionChanged(QRegularExpressionValidator* self, QRegularExpression* re);
void QRegularExpressionValidator_connect_regularExpressionChanged(VirtualQRegularExpressionValidator* self, intptr_t slot, void (*callback)(intptr_t, QRegularExpression*), void (*release)(intptr_t));
struct miqt_string QRegularExpressionValidator_tr2(const char* s, const char* c);
struct miqt_string QRegularExpressionValidator_tr3(const char* s, const char* c, int n);

QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const VirtualQRegularExpressionValidator* self);
void* QRegularExpressionValidator_virtualbase_metacast(VirtualQRegularExpressionValidator* self, const char* param1);
int QRegularExpressionValidator_virtualbase_metacall(VirtualQRegularExpressionValidator* self, int param1, int param2, void** param3);
int QRegularExpressionValidator_virtualbase_validate(const VirtualQRegularExpressionValidator* self, struct miqt_string input, int* pos);
void QRegularExpressionValidator_virtualbase_fixup(const VirtualQRegularExpressionValidator* self, struct miqt_string param1);
bool QRegularExpressionValidator_virtualbase_event(VirtualQRegularExpressionValidator* self, QEvent* event);
bool QRegularExpressionValidator_virtualbase_eventFilter(VirtualQRegularExpressionValidator* self, QObject* watched, QEvent* event);
void QRegularExpressionValidator_virtualbase_timerEvent(VirtualQRegularExpressionValidator* self, QTimerEvent* event);
void QRegularExpressionValidator_virtualbase_childEvent(VirtualQRegularExpressionValidator* self, QChildEvent* event);
void QRegularExpressionValidator_virtualbase_customEvent(VirtualQRegularExpressionValidator* self, QEvent* event);
void QRegularExpressionValidator_virtualbase_connectNotify(VirtualQRegularExpressionValidator* self, QMetaMethod* signal);
void QRegularExpressionValidator_virtualbase_disconnectNotify(VirtualQRegularExpressionValidator* self, QMetaMethod* signal);

QObject* QRegularExpressionValidator_protectedbase_sender(const VirtualQRegularExpressionValidator* self);
int QRegularExpressionValidator_protectedbase_senderSignalIndex(const VirtualQRegularExpressionValidator* self);
int QRegularExpressionValidator_protectedbase_receivers(const VirtualQRegularExpressionValidator* self, const char* signal);
bool QRegularExpressionValidator_protectedbase_isSignalConnected(const VirtualQRegularExpressionValidator* self, QMetaMethod* signal);

const QMetaObject* QRegularExpressionValidator_staticMetaObject();
void QRegularExpressionValidator_delete(QRegularExpressionValidator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
