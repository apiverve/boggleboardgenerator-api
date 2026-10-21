# Boggle Board Generator API - Ruby Gem

Boggle Board Generator creates random Boggle game boards with authentic dice configurations, HTML rendering, and downloadable PNG images.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_boggleboardgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_boggleboardgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_boggleboardgenerator'

# Initialize the client
client = APIVerve::Boggleboardgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  size: 4,
  image: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ size: 4, image: true })
  puts response["data"]
rescue APIVerve::Boggleboardgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Boggleboardgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Boggleboardgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/boggleboardgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/boggleboardgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
