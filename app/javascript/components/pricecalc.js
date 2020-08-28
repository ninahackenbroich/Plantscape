



const initPrice = () => {
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

    
  });
  const calform = document.querySelector('#watering-days-calendar');
    console.log(calform);
    let price;
    calform.addEventListener('change', (e) => {
      console.log(e.currentTarget);
      let selectedDays = document.querySelectorAll('.selected');
      console.log(selectedDays.length);
      price = (parseInt(base_price) * parseInt(selectedDays.length));
      console.log(price);
  });

  const addon = document.querySelector('#addon-select');
  console.log(addon);
  addon.addEventListener('change', (e) => {
    let finalprice;
    let dustingservice = document.querySelector('#booking_dusting_service');
    console.log(dustingservice);
    let cuttingservice = document.querySelector('#booking_cutting_service');
    console.log(cuttingservice);
    let repottingservice = document.querySelector('#booking_repotting_service');
    console.log(repottingservice);
    if (repottingservice.selected) {
        finalprice = price + 30;
    }
    if (cuttingservice.selected) {
      finalprice = price + 20;
    }
    if (dustingservice.selected) {
      finalprice = price + 10;
    }
    // let price = (parseInt(base_price) * parseInt(selectedDays.length)) + 10;
    console.log(finalprice);
  });
};

export {initPrice};