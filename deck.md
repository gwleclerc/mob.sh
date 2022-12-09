---
marp: true
headingDivider: [2]
theme: uncover
class:
  - invert
style: |
  h2 {
    font-weight: bold;
  }
  section {
    justify-content: start;
  }
  div.twocols {
    margin-top: 35px;
    column-count: 2;
  }
  div.twocols p:first-child,
  div.twocols h1:first-child,
  div.twocols h2:first-child,
  div.twocols h3:first-child,
  div.twocols ul:first-child,
  div.twocols ul li:first-child,
  div.twocols ul li p:first-child {
    margin-top: 0 !important;
  }
  div.twocols p.break {
    break-before: column;
    margin-top: 0;
  }
---

<!-- markdownlint-disable MD001 MD026 MD033 MD045 -->

<!-- Compile to HTML with `marp -w -s --html true .` -->

<!-- https://marpit.marp.app/markdown -->
<!-- https://mob.sh/ -->

<style scoped>
  section {
    justify-content: center;
  }
</style>

![width:500px](./images/logo%20mobsh.svg)

# `mob.sh`

### La présentation dont vous êtes le héros

&nbsp;

Gwendal Leclerc & Benoît Masson – OVHcloud

## Qui sommes-nous ?

<div class="twocols">

### Benoît

![](./images/benoit.jpg)

Team Lead Domaines

<p class="break"></p>

### Gwendal

![width:200px](./images/gwendal.png)

Tech Lead Domaines

</div>

![width:300px](./images/logo%20ovhcloud.png)

## Le mob programming, c'est quoi ?

![bg brightness:0.5](./images/group.jpg)

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

Un peu comme le pair programming, mais à plus que 2…

## Fonctionnement

![bg brightness:0.7](./images/helicopter.jpg)

1️⃣ ~~hélico~~ ordinateur

&nbsp;

↙️ pilote &emsp;&emsp;&emsp; (copilote ↘️)

&nbsp;
&nbsp;
&nbsp;

⬇️ le reste de la salle ⬇️

## Rotations

![bg brightness:0.7](./images/hourglass.jpg)

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

On change les rôles toutes les 5 à 10 min !

··· → salle → copilote → pilote → salle → ···

## À distance ?

![bg brightness:0.7](./images/earth.jpg)

&nbsp;
&nbsp;
&nbsp;

- IDE partagé (LiveShare, …)
- Partage de code (git, …)

## [`mob.sh`](https://mob.sh)

![bg width:70%](https://mob.sh/logo.svg)

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

Surcouche à git pour gérer la mise en commun du code

## Démo

<style scoped>
h2 {
  color: #202228;
}
</style>

![bg](./images/laptop.jpg)

## Behind the mob

<style scoped>
  section {
    justify-content: center;
  }
</style>

![bg](./images/cogs.jpg)

## Intérêts

<style scoped>
ul {
  margin: 0;
  list-style: '+ ';
}
</style>

![bg blur brightness:0.4](./images/stars.jpg)

## Inconvénients

<style scoped>
ul {
  margin: 0;
  list-style: '- ';
}
</style>

![bg blur brightness:0.6](./images/broken%20plate.jpg)

## Merci !

### Des questions ?

![bg cover](./images/question.jpg)

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

<div style="font-size:50%; text-align:right;">

Images credits: [unsplash.com](https://unsplash.com)

Slides: [github.com/gwleclerc/mob.sh](https://github.com/gwleclerc/mob.sh/)

</div>
