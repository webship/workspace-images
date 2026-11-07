Feature: The Images workspace plugin
  Once the plugin is activated and installed, the images workspace is on the dashboard, and the
  Plugins page lists the plugin with its four steps.

  Scenario: The workspace page is there
    Given I am on "/images"
     Then I should see "Images"

  Scenario: The plugin is listed on the Plugins page
    Given I am on "/settings/plugins"
     Then I should see "Images"
      And I should see "@webship/workspace-images"
