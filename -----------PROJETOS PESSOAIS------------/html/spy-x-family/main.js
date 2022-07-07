function imgSlider(anything) {
    document.querySelector('.family').src = anything;
};

function changeBgColor(color){
    const sec = document.querySelector('.sec');
    sec.style.background = color;
}

function scrollUp(){
    window.scrollTo(0,0);
}