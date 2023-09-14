### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 6db0cc64-7757-4289-9073-d46bb7baba6f
#Hello World
#Hello, World! in Julia Notebook:

#Here's how you can print "Hello, World!" in a Julia notebook:

# ╔═╡ f99d5c20-5268-11ee-32e7-cde9890479d9
println("Hello, World!")

# ╔═╡ ea555fd4-0883-4167-b012-72d26fe58b97
#Basic Types

# ╔═╡ 5531e5fd-0cc3-445f-8184-798e95536823
println(5)

# ╔═╡ cc74b2ed-6d19-4130-b721-1981e566fe36
#Integers are created using int1, int2, and int3.
#Floats are created using float1, float2, and float3.
#Complex numbers are created using complex1.
#Strings are created using str1 and str2.
#Booleans are created using bool_true and bool_false.
#The println() function is used to print the value of int2, and typeof() is used to check its type.

# ╔═╡ ff2e6efa-a269-4fe3-ab28-73a286c6d656
#So, let's look at the value -2. We can type this in, print it, etc. We can check what type it is by using the typeof() function.

# ╔═╡ 307712a5-c9dd-4e0d-9e39-e8f2ac16da88
typeof(-2)

# ╔═╡ c28c6904-6e58-4b77-8384-094a18132834
begin
	value = 5im
	value_type = typeof(value)
	println(value_type)
end

# ╔═╡ 7c3778d6-cc5a-4946-970c-7ef318b78f3c
# Important Notes
# If you are paying close attention, you'll notice the output from typeof() looks a little different from what you may see elsewhere. This is an artifact of Jupyter notebooks. We're never actually printing the output of typeof(), but the default for a notebook is to display the output of the last command in the code block, and it displays it using a slightly different function. You can see the exact output you'd likely see elsewhere by using println() as well (though there's really no need to unless you want the output for more than one line in a single code block).


# ╔═╡ a2196657-0d5b-44b2-80dd-d5b45a791b99
begin
    # Define the value -2
    value_ = -2

    # Get and print its type
    value_type_ = typeof(value)
    println(value_type)
end

# ╔═╡ 8fae2cee-219b-41a2-bad7-cc328f8abab2


# ╔═╡ 649b1d94-e425-4331-a58b-6ec838fa5902
typeof(2.75)

# ╔═╡ f2d033c0-b45c-4ab1-9c0a-52dabe81921d


# ╔═╡ 2f5a5497-3746-476b-a5da-57c294cf47f4
#Variables

# ╔═╡ 9a6cc50c-daf9-43c7-8993-aeefe61bebc3


# ╔═╡ b541158c-dcb4-470d-8e03-16aa5f672050
begin
	begin
		var1 = 5
		var2 = "hello"
		var3 = 7.8
		println(var1)
	    println(var2)
	    println(var3)
		println(var1)
		var1 = 10
		println(var1)
		println(var1)
        println(typeof(var1))
        var1 = "goodbye"
        println(var1)
        println(typeof(var1))
	end
end

# ╔═╡ f675b09b-89b6-4747-8e5c-49ed4cc88280


# ╔═╡ 3b0558a1-315a-4090-ab04-5983e83facb2


# ╔═╡ 6b03aaa6-3df8-492a-802e-f3bdd2693d03


# ╔═╡ 74c48b57-e76c-41e9-aa06-7a08f90ae9b5


# ╔═╡ 8c1d1741-8ab1-4e44-beb5-b208f12748d3


# ╔═╡ 51b493fa-59ed-4651-b65a-b81c500badfd


# ╔═╡ 7e51adb1-00eb-417e-bb81-9e58ebc95a53


# ╔═╡ 82ce35cc-6388-46b8-bb82-8805efa22b51


# ╔═╡ e9ed69ee-96a6-48c3-b13f-bffdf20bc3a7


# ╔═╡ 5c42e4ba-ead2-40f2-9f4f-0701f5e13499


# ╔═╡ 8b4ba75f-04b8-4035-9a8a-afeb80635824


# ╔═╡ df99daef-19dc-46e8-a654-bae9a7aa2616


# ╔═╡ def21ce2-6aa4-446f-89b2-789048c988b3


# ╔═╡ 3a2bec12-03cb-46e8-83a4-3cb42a3be5e8
1 + 1

# ╔═╡ c7bc88d6-b27c-48c7-9c19-f857bf4063ea
begin
	x = 7
	x + 1
end

# ╔═╡ a53f99ef-59af-436f-97f1-b2c4c8d76a85
begin
	y = 8
	x + y
end

# ╔═╡ f2cbaf92-6a46-4096-84b6-1185908b49ed
begin
	p = 2
	q = 5
	p^q
end

# ╔═╡ e7a7d56c-c77c-4478-ac20-2bf500a2c3ee


# ╔═╡ c83af97b-f81c-47e5-9d4b-2fb2e94f1647


# ╔═╡ e0f2750d-0549-4270-8fc4-76080d85af89


# ╔═╡ 088229f7-b4f4-4d17-9518-a7e327d1f538


# ╔═╡ a2538e24-b7f1-48cb-a146-26fce2558643


# ╔═╡ 4d2ab51a-3522-4d0a-af6a-0d7f3901698b
typeof(z)

