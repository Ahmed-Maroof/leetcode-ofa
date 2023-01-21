def one_yield
  yield
  yield
  yield
  yield
  yield
end

def multiple_yields
  yield
  yield
end

one_yield { puts "code1111 yield" }

multiple_yields { puts "multiple yields" }