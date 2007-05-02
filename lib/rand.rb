module StringMixin
  module Rand
    String.class_eval(%q{
def self.rand(len)
  return Array.new(len){(32+Kernel.rand(94)).chr}.join.chomp
end})
  end
end
