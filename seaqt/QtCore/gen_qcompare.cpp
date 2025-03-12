#include <QPartialOrdering>
#include <qcompare.h>
#include "gen_qcompare.h"
QPartialOrdering* QPartialOrdering_new(QPartialOrdering* param1) {
	return new QPartialOrdering(*param1);
}

void QPartialOrdering_delete(QPartialOrdering* self) {
	delete self;
}

