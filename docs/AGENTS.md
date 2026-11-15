# Images

Images, screenshots and generated pictures: what a doc, a deck, an article or a site needs.

This folder is part of the **Webship Workspace** (`~/workspace`), a container-based harness (DDEV by default).

## Agent

Use the **`webship-workspace`** agent here. Screenshots for the Webship docs follow the docs
screenshot standard (1600×1000, red only to point something out).

## Skills

- **`webship-workspace-dashboard`**

## Browsing them

The dashboard shows every image at `https://images.workspace.ddev.site` as a gallery: folders,
search, sort, a type filter, and a viewer with the next and previous image, the size and how it
was made. **All media images** lists, read-only, the images in docs, videos, audio, specs, designs
and the dashboard's own screenshots. Files are served from `/files/images/<path>`.

## Conventions

- Name a file after what it shows and the date: `<topic>-<YYYY-MM-DD>.png`.
- Keep a folder per piece of work: `screenshots/`, `generated/`, `<article-or-project>/`.
- An edit is a new file (`<name>-v2.png`), never a change to the original.
- A doc that links one uses `../images/<path>`.

The full architecture is in `products/workspace/CLAUDE.md`.

## Hard rules

- **Clean up after your own work, and ASK before you do.** Say what you made and offer to remove
  it; never delete unasked.
- **Never put a key, token or password in a file here**, and nothing personal in a picture that is
  shared: no emails, no passwords, no client names unless the work is for that client.
- **Containers only (DDEV by default)** for anything that runs a site; images here are files, not projects.

## AI items for this folder

The plugin of this folder (`@webship.co/workspace-images`) places its own AI items in the AI folders of the
workspace, when they are active:

- `images-keeper` (`ai-agents/`): Keeps `images/` in order: files a picture under the folder's naming, says what is there, finds what a document links, checks a picture before it is shared; never changes an original
- `images-workflow` (`ai-skills/`): How work is done in `images/`: look, name, link, edit as a new file, check before sharing; the gallery, the settings keys and the `svg` block of generated illustrations
- `/images-add` (`ai-commands/`): `/images-add <file> <what it shows>`: looks at the picture, chooses its folder and name, copies it there and says how a document links it
- `images-tidy-the-folder` (`ai-prompts/`): A new session that goes through the folder and proposes renames and folders, changing nothing until asked
