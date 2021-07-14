class ApplicationController < ActionController::Base
    def blank_form
        render({:template => "calculation_templates/new_form.html.erb"})
    end

    def blank_square_form
        render({:template => "calculation_templates/square_form.html.erb"})
    end

    def calculate_square
        # params = {"y1"=>"42"}
        @num = params.fetch("y1")
        @square_of_num = @num.to_f**2
        render({:template => "calculation_templates/square_results.html.erb"})
    end

    def blank_random_form
        render({:template => "calculation_templates/random_form.html.erb"})
    end

    def calculate_random
        # params = {"y1"=>"42"}
        @lower = params.fetch("user_min").to_f
        @upper = params.fetch("user_max").to_f
        @result = rand(@lower..@upper)
        render({:template => "calculation_templates/random_results.html.erb"})
    end

    def blank_square_root_form
        render({:template => "calculation_templates/square_root_form.html.erb"})
    end

    def calculate_square_root
        # params = {"y1"=>"42"}
        @number = params.fetch("y2")
        @square_root_num = @number.to_f**0.5
        render({:template => "calculation_templates/square_root_results.html.erb"})
    end

    def blank_payment_form
        render({:template => "calculation_templates/payment_form.html.erb"})
    end

    def calculate_payment
        # params = {"y1"=>"42"}
        @user_apr = params.fetch("user_apr").to_f
        @user_i = @user_apr/100/12
        @user_years = params.fetch("user_years").to_i
        @user_n = @user_years*12
        @user_pv = params.fetch("user_pv").to_f
        @user_payment = @user_pv*(@user_i*(1+@user_i)**@user_n)/((1+@user_i)**@user_n-1)
        @user_payment = @user_payment
        render({:template => "calculation_templates/payment_results.html.erb"})
    end

end
