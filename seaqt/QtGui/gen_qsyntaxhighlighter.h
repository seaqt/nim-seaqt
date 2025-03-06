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

struct QSyntaxHighlighter_VTable {
	void (*destructor)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self);
	QMetaObject* (*metaObject)(struct QSyntaxHighlighter_VTable* vtbl, const QSyntaxHighlighter* self);
	void* (*metacast)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, const char* param1);
	int (*metacall)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, int param1, int param2, void** param3);
	void (*highlightBlock)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, struct miqt_string text);
	bool (*event)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QEvent* event);
	bool (*eventFilter)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QTimerEvent* event);
	void (*childEvent)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QChildEvent* event);
	void (*customEvent)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QEvent* event);
	void (*connectNotify)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QMetaMethod* signal);
};
QSyntaxHighlighter* QSyntaxHighlighter_new(struct QSyntaxHighlighter_VTable* vtbl, QObject* parent);
QSyntaxHighlighter* QSyntaxHighlighter_new2(struct QSyntaxHighlighter_VTable* vtbl, QTextDocument* parent);
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
QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const void* self);
void* QSyntaxHighlighter_virtualbase_metacast(void* self, const char* param1);
int QSyntaxHighlighter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSyntaxHighlighter_virtualbase_highlightBlock(void* self, struct miqt_string text);
bool QSyntaxHighlighter_virtualbase_event(void* self, QEvent* event);
bool QSyntaxHighlighter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSyntaxHighlighter_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSyntaxHighlighter_virtualbase_childEvent(void* self, QChildEvent* event);
void QSyntaxHighlighter_virtualbase_customEvent(void* self, QEvent* event);
void QSyntaxHighlighter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSyntaxHighlighter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSyntaxHighlighter_protectedbase_setFormat(void* self, int start, int count, QTextCharFormat* format);
void QSyntaxHighlighter_protectedbase_setFormat2(void* self, int start, int count, QColor* color);
void QSyntaxHighlighter_protectedbase_setFormat3(void* self, int start, int count, QFont* font);
QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const void* self, int pos);
int QSyntaxHighlighter_protectedbase_previousBlockState(const void* self);
int QSyntaxHighlighter_protectedbase_currentBlockState(const void* self);
void QSyntaxHighlighter_protectedbase_setCurrentBlockState(void* self, int newState);
void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(void* self, QTextBlockUserData* data);
QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const void* self);
QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const void* self);
QObject* QSyntaxHighlighter_protectedbase_sender(const void* self);
int QSyntaxHighlighter_protectedbase_senderSignalIndex(const void* self);
int QSyntaxHighlighter_protectedbase_receivers(const void* self, const char* signal);
bool QSyntaxHighlighter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSyntaxHighlighter_staticMetaObject();
void QSyntaxHighlighter_delete(QSyntaxHighlighter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
