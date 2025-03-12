#pragma once
#ifndef SEAQT_QTGUI_GEN_QTEXTDOCUMENT_H
#define SEAQT_QTGUI_GEN_QTEXTDOCUMENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractTextDocumentLayout;
class QAbstractUndoItem;
class QChar;
class QChildEvent;
class QEvent;
class QFont;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPagedPaintDevice;
class QPainter;
class QRectF;
class QRegExp;
class QRegularExpression;
class QSizeF;
class QTextBlock;
class QTextCursor;
class QTextDocument;
class QTextFormat;
class QTextFrame;
class QTextObject;
class QTextOption;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QAbstractTextDocumentLayout QAbstractTextDocumentLayout;
typedef struct QAbstractUndoItem QAbstractUndoItem;
typedef struct QChar QChar;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPainter QPainter;
typedef struct QRectF QRectF;
typedef struct QRegExp QRegExp;
typedef struct QRegularExpression QRegularExpression;
typedef struct QSizeF QSizeF;
typedef struct QTextBlock QTextBlock;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrame QTextFrame;
typedef struct QTextObject QTextObject;
typedef struct QTextOption QTextOption;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

void QAbstractUndoItem_undo(QAbstractUndoItem* self);
void QAbstractUndoItem_redo(QAbstractUndoItem* self);
void QAbstractUndoItem_operatorAssign(QAbstractUndoItem* self, QAbstractUndoItem* param1);

void QAbstractUndoItem_delete(QAbstractUndoItem* self);

typedef struct VirtualQTextDocument VirtualQTextDocument;
typedef struct QTextDocument_VTable{
	void (*destructor)(VirtualQTextDocument* self);
	QMetaObject* (*metaObject)(const VirtualQTextDocument* self);
	void* (*metacast)(VirtualQTextDocument* self, const char* param1);
	int (*metacall)(VirtualQTextDocument* self, int param1, int param2, void** param3);
	void (*clear)(VirtualQTextDocument* self);
	QTextObject* (*createObject)(VirtualQTextDocument* self, QTextFormat* f);
	QVariant* (*loadResource)(VirtualQTextDocument* self, int type, QUrl* name);
	bool (*event)(VirtualQTextDocument* self, QEvent* event);
	bool (*eventFilter)(VirtualQTextDocument* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTextDocument* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTextDocument* self, QChildEvent* event);
	void (*customEvent)(VirtualQTextDocument* self, QEvent* event);
	void (*connectNotify)(VirtualQTextDocument* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTextDocument* self, QMetaMethod* signal);
}QTextDocument_VTable;

const QTextDocument_VTable* QTextDocument_vtbl(const VirtualQTextDocument* self);
void* QTextDocument_vdata(const VirtualQTextDocument* self);
void QTextDocument_setVdata(VirtualQTextDocument* self, void* vdata);

