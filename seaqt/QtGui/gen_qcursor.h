#pragma once
#ifndef SEAQT_QTGUI_GEN_QCURSOR_H
#define SEAQT_QTGUI_GEN_QCURSOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBitmap;
class QCursor;
class QPixmap;
class QPoint;
class QScreen;
class QVariant;
#else
typedef struct QBitmap QBitmap;
typedef struct QCursor QCursor;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QScreen QScreen;
typedef struct QVariant QVariant;
#endif

QCursor* QCursor_new();
QCursor* QCursor_new_shape(int shape);
QCursor* QCursor_new_bitmap_mask(QBitmap* bitmap, QBitmap* mask);
QCursor* QCursor_new_pixmap(QPixmap* pixmap);
QCursor* QCursor_new_from(QCursor* from);
QCursor* QCursor_new_bitmap_mask_hotX(QBitmap* bitmap, QBitmap* mask, int hotX);
QCursor* QCursor_new_bitmap_mask_hotX_hotY(QBitmap* bitmap, QBitmap* mask, int hotX, int hotY);
QCursor* QCursor_new_pixmap_hotX(QPixmap* pixmap, int hotX);
QCursor* QCursor_new_pixmap_hotX_hotY(QPixmap* pixmap, int hotX, int hotY);

void QCursor_operatorAssign(QCursor* self, QCursor* from);
void QCursor_swap(QCursor* self, QCursor* other);
QVariant* QCursor_ToQVariant(const QCursor* self);
int QCursor_shape(const QCursor* self);
void QCursor_setShape(QCursor* self, int newShape);
QBitmap* QCursor_bitmap(const QCursor* self);
QBitmap* QCursor_mask(const QCursor* self);
QBitmap* QCursor_bitmap_Qt_ReturnByValueConstant(const QCursor* self, int param1);
QBitmap* QCursor_mask_Qt_ReturnByValueConstant(const QCursor* self, int param1);
QPixmap* QCursor_pixmap(const QCursor* self);
QPoint* QCursor_hotSpot(const QCursor* self);
QPoint* QCursor_pos();
QPoint* QCursor_pos_screen(QScreen* screen);
void QCursor_setPos_x_y(int x, int y);
void QCursor_setPos_screen_x_y(QScreen* screen, int x, int y);
void QCursor_setPos_p(QPoint* p);
void QCursor_setPos_screen_p(QScreen* screen, QPoint* p);

void QCursor_delete(QCursor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
