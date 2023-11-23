import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = { price: Number }
  static targets = ['dateField', 'priceDisplay']

  connect() {
    const handleChange = (selectedDates, _dateStr, _instance) => {
      const totalPrice = ((selectedDates[1] - selectedDates[0]) / 86400000) * this.priceValue;
      if (!isNaN(totalPrice)) {
        this.priceDisplayTarget.textContent = totalPrice;
      }
    }
    flatpickr(this.dateFieldTarget, {
      mode: "range",
      onChange: handleChange,
    })
  }
}
