# Bash Script Manager (v3)

This is a local script manager that allows you to add custom scripts to your system without affecting the baseline OS scripts.
Install options for user and system (System install coming soon!) available!
This program is open-source as well as open-minded!
Any ideas or QoL improvements that you think could be made to BSM reach out or fork the repo and make a pull request!

__NOTE: THIS SCRIPT IS INTENDED FOR USE ON DEBIAN/UBUNTU BASED DISTRIBUTIONS!__

__FUNCTIONS WITH WINDOWS SUBSYSTEM FOR LINUX!__

Support for Bash, Node, Python, Ruby, and LISP scripts. PowerShell available on WSL (Working on dynamic powershell detection for Linux users with Unix PowerShell installed).

## Installation

To install, run the install script once repo is cloned. If it won't open, run the following:

```bash
sudo chmod +x "$(find `find ~ -type d -name bsm` -type f -name install)"
```

_BSMv1 can still be installed if you prefer a lower profile version of BSM, called and installed from the /old folder in the repo!_

To finalize installation, restart the shell or run `source ~/.bashrc` to reload your PATH. This will need done after both installation and uninstallation
Possible cleanup of your `.bashrc` file may need done upon removal of BSM from the system

## Usage

Making a script of any kind is very simple. Simply run the following, replacing 'SCRIPT' with your desired script name (defaults to bash script);

```bash
bsm -c "[SCRIPT]"
```

You can have the script open right away in your configured editor (default nano) for editing if you are only working on the one script;

```bash
bsm -c "[SCRIPT]" -o
```

The create argument for BSM allows you predefine the script type via the file extension in the script name.

Removing a script is as simple as specifying the scripts name(s) to remove;
```bash
bsm -r my-script # Removes the one script
bsm -r my-script my-2-script # Removes both scripts
```

Now that you have a script made, you can use the "-l" flag to list out all the scripts you've made in a nice easy-to-read fashion.

```bash
bsm -l
```

If you named your script wrong, don't fret! You can use the `-n` flag to rename a script! The arg schema is as follows: oldname&gt;newname

```bash
bsm -n [WRONG_SCRIPT]>[NAME_YOU_WANT]
```

For any help in case you forget how to use the command, you can use `bsm -h` or `bsm --help`. Versioning info can be found with `bsm -v`. Verbose logging of each command can be done by adding `-V` at the beginning of the command.

BSM supports a command-based shell as well, run by supplying no arguments of any kind or through `bsm --interactive`. Commands mimic their argument-based counterparts, function the same as well. More info below!

BSM has configurable settings, and thus has a way to get/set those settings. It can be done like so:

```bash
bsm -C list # Shows all available settings

bsm -C editor # Shows what editor is currently set to

bsm -C autoupdate=false # Changes autoupdate setting to false

bsm -C editor=code autoupdate # Sets editor to code, shows what autoupdate is currently set to
```

## Extra Goodies

### Command-mode & BSM Shell

BSM supports commands for those who prefer full words to shorthand arguments. These function the exact same as normal arguments, and can be used in tandem with arguments as well. Sometimes you need arguments because a command won't exist for it. Great example is verbose logging. This cannot be used in the BSM Shell, but can be used with commands, as long as it comes first you will see logging for every action made, otherwise it will start logging once it sees the `-V` or `--verbose` flags.

Commands are the basis for using the BSM Shell. Arguments are not supported until after the first command, where any number of subarguments or normal arguments could appear in place of commands. To leave the BSM Shell, use `exit` or `quit`. BSM Shell currently does not support arrow keys (will cause arbitrary characters to be added to input that are invisible and cause BSM to misread commands). If you want to use a previous command, try copy-paste!

### Fixing BSM

BSM will assist in more than just installing and uninstalling BSM from your system. BSM offers an option to repair the install of BSM currently on the system (Updating alongside fixing). BSM automatically updates when it detects a new pull on the repo. This can be turned off and you can manually update via `bsm --update`. On older versions of BSM, these commands can be run directly from BSM in different formats or from BSM-Install, refer to the help page for more info if you run into any issues with the older versions.

__NOTE: Ability to run these commands in old BSM has been deprecated due to confliction of commands and confusion of argument names. There is a chance you may still find that some of the commands in the older versions still work but have unexpected results!__

But let's say that your BSM install works just fine, but the underlying dependencies that run specific types of scripts are broken. Using `bsm --dependencies` will reinstall some or all dependencies based on whether you pass the option or not. Naming is not case sensitive and some allow for the nickname to be passed instead. Available deps include:

- Node
- Python
- Ruby
- LiSP

### Fresh Starts

By using `bsm -r ALL`, you can remove every script from your script directory and start fresh!
DO THIS WITH CAUTION AS YOU WILL NOT BE ABLE TO GET THE SCRIPTS BACK ONCE THEY ARE REMOVED!

Refer to changelog for features, outstanding bugs, and more.

Report bugs to <cjrox01@yahoo.com>
Let me know if there are any other features you may want! Feedback is welcome!
