import flatpickr from "flatpickr";

const initDatepicker = () => {
	flatpickr(".datepicker", {
		mode: "multiple",
		inline: true,
		showMonths:	2,
		onClose: function(selectedDates, dateStr, instance) {
			let daysMultiple = document.getElementsByClassName('.flatpickr-day selected');
			let daysLengthTotal = daysMultiple.length;
			console.log(daysLengthTotal);
		}
	});
}

export { initDatepicker };
