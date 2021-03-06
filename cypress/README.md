### cypress in manageiq-ui-classic

#### Run

Please note that the rails server has to be running first:

    bin/rails s


Run without interaction:

    yarn cypress:run:chrome
    yarn cypress:run:firefox

Will run the tests in console, and output a screengrab and screenshot in `cypress/screenshots` and `cypress/videos`.

Run interactively:

    yarn cypress:open

Opens a chrome instance for debugging.


#### Write

Actual tests can be found in `cypress/integration/ui/`.

ManageIQ implements the following cypress extensions:

##### login

`cy.login()` - logs in as admin

##### navigation

* `cy.menu('Compute', 'Infrastructure', 'VMs')` - navigates the main menu
* `cy.accordion('Service Dialogs')` - expand accordion
* TODO `cy.treeSelect('All VMs & Templates', 'HyperV', 'SCVMM')` - switch tree items
* `cy.toolbar('Configuration', 'Edit this VM')` - trigger toolbar buttons
* TODO `cy.tab('Report Info')` - switch miq tabs

TODO allow using {id:...} instead of string label for menu items, gtl items, tree nodes, accordions, toolbar items

##### inspection

* `cy.menuItems()` - parse the main menu and yield an object tree
* `cy.toolbarItem(...)` - yields an object describing a toolbar button state, or null

#### assertions

* `cy.expect_explorer_title('Active Services')` - check the title on an explorer screen
* `cy.expect_show_list_title('Cloud Providers')` - check the title on a show\_list screen
* TODO `cy.expect_layout('miq-layout-center_div_with_listnav')` - check current layout

#### GTL

* `cy.gtl()` - return GTL
* `cy.gtl_error` - check that error message is present
* `cy.gtl_no_record` - check that `No data` message is present
* `cy.gtl_click('Name')` - click on a GTL

#### searchbox

* `cy.search_box()` - check that searchbox is present 
* `cy.no_search_box()` - check that searchbox is not present
