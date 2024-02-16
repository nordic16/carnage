import { Controller } from "@hotwired/stimulus"
import { sendRequest } from './helpers'

// Connects to data-controller="workout"
export default class extends Controller {
  connect() {
  }
  
  // TODO: make code less repetitive
  addSet() {
    let id = this.data.get("id");
    let prev = window.location.href
    let url = prev + `/addSet?exercise_id=${id}`
  
    sendRequest(url, "POST", id).then(() => {
      window.location.replace(prev)
    })
  }

  // CODE SO BAD BUT THIS SHIT ACTUALLY WORKS :SKULL:
  removeSet(event) {
    let set_id = event.currentTarget.getAttribute("data-set-id-value");
    let id = this.data.get("id");

    let prev = window.location.href
    let url = prev + `/removeSet?exercise_id=${id}&set_id=${set_id}`;

    sendRequest(url, "POST", {id, set_id}).then(() => {
      window.location.replace(prev)
    })
  }
}       
