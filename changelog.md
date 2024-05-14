# BSM Changelog

# What's New (v3.0.0)
- Made some under-the-hood changes
- Port to new application style
- Removed various unnecessary or unready functions
- Refined program size
- Default script type settings
- Color output

# What's Next (v3.1.0)
- Support to create Python scripts that point to a specific virtual environment
- Support to create node apps that reference outside packages (Node Packaged Environments - like VEM)

# Bugs
## Key:
**BB=BSM Bug**
**R=Resolved**
**O=Outstanding**
**D=Deleted**

- BB000000 [R]: Command mode does not hand off names correctly (multi-arg-acceptance reads commands as args)
    - Command mode will be specific to the bsm shell, use of commands outside of the shell will result in errors

- BB000001 [R]: Autoupdate will cause issues by executing updated and old code while the new files get copied (race condition)
    - Turn off autoupdate until a better solution can be found
