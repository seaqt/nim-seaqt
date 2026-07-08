import ./gen_qpdfdestination_types
export gen_qpdfdestination_types

type QPdfSearchResult* = object of gen_qpdfdestination_types.QPdfDestination
proc `=copy`(dest: var QPdfSearchResult, source: QPdfSearchResult) {.error.}
proc `=sink`(dest: var QPdfSearchResult, source: QPdfSearchResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

