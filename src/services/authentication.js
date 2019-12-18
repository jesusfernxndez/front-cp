const axios = require("axios");
const { baseUrl } = require("./config");

axios.default.baseUrl = baseUrl;

function AutenticarToken() {
  return axios
    .get("/profile", {
      headers: { authorization: localStorage.getItem("token") }
    })
    .then(res => {
      if (res.data.dni) {
        localStorage.setItem("userData", JSON.stringify(res.data));
        return res.data;
      }
      return false;
    })
    .catch(error => {
      console.error(`Error de servidor: ${error}`);
      return false;
    });
}

module.exports = {
  AutenticarToken
};
