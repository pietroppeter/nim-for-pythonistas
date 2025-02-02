import nimib except toJson
import nimislides, nbex
import title, intro, agenda, one, two, three

template thanks* = 
  slide:
    nbText """# 🙏"""
    reference "🐘 [@pietroppeter@fosstodon.org](https://fosstodon.org/@pietroppeter)"
    reference "🦋 [@pietroppeter.bsky.social](https://bsky.app/profile/pietroppeter.bsky.social)"
    reference "👨‍💼 [LinkedIn - Pietro Peterlongo](https://www.linkedin.com/in/pietro-peterlongo-b7605627/)"
    reference "🔵⚪️ [agilelab.it](https://www.agilelab.it/)"
    nbText "🧑‍💻 [github.com/pietroppeter](https://github.com/pietroppeter)"

when isMainModule:
  myInit("index")
  titleSlide
  slide:
    intro.all
  agenda.all
  slide:
    agenda.one
    one.all
  slide:
    agenda.two
    two.all
  slide:
    agenda.three
    three.all
  thanks
  nbSave