import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["display", "form"]
    static values = {
        formShown: Boolean
    }

    toggle_form() {
        if (this.formShownValue) {
            this.displayTarget.classList.remove("hidden")
            this.formTarget.classList.add("hidden")
        } else {
            console.log("hi")
            this.displayTarget.classList.add("hidden")
            this.formTarget.classList.remove("hidden")
        }

        this.formShownValue = !this.formShownValue
    }
}