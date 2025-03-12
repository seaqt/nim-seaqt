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

typedef struct VirtualQTextList VirtualQTextList;
typedef struct QTextList_VTable{
	void (*destructor)(VirtualQTextList* self);
	QMetaObject* (*metaObject)(const VirtualQTextList* self);
	void* (*metacast)(VirtualQTextList* self, const char* param1);
	int (*metacall)(VirtualQTextList* self, int param1, int param2, void** param3);
	void (*blockInserted)(VirtualQTextList* self, QTextBlock* block);
	void (*blockRemoved)(VirtualQTextList* self, QTextBlock* block);
	void (*blockFormatChanged)(VirtualQTextList* self, QTextBlock* block);
	bool (*event)(VirtualQTextList* self, QEvent* event);
	bool (*eventFilter)(VirtualQTextList* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTextList* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTextList* self, QChildEvent* event);
	void (*customEvent)(VirtualQTextList* self, QEvent* event);
	void (*connectNotify)(VirtualQTextList* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTextList* self, QMetaMethod* signal);
}QTextList_VTable;

const QTextList_VTable* QTextList_vtbl(const VirtualQTextList* self);
void* QTextList_vdata(const VirtualQTextList* self);
void QTextList_setVdata(VirtualQTextList* self, void* vdata);

VirtualQTextList* QTextList_new(const QTextList_VTable* vtbl, void* vdata, QTextDocument* doc);

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

QMetaObject* QTextList_virtualbase_metaObject(const VirtualQTextList* self);
void* QTextList_virtualbase_metacast(VirtualQTextList* self, const char* param1);
int QTextList_virtualbase_metacall(VirtualQTextList* self, int param1, int param2, void** param3);
void QTextList_virtualbase_blockInserted(VirtualQTextList* self, QTextBlock* block);
void QTextList_virtualbase_blockRemoved(VirtualQTextList* self, QTextBlock* block);
void QTextList_virtualbase_blockFormatChanged(VirtualQTextList* self, QTextBlock* block);
bool QTextList_virtualbase_event(VirtualQTextList* self, QEvent* event);
bool QTextList_virtualbase_eventFilter(VirtualQTextList* self, QObject* watched, QEvent* event);
void QTextList_virtualbase_timerEvent(VirtualQTextList* self, QTimerEvent* event);
void QTextList_virtualbase_childEvent(VirtualQTextList* self, QChildEvent* event);
void QTextList_virtualbase_customEvent(VirtualQTextList* self, QEvent* event);
void QTextList_virtualbase_connectNotify(VirtualQTextList* self, QMetaMethod* signal);
void QTextList_virtualbase_disconnectNotify(VirtualQTextList* self, QMetaMethod* signal);

struct miqt_array /* of QTextBlock* */  QTextList_protectedbase_blockList(const VirtualQTextList* self);
QObject* QTextList_protectedbase_sender(const VirtualQTextList* self);
int QTextList_protectedbase_senderSignalIndex(const VirtualQTextList* self);
int QTextList_protectedbase_receivers(const VirtualQTextList* self, const char* signal);
bool QTextList_protectedbase_isSignalConnected(const VirtualQTextList* self, QMetaMethod* signal);

const QMetaObject* QTextList_staticMetaObject();
void QTextList_delete(QTextList* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
