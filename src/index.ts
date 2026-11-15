/**
 * The Images workspace for Webship Workspace: the `images/` folder as a plugin.
 *
 * What the package carries is placed by the installer from the manifest (the folder's settings file,
 * its commands, its docs and its AI items, each in the folder of its kind) and listed by --activate; the dashboard draws the workspace from the
 * settings file like any other. Nothing to register at run time yet: this is where the folder's own
 * rail buttons, row menus or assistant context would go.
 */

import type { PluginApi } from '@webship.co/workspace-plugin-api';

export const WORKSPACE_KEY = 'images';

/** The AI items the installer places, each in the workspace folder of its kind (ai/ in this package). */
export const AGENTS = ['images-keeper'];
export const SKILLS = ['images-workflow'];
export const AI_COMMANDS = ['images-add'];
export const PROMPTS = ['images-tidy-the-folder'];

export function register(api: PluginApi): void {
  api.addAssistantContext(() => `The images/ workspace is the Images workspace (a plugin, @webship.co/workspace-images); its commands are the cmd-*.sh scripts in that folder. It comes with AI items for work in this folder: the agent \`images-keeper\` (ai-agents/), the skill \`images-workflow\` (ai-skills/), the command \`/images-add\` (ai-commands/) and the prompt \`images-tidy-the-folder\` (ai-prompts/).`);
}
