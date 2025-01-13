# BSM Changelog

## What's New (v3.5.0)

- Made some under-the-hood changes
- Port to new application style
- Removed various unnecessary or unready functions
- Refined program size
- Default script type settings
- Color output
- Virtual Environment support for Python and Node
- Support for VEM (Virtual Environment Manager) users (Input name instead of path)
- True Cross-platform compatibility
- Legacy compliance (down to Bash 3.2)
- Quicker launching

## What's Next (v4.0.0)

- Break out script generators into heredoc files
- Become POSIX Compliant (If need be)
- Add support for more languages
- Version detection and bash detection

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
