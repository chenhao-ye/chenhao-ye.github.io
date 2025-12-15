# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is an academic personal website for Chenhao Ye, built using Hugo static site generator with the Hugo Blox Builder (formerly Hugo Academic theme). The site showcases publications, biography, and professional information.

## Build and Development Commands

### Building the Site

**Primary build method** (uses local Hugo v0.119.0):
```bash
./build.sh
```

This script:
- Downloads Hugo Extended v0.119.0 (darwin-universal) if not already present in `hugo_extended_0.119.0/`
- Runs Hugo with draft pages enabled (`-D` flag)
- Outputs to `public/` directory

**Alternative build** (requires Hugo v0.123.3+ installed globally):
```bash
hugo --minify -b <BASE_URL>
```

**Development server**:
```bash
hugo server -D
```
or with the local Hugo binary:
```bash
hugo_extended_0.119.0/hugo server -D
```

### Deployment

The site is deployed via GitHub Actions to GitHub Pages (see [.github/workflows/publish.yaml](.github/workflows/publish.yaml)). Deployment happens automatically on push to `main` branch.

Configuration:
- GitHub Actions uses Hugo v0.123.3 (set in `WC_HUGO_VERSION`)
- Base URL: `https://pages.cs.wisc.edu/~chenhaoy/` (configured in [config/_default/hugo.yaml](config/_default/hugo.yaml))
- Netlify configuration also exists in [netlify.toml](netlify.toml) (uses Hugo v0.123.3)

## Architecture and Content Structure

### Content Organization

All content is in `content/` with the following structure:

- **`content/authors/chenhao-ye/_index.md`**: Main author profile with bio, education, interests, and social links
- **`content/_index.md`**: Homepage configuration using Hugo Blox blocks (about section + publications list)
- **`content/publication/*/index.md`**: Individual publication entries with metadata, abstracts, and links
  - Each publication has its own directory (e.g., `polaris/`, `madfs/`, `ufs/`, `tratr/`, `cloudscape/`, `hare/`)
  - Publications include frontmatter with title, authors, date, publication venue, abstract, links to PDFs/code/URLs
  - Publications can include PDFs (`*.pdf`) and BibTeX files (`cite.bib`)

### Configuration Files

Configuration is split across multiple YAML files in `config/_default/`:

- **`hugo.yaml`**: Core Hugo settings (baseURL, language, permalinks, taxonomies, etc.)
- **`params.yaml`**: Hugo Blox theme parameters (appearance, SEO, header/footer, features)
- **`menus.yaml`**: Navigation menu configuration
- **`module.yaml`**: Hugo module imports for Hugo Blox Builder
- **`languages.yaml`**: Language settings

### Theme and Modules

The site uses Hugo modules (defined in [go.mod](go.mod)):
- `github.com/HugoBlox/hugo-blox-builder/modules/blox-bootstrap/v5` v5.9.7
- `github.com/HugoBlox/hugo-blox-builder/modules/blox-plugin-netlify`
- `github.com/HugoBlox/hugo-blox-builder/modules/blox-plugin-reveal`

Important: The site was built with Hugo v0.119.0 (last version supported by hugoblox at the time). While newer Hugo versions (v0.123.3) are used in CI/CD, local development uses v0.119.0 for compatibility.

### Static Assets

- **`static/files/`**: Static files like CV PDFs
- **`assets/`**: Source assets processed by Hugo
- **`public/`**: Generated site output (gitignored)
- **`resources/`**: Hugo's resource cache (gitignored)

## Hugo Blox Page Blocks

The homepage ([content/_index.md](content/_index.md)) uses Hugo Blox's block system:
- `about.avatar` block: Displays author profile from `content/authors/chenhao-ye/`
- `collection` block: Shows publications from `content/publication/` folder with citation view

## Common Development Patterns

### Adding a New Publication

1. Create a new directory in `content/publication/<pub-name>/`
2. Add `index.md` with frontmatter following the pattern in existing publications:
   - `title`, `authors` (reference author IDs like `chenhao-ye`), `date`, `publication`, `publication_short`, `abstract`
   - `publication_types`: array (e.g., `["conference"]`)
   - `featured`: boolean for highlighting
   - `url_*` fields for PDF, code, dataset, etc.
3. Optionally add `cite.bib` and PDF file to the same directory

### Updating Author Information

Edit [content/authors/chenhao-ye/_index.md](content/authors/chenhao-ye/_index.md):
- Frontmatter contains structured data (name, role, organization, interests, education, social links)
- Content section contains the bio text

### Modifying Site Appearance

- Theme selection: Edit `appearance.theme_day` and `appearance.theme_night` in [config/_default/params.yaml](config/_default/params.yaml)
- Current theme: `minimal` for both day/night modes
- Font: `minimal`, size `M`

## Important Notes

- The `hugo_extended_0.119.0/` directory contains a locally downloaded Hugo binary and is gitignored
- Generated files (`public/`, `resources/`, `.hugo_build.lock`) are gitignored
- Site uses Hugo's asset pipeline for processing SCSS and generating responsive images
- Academic publications are the primary content type; other content types (posts, projects, events) exist in the template but are mostly unused
