import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Drink a wine", "Feel young again!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
