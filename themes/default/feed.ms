<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">

<title>Stephen Lovell's Blog Feed</title>
<subtitle>Designer &#38; Thinker</subtitle>
<link href="http://sc.dev/stacey/feed/" hreflang="en" rel="self" type="application/atom+xml"/>
<link href="http://sc.dev/stacey/" hreflang="en" rel="alternate" type="text/html"/>

<updated>2012-07-15T10:50:43+10:00</updated>
<generator uri="http://charliecms.com/" version="1.0">Charlie</generator>

<author>
<name>Stephen Lovell</name>
<uri>http://sc.dev/stacey</uri>
</author>

<id>tag:sc.dev,2012:/feed/</id>
<rights> 2012 Stephen Lovell</rights>

{{#feed_looper}}
		{{#item}}
		
		<entry>
			<title>{{title}}</title>
			<id>{{id}}</id>
			<updated>{{date}}</updated>
			<link rel="alternate" type="text/html" href="{{link}}" />
			<content type="xhtml" xml:lang="en">
				<div xmlns="http://www.w3.org/1999/xhtml">
				  	  
					<summary>{{teaser}}</summary>
				  
				</div>
		   </content>
		</entry>
			
		{{/item}}
{{/feed_looper}}

</feed>