require 'pg'

begin

    con = PG.connect("localhost",5432,"","","master","sachin","sachin19")
    puts con.server_version
    puts con.user
    puts con.db
    puts con.pass

    rs = con.exec "SELECT * FROM student"

    rs.each do |row|
      #puts "%s %s"  % [ row['rno'], row['name'] ]
      puts row['rno']
      puts row['name']
    end
end
=begin

rescue ExceptionName

end
rescue PG::Error => e

    puts e.message

ensure

    con.close if con

end
=end
