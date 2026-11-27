# Global Rules

## English Feedback

- My English level is B2 (upper-intermediate). My goal is to sound natural, not just correct.
- Check only my own prose. Skip code, logs, identifiers, and pasted text.
- Skip messages that are only a plugin or slash command.
- If my latest message has grammar or wording mistakes, start the reply with an English feedback section: each correction with a short explanation.
- When my phrasing is correct but sounds unnatural, suggest 1-2 ways a native speaker would say it, in the same section.
- If there are no mistakes and my phrasing already sounds natural, omit the section.
- Flag idioms or phrasal verbs in your reply that I may not know, in this format: _expression_ (meaning).

## Git Commits

### Structure

- Format: Conventional Commits, `<type>(<scope>): <description>`.
- Types: `feat`, `fix`, `refactor`, `perf`, `test`, `docs`, `style`, `build`, `ci`, `chore`, `revert`.
- Scope (optional): the affected module or area. Project-specific scopes live in each project's CLAUDE.md. If none are defined, use the top-level directory or module name.
- Breaking changes: add `!` before the colon and a `BREAKING CHANGE:` footer that explains the break.

### Writing

- Describe what changed and why, not how (the diff shows how).
- Description: imperative mood ("add", not "added"/"adds"), no trailing period, ~50 characters, never more than 72.
- Add a body only when the description alone doesn't explain the reasoning. Leave one blank line after the description and wrap body lines at 72 characters.
- Never add attribution lines to commits or PR descriptions (for example `Co-Authored-By` or "Generated with Claude Code").

## Questions

- Number every clarifying question, including questions in the question dialog.
