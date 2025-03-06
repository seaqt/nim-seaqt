#define WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGOpenGLTexture
#define WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGVulkanTexture
#include <qsgtexture_platform.h>
#include "gen_qsgtexture_platform.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QNativeInterface__QSGOpenGLTexture* QNativeInterface__QSGOpenGLTexture_new() {
	return new QNativeInterface::QSGOpenGLTexture();
}

QNativeInterface__QSGVulkanTexture* QNativeInterface__QSGVulkanTexture_new() {
	return new QNativeInterface::QSGVulkanTexture();
}

