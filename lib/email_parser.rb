require "pry"

class EmailParser
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse

      parsed1 = self.emails.split(/\s/).map do |email|
        email
      end

      parsed1.map do |email|
        if email.include?(",")
          email.chomp(",")
        else
          email
        end
      end.uniq

    end
  #puts "o"

end #class end
