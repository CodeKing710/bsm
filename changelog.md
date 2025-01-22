# BSM Changelog

## What's New (v4.1.0)

- Script generators moved to heredocs
- Improved error handling
- Improved documentation
- Improved code quality
- Improved performance
- Improved user experience
- Improved compatibility with various systems
- Added special daemon script type

## What's Next

- Who knows

## Bugs

### Key

**BB=BSM Bug**
**R=Resolved**
**O=Outstanding**
**D=Deleted**

- BB000000 [R]: Command mode does not hand off names correctly (multi-arg-acceptance reads commands as args)
        - Functions as expected now!

- BB000001 [R]: Autoupdate will cause issues by executing updated and old code while the new files get copied (race condition)
        - Functions as expected (errors arise when terminal itself is confused in general)

- BB000002 [R]: BSM has quirky behavior in WSL.
        - POSIX Compliance to a fault (Bash functional)
        - Until WSL itself is more stable, this will continue to be a bug (generally only for slower storage solutions)
