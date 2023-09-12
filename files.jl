### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 8555a6a1-9cc8-4c25-bc0c-302cee82766a
fr = open("blahblahwriting.txt", "r")

# ╔═╡ cc86315f-74c3-4e54-9f3f-a44cc93842fe
fw = open('blahblahwriting.txt', 'w')

# ╔═╡ 8b794dc3-a9d2-4799-bd65-84ad536e8cfc


# ╔═╡ f651d0e2-d000-4360-b64f-dfc9f25b8fbf
download("https://raw.githubusercontent.com/eecarrier/python-for-applied-computing/main/notebooks/data/robert-frost.txt", "robert-frost.txt")


# ╔═╡ 001d6d2a-4b7e-40d4-a95b-354ece92f25a
#How to close a file 
# Close the file
close(fw)

# ╔═╡ 9a471da2-b4f7-4b5c-a4f9-c78ff8b883c9
close(ffrost)

# ╔═╡ 69758d60-dc55-4d8f-a637-6f314d3ec1d4
begin
	#Alternative to Open/Close
	filename = "example.txt"
	mode = "r"
	
	open(filename, mode) do f
	    # Code to process the file
	    # You can read or write to the file here
	    contents = read(f, String)  # Read the entire file into a string, for example
	    
	    # Your processing code here...
	    
	end  # The file is automatically closed when exiting the block
end

# ╔═╡ cea99140-7fb4-4027-8516-d0d70fae3820


# ╔═╡ 2e09663d-7e36-40ec-8730-a7ba9f7abc35
# ╠═╡ disabled = true
#=╠═╡
download("https://raw.githubusercontent.com/eecarrier/python-for-applied-computing/main/notebooks/data/groundhog.csv")
  ╠═╡ =#

# ╔═╡ 7b00800e-c541-4c13-b860-21b10741ded7


# ╔═╡ 9b6189f5-4c8c-46cf-a2bc-e94587fe478c
begin
	download("https://raw.githubusercontent.com/eecarrier/python-for-applied-computing/main/notebooks/data/groundhog.csv")
	
	using CSV
	begin
		count = 0
		
		# Open and process the CSV file
		for row in CSV.Rows("groundhog.csv")
		    if length(row) > 2 && row[2] == "Partial Shadow"
		        count += 1
		    end
		end
		
		println(count)
	end
end

# ╔═╡ f2277a82-798c-4516-b463-3e0202ef4314
begin
	    # Reading Files
		# Read and print the file contents
	    ffrost = open("robert-frost.txt", "r")
		fulltext = read(ffrost, String)
		println(length(fulltext))	
	    println(fulltext)
	    close(ffrost)  # Don't forget to close the file when you're done.
	
        println("")
	
        ffrost = open("robert-frost.txt", "r")  # Reopen the file for reading
        lines = readlines(ffrost)
        println(lines)
        close(ffrost)  # Close the file again

	    println("")
	
	    ffrost = open("robert-frost.txt", "r")
	    # Julia uses 1-based indexing, so lines[0] in Python corresponds to lines[1]      in Julia.
	    println(length(lines[1]))  
        println(length(strip(lines[1])))
	    close(ffrost)  # Close the file again

	    println("")
	
	    #Reading and Looping
	
	    ffrost = open("robert-frost.txt", "r")
        count = 0
        for line in eachline(ffrost)
          count += 1
		end
        println(count)
	    close(ffrost)  # Close the file again

	    # Write data to the file
	    # Open the file in write mode
        fw = open("example.txt", "w")

        write(fw, "hello world\n")
        write(fw, "hello world line 2")
	
	    # Close the file
        close(fw)
	    # Write data to the file
	# Open the file in write mode
    fw = open("example.txt", "w")
    write(fw, "hello world\n")
    write(fw, "hello world line 2")
	
	# Close the file
    close(fw)

	    
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CSV = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"

[compat]
CSV = "~0.10.11"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.3"
manifest_format = "2.0"
project_hash = "e373055fed41980623c35a7e5d9eaa2107c0bffa"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.CSV]]
deps = ["CodecZlib", "Dates", "FilePathsBase", "InlineStrings", "Mmap", "Parsers", "PooledArrays", "PrecompileTools", "SentinelArrays", "Tables", "Unicode", "WeakRefStrings", "WorkerUtilities"]
git-tree-sha1 = "44dbf560808d49041989b8a96cae4cffbeb7966a"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.10.11"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "02aa26a4cf76381be7f66e020a3eddeb27b0a092"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.2"

[[deps.Compat]]
deps = ["UUIDs"]
git-tree-sha1 = "e460f044ca8b99be31d35fe54fc33a5c33dd8ed7"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.9.0"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.FilePathsBase]]
deps = ["Compat", "Dates", "Mmap", "Printf", "Test", "UUIDs"]
git-tree-sha1 = "e27c4ebe80e8699540f2d6c805cc12203b614f12"
uuid = "48062228-2e41-5def-b9a4-89aafe57970f"
version = "0.9.20"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.InlineStrings]]
deps = ["Parsers"]
git-tree-sha1 = "9cc2baf75c6d09f9da536ddf58eb2f29dedaf461"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.4.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.OrderedCollections]]
git-tree-sha1 = "2e73fe17cac3c62ad1aebe70d44c963c3cfdc3e3"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.2"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "716e24b21538abc91f6205fd1d8363f39b442851"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.2"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "a6062fe4063cdafe78f4a0a81cfffb89721b30e7"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.2"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "03b4c25b43cb84cee5c90aa9b5ea0a78fd848d2f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "04bdff0b09c65ff3e06a05e3eb7b120223da3d39"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.4.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "1544b926975372da01227b382066ab70e574a3ec"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.10.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "9a6ae7ed916312b41236fcef7e0af564ef934769"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.13"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.WeakRefStrings]]
deps = ["DataAPI", "InlineStrings", "Parsers"]
git-tree-sha1 = "b1be2855ed9ed8eac54e5caff2afcdb442d52c23"
uuid = "ea10d353-3f73-51f8-a26c-33c1cb351aa5"
version = "1.4.2"

[[deps.WorkerUtilities]]
git-tree-sha1 = "cd1659ba0d57b71a464a29e64dbc67cfe83d54e7"
uuid = "76eceee3-57b5-4d4a-8e66-0e911cebbf60"
version = "1.6.1"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"
"""

# ╔═╡ Cell order:
# ╠═8555a6a1-9cc8-4c25-bc0c-302cee82766a
# ╠═cc86315f-74c3-4e54-9f3f-a44cc93842fe
# ╠═8b794dc3-a9d2-4799-bd65-84ad536e8cfc
# ╠═f651d0e2-d000-4360-b64f-dfc9f25b8fbf
# ╠═f2277a82-798c-4516-b463-3e0202ef4314
# ╠═001d6d2a-4b7e-40d4-a95b-354ece92f25a
# ╠═9a471da2-b4f7-4b5c-a4f9-c78ff8b883c9
# ╠═69758d60-dc55-4d8f-a637-6f314d3ec1d4
# ╠═cea99140-7fb4-4027-8516-d0d70fae3820
# ╠═2e09663d-7e36-40ec-8730-a7ba9f7abc35
# ╠═9b6189f5-4c8c-46cf-a2bc-e94587fe478c
# ╠═7b00800e-c541-4c13-b860-21b10741ded7
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
