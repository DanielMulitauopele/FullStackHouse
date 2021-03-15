// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery3
//= require popper
//= require bootstrap

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

// function changeImage(img) {
//     img = $(img);
//    var in_url = img.attr('src'),
//      out_url =  img.attr('9H.png');
//    img.attr('src', out_url).attr('9H.png', in_url);
// }
