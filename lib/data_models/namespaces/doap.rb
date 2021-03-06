module EasyData
  module RDF
   class DOAP < Namespaces
     @@uri = "http://usefulinc.com/ns/doap#"
     
     @@properties= {"'anon-root'" => "",
    "audience" => "",
    "blog" => "",
    "browse" => "",
    "'bug-database'" => "",
    "category" => "",
    "created" => "",
    "description" => "",
    "developer" => "",
    "documenter" => "",
    "'download-mirror'" => "",
    "'download-page'" => "",
    "'file-release'" => "",
    "helper" => "",
    "homepage" => "",
    "implements" => "",
    "language" => "",
    "license" => "",
    "location" => "",
    "'mailing-list'" => "",
    "maintainer" => "",
    "module" => "",
    "name" => "",
    "'old-homepage'" => "",
    "os" => "",
    "platform" => "",
    "'programming-language'" => "",
    "release" => "",
    "repository" => "",
    "revision" => "",
    "screenshots" => "",
    "'service-endpoint'" => "",
    "shortdesc" => "",
    "tester" => "",
    "translator" => "",
    "vendor" => "",
    "wiki" => ""   
     }
     @@classes = {"Project" => "",
                  "Version" => "",
                  "Specification" => "",
                  "Repository" => "",
                  "SVNRepository" => "",
                  "BKRepository" => "",
                  "CVSRepository" => "",
                  "ArchRepository" => "",
                  "BazaarBranch" => "",
                  "GitRepository" => "",
                  "HgRepository" => "",
                  "DarcsRepository" => ""
     }
       
     # Return Namespace URI
     def self.get_uri
       @@uri
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
