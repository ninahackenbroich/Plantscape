const sliderInput = document.querySelector(".slider")
const sliderOutput = document.querySelector(".number-plants")

const initSlider = () => {
	sliderInput.addEventListener( "input", event => {
		const sliderValue = Math.floor(sliderInput.value)
		console.log(sliderValue)
		console.log(sliderInput)
		const sliderMin = sliderInput.min
		const sliderMax = sliderInput.max
		const newValue = Number(((sliderValue - sliderMin) * 100) / (sliderMax - sliderMin))
		sliderOutput.innerHTML = sliderValue
		sliderOutput.style.left = `calc(${newValue}% + (${8 - newValue * 0.15}px))`;

	})
}

export { initSlider }

