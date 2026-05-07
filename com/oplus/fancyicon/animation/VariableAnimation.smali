.class public Lcom/oplus/fancyicon/animation/VariableAnimation;
.super Lcom/oplus/fancyicon/animation/BaseAnimation;
.source ""


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "AniFrame"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableAnimation"


# instance fields
.field private mCurrentValue:D

.field private mDelayValue:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "AniFrame"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation;->getItem(I)Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/VariableAnimation;->mDelayValue:D

    return-void
.end method


# virtual methods
.method public final getValue()D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/animation/VariableAnimation;->mCurrentValue:D

    return-wide v0
.end method

.method public onCreateItem()Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object v0
.end method

.method public onTick(Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;F)V
    .registers 9

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-wide/16 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    :goto_f
    invoke-virtual {p2, v0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    sub-double/2addr p1, v1

    float-to-double v3, p3

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/VariableAnimation;->mCurrentValue:D

    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->reset(J)V

    iget-wide p1, p0, Lcom/oplus/fancyicon/animation/VariableAnimation;->mDelayValue:D

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/VariableAnimation;->mCurrentValue:D

    return-void
.end method
