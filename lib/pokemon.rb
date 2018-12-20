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
	
	def self.find(id, db)
    new_pokemon = db.execute("SELECT * FROM Pokemon WHERE id = ?",id)
    Pokemon.new(new_pokemon)
  end
	
end


