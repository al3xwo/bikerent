import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = { price: Number }

  connect() {
    console.log('Hello from insanity');
    console.log('this.priceValue', this.priceValue);
    const price = this.priceValue;
    flatpickr(this.element, {
      mode: "range",
      onChange: function (selectedDates, _dateStr, _instance) {
        console.dir(((selectedDates[1] - selectedDates[0]) / 86400000) * price);
      }
    })
  }
}
