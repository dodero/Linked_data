module EasyData  
  module RDF
   class DC11 < Namespaces
     @@uri = "http://purl.org/dc/elements/1.1/" 
     @@properties= {"contributor" => "",
                    "coverage" => "",
                    "creator" => "",
                    "date" => "",
                    "description" => "",
                    "format" => "",
                    "identifier" => "",
                    "language" => "",
                    "publisher" => "",
                    "relation" => "",
                    "rights" => "",
                    "source" => "",
                    "subject" => "",
                    "title" => "",
                    "type" => "",
                   }
     @@classes = {}
     # Return Namespace URI
     def self.get_uri
        @@uri
#       "http://purl.org/dc/elements/1.1/" 
     end

      # Return tag to rdf doc
     def self.to_s(property,uri,value)
        @@properties[property].gsub("%uri%",uri).gsub('%value%',value)
     end
     
     #Return a list of Namespace's properties
     def self.properties
        @@properties.keys
     end

     def self.properties_form 
       list = {}
       @@properties.keys.each do |property|
         list[property] = property
       end
       list
     end 

     #Return a list of Namespace's classes
     def self.classes
        @@classes.keys
     end

     def self.classes_form 
       list = {}
       @@classes.keys.each do |c|
         list[c] = c
       end
       list
     end

   end
  end
end
