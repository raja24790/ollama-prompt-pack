# Ollama Prompt Pack — 500+ Production-Ready Prompts

## By LocalAIMaster.com

Thank you for purchasing the Ollama Prompt Pack! This collection contains 500+ tested prompts organized by use case, formatted as ready-to-use Modelfiles, markdown references, and JSON exports.

---

## Quick Start (2 minutes)

### Option 1: Auto-install all Modelfiles
```bash
chmod +x scripts/install-all.sh
./scripts/install-all.sh
```
This creates all custom models in Ollama. Then just:
```bash
ollama run python-expert
ollama run code-reviewer
ollama run blog-writer
# etc.
```

### Option 2: Use individual prompts
Browse the `prompts/` folder for markdown files organized by category. Copy any prompt into your Ollama chat or API call.

### Option 3: Import to Open WebUI
Import the `prompts/all-prompts.json` file into Open WebUI's prompt library.

---

## What's Inside

### Categories (7 folders, 500+ prompts)

| Category | Prompts | Modelfiles | Best For |
|----------|---------|------------|----------|
| **Coding** | 100+ | 12 | Python, JS/TS, debugging, code review, SQL, DevOps |
| **Writing** | 80+ | 8 | Blog posts, emails, marketing copy, documentation |
| **Analysis** | 70+ | 6 | Data analysis, research, summarization, decision-making |
| **RAG** | 50+ | 5 | Document Q&A, extraction, knowledge base queries |
| **System Personas** | 60+ | 15 | Expert personas for every domain |
| **Creative** | 70+ | 6 | Stories, brainstorming, worldbuilding, dialogue |
| **Business** | 70+ | 8 | Sales, strategy, customer support, project management |

### File Formats
- `prompts/*.md` — Human-readable prompt collections with examples
- `modelfiles/` — Ready-to-use Ollama Modelfiles (`ollama create name -f Modelfile`)
- `prompts/all-prompts.json` — All prompts in JSON (for API use or Open WebUI import)
- `scripts/install-all.sh` — One-command installer for all Modelfiles

---

## Recommended Models

These prompts work with any Ollama model. Best results with:

| Task | Recommended Model | Command |
|------|------------------|---------|
| Coding | Qwen 2.5 Coder 32B | `ollama pull qwen2.5-coder:32b` |
| General/Writing | Qwen 2.5 32B | `ollama pull qwen2.5:32b` |
| Reasoning | DeepSeek R1 14B | `ollama pull deepseek-r1:14b` |
| Budget (8GB) | Llama 3.1 8B | `ollama pull llama3.1` |
| Creative | Llama 3.3 70B | `ollama pull llama3.3:70b` |

---

## Tips for Best Results

1. **Be specific** — "Review this Python function for bugs" beats "Review this code"
2. **Chain prompts** — Use the analysis prompts first, then coding prompts for implementation
3. **Adjust temperature** — Lower (0.1-0.3) for code/analysis, higher (0.7-1.0) for creative
4. **Use system prompts** — The Modelfiles set expert personas that dramatically improve output

---

## Support

- Website: https://localaimaster.com
- Email: support@localaimaster.com
- Free tools: https://localaimaster.com/tools/vram-calculator

*LocalAIMaster.com — Run AI Locally, Own Your Data*
