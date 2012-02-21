--[[
	
	Nonsence Asynchronous event based Lua Web server.
	Author: John Abrahamsen < JhnAbrhmsn@gmail.com >
	
	This module "mime_types" is a part of the Nonsence Web server.
	< https://github.com/JohnAbrahamsen/nonsence-ng/ >
	
	Nonsence is licensed under the MIT license < http://www.opensource.org/licenses/mit-license.php >:

	"Permission is hereby granted, free of charge, to any person obtaining a copy of
	this software and associated documentation files (the "Software"), to deal in
	the Software without restriction, including without limitation the rights to
	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
	of the Software, and to permit persons to whom the Software is furnished to do
	so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE."

  	Extracted from Apache's mime.types
	This file controls what Internet media types are sent to the client for
	given file extension(s).  Sending the correct media type to the client
	is important so they know how to handle the content of the file.
	Extra types can either be added here or by using an AddType directive
	in your config files. For more information about Internet media types,
	please read RFC 2045, 2046, 2047, 2048, and 2077.  The Internet media type
	registry is at <http://www.iana.org/assignments/media-types/>.
  
  ]]

local mimetypes = {
	ez = "application/andrew-inset",
	atom = "application/atom+xml",
	hqx = "application/mac-binhex40",
	cpt = "application/mac-compactpro",
	mathml = "application/mathml+xml",
	doc = "application/msword",
	bin = "application/octet-stream",
	dms = "application/octet-stream",
	lha = "application/octet-stream",
	lzh = "application/octet-stream",
	exe = "application/octet-stream",
	class = "application/octet-stream",
	so = "application/octet-stream",
	dll = "application/octet-stream",
	dmg = "application/octet-stream",
	oda = "application/oda",
	ogg = "application/ogg",
	pdf = "application/pdf",
	ai = "application/postscript",
	eps = "application/postscript",
	ps = "application/postscript",
	rdf = "application/rdf+xml",
	smi = "application/smil",
	smil = "application/smil",
	gram = "application/srgs",
	grxml = "application/srgs+xml",
	mif = "application/vnd.mif",
	xul = "application/vnd.mozilla.xul+xml",
	xls = "application/vnd.ms-excel",
	ppt = "application/vnd.ms-powerpoint",
	rm = "application/vnd.rn-realmedia",
	wbxml = "application/vnd.wap.wbxml",
	wmlc = "application/vnd.wap.wmlc",
	wmlsc = "application/vnd.wap.wmlscriptc",
	vxml = "application/voicexml+xml",
	bcpio = "application/x-bcpio",
	vcd = "application/x-cdlink",
	pgn = "application/x-chess-pgn",
	cpio = "application/x-cpio",
	csh = "application/x-csh",
	dcr = "application/x-director",
	dir = "application/x-director",
	dxr = "application/x-director",
	dvi = "application/x-dvi",
	spl = "application/x-futuresplash",
	gtar = "application/x-gtar",
	hdf = "application/x-hdf",
	xhtml = "application/xhtml+xml",
	xht = "application/xhtml+xml",
	js = "application/x-javascript",
	skp = "application/x-koan",
	skd = "application/x-koan",
	skt = "application/x-koan",
	skm = "application/x-koan",
	latex = "application/x-latex",
	xml = "application/xml",
	xsl = "application/xml",
	dtd = "application/xml-dtd",
	nc = "application/x-netcdf",
	cdf = "application/x-netcdf",
	sh = "application/x-sh",
	shar = "application/x-shar",
	swf = "application/x-shockwave-flash",
	xslt = "application/xslt+xml",
	sit = "application/x-stuffit",
	sv4cpio = "application/x-sv4cpio",
	sv4crc = "application/x-sv4crc",
	tar = "application/x-tar",
	tcl = "application/x-tcl",
	tex = "application/x-tex",
	texinfo = "application/x-texinfo",
	texi = "application/x-texinfo",
	t = "application/x-troff",
	tr = "application/x-troff",
	roff = "application/x-troff",
	man = "application/x-troff-man",
	me = "application/x-troff-me",
	ms = "application/x-troff-ms",
	ustar = "application/x-ustar",
	src = "application/x-wais-source",
	zip = "application/zip",
	au = "audio/basic",
	snd = "audio/basic",
	mid = "audio/midi",
	midi = "audio/midi",
	kar = "audio/midi",
	mpga = "audio/mpeg",
	mp2 = "audio/mpeg",
	mp3 = "audio/mpeg",
	aif = "audio/x-aiff",
	aiff = "audio/x-aiff",
	aifc = "audio/x-aiff",
	m3u = "audio/x-mpegurl",
	ram = "audio/x-pn-realaudio",
	ra = "audio/x-pn-realaudio",
	wav = "audio/x-wav",
	pdb = "chemical/x-pdb",
	xyz = "chemical/x-xyz",
	bmp = "image/bmp",
	cgm = "image/cgm",
	gif = "image/gif",
	ief = "image/ief",
	jpeg = "image/jpeg",
	jpg = "image/jpeg",
	jpe = "image/jpeg",
	png = "image/png",
	svg = "image/svg+xml",
	svgz = "image/svg+xml",
	tiff = "image/tiff",
	tif = "image/tiff",
	djvu = "image/vnd.djvu",
	djv = "image/vnd.djvu",
	wbmp = "image/vnd.wap.wbmp",
	ras = "image/x-cmu-raster",
	ico = "image/x-icon",
	pnm = "image/x-portable-anymap",
	pbm = "image/x-portable-bitmap",
	pgm = "image/x-portable-graymap",
	ppm = "image/x-portable-pixmap",
	rgb = "image/x-rgb",
	xbm = "image/x-xbitmap",
	xpm = "image/x-xpixmap",
	xwd = "image/x-xwindowdump",
	igs = "model/iges",
	iges = "model/iges",
	msh = "model/mesh",
	mesh = "model/mesh",
	silo = "model/mesh",
	wrl = "model/vrml",
	vrml = "model/vrml",
	ics = "text/calendar",
	ifb = "text/calendar",
	css = "text/css",
	html = "text/html",
	htm = "text/html",
	asc = "text/plain",
	txt = "text/plain",
	rtx = "text/richtext",
	rtf = "text/rtf",
	sgml = "text/sgml",
	sgm = "text/sgml",
	tsv = "text/tab-separated-values",
	wml = "text/vnd.wap.wml",
	wmls = "text/vnd.wap.wmlscript",
	etx = "text/x-setext",
	mpeg = "video/mpeg",
	mpg = "video/mpeg",
	mpe = "video/mpeg",
	qt = "video/quicktime",
	mov = "video/quicktime",
	mxu = "video/vnd.mpegurl",
	avi = "video/x-msvideo",
	movie = "video/x-sgi-movie",
	ice = "x-conference/x-cooltalk",
}

return mimetypes
