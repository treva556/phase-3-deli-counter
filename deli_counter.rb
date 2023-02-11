# Write your code here.
def line katz_deli
    if katz_deli.empty?
        puts "The line is currently empty."
    else
        line_list = katz_deli.map.with_index do |customer, index|
            "#{index + 1}. #{customer}"
        end
        puts "The line is currently: " + line_list.join(" ")
    end
end

def take_a_number katz_deli, name
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving katz_deli
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        next_in_line = katz_deli.shift
        puts "Currently serving #{next_in_line}."
    end
end