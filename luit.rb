class Luit < Formula
	desc "Luit is a filter that can be run between an arbitrary application and a UTF-8 terminal emulator. It will convert application output from the locale's encoding into UTF-8, and convert terminal input from UTF-8 into the locale's encoding."
	homepage "http://invisible-island.net/luit/luit.html"
	url "http://invisible-island.net/datafiles/release/luit.tar.gz"

	def install
		system "./configure"
		system "make"
		system "make", "install"
  	end

  	test do 
  		system "luit -V"
  	end

end
