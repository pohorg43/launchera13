.class public Lcom/oplus/fancyicon/elements/FramerateController;
.super Lcom/oplus/fancyicon/elements/ScreenElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurFramerate:F

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateFramerateInterval:J

.field private mPauseTime:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mLock:Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p2, p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->addFramerateController(Lcom/oplus/fancyicon/elements/FramerateController;)V

    const-string p2, "loop"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mLoop:Z

    const-string p2, "ControlPoint"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_2c
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_30
    if-ge v0, v1, :cond_45

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v4, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;

    invoke-direct {v4, v2}, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_45
    iget-object p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;

    iget-wide v0, p1, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mTimeRange:J

    monitor-exit p2

    return-void

    :catchall_59
    move-exception p0

    monitor-exit p2
    :try_end_5b
    .catchall {:try_start_2c .. :try_end_5b} :catchall_59

    throw p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getWakeUpInterval(J)J
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v3

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v3, :cond_84

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_15
    iget-boolean v6, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mStopped:Z

    if-nez v6, :cond_7f

    iget-wide v6, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_22

    goto :goto_24

    :cond_22
    iget-wide v6, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mStartTime:J

    :goto_24
    sub-long v6, v1, v6

    cmp-long v10, v6, v8

    if-ltz v10, :cond_37

    iget-wide v10, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mNextUpdateFramerateInterval:J

    cmp-long v12, v6, v10

    if-gez v12, :cond_37

    iput-wide v1, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mLastUpdateTime:J

    sub-long/2addr v10, v6

    iput-wide v10, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mNextUpdateFramerateInterval:J

    monitor-exit v3

    return-wide v10

    :cond_37
    iget-wide v6, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mStartTime:J

    sub-long v6, v1, v6

    cmp-long v10, v6, v8

    if-gez v10, :cond_40

    move-wide v6, v8

    :cond_40
    iget-boolean v10, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mLoop:Z

    if-eqz v10, :cond_47

    iget-wide v10, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mTimeRange:J

    rem-long/2addr v6, v10

    :cond_47
    iget-object v10, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    move v12, v10

    :goto_50
    if-ltz v12, :cond_7f

    iget-object v13, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;

    iget-wide v14, v13, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v16, v6, v14

    if-ltz v16, :cond_7b

    iget v13, v13, Lcom/oplus/fancyicon/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v13, v13

    invoke-virtual {v0, v13}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateFramerate(F)V

    iget-boolean v13, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mLoop:Z

    if-nez v13, :cond_6e

    if-ne v12, v10, :cond_6e

    iput-boolean v11, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mStopped:Z

    :cond_6e
    iput-wide v1, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mLastUpdateTime:J

    iget-boolean v1, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mStopped:Z

    if-eqz v1, :cond_75

    goto :goto_77

    :cond_75
    sub-long v4, v8, v6

    :goto_77
    iput-wide v4, v0, Lcom/oplus/fancyicon/elements/FramerateController;->mNextUpdateFramerateInterval:J

    monitor-exit v3

    return-wide v4

    :cond_7b
    add-int/lit8 v12, v12, -0x1

    move-wide v8, v14

    goto :goto_50

    :cond_7f
    monitor-exit v3

    goto :goto_84

    :catchall_81
    move-exception v0

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_15 .. :try_end_83} :catchall_81

    throw v0

    :cond_84
    :goto_84
    return-wide v4
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->init()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mPauseTime:J

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mStartTime:J

    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onVisibilityChange(Z)V

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mCurFramerate:F

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateFramerate(F)V

    goto :goto_15

    :cond_b
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->getFramerate()F

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mCurFramerate:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateFramerate(F)V

    :goto_15
    return-void
.end method

.method public pause()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mPauseTime:J

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->pause()V

    return-void
.end method

.method public reset(J)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mStartTime:J

    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mPauseTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mStopped:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mLastUpdateTime:J

    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mNextUpdateFramerateInterval:J

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public resume()V
    .registers 7

    iget-wide v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mPauseTime:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mStartTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mStartTime:J

    :cond_14
    iput-wide v2, p0, Lcom/oplus/fancyicon/elements/FramerateController;->mPauseTime:J

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->resume()V

    return-void
.end method
