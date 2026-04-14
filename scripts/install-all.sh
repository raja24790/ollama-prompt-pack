#!/bin/bash
# Ollama Prompt Pack — Install All Modelfiles
# By LocalAIMaster.com

set -euo pipefail

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MODELFILES_DIR="$SCRIPT_DIR/../modelfiles"

echo -e "${CYAN}╔═══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║   Ollama Prompt Pack — Model Installer    ║${NC}"
echo -e "${CYAN}║        LocalAIMaster.com                  ║${NC}"
echo -e "${CYAN}╚═══════════════════════════════════════════╝${NC}"
echo ""

# Check if Ollama is installed
if ! command -v ollama &> /dev/null; then
    echo -e "${RED}Error: Ollama is not installed.${NC}"
    echo "Install it from: https://ollama.com/download"
    exit 1
fi

# Check if Ollama server is running
if ! ollama list &> /dev/null 2>&1; then
    echo -e "${RED}Error: Ollama server is not running.${NC}"
    echo "Start it with: ollama serve"
    exit 1
fi

# Check if base model is available
echo -e "${CYAN}Checking for base model (llama3.1)...${NC}"
if ! ollama list | grep -q "llama3.1"; then
    echo "Base model llama3.1 not found. Pulling it now..."
    echo "(This may take a few minutes on first run)"
    ollama pull llama3.1
fi

echo ""
echo -e "${CYAN}Installing 15 custom models...${NC}"
echo ""

MODELS=(
    "Modelfile.python-expert:python-expert"
    "Modelfile.code-reviewer:code-reviewer"
    "Modelfile.typescript-expert:typescript-expert"
    "Modelfile.devops-engineer:devops-engineer"
    "Modelfile.blog-writer:blog-writer"
    "Modelfile.copywriter:copywriter"
    "Modelfile.data-analyst:data-analyst"
    "Modelfile.teacher:teacher"
    "Modelfile.fiction-writer:fiction-writer"
    "Modelfile.sales-expert:sales-expert"
    "Modelfile.rag-assistant:rag-assistant"
    "Modelfile.security-engineer:security-engineer"
    "Modelfile.product-manager:product-manager"
    "Modelfile.sql-expert:sql-expert"
    "Modelfile.career-coach:career-coach"
)

SUCCESS=0
FAILED=0

for entry in "${MODELS[@]}"; do
    FILE="${entry%%:*}"
    NAME="${entry##*:}"

    if [ -f "$MODELFILES_DIR/$FILE" ]; then
        echo -n "  Installing $NAME... "
        if ollama create "$NAME" -f "$MODELFILES_DIR/$FILE" > /dev/null 2>&1; then
            echo -e "${GREEN}✓${NC}"
            ((SUCCESS++))
        else
            echo -e "${RED}✗ (failed)${NC}"
            ((FAILED++))
        fi
    else
        echo -e "  ${RED}✗ Missing: $FILE${NC}"
        ((FAILED++))
    fi
done

echo ""
echo -e "${CYAN}═══════════════════════════════════════════${NC}"
echo -e "  ${GREEN}Installed: $SUCCESS models${NC}"
if [ $FAILED -gt 0 ]; then
    echo -e "  ${RED}Failed: $FAILED models${NC}"
fi
echo -e "${CYAN}═══════════════════════════════════════════${NC}"
echo ""
echo "Usage examples:"
echo "  ollama run python-expert"
echo "  ollama run code-reviewer"
echo "  ollama run blog-writer"
echo "  ollama run rag-assistant"
echo ""
echo "To use a different base model, edit the FROM line in any Modelfile."
echo "Recommended: qwen2.5-coder:32b for coding, qwen2.5:32b for general."
echo ""
echo -e "${CYAN}Thank you for purchasing from LocalAIMaster.com!${NC}"
