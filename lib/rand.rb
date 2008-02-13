module StringMixin
  numbers = (48..57).to_a
  caps = (65..90).to_a
  lowers = (97..122).to_a
  @@pool = numbers + caps + lowers
  @@range = @@pool.length

  # Generate a string of random characters of length +len+ taken from a pool of
  # characters that don't require URL escaping.
  def rand(len)
    return Array.new(len){(@@pool[Kernel.rand(@@range)]).chr}.join.chomp
  end
end
