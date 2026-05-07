.class public Lcom/oplus/anim/TextDelegate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final animationView:Lcom/oplus/anim/EffectiveAnimationView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheText:Z

.field private final drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    iput-object p1, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    iput-object p1, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    return-void
.end method

.method private invalidate()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_7
    iget-object p0, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    :cond_e
    return-void
.end method


# virtual methods
.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p2}, Lcom/oplus/anim/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTextInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/TextDelegate;->getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object p1
.end method

.method public invalidateAllText()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/oplus/anim/TextDelegate;->invalidate()V

    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oplus/anim/TextDelegate;->invalidate()V

    return-void
.end method

.method public setCacheText(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oplus/anim/TextDelegate;->invalidate()V

    return-void
.end method
