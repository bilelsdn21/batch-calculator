# Batch Calculator + Malware Concepts (learning project)

My first Windows batch-scripting project. It has two parts:

1. **A working calculator** (`Calculator.bat`) — a menu-driven CLI calculator (add / subtract / multiply / divide) written in pure Windows batch. This was the hands-on goal: learn variables, `set /a`, labels, `goto`, and input handling in `.bat`.
2. **A short security write-up** (below) — notes from a cybersecurity course on how simple malware achieves persistence, propagation, and target selection, and why a harmless-looking script can hide behavior. The concepts are documented here for study; this repo does **not** ship working malicious code.

## Run the calculator

Double-click `Calculator.bat`, or from a terminal:

```bat
Calculator.bat
```

## Security concepts I studied (notes)

These are the techniques a real "trojaned utility" would combine. I'm documenting them to understand how they work and how to recognize them — not implementing them here.

| Concept | What it means | Defensive takeaway |
|---|---|---|
| **Social engineering** | A file looks like a harmless tool (a calculator) so the user runs it without suspicion. | Don't run scripts from untrusted sources; check what a `.bat` contains before executing. |
| **Persistence** | Malware arranges to re-run after reboot (e.g. autostart locations, scheduled tasks, registry run keys). | Audit autostart entries; EDR tools monitor these locations. |
| **Propagation** | Malware copies itself to multiple locations so it's harder to fully remove. | Integrity monitoring and allow-listing catch unexpected copies. |
| **Reconnaissance** | It inventories the system to find valuable files before acting. | Least-privilege accounts limit what a process can even see. |
| **Ransomware targeting** | It identifies high-value file types (documents, PDFs) that a real attack would encrypt. | Offline, versioned backups are the main defense. |
| **Logging / traceability** | Recording actions with timestamps — the same technique defenders use for incident response. | Good logging is what lets you reconstruct an incident afterward. |

## Why the "malicious" behavior isn't in the code

An earlier version of this script actually performed some of the above on the local machine. I removed that: a public repo shouldn't contain a runnable script that modifies a visitor's system, even as a demo. The learning value is in understanding and documenting the concepts, which is what this README does. The shipped `.bat` is just the calculator.

## What I learned

- Basic Windows batch scripting (control flow, arithmetic, user input).
- How everyday "trusted" programs can be a delivery vehicle, and the categories of behavior defenders look for.
- That demonstrating a concept safely (describe it) is different from weaponizing it (run it on someone's machine).

---
*Course project · Cybersecurity · bilel soudeni*
