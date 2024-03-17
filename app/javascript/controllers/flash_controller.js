import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    this.element.classList.add('animate__animated', 'animate__fadeIn');


    this.element.addEventListener('animationend', () => {
      this.element.classList.add('animate__fadeOut', 'animate__delay-1s');
    });
  }
}
