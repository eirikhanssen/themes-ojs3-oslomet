<?php

/**
 * @file plugins/themes/OsloMetParent/OsloMetParentThemePlugin.inc.php
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class OsloMetParentThemePlugin
 * @ingroup plugins_themes_OsloMetParent
 *
 * @brief OsloMetParent theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class OsloMetParentThemePlugin extends ThemePlugin {

    /**
     * Load the custom styles for our theme
     * @return null
     */
    
	public function init() {

        // Use the parent theme's unique plugin slug
		$this->setParent('defaultthemeplugin');

		// add style overrides for the backend
		// this doesn't work
		//$this->addStyle('backend-overrides', 'styles/backend.less', array( 'contexts' => 'backend' ));

        // Change the ID of this stylesheet slug to
        // `child-stylesheet`. This ensures that it
        // won't clash with the parent's stylesheet.
        $this->modifyStyle('stylesheet', array('addLess' => array('styles/index.less')));
	}
	
	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.OsloMetParent.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.OsloMetParent.description');
	}
}
