
const initKey = () => {
	const keyChoices = document.querySelectorAll(".key-choice")
	if (keyChoice) {
		keyChoice.addEventListener( "click", event => {

		})
		$(document).ready(function(){
  		$(".key-choice").click(function(){
    	$(this).toggleClass("active");
  		});
		});
	}
}

export { initKey }