# ╔═╡ 32ec41a4-6a83-444e-878f-d83357775cfc
typeof(x)

# ╔═╡ 7069fd43-bd72-4652-947e-f09e0e14911f
typeof(3/2)

# ╔═╡ 6447c267-0f5d-42ae-a6af-25297903f490
typeof(3.0*2)

# ╔═╡ e0c86860-c360-4a50-8c9b-80db9ee59171
typeof(3^2)

# ╔═╡ a91e2b98-823b-4a44-8c51-2d8c544be589


# ╔═╡ a97a806a-e7b4-4a9d-a26f-dec892b20d14


# ╔═╡ 2953807f-ba0b-4489-abb9-cd9022480c32
begin
	num_batches = 3
	cookies_per_batch = 16
	cookies_per_person = 5
	
	leftover = (num_batches * cookies_per_batch) % cookies_per_person
	num_people_fed = (num_batches * cookies_per_batch) ÷ cookies_per_person
	
	println(leftover)
	println(num_people_fed)
end

# ╔═╡ c9471fa6-192d-4c39-8c94-fdd8e3f5d653
# ╠═╡ disabled = true
#=╠═╡
begin
	z = x + y
	println(z)
end
  ╠═╡ =#

# ╔═╡ 8d79af71-f448-45e2-9e98-856008c86b85
begin
	z = (x*2 + y*3)/3
	print(z)
end

# ╔═╡ Cell order:
# ╠═6db0cc64-7757-4289-9073-d46bb7baba6f
# ╠═f99d5c20-5268-11ee-32e7-cde9890479d9
# ╠═ea555fd4-0883-4167-b012-72d26fe58b97
# ╠═5531e5fd-0cc3-445f-8184-798e95536823
# ╠═cc74b2ed-6d19-4130-b721-1981e566fe36
# ╠═ff2e6efa-a269-4fe3-ab28-73a286c6d656
# ╠═307712a5-c9dd-4e0d-9e39-e8f2ac16da88
# ╠═c28c6904-6e58-4b77-8384-094a18132834
# ╠═7c3778d6-cc5a-4946-970c-7ef318b78f3c
# ╠═a2196657-0d5b-44b2-80dd-d5b45a791b99
# ╠═8fae2cee-219b-41a2-bad7-cc328f8abab2
# ╠═649b1d94-e425-4331-a58b-6ec838fa5902
# ╠═f2d033c0-b45c-4ab1-9c0a-52dabe81921d
# ╠═2f5a5497-3746-476b-a5da-57c294cf47f4
# ╠═9a6cc50c-daf9-43c7-8993-aeefe61bebc3
# ╠═b541158c-dcb4-470d-8e03-16aa5f672050
# ╠═f675b09b-89b6-4747-8e5c-49ed4cc88280
# ╠═3b0558a1-315a-4090-ab04-5983e83facb2
# ╠═6b03aaa6-3df8-492a-802e-f3bdd2693d03
# ╠═74c48b57-e76c-41e9-aa06-7a08f90ae9b5
# ╠═8c1d1741-8ab1-4e44-beb5-b208f12748d3
# ╠═51b493fa-59ed-4651-b65a-b81c500badfd
# ╠═7e51adb1-00eb-417e-bb81-9e58ebc95a53
# ╠═82ce35cc-6388-46b8-bb82-8805efa22b51
# ╠═e9ed69ee-96a6-48c3-b13f-bffdf20bc3a7
# ╠═5c42e4ba-ead2-40f2-9f4f-0701f5e13499
# ╠═8b4ba75f-04b8-4035-9a8a-afeb80635824
# ╠═df99daef-19dc-46e8-a654-bae9a7aa2616
# ╠═def21ce2-6aa4-446f-89b2-789048c988b3
# ╠═3a2bec12-03cb-46e8-83a4-3cb42a3be5e8
# ╠═c7bc88d6-b27c-48c7-9c19-f857bf4063ea
# ╠═a53f99ef-59af-436f-97f1-b2c4c8d76a85
# ╠═f2cbaf92-6a46-4096-84b6-1185908b49ed
# ╠═e7a7d56c-c77c-4478-ac20-2bf500a2c3ee
# ╠═c9471fa6-192d-4c39-8c94-fdd8e3f5d653
# ╠═c83af97b-f81c-47e5-9d4b-2fb2e94f1647
# ╠═e0f2750d-0549-4270-8fc4-76080d85af89
# ╠═088229f7-b4f4-4d17-9518-a7e327d1f538
# ╠═8d79af71-f448-45e2-9e98-856008c86b85
# ╠═a2538e24-b7f1-48cb-a146-26fce2558643
# ╠═4d2ab51a-3522-4d0a-af6a-0d7f3901698b
# ╠═32ec41a4-6a83-444e-878f-d83357775cfc
# ╠═7069fd43-bd72-4652-947e-f09e0e14911f
# ╠═6447c267-0f5d-42ae-a6af-25297903f490
# ╠═e0c86860-c360-4a50-8c9b-80db9ee59171
# ╠═a91e2b98-823b-4a44-8c51-2d8c544be589
# ╠═a97a806a-e7b4-4a9d-a26f-dec892b20d14
# ╠═2953807f-ba0b-4489-abb9-cd9022480c32
