
class Trie
  attr_reader :root

  def initialize
    @root = Hash.new
  end

  def check_and_add(word)
    current = @root

    is_new_word = false

    word.chars.each do |char|
      if !current[char]
        is_new_word = true
        current[char] = {}
      end
      current = current[char]
    end

    if !current['*']
      is_new_word = true
      current['*'] = {}
    end

    return is_new_word
  end
end

trie = Trie.new

trie.check_and_add('hello')
trie.check_and_add('help')
trie.check_and_add('hospital')
p trie.root