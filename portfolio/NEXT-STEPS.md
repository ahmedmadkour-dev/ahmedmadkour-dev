# Prioritised portfolio improvements

This is a practical checklist based on the actual files currently visible in GitHub (15 November 2026).

## Priority 1 — Make Cisco projects reproducible

**Why:** Nine Cisco simulations are currently documented, but the `.pkt` files are not committed. This is the clearest mismatch between the portfolio descriptions and what an interviewer can open.

- [ ] Locate saved Lab 01–08 `.pkt` projects on Windows; add each to its matching [lab folder](networking/README.md).
- [ ] Save and add the completed Project 09 `.pkt` file to `networking/project-09/`.
- [ ] For each: screenshot the logical topology and one decisive test; record expected vs actual results.
- [ ] For Project 09: include sanitized `show vlan brief`, `show interfaces trunk`, `show ip route ospf`, `show ip ospf neighbor` and `show ip access-lists` output.
- [ ] Verify each `.pkt` opens cleanly before publishing.

**A single thoroughly reproducible Project 09** is more compelling than nine descriptions with no files.

## Priority 2 — Complete FitLoop's competition evidence

**Why:** FitLoop has a clear narrative involving your website, public product demo, team pitch and a specific individual award.

- [ ] Upload your final competition pitch slides **after** reviewing any teammates' personal information and image rights.
- [ ] If you have it, add a non-sensitive photograph or certificate of the **Outstanding Individual** award.
- [ ] Record a 60–90 second screen tour: discover a tailor → request an alteration → compare a demo quote → view booking progress.
- [ ] Consider a clean, safely reviewed code export so visitors can inspect the product as well as the existing screenshots.
- [ ] Add 3 concise lessons from the judges' questions, including why commercial valuations need evidence.

The pitch was at Generating Genius Entrepreneurship Genius in September 2026; the team **didn't win overall**. Avoid turning a demonstration valuation, sample bookings or example data into real business traction.

## Priority 3 — Strengthen actual source/code evidence

- [ ] Publish source exports for Sayyad and JARVIS **only if** they can be sanitized and distributed safely, with license/ownership considered.
- [ ] Add setup instructions, dependency versions and a short test demonstration to each source repo.
- [ ] Make clear which workflows you personally checked and which are currently unverified.
- [ ] Avoid empty tech-stack boasting: one reproducible feature with a passing test is better.

## Priority 4 — Improve Linux monitoring reliability

- [ ] Test the real monitor's positive alert-file-writing path using an injectable fixture, not actual brute-force traffic.
- [ ] Detect journal access failures rather than printing zero.
- [ ] Add automated test cases for 0, 4, 5 and 6 resets; time windows; duplicate suppression; and multi-IP cases.
- [ ] Consider per-IP and global alert tracking, safely scoped state files and reliable log rotation.
- [ ] Avoid claiming live distributed-attack detection: the multi-IP detector is currently a **separate synthetic prototype**.

## Priority 5 — Make each project easy to explain in interviews

For every featured project, prepare a two-minute explanation:

1. **Problem:** What were you trying to solve?
2. **Your contribution:** What decisions and practical work did you personally do?
3. **Technical approach:** What components made it work?
4. **Proof:** Which test or demo could you show?
5. **Setback:** What broke, how did you diagnose it, and what would you improve?

Focus on accurate reasoning, not on implying everything was hand-coded or built without tooling. Describe assistance matter-of-factly when asked, but lead with your own choices and verified work.

## GitHub housekeeping

- [ ] Pin the **FitLoop** and strongest technical project repositories on your profile (GitHub's pin controls are managed in the GitHub UI).
- [ ] Review the unrelated **public `m3u`** repository; it currently contains a large playlist with external streaming URLs. Make sure there are no sensitive, licensed, or private links and consider whether it belongs on a professional public profile.
- [ ] Keep the small private **MyFirstAIProject** Roblox starter separate until it contains demonstrable work.
- [ ] Use descriptive commit messages, consistent folder names and short top-of-repo READMEs. Add licenses only when the ownership and rights permit.
- [ ] Remove actual keys, tokens, personal data, runtime databases and copied commercial data from any future source export; check Git history too.

**Current strength:** a well-documented FitLoop competition product and two technically substantial simulated/home-lab projects. **Current weakness:** too many repositories are documentation-only rather than reproducible code or simulation artifacts.
