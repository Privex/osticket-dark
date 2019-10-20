# Dark Theme for OSTicket

Originally found at https://userstyles.org/styles/139070/osticket-dark-theme

Some modifications made by Privex Inc. - https://www.privex.io/


# Usage

Open the OSTicket file `include/staff/header.inc.php` and insert after the following line:

```
<!-- Around line 47 -->
<link type="text/css" rel="stylesheet" href="<?php echo ROOT_PATH ?>scp/css/translatable.css"/>

<!-- osticket-dark.min.css pre-minified and hosted on Privex CDN -->
<link type="text/css" rel="stylesheet" href="https://cdn.privex.io/github/osticket-dark/osticket-dark.min.css" />
```

# Minification

If you need to minify the CSS, just use https://cssminifier.com - they even have an API for easy minification.

```
git clone https://github.com/Privex/osticket-dark.git
cd osticket-dark

curl -X POST -s --data-urlencode 'input@osticket-dark.css' https://cssminifier.com/raw > osticket-dark.min.css
```


# License

Public domain. See `LICENSE.txt`


