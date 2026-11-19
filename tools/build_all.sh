#!/usr/bin/env bash
# Rebuild PeonJourney/ from public data. Run from the repo root. Needs Python 3.10+ (lupa only for the checks).
set -euo pipefail
python3 -I tools/fetch_sources.py
python3 -I tools/load_qdb.py qdb data_forever.json
python3 -I tools/gen_professions.py data_forever.json out_guides/prof data/research/professions_a.json data/research/professions_b.json
python3 -I tools/gen_gold.py data_forever.json out_guides/gold
python3 -I tools/gen_route.py data_forever.json data/dungeons_config.json rxp_free/RXPGuides/Guides/forever out_route data/route_report.txt
python3 -I tools/gen_class.py data_forever.json data/class_plan.json data/dungeons_config.json data/research/class_item_stats.json out_guides/class
python3 -I tools/build_standalone.py . rxp_free/RXPGuides PeonJourney
# checks
find PeonJourney/Guides -name "*.lua" ! -name Import.lua | sort > /tmp/pj_guides.txt
python3 -I tools/check_chain.py $(cat /tmp/pj_guides.txt)
python3 -I tools/audit_chains.py PeonJourney/Guides
