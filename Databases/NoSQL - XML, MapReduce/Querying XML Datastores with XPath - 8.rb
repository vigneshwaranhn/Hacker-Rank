require 'rexml/document'

include REXML

xmlText = ""

while line = gets()
    
    xmlText += line
    
end

doc = Document.new xmlText

puts doc.elements.each("string-length(collection/movie[2]/description/text())")