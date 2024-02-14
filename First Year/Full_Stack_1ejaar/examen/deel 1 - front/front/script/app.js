'use strict';

const backend_IP = 'http://localhost:5001';
const backend = backend_IP + '/api/v1';

// #region ***  DOM references                           ***********
let htmlMendeljev;
let htmlInfo;
let htmlFilter;
// #endregion

// #region ***  Callback-Visualisation - show___         ***********
const showError = function (error) {
  console.info(error);
};

const showMend = function (x) {
  //   console.log(x);
  let htmlString = '';
  for (const i of x) {
    // console.log(i);
    htmlString += ` <div data-atomic="${i.atomicNumber}" class="c-mendelelement o-gridrow__${i.displayRow} o-gridcol__${i.displayColumn} c-mendelelement--${i.typeCode}">
        <div class="c-mendelelement__atomicnumber">${i.atomicNumber}</div>
        <div class="c-mendelelement__symbol">${i.symbol}</div>
      </div>`;
  }
  htmlMendeljev.innerHTML = htmlString;
  listenToFilter();
  listenToHok();
};

const showTypes = function (x) {
  //   console.info(x);
  let htmlString = '';
  for (const i of x) {
    htmlString += `<div data-typeid="${i.typeID}" class="js-filter-type c-filter__type c-filter__type--${i.typeCode}">type${i.type}</div>`;
  }

  htmlFilter.innerHTML = htmlString;
};

const showType = function (x) {
  //   console.log(x);
  let htmlString = '';
  for (const i of x) {
    // console.log(i);
    htmlString += ` <div data-atomic="${i.atomicNumber}" class="c-mendelelement o-gridrow__${i.displayRow} o-gridcol__${i.displayColumn} c-mendelelement--${i.typeCode}">
        <div class="c-mendelelement__atomicnumber">${i.atomicNumber}</div>
        <div class="c-mendelelement__symbol">${i.symbol}</div>
      </div>`;
  }
  htmlMendeljev.innerHTML = htmlString;
  listenToHok();
};

const showInfo = function (x) {
  let htmlString = `Symbool: ${x.symbol}<br>Ontdekker: ${x.discoverer}<br>Jaar: ${x.yearDiscovered}`;
  //   console.info(x);
  htmlInfo.innerHTML = htmlString;
  listenToFilter();
};
// #endregion

// #region ***  Callback-No Visualisation - callback___  ***********
// #endregion

// #region ***  Data Access - get___                     ***********

const get_mend = function () {
  const url = 'http://127.0.0.1:5001/api/v1/elementen/';
  handleData(url, showMend, showError);
};

const get_types = function () {
  const url = 'http://127.0.0.1:5001/api/v1/types/';
  handleData(url, showTypes, showError);
};
// #endregion

// #region ***  Event Listeners - listenTo___            ***********
const listenToFilter = function () {
  //   console.info('test');
  let x = document.querySelectorAll('.js-filter-type');
  for (const i of x) {
    i.addEventListener('click', function () {
      const id = this.getAttribute('data-typeid');
      const url = `http://127.0.0.1:5001/api/v1/elementen/types/${id}/`;
      handleData(url, showType, showError);
    });
  }
};

const listenToHok = function () {
  let x = document.querySelectorAll('.c-mendelelement');
  //   console.info(x);
  for (const i of x) {
    i.addEventListener('mouseenter', function () {
      const id = this.getAttribute('data-atomic');
      const url = `http://127.0.0.1:5001/api/v1/elementen/${id}/`;
      handleData(url, showInfo, showError);
    });
  }
};
// #endregion

// #region ***  Init / DOMContentLoaded                  ***********
const init = function () {
  htmlMendeljev = document.querySelector('.js-mendeljev');
  htmlFilter = document.querySelector('.js-filter');
  htmlInfo = document.querySelector('.js-info');
  get_mend();
  get_types();
};

document.addEventListener('DOMContentLoaded', init);
// #endregion
