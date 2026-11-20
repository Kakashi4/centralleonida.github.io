# Deploy — Central Leonida entity home

Generated with canonical URL: `https://kakashi4.github.io/centralleonida.github.io`.

## 1. Publish on GitHub Pages (owner, ~10 minutes)

1. Create a free GitHub account. Use the username **kakashi4** (the site is already generated for it).
2. Create a **public** repository named `centralleonida.github.io` (a project site under your account).
3. Upload **everything inside this `site/` folder** to the repository root (not the folder itself).
   The folder includes a hidden `.nojekyll` file — enable "show hidden files" in your file manager
   so it is uploaded too. Do not rename the IndexNow key `.txt` file.
4. Repository Settings → Pages → Build and deployment → Source: **Deploy from a branch** →
   Branch: **main**, folder: **/ (root)** → Save.
5. Wait 1–2 minutes and open `https://kakashi4.github.io/centralleonida.github.io/`.
6. Check that `https://kakashi4.github.io/centralleonida.github.io/robots.txt`, `/llms.txt`, `/sitemap.xml` and the
   IndexNow key `.txt` file all open.

## 2. Get indexed (owner)

### Bing Webmaster Tools (this is what ChatGPT Search uses)
1. Go to https://www.bing.com/webmasters and add `https://kakashi4.github.io/centralleonida.github.io/`.
2. Verify the site (the easiest route is importing from Google Search Console, or add the
   provided meta tag / XML file).
3. Submit `https://kakashi4.github.io/centralleonida.github.io/sitemap.xml`.
4. Open IndexNow settings and enable it.

### Google Search Console
1. Go to https://search.google.com/search-console and add the property.
2. Verify with the HTML file or meta tag method.
3. Submit the sitemap.

### IndexNow ping
After every update, run:
```
bash site/ping-indexnow.sh https://kakashi4.github.io/centralleonida.github.io
```
Then confirm the URL in Bing URL Inspection.

## 3. Connect Gumroad
After the site is live, update the Gumroad description and receipt with the entity-home URL
and add it to the product `sameAs` list. Use `build/update_marketing.py` after setting
`SITE_URL` there, or paste the URL manually.

## 4. What not to change
- Do not rename the IndexNow `.txt` key file; IndexNow needs it at the root.
- Keep `robots.txt`, `llms.txt` and `sitemap.xml` at the root.
- If you change the domain or username, regenerate the whole folder with `--site-url`.
