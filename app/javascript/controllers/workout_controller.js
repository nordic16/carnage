import { Controller } from "@hotwired/stimulus"
import { sendRequest } from './helpers'

// Connects to data-controller="workout"
export default class extends Controller {
  connect() {
  }
  
  async addSet() {
    let id = this.data.get("id");
    let url = window.location.href + `/addSet?exercise_id=${id}`
  
    await sendRequest(url, "POST", id)
  }
}       
