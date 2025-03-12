#pragma once
#ifndef SEAQT_QTGUI_GEN_QSYNTAXHIGHLIGHTER_H
#define SEAQT_QTGUI_GEN_QSYNTAXHIGHLIGHTER_H

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
class QColor;
class QEvent;
class QFont;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSyntaxHighlighter;
class QTextBlock;
class QTextBlockUserData;
class QTextCharFormat;
class QTextDocument;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSyntaxHighlighter QSyntaxHighlighter;
typedef struct QTextBlock QTextBlock;
typedef struct QTextBlockUserData QTextBlockUserData;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextDocument QTextDocument;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSyntaxHighlighter VirtualQSyntaxHighlighter;
typedef struct QSyntaxHighlighter_VTable{
	void (*destructor)(VirtualQSyntaxHighlighter* self);
	QMetaObject* (*metaObject)(const VirtualQSyntaxHighlighter* self);
	void* (*metacast)(VirtualQSyntaxHighlighter* self, const char* param1);
	int (*metacall)(VirtualQSyntaxHighlighter* self, int param1, int param2, void** param3);
	void (*highlightBlock)(VirtualQSyntaxHighlighter* self, struct miqt_string text);
	bool (*event)(VirtualQSyntaxHighlighter* self, QEvent* event);
	bool (*eventFilter)(VirtualQSyntaxHighlighter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSyntaxHighlighter* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSyntaxHighlighter* self, QChildEvent* event);
	void (*customEvent)(VirtualQSyntaxHighlighter* self, QEvent* event);
	void (*connectNotify)(VirtualQSyntaxHighlighter* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSyntaxHighlighter* self, QMetaMethod* signal);
}QSyntaxHighlighter_VTable;

const QSyntaxHighlighter_VTable* QSyntaxHighlighter_vtbl(const VirtualQSyntaxHighlighter* self);
void* QSyntaxHighlighter_vdata(const VirtualQSyntaxHighlighter* self);
void QSyntaxHighlighter_setVdata(VirtualQSyntaxHighlighter* self, void* vdata);

VirtualQSyntaxHighlighter* QSyntaxHighlighter_new(const QSyntaxHighlighter_VTable* vtbl, void* vdata, QObject* parent);
VirtualQSyntaxHighlighter* QSyntaxHighlighter_new2(const QSyntaxHighlighter_VTable* vtbl, void* vdata, QTextDocument* parent);

void QSyntaxHighlighter_virtbase(QSyntaxHighlighter* src, QObject** outptr_QObject);
QMetaObject* QSyntaxHighlighter_metaObject(const QSyntaxHighlighter* self);
void* QSyntaxHighlighter_metacast(QSyntaxHighlighter* self, const char* param1);
int QSyntaxHighlighter_metacall(QSyntaxHighlighter* self, int param1, int param2, void** param3);
struct miqt_string QSyntaxHighlighter_tr(const char* s);
struct miqt_string QSyntaxHighlighter_trUtf8(const char* s);
void QSyntaxHighlighter_setDocument(QSyntaxHighlighter* self, QTextDocument* doc);
QTextDocument* QSyntaxHighlighter_document(const QSyntaxHighlighter* self);
void QSyntaxHighlighter_rehighlight(QSyntaxHighlighter* self);
void QSyntaxHighlighter_rehighlightBlock(QSyntaxHighlighter* self, QTextBlock* block);
void QSyntaxHighlighter_highlightBlock(QSyntaxHighlighter* self, struct miqt_string text);
struct miqt_string QSyntaxHighlighter_tr2(const char* s, const char* c);
struct miqt_string QSyntaxHighlighter_tr3(const char* s, const char* c, int n);
struct miqt_string QSyntaxHighlighter_trUtf82(const char* s, const char* c);
struct miqt_string QSyntaxHighlighter_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const VirtualQSyntaxHighlighter* self);
void* QSyntaxHighlighter_virtualbase_metacast(VirtualQSyntaxHighlighter* self, const char* param1);
int QSyntaxHighlighter_virtualbase_metacall(VirtualQSyntaxHighlighter* self, int param1, int param2, void** param3);
void QSyntaxHighlighter_virtualbase_highlightBlock(VirtualQSyntaxHighlighter* self, struct miqt_string text);
bool QSyntaxHighlighter_virtualbase_event(VirtualQSyntaxHighlighter* self, QEvent* event);
bool QSyntaxHighlighter_virtualbase_eventFilter(VirtualQSyntaxHighlighter* self, QObject* watched, QEvent* event);
void QSyntaxHighlighter_virtualbase_timerEvent(VirtualQSyntaxHighlighter* self, QTimerEvent* event);
void QSyntaxHighlighter_virtualbase_childEvent(VirtualQSyntaxHighlighter* self, QChildEvent* event);
void QSyntaxHighlighter_virtualbase_customEvent(VirtualQSyntaxHighlighter* self, QEvent* event);
void QSyntaxHighlighter_virtualbase_connectNotify(VirtualQSyntaxHighlighter* self, QMetaMethod* signal);
void QSyntaxHighlighter_virtualbase_disconnectNotify(VirtualQSyntaxHighlighter* self, QMetaMethod* signal);

void QSyntaxHighlighter_protectedbase_setFormat(VirtualQSyntaxHighlighter* self, int start, int count, QTextCharFormat* format);
void QSyntaxHighlighter_protectedbase_setFormat2(VirtualQSyntaxHighlighter* self, int start, int count, QColor* color);
void QSyntaxHighlighter_protectedbase_setFormat3(VirtualQSyntaxHighlighter* self, int start, int count, QFont* font);
QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const VirtualQSyntaxHighlighter* self, int pos);
int QSyntaxHighlighter_protectedbase_previousBlockState(const VirtualQSyntaxHighlighter* self);
int QSyntaxHighlighter_protectedbase_currentBlockState(const VirtualQSyntaxHighlighter* self);
void QSyntaxHighlighter_protectedbase_setCurrentBlockState(VirtualQSyntaxHighlighter* self, int newState);
void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(VirtualQSyntaxHighlighter* self, QTextBlockUserData* data);
QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const VirtualQSyntaxHighlighter* self);
QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const VirtualQSyntaxHighlighter* self);
QObject* QSyntaxHighlighter_protectedbase_sender(const VirtualQSyntaxHighlighter* self);
int QSyntaxHighlighter_protectedbase_senderSignalIndex(const VirtualQSyntaxHighlighter* self);
int QSyntaxHighlighter_protectedbase_receivers(const VirtualQSyntaxHighlighter* self, const char* signal);
bool QSyntaxHighlighter_protectedbase_isSignalConnected(const VirtualQSyntaxHighlighter* self, QMetaMethod* signal);

const QMetaObject* QSyntaxHighlighter_staticMetaObject();
void QSyntaxHighlighter_delete(QSyntaxHighlighter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
