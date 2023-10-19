class Customer
  attr_reader :name, :email
  attr_accessor :artec_studio_list, :cloud, :scanners

  def initialize(name:, params:)
    @name = name
    @email = params[:email]
    @artec_studio_list = params[:as_list]
    @cloud = params[:cloud]
    @scanners = params[:scanners]
  end

  def to_s
    result = "Customer <name: #{@name}, email: #{@email}>\n"
    @artec_studio_list.each do |artec_studio|
      result << "  #{artec_studio.description}\n"
    end
    result << "  Cloud: #{@cloud.volume}\n"
    @scanners.each do |scanner|
      result << "  #{scanner.to_s}\n"
    end
    result
  end
end


