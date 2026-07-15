# Boggle Board Generator API

Boggle Board Generator creates random Boggle game boards with authentic dice configurations, HTML rendering, and downloadable PNG images.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/boggleboardgenerator.svg)](https://www.npmjs.com/package/@apiverve/boggleboardgenerator)

This is a Javascript Wrapper for the [Boggle Board Generator API](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/boggleboardgenerator
```

Using yarn:
```shell
yarn add @apiverve/boggleboardgenerator
```

---

## Configuration

Before using the Boggle Board Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Boggle Board Generator API documentation is found here: [https://docs.apiverve.com/ref/boggleboardgenerator](https://docs.apiverve.com/ref/boggleboardgenerator?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const boggleboardgeneratorAPI = require('@apiverve/boggleboardgenerator');
const api = new boggleboardgeneratorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  size: 4,
  image: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  size: 4,
  image: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  size: 4,
  image: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "board": [
      [
        "U",
        "A",
        "Z",
        "H"
      ],
      [
        "Y",
        "L",
        "E",
        "A"
      ],
      [
        "A",
        "I",
        "E",
        "F"
      ],
      [
        "T",
        "D",
        "E",
        "X"
      ]
    ],
    "size": 4,
    "html": "<html><head><title>Boggle Board</title><style>table {border-collapse: collapse; width: 320px; height: 320px; font-family: Arial, sans-serif;}td {text-align: center; width: 80px; height: 80px; padding: 0; border: 2px solid #333; background-color: #f5e6d3; font-size: 24px; font-weight: bold; color: #2c1810;}</style></head><body><table><tr><td>U</td><td>A</td><td>Z</td><td>H</td></tr><tr><td>Y</td><td>L</td><td>E</td><td>A</td></tr><tr><td>A</td><td>I</td><td>E</td><td>F</td></tr><tr><td>T</td><td>D</td><td>E</td><td>X</td></tr></table></body></html>",
    "image": {
      "imageName": "e91f26a6-95fc-47c1-9117-b0bb169c3418_boggle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/boggleboardgenerator/e91f26a6-95fc-47c1-9117-b0bb169c3418_boggle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010033&Signature=Y%2Bx7mfpf%2FtSwnIkgen0c5gfuBNROyJYByCnhToBZIM660VzCpCX8ON%2F9V1sBElqpDm2rePIfPMqiFG3DC5f98%2BczXodTl4TiUnDxyYm5uMv%2Fdr71kRdUnVKRMp42FkflnxQ2p8YMmRTEx279hpgRQb2BCx4e7ntQrh8uepKoaHY1G8gBOJIof0LQPSWo%2FygwA74Hmwwe8wTZcScXgTskxXm%2BpESGeOb942JiP8Pf9CL1RWOYdjIS3Kr4%2FcgnEMXPjKecOcNZaN%2BGQXm3UC6GAVHzA1QF0uOOKE%2FeyxybNRD1dc0uCUFNYHIpXpEJ8pPvzYHQlSNv1EPfpd4pMc9s9g%3D%3D",
      "expires": 1766010033049
    }
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
