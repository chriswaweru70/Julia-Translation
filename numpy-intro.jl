### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 379e01f9-6e73-4b7d-a11d-201cdfc7dad3
begin
	using Random
	
	n = 1000
	lst1 = rand(1:5, n)
	lst2 = rand(1:5, n)
	
end

# ╔═╡ 50c8df75-1e35-41f3-8845-db296e4da2d3
begin
	using LinearAlgebra
	
	begin
	    # Identity Matrix
	    # In Julia, the identity matrix can be generated using the `I` object.
	    matid = Matrix{Float64}(I, 3, 3)
	    println(matid)
	end
end

# ╔═╡ dd6ce920-648e-11ee-0b19-61c22109a4d5
md"""
Julia Base and Standard Libraries
One of the reasons Julia is rapidly gaining popularity in the numerical and scientific computing community is because of its built-in support for high-performance array operations. In contrast to Python's need for numpy, Julia natively provides powerful multi-dimensional arrays and a rich set of functions and operations for these arrays. For those transitioning from MATLAB, R, or even numpy in Python, you'll find that Julia's syntax and capabilities are both familiar and efficient. There's no need to import an external library for numerical operations in Julia; you can get started right away with the base and standard libraries.
"""

# ╔═╡ 040f452d-4194-4cbe-8586-be076021c431
md"""
Julia Arrays vs Python Lists
The comparison below outlines the differences between Python lists and native Julia arrays. While Python requires numpy for efficient array operations, Julia provides this natively.

Julia Arrays:
- Efficient: often much faster than traditional Python lists without numpy.
- Dynamically resizable: like Python lists, can grow or shrink.
- Homogeneous type by default: elements are typically of the same type, but can be made heterogeneous with special array types.
- Rich built-in functions and operations.

For those wondering why Julia arrays can outperform traditional Python lists, it's because Julia is designed for high-performance numerical computing from the ground up. This means Julia arrays are already optimized without needing an external library like numpy. The language combines the ease of high-level languages with the speed of low-level languages.
"""

# ╔═╡ 6430bccb-d828-4c9c-b7b4-1e4bbc7994b8
md"""
Efficiency Comparison
Let's experimentally examine the efficiency difference. Consider two arrays, and we aim to multiply their corresponding elements. In Julia, we can achieve this directly using broadcasting. We'll utilize the `@time` macro, native to Julia, to measure the performance of this operation. Note: unlike Python's Jupyter environment which uses `%%timeit`, Julia uses the `@time` macro to measure execution time.
"""

# ╔═╡ 7e7946b6-715e-4d12-8e23-bfcc7b2b4c3a
md"""
##### List Way
We'll begin by utilizing Julia's built-in random functions to create 2 arrays:
"""

# ╔═╡ f909d883-ad08-4350-9378-36fe69ca0fef
md"""
Now, we'll proceed to loop through, multiply corresponding elements, and push the result to a new array:
"""

# ╔═╡ 47335618-d4fb-4a71-9288-97efb2a2d9c0
begin
	@time begin
	    res = []
	    for i in 1:n
	        push!(res, lst1[i] * lst2[i])
	    end
	end
end

# ╔═╡ 4eb2fb9f-3e64-4c0a-a398-d88467626cc0
md"""
Now, let's consider the same example using Julia's native array capabilities, which offer a similar efficiency to numpy:
"""

# ╔═╡ 7c1fb7ff-5beb-4d38-8e07-0f557905ee87
begin
	arr1 = rand(1:5, n)
	arr2 = rand(1:5, n)
	
	@time res1 = arr1 .* arr2
	
end

# ╔═╡ e222a985-8a51-4c92-b9e2-258a17477bb8
begin
	# Corrected Example:
	lst = [1, 2, 3, 4, 5]
	arr_from_list = Array(lst)  # This is redundant since `lst` is already an array, but just for demonstration.
	
	tpl = (1, 2, 3, 4, 5)
	arr_from_tuple = collect(tpl)
	
end

