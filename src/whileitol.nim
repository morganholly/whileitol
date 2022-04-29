template namedWhile* (expr, outerName, innerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            block innerName:
                body

template namedWhile* (expr, name, body: untyped): untyped {.dirty.} =
    block `name Outer`:
        while expr:
            block `name Inner`:
                body

template namedWhileI* (expr, outerName, innerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            block innerName:
                body

template namedWhileI* (expr, innerName, body: untyped): untyped {.dirty.} =
    while expr:
        block innerName:
            body

template namedWhileInner* (expr, outerName, innerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            block innerName:
                body

template namedWhileInner* (expr, innerName, body: untyped): untyped {.dirty.} =
    while expr:
        block innerName:
            body

template namedWhileO* (expr, outerName, innerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            block innerName:
                body

template namedWhileO* (expr, outerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            body

template namedWhileOuter* (expr, outerName, innerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            block innerName:
                body

template namedWhileOuter* (expr, outerName, body: untyped): untyped {.dirty.} =
    block outerName:
        while expr:
            body

