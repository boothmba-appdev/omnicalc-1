class ApplicationController < ActionController::Base
    def blank_square_form
        render({:template => "calculation_templates/square_form.html.erb"})
    end

    def calculate_square
        # params = {"y1"=>"42"}
        @num = params.fetch("y1")
        @square_of_num = @num.to_i**2
        render({:template => "calculation_templates/square_results.html.erb"})
    end

end
