---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Polaris: Enabling Transaction Priority in Optimistic Concurrency Control"
authors:
- chenhao-ye
- Wuh-Chwen Hwang
- Keren Chen
- Xiangyao Yu
date: 2023-06-18
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: 2022-12-28T17:26:30-06:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: "*Proceedings of the 2023 International Conference on Management of Data*"
publication_short: "**SIGMOD &apos;23**"

abstract: "Transaction priority is a critical feature for real-world database systems. Under high contention, certain classes of transactions should be given a higher chance to commit than others. Such a prioritization mechanism is commonly implemented in locking-based concurrency control protocols as some lock scheduling mechanisms, but it is rarely supported in the world of optimistic concurrency control.

We present Polaris, an optimistic concurrency control protocol that supports multiple priority levels.
To enforce priority, Polaris introduces a minimum amount of pessimism through a lightweight reservation mechanism. The protocol is fully optimistic among transactions within the same priority level and preserves the high throughput advantage of optimistic protocols. Our evaluation with YCSB workload shows that Polaris can make high-priority transactions' p999 tail latency 13x lower than the low-priority ones. With an abort-aware priority assignment policy, Polaris can deliver 1.9x higher throughput and 17x lower tail latency compared to Silo for high-contention workloads."

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
url_code: 'https://github.com/chenhao-ye/polaris'
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

links:
- name: URL
  url: https://dl.acm.org/doi/10.1145/3588724?cid=99660889005
---
