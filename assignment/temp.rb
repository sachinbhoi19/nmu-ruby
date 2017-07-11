puts "Enter line:"
fname=gets.chomp
=begin
if fname= ~/^(int|float|char|double|void)\s[a-zA-Z_][a-zA-Z0-9_]*\(((int|float|char|double)\s[a-zA-Z_][a-zA-Z0-9_]*\,((int|float|char|double)\s[a-zA-Z_][a-zA-Z0-9_]*)*)?|(void)\)\;$/
  puts "valid method"
else
  puts "invalid method"
end
=end
if fname= ~/^(int|float|char|double|void)\s[a-zA-Z_][a-zA-Z0-9_]*\(((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;|\n|\s*\{))$/
  puts "valid method"
else
  puts "invalid method"
end
=begin
ssarr =Array.new(100)
top =-1
no_line=1
  ufile=File.open(fname,'r')

  ufile.each_char { |chr|
    if chr=="\n" then
      no_line +=1

    end
    if chr == '[' || chr == '{' || chr == '(' then
      top +=1
      arr[top]=chr
    else
      if chr ==']'||chr =='}'||chr == ')' then
        if arr[top] == '['&& chr == ']'
          top -=1
        elsif arr[top] == '{' && chr== '}'
          top -=1
        elsif arr[top] == '(' && chr == ')'
          top -=1
        else
          puts "Invalid parenthesis at line no: #{no_line}!"
          return
        end

      end

    end

    }
    if top != -1 then
      puts "invalid parenthesis: #{arr[top]} "
    else
      puts "All parenthesis are valid...!"
    end
end
=end
