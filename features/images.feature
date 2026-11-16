Feature: The Images workspace plugin
  Once the plugin is activated and installed, the images workspace is on the dashboard, and the
  Plugins page lists the plugin with its four steps.

  Scenario: The workspace page is there
    Given I am on "/images"
     Then the element "h1" should be displayed
      And "#webship-workspace-projects, .items-list, .workspace-page" should be attached

  # The Plugins page names each plugin; the package is on the plugin's own page (the row shows it on hover only).
  Scenario: The plugin is listed on the Plugins page, and its own page names its package
    Given I am on "/settings/plugins"
     Then I should see "Images"
     When I go to "/settings/plugin/images"
     Then I should see "@webship.co/workspace-images"

  # The AI folders are searched by name: with every plugin on, a folder lists more than one page of items.
  Scenario: The AI Agents folder lists the agent the plugin ships
    Given I am on "/ai-agents?q=images-keeper"
     Then I should see "images-keeper"

  Scenario: The AI Skills folder lists the skill the plugin ships
    Given I am on "/ai-skills?q=images-workflow"
     Then I should see "images-workflow"

  Scenario: The AI Commands folder lists the command the plugin ships
    Given I am on "/ai-commands?q=images-add"
     Then I should see "images-add"

  Scenario: The AI Prompts folder lists the prompt the plugin ships
    Given I am on "/ai-prompts?q=images-tidy-the-folder"
     Then I should see "images-tidy-the-folder"
