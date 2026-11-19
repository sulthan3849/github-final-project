# Final Project — Ready-to-paste Answers

Account: `sulthan3849`. For questions 1–5, paste the URL only. For questions 6–9, paste the full command/output block, without the Markdown fences.

## Question 1

https://github.com/sulthan3849/github-final-project/blob/main/README.md

## Question 2

https://github.com/sulthan3849/github-final-project/blob/main/LICENSE

## Question 3

https://github.com/sulthan3849/github-final-project/blob/main/CODE_OF_CONDUCT.md

## Question 4

https://github.com/sulthan3849/github-final-project/blob/main/CONTRIBUTING.md

## Question 5

https://github.com/sulthan3849/github-final-project/blob/main/simple-interest.sh

## Question 6

```text
$ curl -fsSL https://api.github.com/repos/sulthan3849/mcino-Introduction-to-Git-and-GitHub | python -c 'import json,sys; d=json.load(sys.stdin); print(json.dumps({k:d[k] for k in ("full_name","html_url","fork","default_branch")} | {"parent":{k:d["parent"][k] for k in ("full_name","html_url")}, "source":{k:d["source"][k] for k in ("full_name","html_url")}}, indent=2))'
{
  "full_name": "sulthan3849/mcino-Introduction-to-Git-and-GitHub",
  "html_url": "https://github.com/sulthan3849/mcino-Introduction-to-Git-and-GitHub",
  "fork": true,
  "default_branch": "main",
  "parent": {
    "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub",
    "html_url": "https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
  },
  "source": {
    "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub",
    "html_url": "https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
  }
}
```

## Question 7

```text
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

$ git merge bug-fix-typo
Updating ad95b0a..f9ffea3
Fast-forward
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

## Question 8

```text
$ curl -fsSL https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls/13710 | python -c 'import json,sys; d=json.load(sys.stdin); print(json.dumps({k:d[k] for k in ("number","html_url","state","title","merged")} | {"head":{"label":d["head"]["label"],"ref":d["head"]["ref"], "repo":{k:d["head"]["repo"][k] for k in ("full_name","html_url","fork")}}, "base":{"ref":d["base"]["ref"],"repo":{"full_name":d["base"]["repo"]["full_name"]}}}, indent=2))'
{
  "number": 13710,
  "html_url": "https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pull/13710",
  "state": "closed",
  "title": "Bug fix revert",
  "merged": false,
  "head": {
    "label": "sulthan3849:bug-fix-revert",
    "ref": "bug-fix-revert",
    "repo": {
      "full_name": "sulthan3849/mcino-Introduction-to-Git-and-GitHub",
      "html_url": "https://github.com/sulthan3849/mcino-Introduction-to-Git-and-GitHub",
      "fork": true
    }
  },
  "base": {
    "ref": "main",
    "repo": {
      "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
    }
  }
}
```

## Question 9

```text
$ git branch -vv
  bug-fix-revert 084c9f1 [origin/bug-fix-revert] Revert "Fix README footer year from 2022 to 2023"
  bug-fix-typo   f9ffea3 [origin/bug-fix-typo] Fix README footer year from 2022 to 2023
* main           f9ffea3 [origin/main] Fix README footer year from 2022 to 2023

$ git branch -r
  origin/HEAD -> origin/main
  origin/bug-fix-revert
  origin/bug-fix-typo
  origin/main
  upstream/HEAD -> upstream/main
  upstream/main

$ git branch --merged main
  bug-fix-typo
* main
```

## Supporting links and verification

- Project: https://github.com/sulthan3849/github-final-project
- Fork: https://github.com/sulthan3849/mcino-Introduction-to-Git-and-GitHub
- Branches: https://github.com/sulthan3849/mcino-Introduction-to-Git-and-GitHub/branches
- Typo-fix PR: https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pull/13709
- Revert PR: https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pull/13710

The IBM lab bot automatically closed the pull requests. Its message confirms completion of the lab; a closed, unmerged PR is the expected bot behavior. The API outputs above are genuine public responses with selected fields displayed through Python. The merge transcript was captured during the first merge.

`bug-fix-typo` is merged into `main`. `bug-fix-revert` contains the additional revert commit, and all three branches track their corresponding remote branches.
