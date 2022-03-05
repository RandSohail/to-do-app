/* eslint-disable no-console */
const displayData = document.querySelector('.holder');
const displayData2 = document.querySelector('.holder-second');
console.log(11111);

fetch('/getData')
  .then((data) => data.json())
  .then((result) => {
    console.log('data', result);
    displayData.textContent = result[0].name + result[0].note;
    displayData2.textContent = result[1].name + result[1].note;
  }).catch((error) => console.log(error));
