import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Drink wine.", "Feel fine.", "Rise and shine, baby.", "Rise and shine."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
