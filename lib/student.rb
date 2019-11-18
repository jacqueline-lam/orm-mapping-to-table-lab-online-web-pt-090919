class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  #Create the students table in the databse
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT
      )
    SQL
    DB[:conn].execute(sql)
  end
  
  # Drop the students table from the database
  def self.drop_table
    sql = <<-SQL
      drop
    SQL
    DB[:conn].execute(drop)
  end
    
  # def save
  #   sql = <<-SQL
  #     INSERT INTO students(name, grade)
  #     VALUES (?, ?)
  #   SQL
    
  #   DB[:conn].execute(sql, self.name, self.grade)
  #   # @id = DB[:conn].execute()
  # end
  
  # def create
  # end
end
