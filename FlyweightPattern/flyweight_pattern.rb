class FontMetrics

  def initialize(string)
    @string = string
  end

  def [](index)
    glyph_data[@string[index]]
  end

  def glyph_data
    @glyph_data ||= Hash.new { |h,k| h[k] = metrics_for(k) }
  end

  # stubbed out, but would typcially refer to something
  # largish and time consuming to generate
  # 
  def metrics_for(k)
    { :bbox => [rand(100), rand(100), rand(100), rand(100)] }
  end

end

string = "Hello World"

metrics = FontMetrics.new(string)

p metrics[0]  #=> {:bbox=>[86, 44, 88, 31]}
p metrics[2]  #=> {:bbox=>[52, 7, 38, 98]}
p metrics[3]  #=> {:bbox=>[52, 7, 38, 98]}
p metrics[-2] #=> {:bbox=>[52, 7, 38, 98]}

p metrics[2].object_id == metrics[3].object_id #=> true

p metrics[0] == metrics[1] #=> false
p metrics[2] == metrics[3] #=> true