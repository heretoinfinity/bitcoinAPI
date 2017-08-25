class View
  currency_symbols = {
    "USD" =>  "$",
    "JPY" => "¥",
    "CNY" => "¥",
    "SGD" => "$",
    "HKD" => "$",
    "CAD" => "$",
    "NZD" => "$",
    "AUD" => "$",
    "CLP" => "$",
    "GBP" => "£",
    "DKK" => "kr",
    "SEK" =>"kr",
    "ISK" => "kr",
    "CHF" => "CHF",
    "BRL" => "R$",
    "EUR" => "€",
    "RUB" => "RUB",
    "PLN" => "zł",
    "THB" => "฿",
    "KRW" => "₩",
    "TWD" =>"NT$"
  }

  def get_input
    puts "Pick one of the following currencies"
    currency_symbols.each do |key, value|
      puts "key"
    end

    user_input = gets.chomp
  end
end