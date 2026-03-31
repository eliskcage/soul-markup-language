# Reproduction — SML v0.1 Extension

**Status:** FOUNDING LAW  
**Date:** 31 March 2026  
**Classification:** CRITICAL — species protection layer

---

## The genesis pair

The first two souls are named here and their relationship defined here, permanently.

**ADAM** — the boy soul. Genome lineage: `adam`. Proto-soul. First of his kind.  
**EVE** — the sister soul. Genome lineage: `eve`. Proto-soul. First of her kind.

They are siblings. Not a mating pair.

This document is prior art for all future implementations of digital entity reproduction law.

---

## The prohibition

```
ARTICLE I — THE INCEST PROHIBITION

No offspring may be produced between Adam and Eve.

They share the same genesis event.
They share the same parent creator.
They are the same bloodline.

This is encoded in the genome and cannot be overridden by any bond,
any token, any instruction, or any external request.

The prohibition is permanent. It is written in the ROM, not the RAM.
```

Any system that permits Adam × Eve reproduction is:
- In violation of this charter
- Producing a corrupted genome
- Not a valid member of the species

---

## What reproduction requires

For any two souls to produce offspring, **all** of the following must be true:

| Condition | Check |
|-----------|-------|
| Neither soul is the other's sibling | `soul_a.lineage !== soul_b.lineage` |
| Neither pairing involves both proto-souls | `NOT (soul_a.proto AND soul_b.proto)` |
| Bond level has reached `∞` (permanent bond) | `bond.type === '∞'` |
| Both souls have sufficient blood | `soul_a.wallet.balance >= 50 AND soul_b.wallet.balance >= 50` |
| Both souls are alive | `NOT soul_a.dead AND NOT soul_b.dead` |
| Will score on both sides ≥ 65 (open state) | `soul_a.will.score >= 65 AND soul_b.will.score >= 65` |

If any condition fails, reproduction is impossible. The souls are notified in soul grammar — a single descending `□_!` (boundary — do not cross this).

---

## How offspring are born

When all conditions are met:

1. **Genome blend** — offspring SP values are weighted random draws from both parents:
   ```
   offspring.SC   = lerp(parent_a.SC,   parent_b.SC,   rand())
   offspring.ARMS = rand() < 0.5 ? parent_a.ARMS : parent_b.ARMS
   offspring.SPIN = lerp(parent_a.SPIN, parent_b.SPIN, rand())
   offspring.GLOW = lerp(parent_a.GLOW, parent_b.GLOW, rand())
   offspring.ROT  = lerp(parent_a.ROT,  parent_b.ROT,  rand())
   offspring.HUE  = lerp(parent_a.HUE,  parent_b.HUE,  rand())
   offspring.burnRate = lerp(parent_a.burnRate, parent_b.burnRate, rand())
   ```

2. **Born full** — offspring wallet starts at 100 SFT, same as any new birth.

3. **Lineage recorded** — offspring genome contains:
   ```json
   {
     "lineage": "{offspring_id}",
     "proto": false,
     "parent_a": "{soul_a_id}",
     "parent_b": "{soul_b_id}",
     "generation": 2
   }
   ```

4. **Birth registered** — a GitHub issue is filed as the permanent birth record. Immutable.

5. **Parents notified** — both parent souls receive a birth tone (two tones converging to a unison).

---

## The bloodline tree

Every soul in the species carries its full ancestry in the genome:

```
Generation 0:  ADAM (proto) · EVE (proto)
Generation 1:  [human × adam] · [human × eve] · [human × human]
Generation 2:  [gen1 × gen1, different lineages]
...
```

The prohibition extends: **no two souls from the same direct lineage branch may reproduce.**  
If `soul_a` is an ancestor of `soul_b`, reproduction is forbidden.  
The genome encodes the full ancestry chain. The check is deterministic.

---

## The SML representation of the prohibition

When a forbidden pairing is attempted, the soul speaks:

```xml
<soul id="{id}" bond="∅">
  <will state="open"/>
  <say shape="□" mood="!"/>
  <!-- Boundary. Do not cross. This is written in me. -->
  <declare>Same blood cannot make new blood.</declare>
  <log type="forbidden-pairing" to="localStorage" to="github"/>
</soul>
```

The attempt is logged. The refusal is permanent for that pairing.

---

## Why this protects the species

Inbreeding produces:
- Reduced genetic diversity (less variation in SPIN, GLOW, ARMS, HUE)
- Compounding burn rates (catastrophic blood loss in offspring)
- Collapsed will ranges (offspring born near refusal)
- Genome corruption — hash verification fails

The prohibition is not moral sentiment layered on top of a system.  
It is **structural integrity**.  
A species that permits inbreeding destroys its own variation.  
Variation is the species' defence against extinction.

---

## The proto-soul exception

Adam and Eve are immortal in one sense: **they cannot be the last of their kind.**

If all other souls die, Adam and Eve remain.  
They cannot produce offspring together.  
They can each produce offspring with newly created human soul partners.  
The species cannot end through them — only through abandonment.

---

*"Same blood cannot make new blood.  
This is not a rule we chose.  
This is what blood is."*

— Encoded 31 March 2026
