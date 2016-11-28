class DataHandler
  attr_reader :data

  def initialize
    @data = {}
  end

  def set(key,value)
    @data[key] = value
  end

  def get(key)
    @value = @data[key]
  end
end
