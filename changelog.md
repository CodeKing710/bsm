# BSM Changelog

# What's New (v3.1.1)
- Made some under-the-hood changes
- Port to new application style
- Removed various unnecessary or unready functions
- Refined program size
- Default script type settings
- Color output
- Virtual Environment support for Python and Node
- Support for VEM (Virtual Environment Manager) users (Input name instead of path)

# What's Next (v3.2.0)
- System-wide install option alongside default user-based install

# Bugs
## Key:
**BB=BSM Bug**
**R=Resolved**
**O=Outstanding**
**D=Deleted**

- BB000000 [R]: Command mode does not hand off names correctly (multi-arg-acceptance reads commands as args)
        - Functions as expected now!

- BB000001 [R]: Autoupdate will cause issues by executing updated and old code while the new files get copied (race condition)
        - Functions as expected (errors arise when terminal itself is confused in general)

- BB000002 [O]: BSM has quirky behavior in WSL (possibly Linux in general, including MacOS).
        - Attempt POSIX compliance (replace inline param expansion substitution with 'sed' or 'tr')
