Boggle Board Generator API
============

Boggle Board Generator creates random Boggle game boards with authentic dice configurations, HTML rendering, and downloadable PNG images.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-boggleboardgenerator.svg)](https://pypi.org/project/apiverve-boggleboardgenerator/)

This is a Python wrapper for the [Boggle Board Generator API](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-boggleboardgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-boggleboardgenerator
```

---

## Configuration

Before using the Boggle Board Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient

# Initialize the client with your APIVerve API key
api = BoggleboardgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "size": 4,
    "image": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Boggle Board Generator API documentation is found here: [https://docs.apiverve.com/ref/boggleboardgenerator](https://docs.apiverve.com/ref/boggleboardgenerator?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient

# Initialize the client with your APIVerve API key
api = BoggleboardgeneratorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "size": 4,
    "image": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `BoggleboardgeneratorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient, BoggleboardgeneratorAPIClientError

api = BoggleboardgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "size": 4,
    "image": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except BoggleboardgeneratorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient, BoggleboardgeneratorAPIClientError

api = BoggleboardgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "size": 4,
    "image": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except BoggleboardgeneratorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient, BoggleboardgeneratorAPIClientError

query = {
    "size": 4,
    "image": true
}

# Using context manager ensures proper cleanup
with BoggleboardgeneratorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except BoggleboardgeneratorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient

# Enable debug mode
api = BoggleboardgeneratorAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "size": 4,
    "image": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_boggleboardgenerator.apiClient import BoggleboardgeneratorAPIClient

api = BoggleboardgeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "size": 4,
    "image": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
