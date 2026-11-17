#pragma once
#ifndef SEAQT_QTGUI_GEN_QABSTRACTTEXTDOCUMENTLAYOUT_H
#define SEAQT_QTGUI_GEN_QABSTRACTTEXTDOCUMENTLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractTextDocumentLayout;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAbstractTextDocumentLayout__PaintContext)
typedef QAbstractTextDocumentLayout::PaintContext QAbstractTextDocumentLayout__PaintContext;
#else
class QAbstractTextDocumentLayout__PaintContext;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAbstractTextDocumentLayout__Selection)
typedef QAbstractTextDocumentLayout::Selection QAbstractTextDocumentLayout__Selection;
#else
class QAbstractTextDocumentLayout__Selection;
#endif
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPaintDevice;
class QPainter;
class QPalette;
class QPointF;
class QRectF;
class QSizeF;
class QTextBlock;
class QTextCharFormat;
class QTextCursor;
class QTextDocument;
class QTextFormat;
class QTextFrame;
class QTextInlineObject;
class QTextObjectInterface;
class QTimerEvent;
#else
typedef struct QAbstractTextDocumentLayout QAbstractTextDocumentLayout;
typedef struct QAbstractTextDocumentLayout__PaintContext QAbstractTextDocumentLayout__PaintContext;
typedef struct QAbstractTextDocumentLayout__Selection QAbstractTextDocumentLayout__Selection;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QTextBlock QTextBlock;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrame QTextFrame;
typedef struct QTextInlineObject QTextInlineObject;
typedef struct QTextObjectInterface QTextObjectInterface;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAbstractTextDocumentLayout VirtualQAbstractTextDocumentLayout;
typedef struct QAbstractTextDocumentLayout_VTable{
	void (*destructor)(VirtualQAbstractTextDocumentLayout* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractTextDocumentLayout* self);
	void* (*metacast)(VirtualQAbstractTextDocumentLayout* self, const char* param1);
	int (*metacall)(VirtualQAbstractTextDocumentLayout* self, int param1, int param2, void** param3);
	void (*draw)(VirtualQAbstractTextDocumentLayout* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
	int (*hitTest)(const VirtualQAbstractTextDocumentLayout* self, QPointF* point, int accuracy);
	int (*pageCount)(const VirtualQAbstractTextDocumentLayout* self);
	QSizeF* (*documentSize)(const VirtualQAbstractTextDocumentLayout* self);
	QRectF* (*frameBoundingRect)(const VirtualQAbstractTextDocumentLayout* self, QTextFrame* frame);
	QRectF* (*blockBoundingRect)(const VirtualQAbstractTextDocumentLayout* self, QTextBlock* block);
	void (*documentChanged)(VirtualQAbstractTextDocumentLayout* self, int from, int charsRemoved, int charsAdded);
	void (*resizeInlineObject)(VirtualQAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
	void (*positionInlineObject)(VirtualQAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
	void (*drawInlineObject)(VirtualQAbstractTextDocumentLayout* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format);
	bool (*event)(VirtualQAbstractTextDocumentLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQAbstractTextDocumentLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAbstractTextDocumentLayout* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractTextDocumentLayout* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractTextDocumentLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractTextDocumentLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractTextDocumentLayout* self, QMetaMethod* signal);
}QAbstractTextDocumentLayout_VTable;

void* QAbstractTextDocumentLayout_vdata(VirtualQAbstractTextDocumentLayout* self);
VirtualQAbstractTextDocumentLayout* vdata_QAbstractTextDocumentLayout(void* vdata);

VirtualQAbstractTextDocumentLayout* QAbstractTextDocumentLayout_new(const QAbstractTextDocumentLayout_VTable* vtbl, size_t vdata, QTextDocument* doc);

void QAbstractTextDocumentLayout_virtbase(QAbstractTextDocumentLayout* src, QObject** outptr_QObject);
QMetaObject* QAbstractTextDocumentLayout_metaObject(const QAbstractTextDocumentLayout* self);
void* QAbstractTextDocumentLayout_metacast(QAbstractTextDocumentLayout* self, const char* param1);
int QAbstractTextDocumentLayout_metacall(QAbstractTextDocumentLayout* self, int param1, int param2, void** param3);
struct seaqt_string QAbstractTextDocumentLayout_tr_s(const char* s);
void QAbstractTextDocumentLayout_draw(QAbstractTextDocumentLayout* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
int QAbstractTextDocumentLayout_hitTest(const QAbstractTextDocumentLayout* self, QPointF* point, int accuracy);
struct seaqt_string QAbstractTextDocumentLayout_anchorAt(const QAbstractTextDocumentLayout* self, QPointF* pos);
struct seaqt_string QAbstractTextDocumentLayout_imageAt(const QAbstractTextDocumentLayout* self, QPointF* pos);
QTextFormat* QAbstractTextDocumentLayout_formatAt(const QAbstractTextDocumentLayout* self, QPointF* pos);
QTextBlock* QAbstractTextDocumentLayout_blockWithMarkerAt(const QAbstractTextDocumentLayout* self, QPointF* pos);
int QAbstractTextDocumentLayout_pageCount(const QAbstractTextDocumentLayout* self);
QSizeF* QAbstractTextDocumentLayout_documentSize(const QAbstractTextDocumentLayout* self);
QRectF* QAbstractTextDocumentLayout_frameBoundingRect(const QAbstractTextDocumentLayout* self, QTextFrame* frame);
QRectF* QAbstractTextDocumentLayout_blockBoundingRect(const QAbstractTextDocumentLayout* self, QTextBlock* block);
void QAbstractTextDocumentLayout_setPaintDevice(QAbstractTextDocumentLayout* self, QPaintDevice* device);
QPaintDevice* QAbstractTextDocumentLayout_paintDevice(const QAbstractTextDocumentLayout* self);
QTextDocument* QAbstractTextDocumentLayout_document(const QAbstractTextDocumentLayout* self);
void QAbstractTextDocumentLayout_registerHandler(QAbstractTextDocumentLayout* self, int objectType, QObject* component);
void QAbstractTextDocumentLayout_unregisterHandler_objectType(QAbstractTextDocumentLayout* self, int objectType);
QTextObjectInterface* QAbstractTextDocumentLayout_handlerForObject(const QAbstractTextDocumentLayout* self, int objectType);
void QAbstractTextDocumentLayout_update(QAbstractTextDocumentLayout* self);
void QAbstractTextDocumentLayout_connect_update(QAbstractTextDocumentLayout* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractTextDocumentLayout_updateBlock(QAbstractTextDocumentLayout* self, QTextBlock* block);
void QAbstractTextDocumentLayout_connect_updateBlock(QAbstractTextDocumentLayout* self, intptr_t slot, void (*callback)(intptr_t, QTextBlock*), void (*release)(intptr_t));
void QAbstractTextDocumentLayout_documentSizeChanged(QAbstractTextDocumentLayout* self, QSizeF* newSize);
void QAbstractTextDocumentLayout_connect_documentSizeChanged(QAbstractTextDocumentLayout* self, intptr_t slot, void (*callback)(intptr_t, QSizeF*), void (*release)(intptr_t));
void QAbstractTextDocumentLayout_pageCountChanged(QAbstractTextDocumentLayout* self, int newPages);
void QAbstractTextDocumentLayout_connect_pageCountChanged(QAbstractTextDocumentLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractTextDocumentLayout_documentChanged(QAbstractTextDocumentLayout* self, int from, int charsRemoved, int charsAdded);
void QAbstractTextDocumentLayout_resizeInlineObject(QAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
void QAbstractTextDocumentLayout_positionInlineObject(QAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
void QAbstractTextDocumentLayout_drawInlineObject(QAbstractTextDocumentLayout* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format);
struct seaqt_string QAbstractTextDocumentLayout_tr_s_c(const char* s, const char* c);
struct seaqt_string QAbstractTextDocumentLayout_tr_s_c_n(const char* s, const char* c, int n);
void QAbstractTextDocumentLayout_unregisterHandler_objectType_component(QAbstractTextDocumentLayout* self, int objectType, QObject* component);
void QAbstractTextDocumentLayout_update_QRectF(QAbstractTextDocumentLayout* self, QRectF* param1);
void QAbstractTextDocumentLayout_connect_update_QRectF(QAbstractTextDocumentLayout* self, intptr_t slot, void (*callback)(intptr_t, QRectF*), void (*release)(intptr_t));

QMetaObject* QAbstractTextDocumentLayout_virtualbase_metaObject(const VirtualQAbstractTextDocumentLayout* self);
void* QAbstractTextDocumentLayout_virtualbase_metacast(VirtualQAbstractTextDocumentLayout* self, const char* param1);
int QAbstractTextDocumentLayout_virtualbase_metacall(VirtualQAbstractTextDocumentLayout* self, int param1, int param2, void** param3);
void QAbstractTextDocumentLayout_virtualbase_draw(VirtualQAbstractTextDocumentLayout* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
int QAbstractTextDocumentLayout_virtualbase_hitTest(const VirtualQAbstractTextDocumentLayout* self, QPointF* point, int accuracy);
int QAbstractTextDocumentLayout_virtualbase_pageCount(const VirtualQAbstractTextDocumentLayout* self);
QSizeF* QAbstractTextDocumentLayout_virtualbase_documentSize(const VirtualQAbstractTextDocumentLayout* self);
QRectF* QAbstractTextDocumentLayout_virtualbase_frameBoundingRect(const VirtualQAbstractTextDocumentLayout* self, QTextFrame* frame);
QRectF* QAbstractTextDocumentLayout_virtualbase_blockBoundingRect(const VirtualQAbstractTextDocumentLayout* self, QTextBlock* block);
void QAbstractTextDocumentLayout_virtualbase_documentChanged(VirtualQAbstractTextDocumentLayout* self, int from, int charsRemoved, int charsAdded);
void QAbstractTextDocumentLayout_virtualbase_resizeInlineObject(VirtualQAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
void QAbstractTextDocumentLayout_virtualbase_positionInlineObject(VirtualQAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
void QAbstractTextDocumentLayout_virtualbase_drawInlineObject(VirtualQAbstractTextDocumentLayout* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format);
bool QAbstractTextDocumentLayout_virtualbase_event(VirtualQAbstractTextDocumentLayout* self, QEvent* event);
bool QAbstractTextDocumentLayout_virtualbase_eventFilter(VirtualQAbstractTextDocumentLayout* self, QObject* watched, QEvent* event);
void QAbstractTextDocumentLayout_virtualbase_timerEvent(VirtualQAbstractTextDocumentLayout* self, QTimerEvent* event);
void QAbstractTextDocumentLayout_virtualbase_childEvent(VirtualQAbstractTextDocumentLayout* self, QChildEvent* event);
void QAbstractTextDocumentLayout_virtualbase_customEvent(VirtualQAbstractTextDocumentLayout* self, QEvent* event);
void QAbstractTextDocumentLayout_virtualbase_connectNotify(VirtualQAbstractTextDocumentLayout* self, QMetaMethod* signal);
void QAbstractTextDocumentLayout_virtualbase_disconnectNotify(VirtualQAbstractTextDocumentLayout* self, QMetaMethod* signal);

int QAbstractTextDocumentLayout_protectedbase_formatIndex(VirtualQAbstractTextDocumentLayout* self, int pos);
QTextCharFormat* QAbstractTextDocumentLayout_protectedbase_format(VirtualQAbstractTextDocumentLayout* self, int pos);
QObject* QAbstractTextDocumentLayout_protectedbase_sender(const VirtualQAbstractTextDocumentLayout* self);
int QAbstractTextDocumentLayout_protectedbase_senderSignalIndex(const VirtualQAbstractTextDocumentLayout* self);
int QAbstractTextDocumentLayout_protectedbase_receivers(const VirtualQAbstractTextDocumentLayout* self, const char* signal);
bool QAbstractTextDocumentLayout_protectedbase_isSignalConnected(const VirtualQAbstractTextDocumentLayout* self, QMetaMethod* signal);

const QMetaObject* QAbstractTextDocumentLayout_staticMetaObject();
void QAbstractTextDocumentLayout_delete(QAbstractTextDocumentLayout* self);

QSizeF* QTextObjectInterface_intrinsicSize(QTextObjectInterface* self, QTextDocument* doc, int posInDocument, QTextFormat* format);
void QTextObjectInterface_drawObject(QTextObjectInterface* self, QPainter* painter, QRectF* rect, QTextDocument* doc, int posInDocument, QTextFormat* format);
void QTextObjectInterface_operatorAssign(QTextObjectInterface* self, QTextObjectInterface* from);

void QTextObjectInterface_delete(QTextObjectInterface* self);

QAbstractTextDocumentLayout__Selection* QAbstractTextDocumentLayout__Selection_new(QAbstractTextDocumentLayout__Selection* from);

QTextCursor* QAbstractTextDocumentLayout__Selection_cursor(const QAbstractTextDocumentLayout__Selection* self);
void QAbstractTextDocumentLayout__Selection_setCursor(QAbstractTextDocumentLayout__Selection* self, QTextCursor* cursor);
QTextCharFormat* QAbstractTextDocumentLayout__Selection_format(const QAbstractTextDocumentLayout__Selection* self);
void QAbstractTextDocumentLayout__Selection_setFormat(QAbstractTextDocumentLayout__Selection* self, QTextCharFormat* format);
void QAbstractTextDocumentLayout__Selection_operatorAssign(QAbstractTextDocumentLayout__Selection* self, QAbstractTextDocumentLayout__Selection* from);

void QAbstractTextDocumentLayout__Selection_delete(QAbstractTextDocumentLayout__Selection* self);

QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new();
QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new_from(QAbstractTextDocumentLayout__PaintContext* from);

int QAbstractTextDocumentLayout__PaintContext_cursorPosition(const QAbstractTextDocumentLayout__PaintContext* self);
void QAbstractTextDocumentLayout__PaintContext_setCursorPosition(QAbstractTextDocumentLayout__PaintContext* self, int cursorPosition);
QPalette* QAbstractTextDocumentLayout__PaintContext_palette(const QAbstractTextDocumentLayout__PaintContext* self);
void QAbstractTextDocumentLayout__PaintContext_setPalette(QAbstractTextDocumentLayout__PaintContext* self, QPalette* palette);
QRectF* QAbstractTextDocumentLayout__PaintContext_clip(const QAbstractTextDocumentLayout__PaintContext* self);
void QAbstractTextDocumentLayout__PaintContext_setClip(QAbstractTextDocumentLayout__PaintContext* self, QRectF* clip);
struct seaqt_array /* of QAbstractTextDocumentLayout__Selection* */  QAbstractTextDocumentLayout__PaintContext_selections(const QAbstractTextDocumentLayout__PaintContext* self);
void QAbstractTextDocumentLayout__PaintContext_setSelections(QAbstractTextDocumentLayout__PaintContext* self, struct seaqt_array /* of QAbstractTextDocumentLayout__Selection* */  selections);
void QAbstractTextDocumentLayout__PaintContext_operatorAssign(QAbstractTextDocumentLayout__PaintContext* self, QAbstractTextDocumentLayout__PaintContext* from);

void QAbstractTextDocumentLayout__PaintContext_delete(QAbstractTextDocumentLayout__PaintContext* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
