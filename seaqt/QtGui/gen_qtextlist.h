#pragma once
#ifndef SEAQT_QTGUI_GEN_QTEXTLIST_H
#define SEAQT_QTGUI_GEN_QTEXTLIST_H

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
class QObject;
class QTextBlock;
class QTextBlockGroup;
class QTextDocument;
class QTextList;
class QTextListFormat;
class QTextObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTextBlock QTextBlock;
typedef struct QTextBlockGroup QTextBlockGroup;
typedef struct QTextDocument QTextDocument;
typedef struct QTextList QTextList;
typedef struct QTextListFormat QTextListFormat;
typedef struct QTextObject QTextObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QTextList_VTable {
	void (*destructor)(struct QTextList_VTable* vtbl, QTextList* self);
	QMetaObject* (*metaObject)(struct QTextList_VTable* vtbl, const QTextList* self);
	void* (*metacast)(struct QTextList_VTable* vtbl, QTextList* self, const char* param1);
	int (*metacall)(struct QTextList_VTable* vtbl, QTextList* self, int param1, int param2, void** param3);
	void (*blockInserted)(struct QTextList_VTable* vtbl, QTextList* self, QTextBlock* block);
	void (*blockRemoved)(struct QTextList_VTable* vtbl, QTextList* self, QTextBlock* block);
	void (*blockFormatChanged)(struct QTextList_VTable* vtbl, QTextList* self, QTextBlock* block);
	bool (*event)(struct QTextList_VTable* vtbl, QTextList* self, QEvent* event);
	bool (*eventFilter)(struct QTextList_VTable* vtbl, QTextList* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTextList_VTable* vtbl, QTextList* self, QTimerEvent* event);
	void (*childEvent)(struct QTextList_VTable* vtbl, QTextList* self, QChildEvent* event);
	void (*customEvent)(struct QTextList_VTable* vtbl, QTextList* self, QEvent* event);
	void (*connectNotify)(struct QTextList_VTable* vtbl, QTextList* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTextList_VTable* vtbl, QTextList* self, QMetaMethod* signal);
};
QTextList* QTextList_new(struct QTextList_VTable* vtbl, QTextDocument* doc);
void QTextList_virtbase(QTextList* src, QTextBlockGroup** outptr_QTextBlockGroup);
QMetaObject* QTextList_metaObject(const QTextList* self);
void* QTextList_metacast(QTextList* self, const char* param1);
int QTextList_metacall(QTextList* self, int param1, int param2, void** param3);
struct miqt_string QTextList_tr(const char* s);
int QTextList_count(const QTextList* self);
QTextBlock* QTextList_item(const QTextList* self, int i);
int QTextList_itemNumber(const QTextList* self, QTextBlock* param1);
struct miqt_string QTextList_itemText(const QTextList* self, QTextBlock* param1);
void QTextList_removeItem(QTextList* self, int i);
void QTextList_remove(QTextList* self, QTextBlock* param1);
void QTextList_add(QTextList* self, QTextBlock* block);
void QTextList_setFormat(QTextList* self, QTextListFormat* format);
QTextListFormat* QTextList_format(const QTextList* self);
struct miqt_string QTextList_tr2(const char* s, const char* c);
struct miqt_string QTextList_tr3(const char* s, const char* c, int n);
QMetaObject* QTextList_virtualbase_metaObject(const void* self);
void* QTextList_virtualbase_metacast(void* self, const char* param1);
int QTextList_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QTextList_virtualbase_blockInserted(void* self, QTextBlock* block);
void QTextList_virtualbase_blockRemoved(void* self, QTextBlock* block);
void QTextList_virtualbase_blockFormatChanged(void* self, QTextBlock* block);
bool QTextList_virtualbase_event(void* self, QEvent* event);
bool QTextList_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTextList_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTextList_virtualbase_childEvent(void* self, QChildEvent* event);
void QTextList_virtualbase_customEvent(void* self, QEvent* event);
void QTextList_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTextList_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of QTextBlock* */  QTextList_protectedbase_blockList(const void* self);
QObject* QTextList_protectedbase_sender(const void* self);
int QTextList_protectedbase_senderSignalIndex(const void* self);
int QTextList_protectedbase_receivers(const void* self, const char* signal);
bool QTextList_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTextList_staticMetaObject();
void QTextList_delete(QTextList* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
