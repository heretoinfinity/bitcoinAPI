class View
  def initialize
    @currency_symbols = {
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
  end


  def show_instructions
    puts "~~$$~~$$~~$$~~$$~~$$~~Money Raker v.0.0.1~~$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~"
    puts "Pick your desired currency from the list of codes below:"
    @currency_symbols.each do |key, value|
      puts "#{key}"
    end
  end

  def get_input
    user_input = gets.chomp
  end
end