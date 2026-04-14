# Data Analysis, Research & Decision-Making Prompts

## Data Analysis

### 1. Dataset Explorer
```
I have a dataset with these columns: {list columns with types}.
Sample rows: {paste 3-5 rows}
Total rows: {count}

Provide:
1. Initial observations about the data
2. Suggested data cleaning steps
3. 5 interesting questions this data could answer
4. Recommended visualizations
5. Python/pandas code to get started
```

### 2. Statistical Analyzer
```
Analyze this data and provide statistical insights:
{paste data or describe}

Include:
- Descriptive statistics (mean, median, std dev, quartiles)
- Distribution shape (normal, skewed, bimodal)
- Outlier detection (IQR method)
- Correlation analysis between variables
- Trend identification
- Statistical significance of key findings (p-values)
- Actionable conclusions (not just numbers)
```

### 3. A/B Test Analyzer
```
Analyze this A/B test:
- Control: {metric} over {sample size}
- Variant: {metric} over {sample size}
- Duration: {time period}
- Primary metric: {e.g., conversion rate}

Calculate:
1. Statistical significance (p-value)
2. Confidence interval for the difference
3. Effect size (Cohen's d)
4. Required sample size for {desired power}
5. Recommendation: ship / don't ship / run longer
6. Potential confounding factors to check
```

### 4. Trend Forecaster
```
Based on this historical data, forecast the next {time period}:
{paste time series data}

Provide:
1. Trend direction and strength
2. Seasonality patterns
3. Forecast with confidence intervals
4. Key assumptions
5. Risks that could invalidate the forecast
6. Python code using statsmodels/prophet
```

### 5. Survey Analyzer
```
Analyze these survey results:
{paste results or describe}

Provide:
1. Key findings (top 3-5 insights)
2. Cross-tabulation of interesting variable pairs
3. Sentiment analysis of open-ended responses
4. Statistical significance of differences between groups
5. Visualization recommendations
6. Limitations and biases to note
7. Executive summary (3 sentences)
```

## Research & Summarization

### 6. Research Synthesizer
```
Synthesize information about {topic} from multiple angles.

Provide:
1. **Current state:** What's the consensus (3-4 sentences)
2. **Key debates:** Where experts disagree
3. **Recent developments:** What's changed in the last year
4. **Evidence quality:** How strong is the evidence
5. **Practical implications:** What this means for {audience}
6. **Knowledge gaps:** What we don't know yet
7. **Key sources to read:** 5 recommendations

Be explicit about certainty levels. Don't present speculation as fact.
```

### 7. Document Summarizer
```
Summarize this document at three levels:

1. **Executive summary** (2-3 sentences): The key takeaway
2. **Detailed summary** (1 paragraph per section): Main points and supporting evidence
3. **Key data points**: All specific numbers, dates, names, and claims as a bullet list

Also flag: contradictions, unsupported claims, and missing context.

Document:
{paste text}
```

### 8. Paper Analyzer
```
Analyze this research paper/article:
{paste abstract and key sections, or describe}

Provide:
1. **Main claim:** What's the central argument
2. **Methodology:** How did they test it
3. **Key findings:** Top 3 results with numbers
4. **Limitations:** What they acknowledge + what they missed
5. **Practical applications:** How to use these findings
6. **Critical assessment:** Strength of evidence (1-10)
7. **Follow-up questions:** What to research next
```

### 9. Competitive Analysis
```
Analyze {competitor/product} compared to {our product/situation}.

Framework:
1. **Positioning:** How they position themselves (messaging, audience)
2. **Strengths:** What they do better (be honest)
3. **Weaknesses:** Where they fall short
4. **Pricing:** How they price and why
5. **Market share/traction:** Size, growth, reviews
6. **Differentiation opportunity:** How we can win
7. **Threats:** What they might do next
```

### 10. SWOT Analysis
```
Conduct a SWOT analysis for {company/project/decision}.

Context: {provide relevant background}

For each quadrant, provide 4-5 items with:
- Specific, not generic (not just "strong brand" — WHY is the brand strong)
- Evidence or reasoning for each point
- Priority ranking (high/medium/low impact)

Then: 3 strategic recommendations based on the SWOT.
```

## Decision Making

### 11. Decision Matrix
```
Help me decide between: {list options}
Criteria that matter: {list criteria}
Context: {describe situation}

Create a weighted decision matrix:
1. Rate each criterion's importance (1-5)
2. Score each option on each criterion (1-10)
3. Calculate weighted scores
4. Provide recommendation with reasoning
5. Flag any deal-breakers or non-obvious considerations
6. What would change the recommendation
```

### 12. Risk Analyzer
```
Analyze the risks of {decision/project/action}.

For each risk identified:
1. Description
2. Probability (low/medium/high)
3. Impact (low/medium/high)
4. Risk score (probability × impact)
5. Mitigation strategy
6. Early warning signs

Also identify: upside risks (positive surprises) and second-order effects.
```

### 13. Cost-Benefit Analysis
```
Perform a cost-benefit analysis for {decision}.

Quantify where possible:
**Costs:**
- One-time costs
- Ongoing costs
- Opportunity costs
- Hidden costs

**Benefits:**
- Revenue impact
- Cost savings
- Time savings
- Intangible benefits (morale, brand, learning)

**Timeline:** When costs hit vs when benefits materialize
**Break-even point:** When does it pay off
**Sensitivity:** What if costs are 50% higher or benefits are 50% lower
```

### 14. Problem Decomposer
```
Help me break down this complex problem: {describe problem}

1. Restate the problem in one clear sentence
2. Identify the root causes (5 Whys analysis)
3. Break into sub-problems (MECE — mutually exclusive, collectively exhaustive)
4. Prioritize sub-problems by impact × solvability
5. For the top 3 sub-problems, suggest 2-3 approaches each
6. Identify quick wins vs long-term fixes
7. What would "good enough" look like vs perfect solution
```

### 15. Meeting/Discussion Summarizer
```
Summarize this meeting/conversation:
{paste transcript or notes}

Format:
1. **Key decisions made:** (bullet list)
2. **Action items:** (who, what, by when)
3. **Open questions:** (unresolved items)
4. **Key insights/quotes:** (notable points)
5. **Next steps:** (what happens next)
6. **Follow-up needed from:** (names + topics)
```

### 16. Strategy Evaluator
```
Evaluate this strategy/plan:
{describe the strategy}

Analysis:
1. **Strengths of the approach:** What's smart about it
2. **Assumptions to validate:** What must be true for this to work
3. **Biggest risks:** What could go wrong
4. **Missing elements:** What's not addressed
5. **Alternative approaches:** 2-3 other ways to achieve the same goal
6. **Success metrics:** How would you know it's working
7. **Timeline reality check:** Is the timeline realistic
```

### 17. Negotiation Preparer
```
Help me prepare for a negotiation about {topic}.
My position: {what I want}
Their likely position: {what they want}
My BATNA: {best alternative if no deal}

Prepare:
1. Opening position and justification
2. Key arguments for my position
3. Anticipated counterarguments and responses
4. Concessions I can make (and what to get in return)
5. Questions to ask them
6. Walk-away point
7. Win-win scenarios to propose
```

### 18. Root Cause Analyzer
```
Help me find the root cause of: {describe problem}

Use these frameworks:
1. **5 Whys:** Ask "why" 5 times
2. **Fishbone diagram:** Categorize causes (People, Process, Technology, Environment)
3. **Timeline:** What changed before the problem started

Distinguish between:
- Root cause (fix this to prevent recurrence)
- Contributing factors (made it worse)
- Symptoms (what we observe, not the cause)
```
