$( document ).ready(function() {
	$(".galleys_links").append('<li><a class="obj_galley_link" href="https://nettskjema.uio.no/answer/skriftserien-bestilling.html">Bestill trykt utgave</a></li>');
	$( ".entry_details" ).prepend( ($( ".entry_details" ).has(".item.galleys").length ? '' : '<div class="item galleys"><ul class="value galleys_links"><li><a class="obj_galley_link" href="https://nettskjema.uio.no/answer/skriftserien-bestilling.html">Bestill trykt utgave</a></li></ul></div>') );
});
