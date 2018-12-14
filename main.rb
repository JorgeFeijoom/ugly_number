class Main
  require_relative 'Memoization'
  require_relative 'Tabulation'

  $t2 = Time.now  # Start procedure time
  $n = ARGV[0].to_i
  $time = false

  ARGV.each do|a| # -t argument for elapsed time
	if a == "-t"
	  $time = true
	end
  end

  m = Memoization.new #Run Memoization process
  m.calculate_list($n, 0)

  t = Tabulation.new #Run Tabulation process
  t.getNthUglyNo($n)

  puts "\n--- Ugly Number ----\n\n"
  if $n > 0
	puts "# Memoization "
	puts "Ugly number: #{$uglym[-2]}"

	if $time == true
	  m.time_diff_milli $t1m, $t2
	end

	puts "\n# Tabulation "
	puts "Ugly number: #{$uglyp[-2]}"

	if $time == true
	  t.time_diff_milli $t1t, $t2
	end
  else
  	puts "Enter a correct position - command line"
  end
end