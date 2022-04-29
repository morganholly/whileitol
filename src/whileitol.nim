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

template againWhile* (expr, name, body: untyped): untyped {.dirty.} =
    block `name Outer`:
        block `name DoLast`:
            block `name Loop`:
                while expr:
                    block `name Inner`:
                        body
            if not expr:
                block `name Inner`:
                    body
            break `name Outer`
        block `name Inner`:
            body

template againWhile* (expr, body: untyped): untyped {.dirty.} =
    while expr:
        body
    if not expr:
        body

template againWhileSimple* (expr, name, body: untyped): untyped {.dirty.} =
    while expr:
        block `name Inner`:
            body
    if not expr:
        block `name Inner`:
            body

template againWhileSimple* (expr, body: untyped): untyped {.dirty.} =
    while expr:
        body
    if not expr:
        body