.class public Lcom/oplus/fancyicon/animation/AlphaAnimation;
.super Lcom/oplus/fancyicon/animation/BaseAnimation;
.source ""


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final LOG_TAG:Ljava/lang/String; = "AlphaAnimation"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mCurrentAlpha:I

.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "Alpha"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/fancyicon/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AlphaAnimation"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p2, "wrong tag name:"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/fancyicon/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const/16 p2, 0xff

    iput p2, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mCurrentAlpha:I

    const-string p2, "delayValue"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_25

    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mDelayValue:I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlphaAnimation"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_25
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation;->getItem(I)Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mDelayValue:I

    :goto_31
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mCurrentAlpha:I

    return p0
.end method

.method public onCreateItem()Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    const-string v1, "a"

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

    if-nez p1, :cond_e

    const-wide v1, 0x406fe00000000000L  # 255.0

    goto :goto_12

    :cond_e
    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    :goto_12
    invoke-virtual {p2, v0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    sub-double/2addr p1, v1

    float-to-double v3, p3

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mCurrentAlpha:I

    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->reset(J)V

    iget p1, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mDelayValue:I

    iput p1, p0, Lcom/oplus/fancyicon/animation/AlphaAnimation;->mCurrentAlpha:I

    return-void
.end method
