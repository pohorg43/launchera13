.class public abstract Lcom/oplus/fancyicon/animation/BaseAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final TAG:Ljava/lang/String; = "BaseAnimation"


# instance fields
.field private mDelay:J

.field private mIsAnimationRunning:Z

.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrame:Z

.field private mPauseTime:J

.field private mRealTimeRange:J

.field public mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mStartTime:J

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mIsAnimationRunning:Z

    iput-object p3, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "delay"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    :try_start_11
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mDelay:J
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    const-string v0, "BaseAnimation"

    const-string v1, "invalid delay attribute"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_25
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_41

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/BaseAnimation;->onCreateItem()Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_41
    iget-object p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_4b

    move p2, v0

    :cond_4b
    const-string p1, "BaseAnimation: empty items"

    invoke-static {p2, p1}, Lcom/oplus/fancyicon/util/Utils;->asserts(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    iget-wide p1, p1, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mTimeRange:J

    iget-object p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_7c

    iget-object p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    iget-wide p1, p1, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mRealTimeRange:J

    :cond_7c
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    .registers 3

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object p0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mPauseTime:J

    iput-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mStartTime:J

    return-void
.end method

.method public isAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mIsAnimationRunning:Z

    return p0
.end method

.method public abstract onCreateItem()Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
.end method

.method public abstract onTick(Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;F)V
.end method

.method public pause()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mPauseTime:J

    return-void
.end method

.method public reset(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mStartTime:J

    iput-wide p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mPauseTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mLastFrame:Z

    return-void
.end method

.method public resume()V
    .registers 7

    iget-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mPauseTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mStartTime:J

    :cond_14
    iput-wide v2, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mPauseTime:J

    return-void
.end method

.method public final tick(J)V
    .registers 15

    iget-wide v0, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mStartTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    move-wide p1, v0

    :cond_a
    iget-wide v2, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mDelay:J

    cmp-long v4, p1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gez v4, :cond_19

    iput-boolean v6, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mIsAnimationRunning:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v5, v5, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation;->onTick(Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;F)V

    goto :goto_79

    :cond_19
    sub-long/2addr p1, v2

    iget-wide v2, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mTimeRange:J

    const-wide v7, 0xe8d4a51000L

    cmp-long v4, v2, v7

    if-ltz v4, :cond_33

    iget-wide v7, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mRealTimeRange:J

    cmp-long v4, p1, v7

    if-lez v4, :cond_33

    iget-boolean v4, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mLastFrame:Z

    if-nez v4, :cond_30

    goto :goto_33

    :cond_30
    iput-boolean v6, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mIsAnimationRunning:Z

    goto :goto_79

    :cond_33
    :goto_33
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mIsAnimationRunning:Z

    rem-long/2addr p1, v2

    iget-object v2, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    :goto_3e
    if-ge v3, v2, :cond_79

    iget-object v7, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    iget-wide v8, v7, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v10, p1, v8

    if-gtz v10, :cond_76

    if-nez v3, :cond_52

    move-wide v10, v0

    goto :goto_61

    :cond_52
    iget-object v5, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    iget-wide v8, v7, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->mTime:J

    iget-wide v10, v5, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->mTime:J

    sub-long/2addr v8, v10

    :goto_61
    sub-int/2addr v2, v4

    if-ne v3, v2, :cond_65

    move v6, v4

    :cond_65
    iput-boolean v6, p0, Lcom/oplus/fancyicon/animation/BaseAnimation;->mLastFrame:Z

    cmp-long v0, v8, v0

    if-nez v0, :cond_6e

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_72

    :cond_6e
    sub-long/2addr p1, v10

    long-to-float p1, p1

    long-to-float p2, v8

    div-float/2addr p1, p2

    :goto_72
    invoke-virtual {p0, v5, v7, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation;->onTick(Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;F)V

    goto :goto_79

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_79
    :goto_79
    return-void
.end method
