# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
email_addresses = "john@doe.com, person@somewhere.org, john@doe.com"

class EmailAddressParser
    attr_accessor :emails_s
    def initialize(emails_s)
        @emails_s = emails_s
    end

    def parse
        @emails_s.split(/, | /).uniq
    end

end

parser = EmailAddressParser.new(email_addresses)
parser.parse
