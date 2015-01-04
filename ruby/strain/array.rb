class Array
  # credit to http://exercism.io/submissions/9793e12b1db6a2929df004d1

  def keep(&block)
    keep_if { |elem| block.call(elem) }
end

  def discard(&block)
    keep_if { |elem| !block.call(elem) }
  end
end
