# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_reader :parse
  def initialize(email_string)
    @email_string=email_string
  end

  def parse
        @email_string.gsub!(",", "")
        @email_array=@email_string.split(" ")
        @email_array.uniq
  end
end
