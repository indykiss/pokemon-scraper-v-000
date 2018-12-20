class Pokemon
 	attr_accessor :name, :type, :id, :db 

  def initialize("id , name: , type: , db:)
	  @db = db
	  @id = id
  	@name = name
  	@type = type
  end
	
	def self.save(name, type, db)
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)",name, type)
  end
	
	def self.find(id, db)
    new_pokemon_stats = db.execute("SELECT * FROM Pokemon WHERE id = ?",id)
    Pokemon.new(id, db)
  end
	
end


