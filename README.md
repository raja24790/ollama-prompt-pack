# Ollama Prompt Pack

Prompt libraries and Ollama Modelfiles for coding, writing, analysis, RAG, business, creative work, and expert personas.

This repo is a public prompt collection for people building with local LLMs. It includes Markdown prompt libraries and ready-to-create Ollama Modelfiles for reusable assistant roles.

<p>
  <img src="https://img.shields.io/badge/Ollama-prompts-000000?style=for-the-badge">
  <img src="https://img.shields.io/badge/Modelfiles-15-0B8F60?style=for-the-badge">
  <img src="https://img.shields.io/badge/Prompt%20Libraries-10-2F80ED?style=for-the-badge">
  <img src="https://img.shields.io/badge/Local%20LLM-ready-B3261E?style=for-the-badge">
</p>

## Why Star This

- Copy/paste prompt libraries organized by use case.
- 15 Ollama Modelfiles for reusable assistant roles.
- Useful categories for coding, RAG, data analysis, business, writing, and creative work.
- One install script to create the bundled Modelfile-based assistants.

## Quick Start

```bash
git clone https://github.com/raja24790/ollama-prompt-pack
cd ollama-prompt-pack

ollama pull llama3.1
chmod +x scripts/install-all.sh
./scripts/install-all.sh
```

Then run:

```bash
ollama run python-expert
ollama run code-reviewer
ollama run rag-assistant
ollama run blog-writer
```

## Included Prompt Libraries

```text
prompts/
├── analysis/data-analysis-prompts.md
├── business/business-prompts.md
├── coding/debugging-prompts.md
├── coding/devops-prompts.md
├── coding/javascript-prompts.md
├── coding/python-prompts.md
├── creative/creative-prompts.md
├── rag/rag-prompts.md
├── system-personas/expert-personas.md
└── writing/content-writing-prompts.md
```

## Included Modelfiles

`python-expert`, `typescript-expert`, `code-reviewer`, `devops-engineer`, `sql-expert`, `data-analyst`, `rag-assistant`, `security-engineer`, `product-manager`, `blog-writer`, `copywriter`, `teacher`, `fiction-writer`, `sales-expert`, `career-coach`

## Search Keywords

`ollama prompts`, `ollama modelfile`, `local llm prompts`, `prompt engineering`, `rag prompts`, `coding prompts`, `system prompts`, `ai persona prompts`, `open webui prompts`

## Related

- Flagship local AI stacks: https://github.com/raja24790/ollama-docker-templates
- Website: https://localaimaster.com
