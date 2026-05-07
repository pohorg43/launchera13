.class public Lcom/oplus/fancyicon/animation/SourcesAnimation;
.super Lcom/oplus/fancyicon/animation/PositionAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentBitmap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/fancyicon/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    return-object p0
.end method

.method public onCreateItem()Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    .registers 4

    new-instance v0, Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;

    const-string v1, "x"

    const-string v2, "y"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;-><init>([Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object v0
.end method

.method public onTick(Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;F)V
    .registers 6

    if-nez p2, :cond_9

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/PositionAnimation;->mCurrentX:D

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/PositionAnimation;->mCurrentY:D

    goto :goto_1d

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/animation/PositionAnimation;->mCurrentX:D

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/animation/PositionAnimation;->mCurrentY:D

    check-cast p2, Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;

    iget-object p1, p2, Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/fancyicon/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    :goto_1d
    return-void
.end method
