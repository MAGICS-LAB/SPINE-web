# SPINE project page

Website for **SPINE: Bridging the Cyber-Physical Gap with Agentic AI** (arXiv [2607.13049](https://arxiv.org/abs/2607.13049)).

- `index.html` — page source (fragment: title/style/body content; no doctype wrapper)
- `assets/` — figures; put videos in `assets/video/` (see `VIDEO-DESIGN.md` for file names and storyboards)
- `build.sh` — wraps the source into a full document and copies assets into `docs/`, which GitHub Pages serves from `main:/docs`

Edit `index.html`, run `./build.sh`, commit both, push.
