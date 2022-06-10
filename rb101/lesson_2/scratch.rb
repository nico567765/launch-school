def call_proc(proc)
  proc.call
end

proc = { puts 'hello'}

call_proc(proc)