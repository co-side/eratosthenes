require File.expand_path(File.dirname(__FILE__) + '/../eratosthenes')

describe Eratosthenes do
  message_for_invalid_argment = '引数は2以上の正の整数を入力してください。'
  message_for_argment_limit_over = 'メモリエラー防止の為、引数は100000以内の値を入力してください。'
  prime_numbers_in_10 = '2, 3, 5, 7'
  prime_numbers_in_30 = '2, 3, 5, 7, 11, 13, 17, 19, 23, 29'
  prime_numbers_in_120 = '2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113'

  specify "引数が「1」の場合「#{message_for_invalid_argment}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in(1)).to eq message_for_invalid_argment
  end
  specify "引数が「aaa」の場合「#{message_for_invalid_argment}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in('aaa')).to eq message_for_invalid_argment
  end
  specify "引数が「-2」の場合「#{message_for_invalid_argment}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in(-2)).to eq message_for_invalid_argment
  end
  specify "引数が「100001」の場合「#{message_for_argment_limit_over}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in(100001)).to eq message_for_argment_limit_over
  end
  specify "引数が「100000」の場合「#{message_for_argment_limit_over}」と返さないこと" do
    expect(Eratosthenes.prime_numbers_in(100000)).to_not eq message_for_argment_limit_over
  end
  specify "引数が「10」の場合「#{prime_numbers_in_10}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in(10)).to eq prime_numbers_in_10
  end
  specify "引数が「30」の場合「#{prime_numbers_in_30}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in(30)).to eq prime_numbers_in_30
  end
  specify "引数が「120」の場合「#{prime_numbers_in_120}」と返すこと" do
    expect(Eratosthenes.prime_numbers_in(120)).to eq prime_numbers_in_120
  end
  specify '引数は「数値の文字列」と「数値」のどちらでも同じ結果になること' do
    expect(Eratosthenes.prime_numbers_in(10)).to eq Eratosthenes.prime_numbers_in('10')
  end
end
