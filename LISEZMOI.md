# Funny Videos

Tout se passe dans `videos.json`. La page ne se modifie jamais.

## Ajouter une vidéo

Ajoute un bloc dans `"videos"` (sans oublier la virgule entre deux blocs) :

```json
{
  "title": "Cat fails compilation",
  "url": "https://www.youtube.com/watch?v=XXXXXXXXXXX",
  "tags": ["Cats", "Fails"],
  "added": "2026-10-07"
}
```

- `url` : YouTube (vidéo, Shorts, youtu.be, avec `?t=90` pour démarrer plus loin), TikTok, ou un lien direct vers un .mp4. Tout autre lien s'ouvre dans un nouvel onglet.
- `tags` : autant que tu veux. Un tag qui n'est pas dans la liste du haut apparaît quand même.
- `added` : sert au tri « Newest first ». Facultatif.
- Facultatifs aussi : `"note"` (petite ligne sous le titre) et `"thumbnail"` (image perso, sinon la miniature YouTube est prise toute seule).

## Ajouter un tag

Dans `"tags"` en haut : `{ "name": "Dogs", "color": "gold" }`.
Couleurs prêtes : aqua, pink, lime, violet, ruby, gold, steel, ou n'importe quel code comme `"#ff8800"`.
L'ordre de la liste = l'ordre des boutons sur le site.

## Voir le site sur le PC

Double-clic sur `Lancer en local.bat`. Ouvrir `index.html` directement ne marche pas : le navigateur refuse de lire le JSON.
Si le JSON a une erreur (virgule en trop ou en moins), le site affiche la ligne fautive.

## Partager une catégorie

L'adresse retient les tags cliqués, par exemple `.../#tags=Cats,Animals`.
