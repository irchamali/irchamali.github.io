# Patch untuk kompatibilitas Ruby 3.2+ dengan Jekyll/Liquid lama
if RUBY_VERSION >= '3.2'
  module Enumerable
    def tainted?
      false
    end
  end

  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end