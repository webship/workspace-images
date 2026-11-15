# @webship.co/workspace-images

The **Images** workspace of the [Webship Workspace](https://github.com/webship/workspace) dashboard:
the `images/` folder (type `media`), its settings file (`core/config/workspace.images.settings.yml`),
its commands and its docs, as a plugin.

## Use it

```bash
cd ~/workspace
bash core/scripts/plugins.sh --require github:webship/workspace-images
bash core/scripts/plugins.sh --activate images --with-needs     # puts `images` on the workspaces list of settings.yml
bash core/scripts/plugins.sh --install images      # the folder, its settings file (once), its commands, its docs (once)
```

The settings file and the docs are placed once and never overwritten: they hold what you put there.
`--deactivate` takes the workspace off the list; the folder and its content stay.

## What it needs

The AI items land in the four AI folders, so the manifest needs them (`needs`): `ai-agents`, `ai-skills`, `ai-commands`, `ai-prompts`. `--activate images` and `--install images` stop while one is missing and name it; with `--with-needs` they are required, activated and installed first.

## The AI items

The plugin carries its own AI items (`ai/` in the package, the manifest's `ai` block), written for the work this folder is for. `--install` places each one in the workspace folder of its kind, when that folder is an active workspace folder; `--uninstall` removes them, and keeps one that was edited in its folder.

| Item | Kind | Lands in | What it is for |
| --- | --- | --- | --- |
| `images-keeper` | Agent | `ai-agents/images-keeper.md` | Keeps `images/` in order: files a picture under the folder's naming, says what is there, finds what a document links, checks a picture before it is shared; never changes an original |
| `images-workflow` | Skill | `ai-skills/images-workflow/` | How work is done in `images/`: look, name, link, edit as a new file, check before sharing; the gallery, the settings keys and the `svg` block of generated illustrations |
| `/images-add` | Command | `ai-commands/images-add.md` | `/images-add <file> <what it shows>`: looks at the picture, chooses its folder and name, copies it there and says how a document links it |
| `images-tidy-the-folder` | Prompt | `ai-prompts/images-tidy-the-folder.md` | A new session that goes through the folder and proposes renames and folders, changing nothing until asked |

From its folder an item is installed into the AI CLI (Claude Code by default) like any other: the folder's page on the dashboard, or `bash cmd-tools-ai-items.sh <name> --install` in the AI folder (`--to dev/<project>` for one project). A prompt is not installed: the New screen form lists it as the start of a new session. The body of every item is plain Markdown any AI CLI can follow; Claude Code is the default shape (the frontmatter, the launch line of a prompt). Every command, flag, settings key and path an item names is checked by `tests/items.test.ts`; the shape of the items is the one of the reference, [`docs/plugin-items-pattern.md` of the WordPress plugin](https://github.com/webship/workspace-wordpress/blob/1.0.x/docs/plugin-items-pattern.md).

## The commands

| Command |
| --- |
| (none) |

The bash functions these commands call live in the dashboard's `core/scripts/functions`.
