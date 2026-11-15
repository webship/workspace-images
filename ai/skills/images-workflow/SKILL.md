---
name: images-workflow
description: How work is done in the `images/` folder of the Webship Workspace — what an item is there (a picture file, a folder per piece of work), how a picture is named and filed, how a document links one, what the gallery page shows, the rule that an edit is a new file, and the settings keys of the folder, the `svg` block of generated illustrations among them. Use when asked to "file this screenshot", "where do images go", "how are images named", "change the illustration brief", or when a file of `images/` is about to be added, renamed or shared.
argument-hint: '[what you are about to do in images]'
---

# images-workflow

`~/workspace/images` is the Images folder of a Webship Workspace (container-based, DDEV by default).
Images are the images, screenshots and generated pictures a document, a deck, an article or a site needs, kept as files and browsed as a gallery. It comes with the Images plugin (`@webship.co/workspace-images`), which places the folder, its settings file and its docs; it ships no `cmd-*.sh` of its own.

## The order of work

1. **Look** at the picture, and say what it shows.
2. **Name** it: `<topic>-<YYYY-MM-DD>.<ext>`, in the folder of its piece of work under
   `~/workspace/images` (`screenshots/`, `generated/`, `<article-or-project>/`).
3. **Link** it from a document as `../images/<path>`.
4. **Edit** as a new file, `<name>-v2.<ext>`; the original stays.
5. **Before sharing**, look once more: nothing personal, nothing secret, only the product the
   work is about.

## Settings

| Key | File | What it says |
| --- | --- | --- |
| `doc.name` | `core/config/workspace.images.settings.yml` | The folder under the workspace root: `images` |
| `type` | `core/config/workspace.images.settings.yml` | `media`: the page is a list of media items |
| `svg.brief` | `core/config/workspace.images.settings.yml` | The brief every generated SVG illustration starts from |
| `svg.palette` | `core/config/workspace.images.settings.yml` | The colours a drawing may use: `brand-tokens` takes the workspace's brand colours |
| `svg.max_attempts`, `svg.request_timeout`, `svg.time_budget` | `core/config/workspace.images.settings.yml` | How many attempts a drawing gets, and its time limits in seconds |
| `svg.motion.animation`, `svg.motion.duration`, `svg.motion.stagger` | `core/config/workspace.images.settings.yml` | How a drawing moves when it comes into view |
| `svg.examples` | `core/config/workspace.images.settings.yml` | The example prompts the Create form offers |
| `assistant.name`, `assistant.placeholder` | `core/config/workspace.images.settings.yml` | What the assistant is called on this page; `default` takes the workspace's |
| `workspaces` | `core/config/settings.yml` | The active folders; `images` is on it once the plugin is activated |

## Rules

- **An edit is a new file** (`<name>-v2.png`), never a change to the original.
- **Look at every image before it is shared**: open it, and say what it shows. Nothing personal
  in a picture that is shared: no address, no password, no name of a client unless the work is
  for that client; and only the product the work is about.
- **Never put a key, a token or a password in a file here.**
- **Never delete unasked.** Say what you made, and offer to remove it.
- Images here are files, not projects: the workspace is container-based (DDEV by default), and
  nothing is installed on the host to handle a picture.

The Images plugin places these beside this one, each in the workspace folder of its kind: the agent `images-keeper` (`ai-agents/`), the command `/images-add` (`ai-commands/`) and the prompt `images-tidy-the-folder` (`ai-prompts/`).
