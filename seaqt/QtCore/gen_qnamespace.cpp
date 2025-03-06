#include <QInternal>
#include <qnamespace.h>
#include "gen_qnamespace.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

bool QInternal_activateCallbacks(int param1, void** param2) {
	return QInternal::activateCallbacks(static_cast<QInternal::Callback>(param1), param2);
}

void QInternal_delete(QInternal* self) {
	delete self;
}

