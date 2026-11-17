#pragma once
#ifndef SEAQT_QTGUI_GEN_QTEXTDOCUMENTWRITER_H
#define SEAQT_QTGUI_GEN_QTEXTDOCUMENTWRITER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIODevice;
class QTextCodec;
class QTextDocument;
class QTextDocumentFragment;
class QTextDocumentWriter;
#else
typedef struct QIODevice QIODevice;
typedef struct QTextCodec QTextCodec;
typedef struct QTextDocument QTextDocument;
typedef struct QTextDocumentFragment QTextDocumentFragment;
typedef struct QTextDocumentWriter QTextDocumentWriter;
#endif

QTextDocumentWriter* QTextDocumentWriter_new();
QTextDocumentWriter* QTextDocumentWriter_new2(QIODevice* device, struct seaqt_string format);
QTextDocumentWriter* QTextDocumentWriter_new3(struct seaqt_string fileName);
QTextDocumentWriter* QTextDocumentWriter_new4(struct seaqt_string fileName, struct seaqt_string format);

void QTextDocumentWriter_setFormat(QTextDocumentWriter* self, struct seaqt_string format);
struct seaqt_string QTextDocumentWriter_format(const QTextDocumentWriter* self);
void QTextDocumentWriter_setDevice(QTextDocumentWriter* self, QIODevice* device);
QIODevice* QTextDocumentWriter_device(const QTextDocumentWriter* self);
void QTextDocumentWriter_setFileName(QTextDocumentWriter* self, struct seaqt_string fileName);
struct seaqt_string QTextDocumentWriter_fileName(const QTextDocumentWriter* self);
bool QTextDocumentWriter_write(QTextDocumentWriter* self, QTextDocument* document);
bool QTextDocumentWriter_writeWithFragment(QTextDocumentWriter* self, QTextDocumentFragment* fragment);
void QTextDocumentWriter_setCodec(QTextDocumentWriter* self, QTextCodec* codec);
QTextCodec* QTextDocumentWriter_codec(const QTextDocumentWriter* self);
struct seaqt_array /* of struct seaqt_string */  QTextDocumentWriter_supportedDocumentFormats();

void QTextDocumentWriter_delete(QTextDocumentWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
