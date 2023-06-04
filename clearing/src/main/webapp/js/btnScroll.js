/**
 * 
 */
 function goToScroll(name) {
    var location = document.querySelector("." + name).offsetTop;
    window.scrollTo({top: location-74, behavior: 'smooth'});
}
