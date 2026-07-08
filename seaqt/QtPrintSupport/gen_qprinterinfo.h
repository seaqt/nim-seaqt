#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QPRINTERINFO_H
#define SEAQT_QTPRINTSUPPORT_GEN_QPRINTERINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPageSize;
class QPrinter;
class QPrinterInfo;
#else
typedef struct QPageSize QPageSize;
typedef struct QPrinter QPrinter;
typedef struct QPrinterInfo QPrinterInfo;
#endif

QPrinterInfo* QPrinterInfo_new();
QPrinterInfo* QPrinterInfo_new_from(QPrinterInfo* from);
QPrinterInfo* QPrinterInfo_new_printer(QPrinter* printer);

void QPrinterInfo_operatorAssign(QPrinterInfo* self, QPrinterInfo* from);
struct seaqt_string QPrinterInfo_printerName(const QPrinterInfo* self);
struct seaqt_string QPrinterInfo_description(const QPrinterInfo* self);
struct seaqt_string QPrinterInfo_location(const QPrinterInfo* self);
struct seaqt_string QPrinterInfo_makeAndModel(const QPrinterInfo* self);
bool QPrinterInfo_isNull(const QPrinterInfo* self);
bool QPrinterInfo_isDefault(const QPrinterInfo* self);
bool QPrinterInfo_isRemote(const QPrinterInfo* self);
int QPrinterInfo_state(const QPrinterInfo* self);
struct seaqt_array /* of QPageSize* */  QPrinterInfo_supportedPageSizes(const QPrinterInfo* self);
QPageSize* QPrinterInfo_defaultPageSize(const QPrinterInfo* self);
bool QPrinterInfo_supportsCustomPageSizes(const QPrinterInfo* self);
QPageSize* QPrinterInfo_minimumPhysicalPageSize(const QPrinterInfo* self);
QPageSize* QPrinterInfo_maximumPhysicalPageSize(const QPrinterInfo* self);
struct seaqt_array /* of int */  QPrinterInfo_supportedResolutions(const QPrinterInfo* self);
int QPrinterInfo_defaultDuplexMode(const QPrinterInfo* self);
struct seaqt_array /* of int */  QPrinterInfo_supportedDuplexModes(const QPrinterInfo* self);
int QPrinterInfo_defaultColorMode(const QPrinterInfo* self);
struct seaqt_array /* of int */  QPrinterInfo_supportedColorModes(const QPrinterInfo* self);
struct seaqt_array /* of struct seaqt_string */  QPrinterInfo_availablePrinterNames();
struct seaqt_array /* of QPrinterInfo* */  QPrinterInfo_availablePrinters();
struct seaqt_string QPrinterInfo_defaultPrinterName();
QPrinterInfo* QPrinterInfo_defaultPrinter();
QPrinterInfo* QPrinterInfo_printerInfo(struct seaqt_string printerName);

void QPrinterInfo_delete(QPrinterInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
