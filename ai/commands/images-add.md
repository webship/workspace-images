---
description: File a picture in the images/ folder of the Webship Workspace under the folder's naming: look at it, choose its folder and its name, copy it there, and say how a document links it.
argument-hint: '<file> <what it shows> [piece of work]'
---

# /images-add

File a picture in `~/workspace/images` from: `$ARGUMENTS`

The arguments are the text typed after the command: the first word is the path of the picture,
what follows says what it shows, and a last word after `in` is the piece of work it belongs to
(its folder). With no file, stop and ask for one. The workspace is container-based (DDEV by
default); a picture is a file, and nothing is installed to handle it.

## 1. Look at it

Open the picture and say what it shows, in one sentence. If it shows something personal or
secret (an address, a password, a key, the name of a client), stop and say so.

## 2. Choose where it goes

```bash
cd ~/workspace/images
ls -d */
```

The folder is the piece of work that was named, `screenshots/` for a screenshot, `generated/`
for a generated picture; make the folder when it is new. The name is
`<topic>-<YYYY-MM-DD>.<ext>`: lowercase, hyphens, the date of today.

## 3. Copy it, never over another file

```bash
ls <folder>/<name> 2>/dev/null
cp <file> <folder>/<name>
```

If a file of that name exists, this is an edit: the new file is `<name>-v2.<ext>`.

## 4. Report

Where the picture is, what it shows, and the link a document uses for it:
`../images/<folder>/<name>`. The source file is left where it was. For a tidy-up of the whole
folder, hand over to the `images-keeper` agent; the `images-workflow` skill has the naming.
