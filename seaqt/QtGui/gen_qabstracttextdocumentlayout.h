#pragma once
#ifndef SEAQT_QTGUI_GEN_QABSTRACTTEXTDOCUMENTLAYOUT_H
#define SEAQT_QTGUI_GEN_QABSTRACTTEXTDOCUMENTLAYOUT_H

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
class QPointF;
class QRectF;
class QSizeF;
class QTextBlock;
class QTextCharFormat;
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
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QTextBlock QTextBlock;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrame QTextFrame;
typedef struct QTextInlineObject QTextInlineObject;
typedef struct QTextObjectInterface QTextObjectInterface;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAbstractTextDocumentLayout_VTable {
	void (*destructor)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self);
	QMetaObject* (*metaObject)(struct QAbstractTextDocumentLayout_VTable* vtbl, const QAbstractTextDocumentLayout* self);
	void* (*metacast)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, const char* param1);
	int (*metacall)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, int param1, int param2, void** param3);
	void (*draw)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
	int (*hitTest)(struct QAbstractTextDocumentLayout_VTable* vtbl, const QAbstractTextDocumentLayout* self, QPointF* point, int accuracy);
	int (*pageCount)(struct QAbstractTextDocumentLayout_VTable* vtbl, const QAbstractTextDocumentLayout* self);
	QSizeF* (*documentSize)(struct QAbstractTextDocumentLayout_VTable* vtbl, const QAbstractTextDocumentLayout* self);
	QRectF* (*frameBoundingRect)(struct QAbstractTextDocumentLayout_VTable* vtbl, const QAbstractTextDocumentLayout* self, QTextFrame* frame);
	QRectF* (*blockBoundingRect)(struct QAbstractTextDocumentLayout_VTable* vtbl, const QAbstractTextDocumentLayout* self, QTextBlock* block);
	void (*documentChanged)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, int from, int charsRemoved, int charsAdded);
	void (*resizeInlineObject)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
	void (*positionInlineObject)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
	void (*drawInlineObject)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format);
	bool (*event)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QEvent* event);
	bool (*eventFilter)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QEvent* event);
	void (*connectNotify)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractTextDocumentLayout_VTable* vtbl, QAbstractTextDocumentLayout* self, QMetaMethod* signal);
};
QAbstractTextDocumentLayout* QAbstractTextDocumentLayout_new(struct QAbstractTextDocumentLayout_VTable* vtbl, QTextDocument* doc);
void QAbstractTextDocumentLayout_virtbase(QAbstractTextDocumentLayout* src, QObject** outptr_QObject);
QMetaObject* QAbstractTextDocumentLayout_metaObject(const QAbstractTextDocumentLayout* self);
void* QAbstractTextDocumentLayout_metacast(QAbstractTextDocumentLayout* self, const char* param1);
int QAbstractTextDocumentLayout_metacall(QAbstractTextDocumentLayout* self, int param1, int param2, void** param3);
struct miqt_string QAbstractTextDocumentLayout_tr(const char* s);
struct miqt_string QAbstractTextDocumentLayout_trUtf8(const char* s);
void QAbstractTextDocumentLayout_draw(QAbstractTextDocumentLayout* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
int QAbstractTextDocumentLayout_hitTest(const QAbstractTextDocumentLayout* self, QPointF* point, int accuracy);
struct miqt_string QAbstractTextDocumentLayout_anchorAt(const QAbstractTextDocumentLayout* self, QPointF* pos);
struct miqt_string QAbstractTextDocumentLayout_imageAt(const QAbstractTextDocumentLayout* self, QPointF* pos);
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
void QAbstractTextDocumentLayout_unregisterHandler(QAbstractTextDocumentLayout* self, int objectType);
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
struct miqt_string QAbstractTextDocumentLayout_tr2(const char* s, const char* c);
struct miqt_string QAbstractTextDocumentLayout_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractTextDocumentLayout_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractTextDocumentLayout_trUtf83(const char* s, const char* c, int n);
void QAbstractTextDocumentLayout_unregisterHandler2(QAbstractTextDocumentLayout* self, int objectType, QObject* component);
void QAbstractTextDocumentLayout_update1(QAbstractTextDocumentLayout* self, QRectF* param1);
void QAbstractTextDocumentLayout_connect_update1(QAbstractTextDocumentLayout* self, intptr_t slot, void (*callback)(intptr_t, QRectF*), void (*release)(intptr_t));
QMetaObject* QAbstractTextDocumentLayout_virtualbase_metaObject(const void* self);
void* QAbstractTextDocumentLayout_virtualbase_metacast(void* self, const char* param1);
int QAbstractTextDocumentLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractTextDocumentLayout_virtualbase_draw(void* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
int QAbstractTextDocumentLayout_virtualbase_hitTest(const void* self, QPointF* point, int accuracy);
int QAbstractTextDocumentLayout_virtualbase_pageCount(const void* self);
QSizeF* QAbstractTextDocumentLayout_virtualbase_documentSize(const void* self);
QRectF* QAbstractTextDocumentLayout_virtualbase_frameBoundingRect(const void* self, QTextFrame* frame);
QRectF* QAbstractTextDocumentLayout_virtualbase_blockBoundingRect(const void* self, QTextBlock* block);
void QAbstractTextDocumentLayout_virtualbase_documentChanged(void* self, int from, int charsRemoved, int charsAdded);
void QAbstractTextDocumentLayout_virtualbase_resizeInlineObject(void* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
void QAbstractTextDocumentLayout_virtualbase_positionInlineObject(void* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);
void QAbstractTextDocumentLayout_virtualbase_drawInlineObject(void* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format);
bool QAbstractTextDocumentLayout_virtualbase_event(void* self, QEvent* event);
bool QAbstractTextDocumentLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractTextDocumentLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractTextDocumentLayout_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractTextDocumentLayout_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractTextDocumentLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractTextDocumentLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
int QAbstractTextDocumentLayout_protectedbase_formatIndex(void* self, int pos);
QTextCharFormat* QAbstractTextDocumentLayout_protectedbase_format(void* self, int pos);
QObject* QAbstractTextDocumentLayout_protectedbase_sender(const void* self);
int QAbstractTextDocumentLayout_protectedbase_senderSignalIndex(const void* self);
int QAbstractTextDocumentLayout_protectedbase_receivers(const void* self, const char* signal);
bool QAbstractTextDocumentLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractTextDocumentLayout_staticMetaObject();
void QAbstractTextDocumentLayout_delete(QAbstractTextDocumentLayout* self);

QSizeF* QTextObjectInterface_intrinsicSize(QTextObjectInterface* self, QTextDocument* doc, int posInDocument, QTextFormat* format);
void QTextObjectInterface_drawObject(QTextObjectInterface* self, QPainter* painter, QRectF* rect, QTextDocument* doc, int posInDocument, QTextFormat* format);
void QTextObjectInterface_operatorAssign(QTextObjectInterface* self, QTextObjectInterface* param1);
void QTextObjectInterface_delete(QTextObjectInterface* self);

QAbstractTextDocumentLayout__Selection* QAbstractTextDocumentLayout__Selection_new(QAbstractTextDocumentLayout__Selection* param1);
void QAbstractTextDocumentLayout__Selection_operatorAssign(QAbstractTextDocumentLayout__Selection* self, QAbstractTextDocumentLayout__Selection* param1);
void QAbstractTextDocumentLayout__Selection_delete(QAbstractTextDocumentLayout__Selection* self);

QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new();
QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new2(QAbstractTextDocumentLayout__PaintContext* param1);
void QAbstractTextDocumentLayout__PaintContext_operatorAssign(QAbstractTextDocumentLayout__PaintContext* self, QAbstractTextDocumentLayout__PaintContext* param1);
void QAbstractTextDocumentLayout__PaintContext_delete(QAbstractTextDocumentLayout__PaintContext* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
