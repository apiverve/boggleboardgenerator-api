BoggleBoardGenerator API
============

Boggle Board Generator creates random Boggle game boards with authentic dice configurations, HTML rendering, and downloadable PNG images.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [BoggleBoardGenerator API](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=nuget&utm_medium=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.BoggleBoardGenerator
```

Using the Package Manager:
```
nuget install APIVerve.API.BoggleBoardGenerator
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.BoggleBoardGenerator
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.BoggleBoardGenerator"
5. Click on the APIVerve.API.BoggleBoardGenerator package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the boggleboardgenerator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.BoggleBoardGenerator;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The BoggleBoardGenerator API documentation is found here: [https://docs.apiverve.com/ref/boggleboardgenerator](https://docs.apiverve.com/ref/boggleboardgenerator?utm_source=nuget&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
BoggleBoardGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.BoggleBoardGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.BoggleBoardGenerator;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.BoggleBoardGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.BoggleBoardGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new BoggleBoardGeneratorQueryOptions {
    Size = 4,
    Image = true
};

using (var apiClient = new BoggleBoardGeneratorAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
