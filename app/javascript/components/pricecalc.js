



const initPrice = () => {
  let finalprice = 0;
  const finalDiv = document.querySelector(".finalprice");
  const inputPrice = document.querySelector(".hiddenprice");
  const sliderOutput = document.querySelector("#number_of_plants");
  let sliderValue = Number(sliderOutput.innerHTML);
  console.log(sliderValue);
  let base_price = 29.99;
  const sliderInput = document.querySelector(".slider")
  sliderInput.addEventListener('change', () => {
    let sliderValue = Number(sliderOutput.innerHTML);
    if (sliderValue > 60 ) {
      base_price = 39.99;
    } else if (sliderValue > 40 ) {
      base_price = 29.99;
    } else if (sliderValue > 20 ) {
      base_price = 19.99;
    } else if (sliderValue > 10 ) {
      base_price = 9.99;
    } else if (sliderValue > 5 ) {
      base_price = 5.99;
    } else if (sliderValue > 0 ) {
      base_price = 2.99;
    } else {
      base_price = 1.99;
    };
    console.log(base_price); 
    finalprice += base_price;
    console.log(finalprice);
    finalDiv.innerText = finalprice;
    inputPrice.value = finalprice;
  });

  const calform = document.querySelector('#watering-days-calendar');
    let price;
    calform.addEventListener('change', (e) => {
      let selectedDays = document.querySelectorAll('.selected');
      price = (parseFloat(base_price) * parseInt(selectedDays.length));
      console.log(price);
      finalprice += price;
      console.log(finalprice);
      finalDiv.innerText = finalprice;
      inputPrice.value = finalprice;
  });

  const addons = document.querySelectorAll('.form-check-input');
  
  // const dustingservice = document.querySelector('#booking_dusting_service');
  // const cuttingservice = document.querySelector('#booking_cutting_service');
  // const repottingservice = document.querySelector('#booking_repotting_service');
  console.log(addons);
  let addonprice = 0;
  addons.forEach((addon) => {
    addon.addEventListener('change', (e) => {
      if (e.currentTarget.checked) {
        addonprice += 10;
        console.log("hi");
        finalprice += 10;
      } else {
        addonprice -= 10;
        console.log("ho");
        finalprice -= 10;
      }
      // let price = (parseInt(base_price) * parseInt(selectedDays.length)) + 10;
      console.log(addonprice);
      finalDiv.innerText = finalprice;
      inputPrice.value = finalprice;
    });
  });
};

export {initPrice};