const initSlider = () => {
	const sliderInput = document.querySelector(".slider")
	const sliderOutput = document.querySelector(".number-plants")
	const inputContainer = document.querySelector(".booking-question")
	if (sliderInput) {
		sliderInput.addEventListener( "input", event => {
			const sliderValue = Math.floor(sliderInput.value)
			const sliderMin = sliderInput.min
			const sliderMax = sliderInput.max
			const valuePercentage = (100 * sliderValue) / sliderMax
			// const newValue = Number(((sliderValue - sliderMin) * 100) / (sliderMax - sliderMin))
			sliderOutput.innerHTML = sliderValue
			sliderOutput.style.left = `(${(valuePercentage * inputContainer.width) / 100}%)` 
			console.log(valuePercentage, sliderInput.style)
		})
	}
}

export { initSlider }

