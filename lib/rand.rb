module StringMixin #:nodoc:
  # Add class method <tt>rand(len)</tt> to class String.
  module Rand #:doc:
    String.class_eval(%q{
def self.rand(len)
  return Array.new(len){(64+Kernel.rand(62)).chr}.join.chomp
end})
  end
end
