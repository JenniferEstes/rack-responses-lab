class Application 

    def call (env)
        resp = Rack::Response.new
        t = Time.now 
            if 12 > t.hour
                resp.write "Good Morning!"
            else
                resp.write "Good Afternoon!"
            end
        resp.finish
    end
end



# def call(env)
#     resp = Rack::Response.new

#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)

#     if num_1==num_2 && num_2==num_3
#       resp.write "You Win"
#     else
#       resp.write "You Lose"
#     end

#     resp.finish
#   end

# # end 