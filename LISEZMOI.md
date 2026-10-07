# Funny Videos

Tout se passe dans `videos.json`. La page ne se modifie jamais.

## Ajouter une vidéo

Ajoute un bloc dans `"videos"` (sans oublier la virgule entre deux blocs) :

```json
{
  "title": "Cat fails compilation",
  "url": "https://www.youtube.com/watch?v=XXXXXXXXXXX",
  "lang": "fr",
  "tags": ["Cats", "Fails"],
  "added": "2026-10-07"
}
```

- `url` : YouTube (vidéo, Shorts, youtu.be, avec `?t=90` pour démarrer plus loin), TikTok, ou un lien direct vers un .mp4. Tout autre lien s'ouvre dans un nouvel onglet.
- `lang` : `"fr"` ou `"en"`, la section où ranger la vidéo. Sans `lang`, elle va dans une section « Other ».
- `tags` : autant que tu veux. Un tag qui n'est pas dans la liste du haut apparaît quand même.
- `added` : sert au tri « Newest first ». Facultatif.
- `volume` : pour une vidéo trop forte, par exemple `"volume": 40` la joue à 40 % du réglage du site. Facultatif.
- Facultatifs aussi : `"note"` (petite ligne sous le titre) et `"thumbnail"` (image perso, sinon la miniature YouTube est prise toute seule).

## Sections

La liste `"sections"` en haut du JSON définit les sections (une par langue). Pour en ajouter une : `{ "id": "es", "name": "Vídeos en español" }`, puis `"lang": "es"` sur les vidéos. Les drapeaux existent pour `fr` et `en`.

## Son

Le curseur sous le lecteur règle le son (YouTube et .mp4) et le site s'en souvient. TikTok ne le permet pas : il faut utiliser le bouton de son du lecteur TikTok.

## Ajouter un tag

Dans `"tags"` en haut : `{ "name": "Dogs", "color": "gold" }`.
Couleurs prêtes : aqua, pink, lime, violet, ruby, gold, steel, ou n'importe quel code comme `"#ff8800"`.
L'ordre de la liste = l'ordre des boutons sur le site.

## Voir le site sur le PC

Double-clic sur `Lancer en local.bat`. Ouvrir `index.html` directement ne marche pas : le navigateur refuse de lire le JSON.
Si le JSON a une erreur (virgule en trop ou en moins), le site affiche la ligne fautive.

## Partager une catégorie

L'adresse retient les tags cliqués, par exemple `.../#tags=Cats,Animals`.
