require 'lighthouse-api'

module Lightline
  include Lighthouse
  def self.query(q)
    Lighthouse.account = ''
    Lighthouse.token = ""

    tickets = Project.find(:first, :name => 'copilot').tickets(:q => "#{q}")

    cols = [
     {:attr => :number, :title => "#", :data => []},
     {:attr => :state, :title => "State", :data => []},
     {:attr => :title, :title => "Ticket", :data => []},
     {:attr => :assigned_user_name, :title => "Assigned to", :data => []},
     {:attr => :milestone_title, :title => "Milestone", :data => []}
    ]
    
    tickets.each do |ticket|
      cols.each do |col|
        begin
          d = ticket.send(col[:attr]).to_s
        rescue NoMethodError
          d = ""
        ensure
          col[:data] << d
        end
      end
    end
    
    rows = Array.new(tickets.size + 1) {[]}
    cols.each do |col|
      max_col_size = [col[:data].max{ |a, b| a.size <=> b.size }.size, col[:title].size].max
      rows[0] << (col[:title] << (" " * [(max_col_size - col[:title].size), 0].max))
      col[:data].each_with_index do |d, i|
        rows[i+1] << (d << (" " * [max_col_size - d.size, 0].max))
      end
    end

    first_row = rows.shift.join(" " * 3)
    puts first_row
    puts "-" * first_row.size
    rows.each { |row| puts row.join(" " * 3)}
  end
  
end