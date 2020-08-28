



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
    let price;
    calform.addEventListener('change', (e) => {
      let selectedDays = document.querySelectorAll('.selected');
      price = (parseFloat(base_price) * parseInt(selectedDays.length));
      console.log(price);
  });

  const addon = document.querySelector('#addon-select');
  const dustingservice = document.querySelector('#booking_dusting_service');
  const cuttingservice = document.querySelector('#booking_cutting_service');
  const repottingservice = document.querySelector('#booking_repotting_service');

  dustingservice.addEventListener('change', (e) => {
    let dustingprice;
    if (dustingservice.value == true) {
      dustingprice = 10;
    } else {
      dustingprice = 0;
    }
    // let price = (parseInt(base_price) * parseInt(selectedDays.length)) + 10;
    console.log(dustingprice);
    dustingprice;
  });


  cuttingservice.addEventListener('change', (e) => {
    let cuttingprice;
    if (cuttingservice.val == true) {
      cuttingprice = 20;
    } else {
      cuttingprice = 0;
    }
    // let price = (parseInt(base_price) * parseInt(selectedDays.length)) + 10;
    console.log(cuttingprice);
  });

  repottingservice.addEventListener('change', (e) => {
    let repottingprice;
    if (repottingservice.val == true) {
      repottingprice = 30;
    } else {
      repottingprice = 0;
    }
    // let price = (parseInt(base_price) * parseInt(selectedDays.length)) + 10;
    console.log(repottingprice);
  });

  // let finalprice;
  // finalprice = price + parseInt(dustingprice) + parseInt(cuttingprice) + parseInt(repottingprice);
  // console.log(finalprice);
  // finalprice;
};

export {initPrice};