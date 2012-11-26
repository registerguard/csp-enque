# Enque

### Caché [RULE](http://docs.intersystems.com/cache20091/csp/docbook/DocBook.UI.Page.cls?KEY=GCSP_customtags)s (aka `csp` tags) that inject `html` into the `<head>` or `<body>` of an `html` document.

Inspired by WordPress' [`wp_enqueue_script()`](http://codex.wordpress.org/Function_Reference/wp_enqueue_script).

---

#### TAGS:

1. `<head>`: `<custom:rg:enque>`...`</custom:rg:enque>`
2. `<body>`: `<custom:rg:enque:body>`...`</custom:rg:enque:body>`

---

#### ATTRIBUTES

These (optional) attributes apply to both tags:

1. `position`: Relative position in [section](http://docs.intersystems.com/cache20091/csp/docbook/DocBook.UI.Page.cls?KEY=RCSP_CSP_SECTION). Default is `0`. Negative is beginning of section or positive is end of section.
2. `uglify`: Trim leading/trailing spaces; remove horizontal tabs, line feeds and carriage returns. This attribute doesn't (currently) take any arguments.

---

#### EXAMPLES

**Before:**

```html
<!doctype html>
<html>
<head>
</head>
<body>

<custom:rg:enque:body uglify>
	<script type="text/javascript" src="http://rgweb.slideshowpro.com/m/embed.js"></script>
	<script type="text/javascript">
		SlideShowPro({
			attributes: {
				id: "album-363953",
				width: 550,
				height: 400
			},
			mobile: {
				auto: false
			},
			params: {
				bgcolor: "#000000",
				allowfullscreen: true
			},
			flashvars: {
				xmlFilePath: "http://rgweb.slideshowpro.com/images.php?album=363953"
			}
		});
	</script>
</custom:rg:enque:body>
<div id="album-363953"></div>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lobortis elit dapibus eros ornare et venenatis turpis fermentum. Integer dictum, ipsum a dapibus gravida, arcu lorem blandit eros, sit amet commodo est sapien in velit. In hac habitasse platea dictumst. Sed lorem tortor, cursus accumsan iaculis sit amet, gravida eu nisl. Suspendisse potenti. Quisque in bibendum mauris. Pellentesque aliquet, velit eu congue placerat, metus nibh ornare neque, et lacinia libero odio at nunc. Curabitur lobortis consequat purus nec vulputate. Integer condimentum ullamcorper dictum. Nam eget nulla tortor. In eros nisl, lacinia ac ultrices ac, pulvinar vitae mi. Sed luctus, ipsum eu mollis venenatis, massa leo hendrerit elit, non dignissim lorem risus at quam. Curabitur cursus tincidunt nibh, at egestas nisl tempus ut. Cras condimentum dui a leo sodales vehicula.</p>

</body>
</html>
```

**After:**

```html
<!doctype html>
<html>
<head>
</head>
<body>

<div id="album-363953"></div>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lobortis elit dapibus eros ornare et venenatis turpis fermentum. Integer dictum, ipsum a dapibus gravida, arcu lorem blandit eros, sit amet commodo est sapien in velit. In hac habitasse platea dictumst. Sed lorem tortor, cursus accumsan iaculis sit amet, gravida eu nisl. Suspendisse potenti. Quisque in bibendum mauris. Pellentesque aliquet, velit eu congue placerat, metus nibh ornare neque, et lacinia libero odio at nunc. Curabitur lobortis consequat purus nec vulputate. Integer condimentum ullamcorper dictum. Nam eget nulla tortor. In eros nisl, lacinia ac ultrices ac, pulvinar vitae mi. Sed luctus, ipsum eu mollis venenatis, massa leo hendrerit elit, non dignissim lorem risus at quam. Curabitur cursus tincidunt nibh, at egestas nisl tempus ut. Cras condimentum dui a leo sodales vehicula.</p>

<script type="text/javascript" src="http://rgweb.slideshowpro.com/m/embed.js"></script><script type="text/javascript">SlideShowPro({attributes: {id: "album-363953",width: 550,height: 400},mobile: {auto: false},params: {bgcolor: "#000000",allowfullscreen: true},flashvars: {xmlFilePath: "http://rgweb.slideshowpro.com/images.php?album=363953"}});</script>

</body>
</html>
```

**Before:**

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Testing enque</title>
<meta name="description" content="">
<meta name="keywords" content="">
</head>
<body>

<custom:rg:enque><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script></custom:rg:enque>
<custom:rg:enque><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script></custom:rg:enque>
<custom:rg:enque><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script></custom:rg:enque>
<custom:rg:enque:body><script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/jquery-ui.min.js"></script></custom:rg:enque:body>
<custom:rg:enque:body><script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/jquery-ui.min.js"></script></custom:rg:enque:body>

<p>Ut a urna non lectus fermentum molestie id a sapien. Donec non dictum nulla. Aliquam gravida eleifend nisl sed consectetur. Pellentesque et varius neque. Aliquam eu eros est. Proin sed nibh nec neque adipiscing lacinia et eu ante. Suspendisse porta vehicula orci sit amet posuere. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse euismod ipsum at eros fringilla elementum. Quisque eu leo arcu, tempus sodales tellus. Phasellus eleifend arcu ac est volutpat aliquam. Donec egestas, tortor eu mollis iaculis, est metus commodo mi, non semper enim metus dignissim augue. Sed auctor sollicitudin purus, id volutpat risus iaculis vitae. Suspendisse sodales tristique vestibulum. Nam purus turpis, convallis at consequat a, malesuada eu orci. Sed euismod posuere augue a scelerisque.</p>

</body>
</html>
```

**After:**

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Testing enque</title>
<meta name="description" content="">
<meta name="keywords" content="">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
</head>
<body>

<p>Ut a urna non lectus fermentum molestie id a sapien. Donec non dictum nulla. Aliquam gravida eleifend nisl sed consectetur. Pellentesque et varius neque. Aliquam eu eros est. Proin sed nibh nec neque adipiscing lacinia et eu ante. Suspendisse porta vehicula orci sit amet posuere. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse euismod ipsum at eros fringilla elementum. Quisque eu leo arcu, tempus sodales tellus. Phasellus eleifend arcu ac est volutpat aliquam. Donec egestas, tortor eu mollis iaculis, est metus commodo mi, non semper enim metus dignissim augue. Sed auctor sollicitudin purus, id volutpat risus iaculis vitae. Suspendisse sodales tristique vestibulum. Nam purus turpis, convallis at consequat a, malesuada eu orci. Sed euismod posuere augue a scelerisque.</p>

<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/jquery-ui.min.js"></script>

</body>
</html>
```

**See also:** [`test.csp`](https://github.com/registerguard/csp-enque/blob/master/enque/test.csp).

---

#### INSTALLATION

There's a couple ways (that I can think of) to install this code:

### Copy/paste:

1. Open Studio.
2. Change to the `CMS` namespace.
3. "File" >> "New..." and choose "Caché Class Definition" from "General" tab.
4. Copy/paste the **RAW** contents `custom.rg.Enque.cls` into this new file.
5. Save this file as `custom.rg.Enque.cls` to your `custom` package, in a sub package called `rg`.
6. Compile.
7. "File" >> "New..." and choose "Caché Server Page" from "CSP File" tab.
8. Copy/paste the **RAW** contents of `custom.rg.GetStoriesRule.csr` into this new file.
9. Save this file as `custom.rg.EnqueRule.csr` to the "CSP Files" >> `/csp/cms/customrules` package/folder/location.
10. Compile.

### Import local:

1. Download and unzip this repo to your local machine.
2. Open Studio.
3. Change to the `CMS` namespace.
4. "Tools" >> "Import Local...".
5. Import `custom.rg.Enque.xml`, `custom.rg.EnqueRule.csr` and check the compile box.

---

#### NOTES:

Non-[DTI](http://www.dtint.com/) customers should emove these lines from `custom.rg.debug.WriteRule.csr`:

```
<csr:class super="dt.common.page.Rule" />
```

```
<script language="cache" runat="compiler">
	do ##this.RenderDTStartTag()
</script>
```

```
<script language="cache" runat="compiler">
	do ##this.RenderDTEndTag()
</script>
```

---

#### LEGAL

Copyright © 2012 [Micky Hulse](http://hulse.me)/[The Register-Guard](http://www.registerguard.com)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.