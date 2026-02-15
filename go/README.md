# Boggle Board Generator API - Go Client

Boggle Board Generator creates random Boggle game boards with authentic dice configurations, HTML rendering, and downloadable PNG images.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Boggle Board Generator API](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/boggleboardgenerator-api/go
```

---

## Configuration

Before using the Boggle Board Generator API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Boggle Board Generator API documentation is found here: [https://docs.apiverve.com/ref/boggleboardgenerator](https://docs.apiverve.com/ref/boggleboardgenerator?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/boggleboardgenerator-api/go"
)

func main() {
    // Create a new client
    client := boggleboardgenerator.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "size": 4
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
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
        "Qu",
        "X",
        "H",
        "Y"
      ],
      [
        "U",
        "S",
        "A",
        "A"
      ],
      [
        "F",
        "R",
        "I",
        "P"
      ],
      [
        "N",
        "I",
        "D",
        "W"
      ]
    ],
    "size": 4,
    "html": "<html><head><title>Boggle Board</title><style>table {border-collapse: collapse; width: 320px; height: 320px; font-family: Arial, sans-serif;}td {text-align: center; width: 80px; height: 80px; padding: 0; border: 2px solid #333; background-color: #f5e6d3; font-size: 24px; font-weight: bold; color: #2c1810;}</style></head><body><table><tr><td>Qu</td><td>X</td><td>H</td><td>Y</td></tr><tr><td>U</td><td>S</td><td>A</td><td>A</td></tr><tr><td>F</td><td>R</td><td>I</td><td>P</td></tr><tr><td>N</td><td>I</td><td>D</td><td>W</td></tr></table></body></html>",
    "image": {
      "imageName": "bc827ac0-ef2c-40e4-81a3-2fc6477c5fd2_boggle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/boggleboardgenerator/bc827ac0-ef2c-40e4-81a3-2fc6477c5fd2_boggle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1763884450&Signature=WBy6c0%2FJsQiYNGTbjhn46R%2F9NEBMc1ENfFHpnBSEgLajqvdygFcjfuyay4q9jTkryOyAGjmOrVX%2F3TkFh6XT6sefI3s9hlEd6w9EiVFe4j6Y0zRKgJbxINkQHTyTBUDRmFu0VkPrrvnObrQbrcxK0pTLSGAFWLfut913zt5ESt8mzcGOc9aMIcISbAFw8KfTt5CIKOddGKqhYtRwPeo2uTVNd7CJ4EdEYuJSYnchclOFsybtCSQJNN7xqGgttsvuvD2bWKPIPnkVrooCIznaoY09Wwyt216S59UH8gkGXPRhZNEEIjxnfZ4SVcOCM2ySYrd3CaGSBttp0DeR8yW1yg%3D%3D",
      "expires": 1763884450399
    }
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
