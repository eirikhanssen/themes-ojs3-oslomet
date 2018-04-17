{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div id="pkp_content_footer" class="pkp_structure_footer_wrapper" role="contentinfo">

	<footer class="pkp_structure_footer">
		<div class="columns">

			<div class="column">
				<h4>Driftet av</h4>
					<p>
						<a id="hostedByOsloMetLSB" href="http://www.hioa.no/LSB">
							<img class="hioaFooterLogo" src="https://journals.hioa.no/public/site/images/hioalogo-bars-black-on-transparent-bg-80x45.png" alt="">
							<span><strong>Universitetsbiblioteket&nbsp;OsloMet</strong>
						</a>
					</p>
			</div><!-- column -->

			{if $pageFooter}
			<div class="column">
				<div class="pkp_footer_content">
					{$pageFooter}
				</div>
			</div><!-- column -->
			{/if}

			<div class="column">
				<h4>Personvernerklæring</h4>
					<p><a class="no_NO" href="https://journals.hioa.no/help/cookies-no_NO.html">Om informasjonskapsler på journals.hioa.no</a></p>
			</div><!-- column -->

		</div><!-- columns -->

		<!-- add some debug/demo buttons (will be removed later) -->
		<fieldset class="gui-debug-buttons">
			<legend>Experimental styles</legend>
			<button id="no-borders-btn" onclick="(function(){ldelim} $('body').toggleClass('no-borders');{rdelim})();">toggle borders</button>		
		</fieldset>

	</footer>

</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
<script type="text/javascript">
$( document ).ready(function() {ldelim}
    $('body').addClass('no-borders');
{rdelim});
</script>
</body>
</html>
