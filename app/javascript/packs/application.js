// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Shrink Header on Scroll
const header = document.getElementById("header-container");
const logo = document.getElementById("logo-img");

window.onscroll = function() {
    if (document.body.scrollTop > 80) {
        header.classList.add("sticky");
        logo.style.width = "32px";
  } else {
        header.classList.remove("sticky");
        logo.style.width = "42px";
  }
}
