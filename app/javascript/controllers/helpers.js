async function sendRequest(url, method, data) {
  return await fetch(url, {
    method: method,
    headers: {
      Accept: "text/html",
      'X-CSRF-Token': document.getElementsByName("csrf-token")[0].getAttribute("content")
    },
    body: data
  })
}

export { sendRequest };
