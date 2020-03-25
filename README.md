# Sonas

> An unoffical NASL explorer.

I needed a quick tool to be able to understand how Nessus came to a certain conclusion. So in order to help myself understand and debug faster, I wrote a little script sonas to explore Nessus' .nasl files.

## Quick Start

Download the sonas file

Optionally, download the .vimrc file and place it in your home directory for vim configuration

Once downloaded, edit the sonas file to point to your nessus installation path

Then simply run:

```bash
$ ./sonas
   [.. ..
 [..    [..
  [..         [..    [.. [..      [..     [....
    [..     [..  [..  [..  [..  [..  [.. [..
       [.. [..    [.. [..  [.. [..   [..   [...
 [..    [.. [..  [..  [..  [.. [..   [..     [..
   [.. ..     [..    [...  [..   [.. [...[.. [..

  An unoffical NASL explorer.

usage: ./sonas search_regex

  search_regex  the regex that needs to match either a plugin name or function name
                WARN: By default doesn't do fuzzy matching, prefix/suffix your term with .*

NOTE: edit NESSUS_PLUGINS_DIR and DATABASE_FILE in this script before running

Examples:
 ./sonas 'Unsupported Windows OS \(remote\)'  # Exact match, but with escaped brackets
 ./sonas 'LibreOffice < 3.6.7 .*'             # Fuzzy match
 ./sonas '.*nmap.*'                           # Fuzzy match prefix and suffix
 ./sonas 'get_kb_item_or_exit'                # Searching functions works too!
```

### VIM Keybinds

Minimal keybinds that I use with this setup.

| Keybind | Description |
| ------- | ----------- |
| `zo` | Open fold |
| `zc` | Close fold |
| `gf` | Open filename under cursor |
| `<c-w>gf` | Open filename in new tab |
| `:q` | Exit VIM! |

## Dependencies

These should all come default with your linux install, but just in case:
```
vim bash grep wc nl
```
