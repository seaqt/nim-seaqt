#include <QInternal>
#include <qnamespace.h>
#include "gen_qnamespace.h"
bool QInternal_activateCallbacks(int param1, void** param2) {
	return QInternal::activateCallbacks(static_cast<QInternal::Callback>(param1), param2);
}

void QInternal_delete(QInternal* self) {
	delete self;
}

