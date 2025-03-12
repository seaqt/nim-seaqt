#include <QLinkedListData>
#include <qlinkedlist.h>
#include "gen_qlinkedlist.h"
QLinkedListData* QLinkedListData_new() {
	return new QLinkedListData();
}

void QLinkedListData_delete(QLinkedListData* self) {
	delete self;
}

