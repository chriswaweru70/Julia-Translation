### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 8555a6a1-9cc8-4c25-bc0c-302cee82766a
fr = open("blahblahwriting.txt", "r")

# ╔═╡ cc86315f-74c3-4e54-9f3f-a44cc93842fe
fw = open('blahblahwriting.txt', 'w')

# ╔═╡ f651d0e2-d000-4360-b64f-dfc9f25b8fbf
download("https://raw.githubusercontent.com/eecarrier/python-for-applied-computing/main/notebooks/data/robert-frost.txt", "robert-frost.txt")


# ╔═╡ f2277a82-798c-4516-b463-3e0202ef4314
begin
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
	
	    ffrost = open("robert-frost.txt", "r")
        count = 0
        for line in eachline(ffrost)
          count += 1
		end
        println(count)
	    close(ffrost)  # Close the file again
end

# ╔═╡ Cell order:
# ╠═8555a6a1-9cc8-4c25-bc0c-302cee82766a
# ╠═cc86315f-74c3-4e54-9f3f-a44cc93842fe
# ╠═f651d0e2-d000-4360-b64f-dfc9f25b8fbf
# ╠═f2277a82-798c-4516-b463-3e0202ef4314
