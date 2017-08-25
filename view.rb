class View
  def initialize
    @currency_symbols = [
      "USD",
      "JPY",
      "CNY",
      "SGD",
      "HKD",
      "CAD",
      "NZD",
      "AUD",
      "CLP",
      "GBP",
      "DKK",
      "SEK",
      "ISK",
      "CHF",
      "BRL",
      "EUR",
      "RUB",
      "PLN",
      "THB",
      "KRW",
      "TWD"
    ]
  end


  def show_instructions
    puts "\n\n\n\n"
    puts "~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~"
    puts "~~$$~~$$~~$$                Money Raker v.0.0.1           $$~~$$~~$$~~$$~~"
    puts "~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~"
    puts
    puts "Pick your desired currency from the list of codes below:"
    ind = 0
    until ind == 20
      puts "#{@currency_symbols[ind]} #{@currency_symbols[ind+1]} #{@currency_symbols[ind+2]} #{@currency_symbols[ind+3]} #{@currency_symbols[ind+4]}"
      ind +=5
    end
  end

  def get_input
    puts
    puts '~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~'
    user_input = gets.chomp.upcase
    puts '~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~'
    until valid_input?(user_input)
      puts
      puts '~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~'
      user_input = gets.chomp.upcase
      puts '~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~$$~~'
      puts
    end
    user_input
  end

  def valid_input?(input)

    if @currency_symbols.include?(input)
      true
    else
      puts 'Please enter a valid currency from provided codes'
      false
    end
  end
end
