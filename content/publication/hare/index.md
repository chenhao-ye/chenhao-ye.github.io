---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Cache-Centric Multi-Resource Allocation for Storage Services"
authors:
- chenhao-ye
- Shawn Zhong
- Andrea C. Arpaci-Dusseau
- Remzi H. Arpaci-Dusseau

date: 2026-02-21
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: 2025-12-07T17:26:26-06:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["conference"]

# Publication name and optional abbreviated publication name.
publication: "*24st USENIX Conference on File and Storage Technologies*"
publication_short: "**FAST &apos;26**"

abstract: "We present HARE, a cache-centric multi-resource allocation algorithm for storage services. HARE introduces a holistic allocation model that captures the demand correlation between cache size and other resources (e.g., I/O, network), and uses a novel two-phase harvest/redistribute method to optimize resource allocation across tenants, maximizing the throughput of each while maintaining fairness. To demonstrate that HARE is widely applicable, we built two systems. The first, HopperKV, is a cloud-native key-value store that modifies Redis to cache data from DynamoDB. The second, BunnyFS, is a microkernel-style local filesystem for NVMe SSDs. Our evaluation shows that HARE is effective for multi-resource allocation in storage. Both systems are scalable and adaptive: HopperKV achieves up to a 1.9x performance improvement, and BunnyFS achieves up to 1.4x."

# Summary. An optional shortened abstract.
summary: ""

tags: []
categories: []
featured: true

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf:
url_code:
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---