# ╔═╡ 4e964216-073e-4ea6-8c9c-1c02ff463796
md"""
In Julia, there's no need for a separate array type like numpy. 
Native arrays in Julia serve the purpose. 
So, there's no need for a conversion step, but for demonstration:
"""

# ╔═╡ 5c4f30be-cdec-49ca-9c66-81d970ec6477
begin
	val_lst = [4, 3, -1, 8]

	val_arr = Array(val_lst)
	
	println("val_lst: ", val_lst)
	println("val_arr: ", val_arr)
	println(typeof(val_lst))
	println(typeof(val_arr))
	
end

# ╔═╡ 6dc94005-38a9-4ea1-8c04-c7fab8f8a5ce
begin
	val_arr_ = [4, 3, -1, 8]
	println(val_arr_)
end

# ╔═╡ 6956d7e0-40a2-45ba-b7bc-91c09c371e71
md"""
In Julia, multi-dimensional arrays natively serve the role of matrices. There's no need for a distinct "matrix" type as in some other languages or libraries. You can directly create multi-dimensional arrays using lists of lists:
"""

# ╔═╡ 4b413e6b-a7c2-44b9-880b-cc780ba7a21f
begin
	lst2d = [[1.1, 4, 8.3], [3, 2.5, -1.8], [0, 3.4, 5]]
    mat = hcat(lst2d...)'

    println(mat)

end

# ╔═╡ d4a28273-635a-49e7-be79-38f0d9e3137c
md"""
Filled with zeros/ones
Creating arrays from lists is common in many programming environments, but there are also scenarios where you might want to initialize an array with default values. Julia offers native functions for this:

- `ones(shape...)`
- `zeros(shape...)`

For 1D arrays, `shape` is just a single number. For multi-dimensional arrays, you can provide each dimension's size as separate arguments.
"""

# ╔═╡ 3441c076-0924-43e7-8b5f-bad48e599d46
begin
	# Examples
	println(zeros(5))
	println(ones(7))
	
	println("\n5x5 filled with 0s")
	shape1 = (5, 5)
	println(zeros(shape1))
	
	println("\n4x3x2 filled with 1s")
	arr3d = ones(4, 3, 2)
	println(arr3d)
	
end

# ╔═╡ 094ccb94-eff6-49e6-8382-f545e87e77cf
md"""
#### Identity Matrix
In Julia, the identity matrix can be generated using the `I` object along with a standard array creation.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
Random = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.3"
manifest_format = "2.0"
project_hash = "f479011a250b0799ce99df8978eea5d0a8ab069c"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"
"""

# ╔═╡ Cell order:
# ╠═dd6ce920-648e-11ee-0b19-61c22109a4d5
# ╠═040f452d-4194-4cbe-8586-be076021c431
# ╠═6430bccb-d828-4c9c-b7b4-1e4bbc7994b8
# ╠═7e7946b6-715e-4d12-8e23-bfcc7b2b4c3a
# ╠═379e01f9-6e73-4b7d-a11d-201cdfc7dad3
# ╠═f909d883-ad08-4350-9378-36fe69ca0fef
# ╠═47335618-d4fb-4a71-9288-97efb2a2d9c0
# ╠═4eb2fb9f-3e64-4c0a-a398-d88467626cc0
# ╠═7c1fb7ff-5beb-4d38-8e07-0f557905ee87
# ╠═e222a985-8a51-4c92-b9e2-258a17477bb8
# ╠═4e964216-073e-4ea6-8c9c-1c02ff463796
# ╠═5c4f30be-cdec-49ca-9c66-81d970ec6477
# ╠═6dc94005-38a9-4ea1-8c04-c7fab8f8a5ce
# ╠═6956d7e0-40a2-45ba-b7bc-91c09c371e71
# ╠═4b413e6b-a7c2-44b9-880b-cc780ba7a21f
# ╠═d4a28273-635a-49e7-be79-38f0d9e3137c
# ╠═3441c076-0924-43e7-8b5f-bad48e599d46
# ╠═094ccb94-eff6-49e6-8382-f545e87e77cf
# ╠═50c8df75-1e35-41f3-8845-db296e4da2d3
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
