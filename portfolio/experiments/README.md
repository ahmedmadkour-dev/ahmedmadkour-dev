# Independent experiments — SEO data and customer discovery

These experiments explore how to validate a real-world opportunity before building a big product. They are **exploratory research**, not production services or claims of paying customers.

## SEO/keyword feasibility experiment — October 2026

**Goal:** see whether search demand and competing search results supported a narrowly targeted UK information website.

**Workflow:** used a small DataForSEO trial and AI-assisted scripts to collect and screen keyword data, check exclusions, inspect search-result snapshots and evaluate whether a standalone site was sensible.

**Recorded result:**
- 72 phrases across 12 keyword families after research/refinement.
- 10 UK SERP snapshots reviewed.
- 48 phrases with returned search-volume data; 24 with volume unavailable.
- One earlier exclusion-filter bug allowed 35 excluded terms to leak into the list; this was corrected locally.
- After the fix, 21 local tests passed.
- Three candidate leads were identified and ultimately rejected for a standalone website.

**Learning:** an API returning rows is not the same as obtaining valid evidence; filters, missing values, test assertions and competitor analysis affect decisions. One outcome of the exercise was **not to build** the proposed site.

DataForSEO billing and source data were not copied into this public repository; no commercial service or earnings claimed.

## Local website/SEO outreach experiment — October 2026

**Goal:** learn customer discovery and direct outreach rather than spend weeks building a product without demand.

**Method:** contacted local businesses, tested short explanations of a proposed website/SEO service and noted objections.

**Observed:** a number of calls went unanswered; conversations included businesses already satisfied with their SEO, firms not looking for help at the moment, and one friendly callback mentioning potential future expansion. This provided feedback, but **not a signed customer**.

**Learning:** reaching a real decision-maker and understanding timing/budget is a different skill from writing code or building a website. A polite rejection is still information, and cold outreach should not be confused with verified market demand.

## General principle

Build the smallest test that can disprove an assumption. Document what happened, including negative results; avoid retrofitting a success story to a project.
