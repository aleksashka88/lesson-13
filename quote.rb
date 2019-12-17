current_part = File.dirname(__FILE__)

file_part = './data/quotes.txt'

puts "Афоризм дня: "

if File.exist?(file_part)
	f = File.new(file_part, 'r:UTF-8')
	lines = f.readlines
	f.close
	puts lines.sample
elsif
	f = File.new(current_part + file_part, 'r:UTF-8')
	lines = f.readlines
	f.close
	puts lines.sample
else
	puts 'Файл не найден'
end
