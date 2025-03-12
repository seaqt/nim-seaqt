#pragma once
#ifndef SEAQT_QTCORE_GEN_QMIMEDATA_H
#define SEAQT_QTCORE_GEN_QMIMEDATA_H

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
class QEvent;
class QMetaMethod;
class QMetaObject;
class QMetaType;
class QMimeData;
class QObject;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaType QMetaType;
typedef struct QMimeData QMimeData;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQMimeData VirtualQMimeData;
typedef struct QMimeData_VTable{
	void (*destructor)(VirtualQMimeData* self);
	QMetaObject* (*metaObject)(const VirtualQMimeData* self);
	void* (*metacast)(VirtualQMimeData* self, const char* param1);
	int (*metacall)(VirtualQMimeData* self, int param1, int param2, void** param3);
	bool (*hasFormat)(const VirtualQMimeData* self, struct miqt_string mimetype);
	struct miqt_array /* of struct miqt_string */  (*formats)(const VirtualQMimeData* self);
	QVariant* (*retrieveData)(const VirtualQMimeData* self, struct miqt_string mimetype, QMetaType* preferredType);
	bool (*event)(VirtualQMimeData* self, QEvent* event);
	bool (*eventFilter)(VirtualQMimeData* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMimeData* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMimeData* self, QChildEvent* event);
	void (*customEvent)(VirtualQMimeData* self, QEvent* event);
	void (*connectNotify)(VirtualQMimeData* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMimeData* self, QMetaMethod* signal);
}QMimeData_VTable;

const QMimeData_VTable* QMimeData_vtbl(const VirtualQMimeData* self);
void* QMimeData_vdata(const VirtualQMimeData* self);
void QMimeData_setVdata(VirtualQMimeData* self, void* vdata);

VirtualQMimeData* QMimeData_new(const QMimeData_VTable* vtbl, void* vdata);

void QMimeData_virtbase(QMimeData* src, QObject** outptr_QObject);
QMetaObject* QMimeData_metaObject(const QMimeData* self);
void* QMimeData_metacast(QMimeData* self, const char* param1);
int QMimeData_metacall(QMimeData* self, int param1, int param2, void** param3);
struct miqt_string QMimeData_tr(const char* s);
struct miqt_array /* of QUrl* */  QMimeData_urls(const QMimeData* self);
void QMimeData_setUrls(QMimeData* self, struct miqt_array /* of QUrl* */  urls);
bool QMimeData_hasUrls(const QMimeData* self);
struct miqt_string QMimeData_text(const QMimeData* self);
void QMimeData_setText(QMimeData* self, struct miqt_string text);
bool QMimeData_hasText(const QMimeData* self);
struct miqt_string QMimeData_html(const QMimeData* self);
void QMimeData_setHtml(QMimeData* self, struct miqt_string html);
bool QMimeData_hasHtml(const QMimeData* self);
QVariant* QMimeData_imageData(const QMimeData* self);
void QMimeData_setImageData(QMimeData* self, QVariant* image);
bool QMimeData_hasImage(const QMimeData* self);
QVariant* QMimeData_colorData(const QMimeData* self);
void QMimeData_setColorData(QMimeData* self, QVariant* color);
bool QMimeData_hasColor(const QMimeData* self);
struct miqt_string QMimeData_data(const QMimeData* self, struct miqt_string mimetype);
void QMimeData_setData(QMimeData* self, struct miqt_string mimetype, struct miqt_string data);
void QMimeData_removeFormat(QMimeData* self, struct miqt_string mimetype);
bool QMimeData_hasFormat(const QMimeData* self, struct miqt_string mimetype);
struct miqt_array /* of struct miqt_string */  QMimeData_formats(const QMimeData* self);
void QMimeData_clear(QMimeData* self);
QVariant* QMimeData_retrieveData(const QMimeData* self, struct miqt_string mimetype, QMetaType* preferredType);
struct miqt_string QMimeData_tr2(const char* s, const char* c);
struct miqt_string QMimeData_tr3(const char* s, const char* c, int n);

QMetaObject* QMimeData_virtualbase_metaObject(const VirtualQMimeData* self);
void* QMimeData_virtualbase_metacast(VirtualQMimeData* self, const char* param1);
int QMimeData_virtualbase_metacall(VirtualQMimeData* self, int param1, int param2, void** param3);
bool QMimeData_virtualbase_hasFormat(const VirtualQMimeData* self, struct miqt_string mimetype);
struct miqt_array /* of struct miqt_string */  QMimeData_virtualbase_formats(const VirtualQMimeData* self);
QVariant* QMimeData_virtualbase_retrieveData(const VirtualQMimeData* self, struct miqt_string mimetype, QMetaType* preferredType);
bool QMimeData_virtualbase_event(VirtualQMimeData* self, QEvent* event);
bool QMimeData_virtualbase_eventFilter(VirtualQMimeData* self, QObject* watched, QEvent* event);
void QMimeData_virtualbase_timerEvent(VirtualQMimeData* self, QTimerEvent* event);
void QMimeData_virtualbase_childEvent(VirtualQMimeData* self, QChildEvent* event);
void QMimeData_virtualbase_customEvent(VirtualQMimeData* self, QEvent* event);
void QMimeData_virtualbase_connectNotify(VirtualQMimeData* self, QMetaMethod* signal);
void QMimeData_virtualbase_disconnectNotify(VirtualQMimeData* self, QMetaMethod* signal);

QObject* QMimeData_protectedbase_sender(const VirtualQMimeData* self);
int QMimeData_protectedbase_senderSignalIndex(const VirtualQMimeData* self);
int QMimeData_protectedbase_receivers(const VirtualQMimeData* self, const char* signal);
bool QMimeData_protectedbase_isSignalConnected(const VirtualQMimeData* self, QMetaMethod* signal);

const QMetaObject* QMimeData_staticMetaObject();
void QMimeData_delete(QMimeData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
