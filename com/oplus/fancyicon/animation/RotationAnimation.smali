.class public Lcom/oplus/fancyicon/animation/RotationAnimation;
.super Lcom/oplus/fancyicon/animation/BaseAnimation;
.source ""


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# instance fields
.field private mCurrentAngle:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "Rotation"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public final getAngle()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/animation/RotationAnimation;->mCurrentAngle:F

    return p0
.end method

.method public onCreateItem()Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    const-string v1, "angle"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object v0
.end method

.method public onTick(Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;F)V
    .registers 9

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/fancyicon/animation/RotationAnimation;->mCurrentAngle:F

    return-void

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, 0x0

    :goto_12
    invoke-virtual {p2, v0}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    sub-double/2addr p1, v1

    float-to-double v3, p3

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/animation/RotationAnimation;->mCurrentAngle:F

    return-void
.end method
