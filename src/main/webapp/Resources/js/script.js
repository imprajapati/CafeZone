var swiper = new Swiper( ".home-slider",{
    spaceBetween: 30,
    centeredSliders: true,
    autoplay:{
        delay: 3500,
        disableOnInteraction: false,
    },
    pagination:{
        el:".swiper-pagination",
        clickable: true,
    },
loop:true,
});


/*let cart = document.querySelector('.shopping-cart-container');

document.querySelector('#cart-btn').onclick = () =>{
   // cart.classList.toggle('active');
    //searchForm.classList.remove('active');
  //  loginForm.classList.remove('active');
    navbar.classList.remove('active');
}*/

let loginForm = document.querySelector('.login-form-container');

document.querySelector('#login-btn').onclick = () =>{
    loginForm.classList.toggle('active');
    //searchForm.classList.remove('active');
    cart.classList.remove('active');    
    navbar.classList.remove('active');
}
document.querySelector('#home').onclick = () =>{
    loginForm.classList.toggle('active');
    //searchForm.classList.remove('active');
    cart.classList.remove('active');    
    navbar.classList.remove('active');
}
document.querySelector('#about').onclick = () =>{
    loginForm.classList.toggle('active');
    //searchForm.classList.remove('active');
    cart.classList.remove('active');    
    navbar.classList.remove('active');
}
document.querySelector('#prop').onclick = () =>{
    loginForm.classList.toggle('active');
    //searchForm.classList.remove('active');
    cart.classList.remove('active');    
    navbar.classList.remove('active');
}
document.querySelector('#menu').onclick = () =>{
    loginForm.classList.toggle('active');
    //searchForm.classList.remove('active');
    cart.classList.remove('active');    
    navbar.classList.remove('active');
}
document.querySelector('#blog').onclick = () =>{
    loginForm.classList.toggle('active');
    //searchForm.classList.remove('active');
    cart.classList.remove('active');    
    navbar.classList.remove('active');
}



let navbar = document.querySelector('.header .navbar');

document.querySelector('#menu-btn').onclick = () =>{
    navbar.classList.toggle('active');

    cart.classList.remove('active');    
    loginForm.classList.remove('active');
}

window.onscroll = () =>{
    navbar.classList.remove('active');
}