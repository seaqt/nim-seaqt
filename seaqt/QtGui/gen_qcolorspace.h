#pragma once
#ifndef SEAQT_QTGUI_GEN_QCOLORSPACE_H
#define SEAQT_QTGUI_GEN_QCOLORSPACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColorSpace;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QColorSpace__PrimaryPoints)
typedef QColorSpace::PrimaryPoints QColorSpace__PrimaryPoints;
#else
class QColorSpace__PrimaryPoints;
#endif
class QColorTransform;
class QMetaObject;
class QPointF;
class QVariant;
#else
typedef struct QColorSpace QColorSpace;
typedef struct QColorSpace__PrimaryPoints QColorSpace__PrimaryPoints;
typedef struct QColorTransform QColorTransform;
typedef struct QMetaObject QMetaObject;
typedef struct QPointF QPointF;
typedef struct QVariant QVariant;
#endif

QColorSpace* QColorSpace_new();
QColorSpace* QColorSpace_new_namedColorSpace(int namedColorSpace);
QColorSpace* QColorSpace_new_whitePoint_transferFunction(QPointF* whitePoint, int transferFunction);
QColorSpace* QColorSpace_new_whitePoint_transferFunctionTable(QPointF* whitePoint, struct seaqt_array /* of uint16_t */  transferFunctionTable);
QColorSpace* QColorSpace_new_primaries_transferFunction(int primaries, int transferFunction);
QColorSpace* QColorSpace_new_primaries_gamma(int primaries, float gamma);
QColorSpace* QColorSpace_new_primaries_transferFunctionTable(int primaries, struct seaqt_array /* of uint16_t */  transferFunctionTable);
QColorSpace* QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int transferFunction);
QColorSpace* QColorSpace_new_primaryPoints_transferFunction(QColorSpace__PrimaryPoints* primaryPoints, int transferFunction);
QColorSpace* QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunctionTable(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, struct seaqt_array /* of uint16_t */  transferFunctionTable);
QColorSpace* QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_redTransferFunctionTable_greenTransferFunctionTable_blueTransferFunctionTable(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, struct seaqt_array /* of uint16_t */  redTransferFunctionTable, struct seaqt_array /* of uint16_t */  greenTransferFunctionTable, struct seaqt_array /* of uint16_t */  blueTransferFunctionTable);
QColorSpace* QColorSpace_new_from(QColorSpace* from);
QColorSpace* QColorSpace_new_whitePoint_transferFunction_gamma(QPointF* whitePoint, int transferFunction, float gamma);
QColorSpace* QColorSpace_new_primaries_transferFunction_gamma(int primaries, int transferFunction, float gamma);
QColorSpace* QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction_gamma(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int transferFunction, float gamma);
QColorSpace* QColorSpace_new_primaryPoints_transferFunction_gamma(QColorSpace__PrimaryPoints* primaryPoints, int transferFunction, float gamma);

void QColorSpace_operatorAssign(QColorSpace* self, QColorSpace* from);
void QColorSpace_swap(QColorSpace* self, QColorSpace* colorSpace);
int QColorSpace_primaries(const QColorSpace* self);
int QColorSpace_transferFunction(const QColorSpace* self);
float QColorSpace_gamma(const QColorSpace* self);
struct seaqt_string QColorSpace_description(const QColorSpace* self);
void QColorSpace_setDescription(QColorSpace* self, struct seaqt_string description);
void QColorSpace_setTransferFunction_transferFunction(QColorSpace* self, int transferFunction);
void QColorSpace_setTransferFunction_transferFunctionTable(QColorSpace* self, struct seaqt_array /* of uint16_t */  transferFunctionTable);
void QColorSpace_setTransferFunctions(QColorSpace* self, struct seaqt_array /* of uint16_t */  redTransferFunctionTable, struct seaqt_array /* of uint16_t */  greenTransferFunctionTable, struct seaqt_array /* of uint16_t */  blueTransferFunctionTable);
QColorSpace* QColorSpace_withTransferFunction_transferFunction(const QColorSpace* self, int transferFunction);
QColorSpace* QColorSpace_withTransferFunction_transferFunctionTable(const QColorSpace* self, struct seaqt_array /* of uint16_t */  transferFunctionTable);
QColorSpace* QColorSpace_withTransferFunctions(const QColorSpace* self, struct seaqt_array /* of uint16_t */  redTransferFunctionTable, struct seaqt_array /* of uint16_t */  greenTransferFunctionTable, struct seaqt_array /* of uint16_t */  blueTransferFunctionTable);
void QColorSpace_setPrimaries_primariesId(QColorSpace* self, int primariesId);
void QColorSpace_setPrimaries_whitePoint_redPoint_greenPoint_bluePoint(QColorSpace* self, QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint);
void QColorSpace_setWhitePoint(QColorSpace* self, QPointF* whitePoint);
QPointF* QColorSpace_whitePoint(const QColorSpace* self);
void QColorSpace_setPrimaryPoints(QColorSpace* self, QColorSpace__PrimaryPoints* primaryPoints);
QColorSpace__PrimaryPoints* QColorSpace_primaryPoints(const QColorSpace* self);
uint8_t QColorSpace_transformModel(const QColorSpace* self);
uint8_t QColorSpace_colorModel(const QColorSpace* self);
void QColorSpace_detach(QColorSpace* self);
bool QColorSpace_isValid(const QColorSpace* self);
bool QColorSpace_isValidTarget(const QColorSpace* self);
QColorSpace* QColorSpace_fromIccProfile(struct seaqt_string iccProfile);
struct seaqt_string QColorSpace_iccProfile(const QColorSpace* self);
QColorTransform* QColorSpace_transformationToColorSpace(const QColorSpace* self, QColorSpace* colorspace);
QVariant* QColorSpace_ToQVariant(const QColorSpace* self);
void QColorSpace_setTransferFunction_transferFunction_gamma(QColorSpace* self, int transferFunction, float gamma);
QColorSpace* QColorSpace_withTransferFunction_transferFunction_gamma(const QColorSpace* self, int transferFunction, float gamma);

const QMetaObject* QColorSpace_staticMetaObject();
void QColorSpace_delete(QColorSpace* self);

QColorSpace__PrimaryPoints* QColorSpace__PrimaryPoints_fromPrimaries(int primaries);
bool QColorSpace__PrimaryPoints_isValid(const QColorSpace__PrimaryPoints* self);
QPointF* QColorSpace__PrimaryPoints_whitePoint(const QColorSpace__PrimaryPoints* self);
void QColorSpace__PrimaryPoints_setWhitePoint(QColorSpace__PrimaryPoints* self, QPointF* whitePoint);
QPointF* QColorSpace__PrimaryPoints_redPoint(const QColorSpace__PrimaryPoints* self);
void QColorSpace__PrimaryPoints_setRedPoint(QColorSpace__PrimaryPoints* self, QPointF* redPoint);
QPointF* QColorSpace__PrimaryPoints_greenPoint(const QColorSpace__PrimaryPoints* self);
void QColorSpace__PrimaryPoints_setGreenPoint(QColorSpace__PrimaryPoints* self, QPointF* greenPoint);
QPointF* QColorSpace__PrimaryPoints_bluePoint(const QColorSpace__PrimaryPoints* self);
void QColorSpace__PrimaryPoints_setBluePoint(QColorSpace__PrimaryPoints* self, QPointF* bluePoint);

void QColorSpace__PrimaryPoints_delete(QColorSpace__PrimaryPoints* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
