<?php

/**
 * @file plugins/themes/PP/PPThemePlugin.inc.php
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class PPThemePlugin
 * @ingroup plugins_themes_PP
 *
 * @brief PP theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class PPThemePlugin extends ThemePlugin {

    /**
     * Load the custom styles for our theme
     * @return null
     */
    
	public function init() {

        // Use the parent theme's unique plugin slug
        $this->setParent('oslometparentthemeplugin');

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
		return __('plugins.themes.PP.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.PP.description');
	}
}
