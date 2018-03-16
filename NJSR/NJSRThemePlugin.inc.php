<?php

/**
 * @file plugins/themes/NJSR/NJSRThemePlugin.inc.php
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class NJSRThemePlugin
 * @ingroup plugins_themes_NJSR
 *
 * @brief NJSR theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class NJSRThemePlugin extends ThemePlugin {

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
		return __('plugins.themes.NJSR.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.NJSR.description');
	}
}
