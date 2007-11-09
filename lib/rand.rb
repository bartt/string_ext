module StringMixin
  module Rand
    String.class_eval(%q{
def self.rand(len)
  return Array.new(len){(64+Kernel.rand(62)).chr}.join.chomp
end})
  end
end
