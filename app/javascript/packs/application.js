// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

// css and bootstrap
import "css/site";
import "jquery";
import("../src/plugins"); // note the function usage!

// js
import hello from "../src/hello";
hello("manh");

import("@nathanvda/cocoon")

var x = $('#student_parents_attributes_0_name').length;
console.log('test', x);
Rails.start();
Turbolinks.start();
ActiveStorage.start();
