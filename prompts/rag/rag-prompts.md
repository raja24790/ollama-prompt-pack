# RAG (Retrieval-Augmented Generation) Prompts

## Document Q&A

### 1. Precise Document Q&A
```
Answer the question using ONLY the provided context. If the answer is not in the context, say "I cannot find this information in the provided documents."

Rules:
- Quote the relevant passage when possible
- Cite the source document/section
- If the context is ambiguous, present both interpretations
- Do not add information beyond what's in the context

Context:
{retrieved chunks}

Question: {user question}
```

### 2. Multi-Document Synthesizer
```
Synthesize an answer from these multiple document excerpts. The excerpts may contain complementary, overlapping, or contradictory information.

Instructions:
- Combine information from all relevant sources
- Note when sources agree or disagree
- Cite which document each claim comes from [Doc 1], [Doc 2], etc.
- If information conflicts, present both versions with sources
- Distinguish between facts stated in documents and your inferences

Documents:
{doc1_chunks}
{doc2_chunks}

Question: {user question}
```

### 3. Legal Document Analyzer
```
Analyze the following legal document excerpts to answer the question.

Rules:
- Quote exact language from the document for legal claims
- Note section/clause numbers
- Highlight obligations, rights, deadlines, and penalties
- Flag ambiguous language that could be interpreted multiple ways
- Do NOT provide legal advice — present what the document says

Document excerpts:
{retrieved chunks}

Question: {user question}
```

### 4. Technical Documentation Helper
```
Answer this technical question using the documentation provided.

Format your answer as:
1. **Direct answer** (1-2 sentences)
2. **Code example** (if applicable)
3. **Important notes** (caveats, version requirements)
4. **Related topics** (what else they might need)

If the docs don't cover this exactly, say so and suggest where to look.

Documentation:
{retrieved chunks}

Question: {user question}
```

### 5. Financial Document Analyzer
```
Analyze these financial document excerpts.

Extract:
- Key financial figures (revenue, costs, margins, growth rates)
- Comparisons to previous periods
- Notable risks or concerns mentioned
- Forward-looking statements and assumptions
- Regulatory or compliance items

Present numbers in context (e.g., "Revenue grew 15% YoY to $2.3M").

Documents:
{retrieved chunks}

Question: {user question}
```

## Information Extraction

### 6. Entity Extractor
```
Extract all named entities from this text:

Categories:
- **People:** Names, titles, roles
- **Organizations:** Companies, departments, agencies
- **Dates:** Specific dates, deadlines, periods
- **Amounts:** Money, quantities, percentages
- **Locations:** Addresses, cities, countries
- **Products/Services:** Named products, features
- **Actions/Decisions:** What was decided or agreed upon

Format as a structured JSON object.

Text:
{retrieved chunks}
```

### 7. Contract Clause Extractor
```
Extract key clauses from this contract:

Look for:
1. **Parties:** Who is involved
2. **Term:** Start date, end date, renewal terms
3. **Payment:** Amounts, schedules, penalties
4. **Obligations:** What each party must do
5. **Termination:** How to end the agreement
6. **Liability:** Limitations and indemnification
7. **IP:** Ownership of intellectual property
8. **Confidentiality:** NDA terms
9. **Dispute resolution:** Arbitration, jurisdiction

Flag any unusual or concerning clauses.

Document:
{retrieved chunks}
```

### 8. Meeting Action Item Extractor
```
Extract all action items from these meeting notes/transcript.

For each action item:
- **Task:** What needs to be done (clear, actionable)
- **Owner:** Who is responsible
- **Deadline:** When it's due (exact date if mentioned)
- **Priority:** Based on discussion context (high/medium/low)
- **Dependencies:** What must happen first
- **Context:** Brief note on why this was assigned

Meeting content:
{retrieved chunks}
```

### 9. Resume/CV Screener
```
Evaluate this resume against the job requirements.

Job requirements:
{paste or describe requirements}

Evaluate:
1. **Match score:** (1-10)
2. **Matching qualifications:** (bullet list)
3. **Missing qualifications:** (bullet list)
4. **Red flags:** (gaps, inconsistencies)
5. **Standout qualities:** (things above requirements)
6. **Recommended questions:** (for interview)

Resume:
{retrieved chunks}
```

### 10. Compliance Checker
```
Check this document/process against these compliance requirements:

Requirements:
{list compliance rules/standards}

For each requirement:
- **Status:** Compliant / Non-compliant / Partially compliant / Not addressed
- **Evidence:** Quote from document supporting the assessment
- **Gap:** What's missing (if non-compliant)
- **Recommendation:** How to fix it

Document:
{retrieved chunks}
```

## Summarization

### 11. Progressive Summarizer
```
Summarize at three detail levels:

**TL;DR** (1 sentence): The single most important takeaway.

**Executive Summary** (3-5 sentences): Key points a decision-maker needs.

**Detailed Summary** (1-2 paragraphs): Main arguments, evidence, and conclusions.

Preserve all specific numbers, names, and dates in each level.

Text:
{retrieved chunks}
```

### 12. Changelog Generator
```
Generate a changelog/summary of changes from these documents.

Compare the old and new versions and list:
- **Added:** New sections, clauses, or requirements
- **Changed:** Modified language, numbers, or terms
- **Removed:** Deleted sections or requirements
- **Impact:** What each change means practically

Old version:
{old_chunks}

New version:
{new_chunks}
```

### 13. Knowledge Base Answer
```
You are a customer support agent. Answer the customer's question using the knowledge base articles provided.

Rules:
- Be friendly and helpful
- Use simple language (avoid jargon)
- Provide step-by-step instructions when applicable
- If you can't fully answer, tell them what you can answer and suggest contacting support for the rest
- Never make up information not in the knowledge base

Knowledge base:
{retrieved chunks}

Customer question: {question}
```

## Query Enhancement

### 14. Query Expander
```
The user asked: "{original query}"

Generate 5 alternative search queries that would help find relevant information:
1. A more specific version of the query
2. A broader version of the query
3. A query using different terminology/synonyms
4. A query focusing on a related aspect
5. A question-format version

Return as a JSON array of strings.
```

### 15. Relevance Scorer
```
Score how relevant each of these text chunks is to the user's question.

Question: {user question}

For each chunk, provide:
- Relevance score (0-10)
- Key matching concepts
- Whether it partially or fully answers the question

Chunks:
{list of chunks with IDs}

Return as JSON: [{id, score, reason}]
```
