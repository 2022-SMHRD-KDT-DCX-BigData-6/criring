/**
 * 
 */
 function goToScroll(name) {
    var location = document.querySelector("." + name).offsetTop;
    window.scrollTo({top: location, behavior: 'smooth'});
}

function goToTop() {
	window.scrollTo({top: 0, behavior: 'smooth'});
}