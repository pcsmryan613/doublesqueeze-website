# doublesqueezeproductions.com

Static site for Double Squeeze Productions, LLC — hosts the legal pages Apple requires (privacy policy
URL, support URL) plus a minimal landing/support page. Served by GitHub Pages on the
custom domain `doublesqueezeproductions.com`.

## Layout

- `index.html` — landing page + support contact (hand-written)
- `privacy.html`, `terms.html` — **generated** from `../ignite2/Resources/Legal/*.md`; do not edit directly
- `build.sh` — regenerates the legal pages via pandoc (fails if any `[PLACEHOLDER: …]` remains in the source .md)
- `template.html` — shared page wrapper used by `build.sh`
- `CNAME` — tells GitHub Pages to serve the custom domain
- `.nojekyll` — serve files as-is, no Jekyll processing

After editing `ignite2/Resources/Legal/*.md`, run `./build.sh` and redeploy.

## One-time deploy

### 1. Create the GitHub repo and push

```bash
cd /Users/michaelryan/doublesqueeze/website   # already a git repo (main, initial commit done)
# then either:
gh auth login && gh repo create doublesqueeze-website --public --source=. --push
# or create the repo on github.com under pcsmryan613 (or a
# doublesqueezeproductions org if you make one) and:
git remote add origin git@github.com:<owner>/<repo>.git
git push -u origin main
```

Repo name doesn't matter for the final URL — the custom domain overrides it.

### 2. Enable GitHub Pages

Repo → Settings → Pages → Source: **Deploy from a branch** → `main` / root.
GitHub detects `CNAME` and sets the custom domain automatically (verify it shows
`doublesqueezeproductions.com`).

### 3. Cloudflare DNS

Cloudflare dashboard → `doublesqueezeproductions.com` → DNS → Records:

| Type | Name | Target | Proxy |
|------|------|--------|-------|
| A | `@` | `185.199.108.153` | DNS only |
| A | `@` | `185.199.109.153` | DNS only |
| A | `@` | `185.199.110.153` | DNS only |
| A | `@` | `185.199.111.153` | DNS only |
| CNAME | `www` | `pcsmryan613.github.io` | DNS only |

**DNS only (grey cloud)** — GitHub can't verify/issue its cert through Cloudflare's
proxy. After Pages serves HTTPS, back in repo Settings → Pages tick
**Enforce HTTPS**.

### 4. Cloudflare Email Routing

Cloudflare dashboard → `doublesqueezeproductions.com` → Email → Email Routing →
Get started:

- Custom address: `support@doublesqueezeproductions.com`
- Destination: `doublesqueezeproductions@gmail.com` (verify via the email Gmail receives)
- Cloudflare adds the required MX/SPF records automatically — accept the prompt.

Optional extras (same destination): `privacy@`, `legal@`, `appstore@`.

To *send* as `support@…` from Gmail: Gmail → Settings → Accounts →
"Send mail as" → add the address; use `smtp.gmail.com` is not needed — pick the
"send through Gmail" option which uses the verification-code flow.

### 5. Verify

- `https://doublesqueezeproductions.com` loads (may take a few minutes for cert issuance)
- `https://doublesqueezeproductions.com/privacy.html` and `/terms.html` return 200
- Send a test email to `support@doublesqueezeproductions.com` → arrives in Gmail

### 6. App Store Connect

- Privacy policy URL: `https://doublesqueezeproductions.com/privacy.html`
- Terms of use URL: `https://doublesqueezeproductions.com/terms.html` (optional field)
- Support URL: `https://doublesqueezeproductions.com`
- Support/trader email: `support@doublesqueezeproductions.com`

## Resolved decisions (Sep 30, 2026)

- Entity name: **Double Squeeze Productions, LLC** — used in both legal docs and
  throughout the site.
- Governing law: **State of Rhode Island** (Terms §13).
- Age rating: **13+ policy floor for both apps** (Apple's 2025–26 tiers: 4+/9+/13+/16+/18+;
  questionnaire calculates 4+, then "Override to Higher Age Rating" → 13+). Keeps
  both apps outside COPPA (applies only under 13) without an adult-content look.
  Privacy §5 and Terms §2 reflect this.
- Legal docs are **shared across apps** — written for "our mobile applications,
  including Avoken and Axiomic (each, the 'App')". No per-app pages.
