def greeting
  message, *args = ARGV
  args.each do |name|
    puts "#{message} #{name}"
  end
end

greeting
