# Bash Script Manager (v3)

This is a local script manager that allows you to add custom scripts to your system without affecting the baseline OS scripts.

This program is open-source as well as open-minded!

Any ideas or QoL improvements that you think could be made to BSM reach out or fork the repo and make a pull request!

__FUNCTIONS ON ALL POSIX SYSTEMS!__

Support for Bash, Node, Python, Ruby, Perl, and LISP scripts. PowerShell has limited support in this app.

Support for creating a POSIX daemon to run scripts in the background.

___

## Installation

To install, run the install script once repo is cloned. If it won't open, run the following:

```bash
# This command assumes you have the BSM repo in your home directory!
chmod +x "$(find "$(find ~ -type d -name bsm)" -type f -name install)"
```

To finalize installation, restart the shell or run `source ~/.bashrc` to reload your PATH. This will need done after both installation and uninstallation
Possible cleanup of your `.bashrc` file may need done upon removal of BSM from the system

## Usage

Making a script of any kind is very simple. Default typing is Bash. Let's start by creating a script called first-script

```sh
bsm create first-script
```

You can have the script open right away in your configured editor (default nano) for editing by tagging the operation with `open`;

```sh
bsm create first-script open
```

The create argument for BSM allows you predefine the script type via the file extension in the script name.
This is done quite easily. If we wanted `first-script` to be made for Python, we can swap out the name for `first-script.py` in the create operation.

Removing a script is as simple as specifying the scripts name(s) to remove;

```sh
bsm rm my-script # Removes the one script
bsm rm my-script my-2-script # Removes both scripts
```

Now that you have a script made, you can use the `-l` flag or the command `list` to list out all the scripts you've made in a nice easy-to-read fashion. For them all to be on separate lines, append `rows` to the operation

```sh
bsm list
bsm list rows
```

If you named your script wrong, don't fret! You can use the `-n` flag or `rename` command to rename a script!

```sh
bsm rename wrong-name right-name
```

For any help in case you forget how to use the command, you can use `bsm -h` or `bsm --help`. Versioning info can be found with `bsm -v`. Verbose logging of each command can be done by adding `-V` to your command.

BSM supports a command-based shell as well, run by supplying no arguments of any kind or through `bsm --interactive`. Commands mimic their argument-based counterparts, function the same as well. More info below!

BSM has configurable settings, and thus has a way to get/set those settings. It can be done like so:

```sh
bsm cfg list # Shows all available settings

bsm cfg editor # Shows what editor is currently set to

bsm cfg autoupdate=false # Changes autoupdate setting to false

bsm cfg editor=code # Sets editor to code
```

## Extra Goodies

### Command-mode & BSM Shell

BSM supports commands for those who prefer full words to shorthand arguments. These function the exact same as normal arguments, and can be used in tandem with arguments as well. Please note that verbose logging is a toggle and should generally be run before continuing when in the shell, and should be the first argument when running the command inline.

Commands are the basis for using the BSM Shell. Arguments are more of a shorthand if you understand them, otherwise they can be used interchangably in the shell. To leave the BSM Shell, use `exit` or `quit`. BSM Shell currently does not support arrow keys (will cause arbitrary characters to be added to input that are invisible and cause BSM to misread commands). History similar to how Bash handles history will be added eventually.

### Fixing BSM

BSM will assist in more than just installing and uninstalling BSM from your system. BSM offers an option to repair the install of BSM currently on the system (Updating alongside fixing). BSM automatically updates when it detects a new pull on the repo. This can be turned off and you can manually update via `bsm --update`.

__NOTE: Disabling autoupdate may produce unexpected results! Autoupdate itself may also produce unexpected results if the files don't write in time!__

But let's say that your BSM install works just fine, but the underlying dependencies that run specific types of scripts are broken. Using `bsm --dependencies` will reinstall some or all dependencies based on whether you pass the option or not. Naming is not case sensitive and some allow for the nickname to be passed instead. Available deps include:

- Node
- Python
- Ruby
- LiSP

Refer to changelog for features, outstanding bugs, and more.

Report bugs to <cjrox01@yahoo.com>
Let me know if there are any other features you may want! Feedback is welcome!