VirtualQTextDocument* QTextDocument_new(const QTextDocument_VTable* vtbl, void* vdata);
VirtualQTextDocument* QTextDocument_new2(const QTextDocument_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQTextDocument* QTextDocument_new3(const QTextDocument_VTable* vtbl, void* vdata, QObject* parent);
VirtualQTextDocument* QTextDocument_new4(const QTextDocument_VTable* vtbl, void* vdata, struct miqt_string text, QObject* parent);

void QTextDocument_virtbase(QTextDocument* src, QObject** outptr_QObject);
QMetaObject* QTextDocument_metaObject(const QTextDocument* self);
void* QTextDocument_metacast(QTextDocument* self, const char* param1);
int QTextDocument_metacall(QTextDocument* self, int param1, int param2, void** param3);
struct miqt_string QTextDocument_tr(const char* s);
struct miqt_string QTextDocument_trUtf8(const char* s);
QTextDocument* QTextDocument_clone(const QTextDocument* self);
bool QTextDocument_isEmpty(const QTextDocument* self);
void QTextDocument_clear(QTextDocument* self);
void QTextDocument_setUndoRedoEnabled(QTextDocument* self, bool enable);
bool QTextDocument_isUndoRedoEnabled(const QTextDocument* self);
bool QTextDocument_isUndoAvailable(const QTextDocument* self);
bool QTextDocument_isRedoAvailable(const QTextDocument* self);
int QTextDocument_availableUndoSteps(const QTextDocument* self);
int QTextDocument_availableRedoSteps(const QTextDocument* self);
int QTextDocument_revision(const QTextDocument* self);
void QTextDocument_setDocumentLayout(QTextDocument* self, QAbstractTextDocumentLayout* layout);
QAbstractTextDocumentLayout* QTextDocument_documentLayout(const QTextDocument* self);
void QTextDocument_setMetaInformation(QTextDocument* self, int info, struct miqt_string param2);
struct miqt_string QTextDocument_metaInformation(const QTextDocument* self, int info);
struct miqt_string QTextDocument_toHtml(const QTextDocument* self);
void QTextDocument_setHtml(QTextDocument* self, struct miqt_string html);
struct miqt_string QTextDocument_toMarkdown(const QTextDocument* self);
void QTextDocument_setMarkdown(QTextDocument* self, struct miqt_string markdown);
struct miqt_string QTextDocument_toRawText(const QTextDocument* self);
struct miqt_string QTextDocument_toPlainText(const QTextDocument* self);
void QTextDocument_setPlainText(QTextDocument* self, struct miqt_string text);
QChar* QTextDocument_characterAt(const QTextDocument* self, int pos);
QTextCursor* QTextDocument_find(const QTextDocument* self, struct miqt_string subString);
QTextCursor* QTextDocument_find2(const QTextDocument* self, struct miqt_string subString, QTextCursor* cursor);
QTextCursor* QTextDocument_findWithExpr(const QTextDocument* self, QRegExp* expr);
QTextCursor* QTextDocument_find3(const QTextDocument* self, QRegExp* expr, QTextCursor* cursor);
QTextCursor* QTextDocument_find4(const QTextDocument* self, QRegularExpression* expr);
QTextCursor* QTextDocument_find5(const QTextDocument* self, QRegularExpression* expr, QTextCursor* cursor);
QTextFrame* QTextDocument_frameAt(const QTextDocument* self, int pos);
QTextFrame* QTextDocument_rootFrame(const QTextDocument* self);
QTextObject* QTextDocument_object(const QTextDocument* self, int objectIndex);
QTextObject* QTextDocument_objectForFormat(const QTextDocument* self, QTextFormat* param1);
QTextBlock* QTextDocument_findBlock(const QTextDocument* self, int pos);
QTextBlock* QTextDocument_findBlockByNumber(const QTextDocument* self, int blockNumber);
QTextBlock* QTextDocument_findBlockByLineNumber(const QTextDocument* self, int blockNumber);
QTextBlock* QTextDocument_begin(const QTextDocument* self);
QTextBlock* QTextDocument_end(const QTextDocument* self);
QTextBlock* QTextDocument_firstBlock(const QTextDocument* self);
QTextBlock* QTextDocument_lastBlock(const QTextDocument* self);
void QTextDocument_setPageSize(QTextDocument* self, QSizeF* size);
QSizeF* QTextDocument_pageSize(const QTextDocument* self);
void QTextDocument_setDefaultFont(QTextDocument* self, QFont* font);
QFont* QTextDocument_defaultFont(const QTextDocument* self);
int QTextDocument_pageCount(const QTextDocument* self);
bool QTextDocument_isModified(const QTextDocument* self);
void QTextDocument_print(const QTextDocument* self, QPagedPaintDevice* printer);
QVariant* QTextDocument_resource(const QTextDocument* self, int type, QUrl* name);
void QTextDocument_addResource(QTextDocument* self, int type, QUrl* name, QVariant* resource);
struct miqt_array /* of QTextFormat* */  QTextDocument_allFormats(const QTextDocument* self);
void QTextDocument_markContentsDirty(QTextDocument* self, int from, int length);
void QTextDocument_setUseDesignMetrics(QTextDocument* self, bool b);
bool QTextDocument_useDesignMetrics(const QTextDocument* self);
void QTextDocument_drawContents(QTextDocument* self, QPainter* painter);
void QTextDocument_setTextWidth(QTextDocument* self, double width);
double QTextDocument_textWidth(const QTextDocument* self);
double QTextDocument_idealWidth(const QTextDocument* self);
double QTextDocument_indentWidth(const QTextDocument* self);
void QTextDocument_setIndentWidth(QTextDocument* self, double width);
double QTextDocument_documentMargin(const QTextDocument* self);
void QTextDocument_setDocumentMargin(QTextDocument* self, double margin);
void QTextDocument_adjustSize(QTextDocument* self);
QSizeF* QTextDocument_size(const QTextDocument* self);
int QTextDocument_blockCount(const QTextDocument* self);
int QTextDocument_lineCount(const QTextDocument* self);
int QTextDocument_characterCount(const QTextDocument* self);
void QTextDocument_setDefaultStyleSheet(QTextDocument* self, struct miqt_string sheet);
struct miqt_string QTextDocument_defaultStyleSheet(const QTextDocument* self);
void QTextDocument_undo(QTextDocument* self, QTextCursor* cursor);
void QTextDocument_redo(QTextDocument* self, QTextCursor* cursor);
void QTextDocument_clearUndoRedoStacks(QTextDocument* self);
int QTextDocument_maximumBlockCount(const QTextDocument* self);
void QTextDocument_setMaximumBlockCount(QTextDocument* self, int maximum);
QTextOption* QTextDocument_defaultTextOption(const QTextDocument* self);
void QTextDocument_setDefaultTextOption(QTextDocument* self, QTextOption* option);
QUrl* QTextDocument_baseUrl(const QTextDocument* self);
void QTextDocument_setBaseUrl(QTextDocument* self, QUrl* url);
int QTextDocument_defaultCursorMoveStyle(const QTextDocument* self);
void QTextDocument_setDefaultCursorMoveStyle(QTextDocument* self, int style);
void QTextDocument_contentsChange(QTextDocument* self, int from, int charsRemoved, int charsAdded);
void QTextDocument_connect_contentsChange(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t));
void QTextDocument_contentsChanged(QTextDocument* self);
void QTextDocument_connect_contentsChanged(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QTextDocument_undoAvailable(QTextDocument* self, bool param1);
void QTextDocument_connect_undoAvailable(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QTextDocument_redoAvailable(QTextDocument* self, bool param1);
void QTextDocument_connect_redoAvailable(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QTextDocument_undoCommandAdded(QTextDocument* self);
void QTextDocument_connect_undoCommandAdded(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QTextDocument_modificationChanged(QTextDocument* self, bool m);
void QTextDocument_connect_modificationChanged(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QTextDocument_cursorPositionChanged(QTextDocument* self, QTextCursor* cursor);
void QTextDocument_connect_cursorPositionChanged(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, QTextCursor*), void (*release)(intptr_t));
void QTextDocument_blockCountChanged(QTextDocument* self, int newBlockCount);
void QTextDocument_connect_blockCountChanged(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTextDocument_baseUrlChanged(QTextDocument* self, QUrl* url);
void QTextDocument_connect_baseUrlChanged(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QTextDocument_documentLayoutChanged(QTextDocument* self);
void QTextDocument_connect_documentLayoutChanged(VirtualQTextDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QTextDocument_undo2(QTextDocument* self);
void QTextDocument_redo2(QTextDocument* self);
void QTextDocument_appendUndoItem(QTextDocument* self, QAbstractUndoItem* param1);
void QTextDocument_setModified(QTextDocument* self);
QTextObject* QTextDocument_createObject(QTextDocument* self, QTextFormat* f);
QVariant* QTextDocument_loadResource(QTextDocument* self, int type, QUrl* name);
struct miqt_string QTextDocument_tr2(const char* s, const char* c);
struct miqt_string QTextDocument_tr3(const char* s, const char* c, int n);
struct miqt_string QTextDocument_trUtf82(const char* s, const char* c);
struct miqt_string QTextDocument_trUtf83(const char* s, const char* c, int n);
QTextDocument* QTextDocument_clone1(const QTextDocument* self, QObject* parent);
struct miqt_string QTextDocument_toHtml1(const QTextDocument* self, struct miqt_string encoding);
struct miqt_string QTextDocument_toMarkdown1(const QTextDocument* self, int features);
void QTextDocument_setMarkdown2(QTextDocument* self, struct miqt_string markdown, int features);
QTextCursor* QTextDocument_find22(const QTextDocument* self, struct miqt_string subString, int from);
QTextCursor* QTextDocument_find32(const QTextDocument* self, struct miqt_string subString, int from, int options);
QTextCursor* QTextDocument_find33(const QTextDocument* self, struct miqt_string subString, QTextCursor* cursor, int options);
QTextCursor* QTextDocument_find23(const QTextDocument* self, QRegExp* expr, int from);
QTextCursor* QTextDocument_find34(const QTextDocument* self, QRegExp* expr, int from, int options);
QTextCursor* QTextDocument_find35(const QTextDocument* self, QRegExp* expr, QTextCursor* cursor, int options);
QTextCursor* QTextDocument_find24(const QTextDocument* self, QRegularExpression* expr, int from);
QTextCursor* QTextDocument_find36(const QTextDocument* self, QRegularExpression* expr, int from, int options);
QTextCursor* QTextDocument_find37(const QTextDocument* self, QRegularExpression* expr, QTextCursor* cursor, int options);
void QTextDocument_drawContents2(QTextDocument* self, QPainter* painter, QRectF* rect);
void QTextDocument_clearUndoRedoStacks1(QTextDocument* self, int historyToClear);
void QTextDocument_setModified1(QTextDocument* self, bool m);

QMetaObject* QTextDocument_virtualbase_metaObject(const VirtualQTextDocument* self);
void* QTextDocument_virtualbase_metacast(VirtualQTextDocument* self, const char* param1);
int QTextDocument_virtualbase_metacall(VirtualQTextDocument* self, int param1, int param2, void** param3);
void QTextDocument_virtualbase_clear(VirtualQTextDocument* self);
QTextObject* QTextDocument_virtualbase_createObject(VirtualQTextDocument* self, QTextFormat* f);
QVariant* QTextDocument_virtualbase_loadResource(VirtualQTextDocument* self, int type, QUrl* name);
bool QTextDocument_virtualbase_event(VirtualQTextDocument* self, QEvent* event);
bool QTextDocument_virtualbase_eventFilter(VirtualQTextDocument* self, QObject* watched, QEvent* event);
void QTextDocument_virtualbase_timerEvent(VirtualQTextDocument* self, QTimerEvent* event);
void QTextDocument_virtualbase_childEvent(VirtualQTextDocument* self, QChildEvent* event);
void QTextDocument_virtualbase_customEvent(VirtualQTextDocument* self, QEvent* event);
void QTextDocument_virtualbase_connectNotify(VirtualQTextDocument* self, QMetaMethod* signal);
void QTextDocument_virtualbase_disconnectNotify(VirtualQTextDocument* self, QMetaMethod* signal);

QObject* QTextDocument_protectedbase_sender(const VirtualQTextDocument* self);
int QTextDocument_protectedbase_senderSignalIndex(const VirtualQTextDocument* self);
int QTextDocument_protectedbase_receivers(const VirtualQTextDocument* self, const char* signal);
bool QTextDocument_protectedbase_isSignalConnected(const VirtualQTextDocument* self, QMetaMethod* signal);

const QMetaObject* QTextDocument_staticMetaObject();
void QTextDocument_delete(QTextDocument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
