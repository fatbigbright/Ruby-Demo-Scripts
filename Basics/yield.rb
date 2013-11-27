def call_block
    puts "start"
    yield
    yield
    puts "end"
end

call_block{ puts '2 yields, print twice.' }


def call_block2
    yield(1)
    yield(2)
    yield(3)
end
call_block2 { |i| puts "#{i}: 3 yields, print 3 times." }

def call_block3(&block)
    block.call(1)
    block.call(2)
    block.call(3)
end
call_block3 { |i| puts "#{i}: call_block3" }

raise "Test exception!!"
