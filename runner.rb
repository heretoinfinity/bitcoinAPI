require 'open-uri'


require 'json'


BASE_URL = "https://blockchain.info/ticker"


response = open(BASE_URL).read

response_hash = JSON.parse(response)

# currency_requested =



# view return it to a string
USD_value = response_hash['USD']['last']

# .to_s + response_hash['USD']['last'].to_s

p USD_value
sleep(61)


response2 = open(BASE_URL).read

response_hash2 = JSON.parse(response2)

# currency_requested =

# view return it to a string
USD_value2 = response_hash2['USD']['last']

# .to_s + response_hash['USD']['last'].to_s

p USD_value2