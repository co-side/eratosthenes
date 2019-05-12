class Eratosthenes
  MAX_AMOUNT = 100000
  def self.prime_numbers_in(amount)
    return '引数は2以上の正の整数を入力してください。' if amount.to_s !~ /\A(1[0-9]+|[2-9][0-9]*)\z/

    amount = amount.to_i
    return "メモリエラー防止の為、引数は#{MAX_AMOUNT}以内の値を入力してください。" if amount > MAX_AMOUNT

    numbers = [*(2..amount)]
    prime_numbers = []
    while numbers.first <= Math.sqrt(amount)
      prime_number = numbers.first
      prime_numbers << prime_number
      numbers.delete_if { |number| (number % prime_number).zero? }
    end
    prime_numbers.concat(numbers)
    prime_numbers.join(', ')
  end
end

puts Eratosthenes.prime_numbers_in(ARGV[0])
