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
	
	def self.find(type, name, db)
    db.execute("SELECT type, name FROM Pokemon",type,name)
  end
	
end 

