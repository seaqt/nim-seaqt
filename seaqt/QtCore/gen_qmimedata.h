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
typedef struct QMimeData QMimeData;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

struct QMimeData_VTable {
	void (*destructor)(struct QMimeData_VTable* vtbl, QMimeData* self);
	QMetaObject* (*metaObject)(struct QMimeData_VTable* vtbl, const QMimeData* self);
	void* (*metacast)(struct QMimeData_VTable* vtbl, QMimeData* self, const char* param1);
	int (*metacall)(struct QMimeData_VTable* vtbl, QMimeData* self, int param1, int param2, void** param3);
	bool (*hasFormat)(struct QMimeData_VTable* vtbl, const QMimeData* self, struct miqt_string mimetype);
	struct miqt_array /* of struct miqt_string */  (*formats)(struct QMimeData_VTable* vtbl, const QMimeData* self);
	QVariant* (*retrieveData)(struct QMimeData_VTable* vtbl, const QMimeData* self, struct miqt_string mimetype, int preferredType);
	bool (*event)(struct QMimeData_VTable* vtbl, QMimeData* self, QEvent* event);
	bool (*eventFilter)(struct QMimeData_VTable* vtbl, QMimeData* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QMimeData_VTable* vtbl, QMimeData* self, QTimerEvent* event);
	void (*childEvent)(struct QMimeData_VTable* vtbl, QMimeData* self, QChildEvent* event);
	void (*customEvent)(struct QMimeData_VTable* vtbl, QMimeData* self, QEvent* event);
	void (*connectNotify)(struct QMimeData_VTable* vtbl, QMimeData* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMimeData_VTable* vtbl, QMimeData* self, QMetaMethod* signal);
};
QMimeData* QMimeData_new(struct QMimeData_VTable* vtbl);
void QMimeData_virtbase(QMimeData* src, QObject** outptr_QObject);
QMetaObject* QMimeData_metaObject(const QMimeData* self);
void* QMimeData_metacast(QMimeData* self, const char* param1);
int QMimeData_metacall(QMimeData* self, int param1, int param2, void** param3);
struct miqt_string QMimeData_tr(const char* s);
struct miqt_string QMimeData_trUtf8(const char* s);
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
QVariant* QMimeData_retrieveData(const QMimeData* self, struct miqt_string mimetype, int preferredType);
struct miqt_string QMimeData_tr2(const char* s, const char* c);
struct miqt_string QMimeData_tr3(const char* s, const char* c, int n);
struct miqt_string QMimeData_trUtf82(const char* s, const char* c);
struct miqt_string QMimeData_trUtf83(const char* s, const char* c, int n);
QMetaObject* QMimeData_virtualbase_metaObject(const void* self);
void* QMimeData_virtualbase_metacast(void* self, const char* param1);
int QMimeData_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QMimeData_virtualbase_hasFormat(const void* self, struct miqt_string mimetype);
struct miqt_array /* of struct miqt_string */  QMimeData_virtualbase_formats(const void* self);
QVariant* QMimeData_virtualbase_retrieveData(const void* self, struct miqt_string mimetype, int preferredType);
bool QMimeData_virtualbase_event(void* self, QEvent* event);
bool QMimeData_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QMimeData_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QMimeData_virtualbase_childEvent(void* self, QChildEvent* event);
void QMimeData_virtualbase_customEvent(void* self, QEvent* event);
void QMimeData_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMimeData_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QMimeData_protectedbase_sender(const void* self);
int QMimeData_protectedbase_senderSignalIndex(const void* self);
int QMimeData_protectedbase_receivers(const void* self, const char* signal);
bool QMimeData_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QMimeData_staticMetaObject();
void QMimeData_delete(QMimeData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
