import { Controller } from "@hotwired/stimulus"
import { sendRequest } from './helpers'

// Connects to data-controller="workout"
export default class extends Controller {
  connect() {
  }
  
  addSet() {
    let id = this.data.get("id");
    let prev = window.location.href
    let url = prev + `/addSet?exercise_id=${id}`
  
    sendRequest(url, "POST", id).then(() => {
      window.location.replace(prev)
    })
  }
}       
