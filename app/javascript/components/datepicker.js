import flatpickr from "flatpickr";

const initDatepicker = () => {
	flatpickr(".datepicker", {
		mode: "multiple",
		inline: true,
		showMonths:	2,
	});
}

export { initDatepicker };
