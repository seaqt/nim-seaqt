#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFPAGENAVIGATOR_H
#define SEAQT_QTPDF_GEN_QPDFPAGENAVIGATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPdfLink;
class QPdfPageNavigator;
class QPointF;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPdfLink QPdfLink;
typedef struct QPdfPageNavigator QPdfPageNavigator;
typedef struct QPointF QPointF;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQPdfPageNavigator VirtualQPdfPageNavigator;
typedef struct QPdfPageNavigator_VTable{
	void (*destructor)(VirtualQPdfPageNavigator* self);
	QMetaObject* (*metaObject)(const VirtualQPdfPageNavigator* self);
	void* (*metacast)(VirtualQPdfPageNavigator* self, const char* param1);
	int (*metacall)(VirtualQPdfPageNavigator* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPdfPageNavigator* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfPageNavigator* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfPageNavigator* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfPageNavigator* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfPageNavigator* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfPageNavigator* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfPageNavigator* self, QMetaMethod* signal);
}QPdfPageNavigator_VTable;

void* QPdfPageNavigator_vdata(VirtualQPdfPageNavigator* self);
VirtualQPdfPageNavigator* vdata_QPdfPageNavigator(void* vdata);

VirtualQPdfPageNavigator* QPdfPageNavigator_new(const QPdfPageNavigator_VTable* vtbl, size_t vdata);
VirtualQPdfPageNavigator* QPdfPageNavigator_new_parent(const QPdfPageNavigator_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfPageNavigator_virtbase(QPdfPageNavigator* src, QObject** outptr_QObject);
QMetaObject* QPdfPageNavigator_metaObject(const QPdfPageNavigator* self);
void* QPdfPageNavigator_metacast(QPdfPageNavigator* self, const char* param1);
int QPdfPageNavigator_metacall(QPdfPageNavigator* self, int param1, int param2, void** param3);
struct seaqt_string QPdfPageNavigator_tr_s(const char* s);
int QPdfPageNavigator_currentPage(const QPdfPageNavigator* self);
QPointF* QPdfPageNavigator_currentLocation(const QPdfPageNavigator* self);
double QPdfPageNavigator_currentZoom(const QPdfPageNavigator* self);
bool QPdfPageNavigator_backAvailable(const QPdfPageNavigator* self);
bool QPdfPageNavigator_forwardAvailable(const QPdfPageNavigator* self);
void QPdfPageNavigator_clear(QPdfPageNavigator* self);
void QPdfPageNavigator_jump_destination(QPdfPageNavigator* self, QPdfLink* destination);
void QPdfPageNavigator_jump_page_location(QPdfPageNavigator* self, int page, QPointF* location);
void QPdfPageNavigator_update(QPdfPageNavigator* self, int page, QPointF* location, double zoom);
void QPdfPageNavigator_forward(QPdfPageNavigator* self);
void QPdfPageNavigator_back(QPdfPageNavigator* self);
void QPdfPageNavigator_currentPageChanged(QPdfPageNavigator* self, int page);
void QPdfPageNavigator_connect_currentPageChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QPdfPageNavigator_currentLocationChanged(QPdfPageNavigator* self, QPointF* location);
void QPdfPageNavigator_connect_currentLocationChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t));
void QPdfPageNavigator_currentZoomChanged(QPdfPageNavigator* self, double zoom);
void QPdfPageNavigator_connect_currentZoomChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QPdfPageNavigator_backAvailableChanged(QPdfPageNavigator* self, bool available);
void QPdfPageNavigator_connect_backAvailableChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QPdfPageNavigator_forwardAvailableChanged(QPdfPageNavigator* self, bool available);
void QPdfPageNavigator_connect_forwardAvailableChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QPdfPageNavigator_jumped(QPdfPageNavigator* self, QPdfLink* current);
void QPdfPageNavigator_connect_jumped(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, QPdfLink*), void (*release)(intptr_t));
struct seaqt_string QPdfPageNavigator_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfPageNavigator_tr_s_c_n(const char* s, const char* c, int n);
void QPdfPageNavigator_jump_page_location_zoom(QPdfPageNavigator* self, int page, QPointF* location, double zoom);

QMetaObject* QPdfPageNavigator_virtualbase_metaObject(const VirtualQPdfPageNavigator* self);
void* QPdfPageNavigator_virtualbase_metacast(VirtualQPdfPageNavigator* self, const char* param1);
int QPdfPageNavigator_virtualbase_metacall(VirtualQPdfPageNavigator* self, int param1, int param2, void** param3);
bool QPdfPageNavigator_virtualbase_event(VirtualQPdfPageNavigator* self, QEvent* event);
bool QPdfPageNavigator_virtualbase_eventFilter(VirtualQPdfPageNavigator* self, QObject* watched, QEvent* event);
void QPdfPageNavigator_virtualbase_timerEvent(VirtualQPdfPageNavigator* self, QTimerEvent* event);
void QPdfPageNavigator_virtualbase_childEvent(VirtualQPdfPageNavigator* self, QChildEvent* event);
void QPdfPageNavigator_virtualbase_customEvent(VirtualQPdfPageNavigator* self, QEvent* event);
void QPdfPageNavigator_virtualbase_connectNotify(VirtualQPdfPageNavigator* self, QMetaMethod* signal);
void QPdfPageNavigator_virtualbase_disconnectNotify(VirtualQPdfPageNavigator* self, QMetaMethod* signal);

QPdfLink* QPdfPageNavigator_protectedbase_currentLink(const VirtualQPdfPageNavigator* self);
QObject* QPdfPageNavigator_protectedbase_sender(const VirtualQPdfPageNavigator* self);
int QPdfPageNavigator_protectedbase_senderSignalIndex(const VirtualQPdfPageNavigator* self);
int QPdfPageNavigator_protectedbase_receivers(const VirtualQPdfPageNavigator* self, const char* signal);
bool QPdfPageNavigator_protectedbase_isSignalConnected(const VirtualQPdfPageNavigator* self, QMetaMethod* signal);

void QPdfPageNavigator_delete(QPdfPageNavigator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
