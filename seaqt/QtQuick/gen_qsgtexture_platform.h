#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGTEXTURE_PLATFORM_H
#define SEAQT_QTQUICK_GEN_QSGTEXTURE_PLATFORM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGOpenGLTexture)
typedef QNativeInterface::QSGOpenGLTexture QNativeInterface__QSGOpenGLTexture;
#else
class QNativeInterface__QSGOpenGLTexture;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGVulkanTexture)
typedef QNativeInterface::QSGVulkanTexture QNativeInterface__QSGVulkanTexture;
#else
class QNativeInterface__QSGVulkanTexture;
#endif
#else
typedef struct QNativeInterface__QSGOpenGLTexture QNativeInterface__QSGOpenGLTexture;
typedef struct QNativeInterface__QSGVulkanTexture QNativeInterface__QSGVulkanTexture;
#endif

QNativeInterface__QSGOpenGLTexture* QNativeInterface__QSGOpenGLTexture_new();

QNativeInterface__QSGVulkanTexture* QNativeInterface__QSGVulkanTexture_new();

#ifdef __cplusplus
} /* extern C */
#endif

#endif
