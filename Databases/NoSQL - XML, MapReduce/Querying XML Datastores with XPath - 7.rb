require 'rexml/document'

include REXML

xmlText = "" 

while line = gets()

   xmlText += line
   
end

doc = Document.new xmlText

puts XPath.match(doc, "sum(collection/movie/popularity/text()) div count(collection/movie/popularity/text())")