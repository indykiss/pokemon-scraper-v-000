class Pokemon
 	attr_accessor :name, :type, :id, :db 

	def initialize(id)
	  @db = db
	  @id = id
  	@name = name
  	@type = type
	end
	
	def self.save(name, type, db)
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)",name, type)
  end
	
	def self.find(name, type, db)
    db.execute("SELECT name, type FROM Pokemon",name,type)
  end
	
end 

