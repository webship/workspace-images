Go through the images folder and propose, without changing anything, what to rename and where each picture belongs.

The launch line is for Claude Code, the default; the text between the triple quotes can be given to another AI CLI as it is.

```
claude --permission-mode bypassPermissions """
Go through the images folder and propose a tidy-up for <scope>: change nothing yet
# ~/workspace/images · pictures as files, a folder per piece of work · container-based (DDEV by default)
# a file is named <topic>-<YYYY-MM-DD>.<ext>; an edit is a new file, <name>-v2.<ext>
# nothing is renamed, moved or deleted in this session until I say so

1. list every picture under ~/workspace/images, by folder
2. for each one that does not follow the naming, look at it and propose a name and a folder
3. grep -rl "images/" ~/workspace/docs
   for each picture you would rename, tell me which documents link it
4. tell me which pictures look like the same thing twice, and which are linked by nothing

Report a table: the file now, what it shows, the name and folder you propose, what links it.
Wait for me before changing anything. When I agree, rename and fix the links in the same step.
"""
```
