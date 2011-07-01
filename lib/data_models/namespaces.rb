module EasyData  
  module RDF
    module Namespaces
      @@namespaces=['cc','cert','dc','dc11','doap','exif','foaf','geo','http','owl','rdfs','rsa','rss','sioc','skos','wot','xhtml','xsd'] 
     
      def self.list
        @@namespaces
      end

      def self.list_form
        list = {}

        @@namespaces.each do |namespace|
           list[namespace] = namespace
        end

        list
      end

    end
  end
end
