export const api = (filters, success, error) => {
  $.ajax({
    url: `/api/songs`,
    type: 'GET',
    data: {filters},
    success,
    error
  });
};

export const asArray = (object) => Object.keys(object).map(key => object[key]);
