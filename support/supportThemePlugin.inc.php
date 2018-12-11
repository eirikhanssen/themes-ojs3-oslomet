<?php

/**
 * @file plugins/themes/support/supportThemePlugin.inc.php
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class supportThemePlugin
 * @ingroup plugins_themes_support
 *
 * @brief support theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class supportThemePlugin extends ThemePlugin {

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
        $this->modifyStyle('stylesheet', array('addLess' => array('styles/lib.less'))); // load lib styles

	// Load lightbox script to display image series
        $this->addScript('default', 'lib/lightbox2/js/lightbox.js');

	}
	
	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.support.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.support.description');
	}

}
