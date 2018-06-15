import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Drink a wine", "Feel fine", "Rise and shine."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
