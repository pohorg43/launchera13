.class public Lcom/oplus/fancyicon/FramerateManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateManager"

.field public static final MAX_FRAMERATE:I = 0x3c

.field public static final TIME_SECOND:I = 0x3e8


# instance fields
.field private final mBatteryFrameRate:Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;

.field private final mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mFramerateTokenList:Lcom/oplus/fancyicon/FramerateTokenList;

.field private mLastInvalidateViewTime:J

.field private mLastMaxFramerate:F

.field private mPaused:Z

.field private mThisFrameStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateControllers:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/fancyicon/FramerateTokenList;

    invoke-direct {v0}, Lcom/oplus/fancyicon/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateTokenList:Lcom/oplus/fancyicon/FramerateTokenList;

    new-instance v0, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;-><init>(Lcom/oplus/fancyicon/FramerateManager;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mBatteryFrameRate:Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;

    return-void
.end method

.method private caculateControllerWakeUpInterval(J)J
    .registers 8

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/elements/FramerateController;

    invoke-virtual {v2, p1, p2}, Lcom/oplus/fancyicon/elements/FramerateController;->getWakeUpInterval(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_b

    move-wide v0, v2

    goto :goto_b

    :cond_21
    return-wide v0
.end method

.method private caculateFramerateInterval()J
    .registers 3

    invoke-direct {p0}, Lcom/oplus/fancyicon/FramerateManager;->getCurrentFrameRate()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_c

    const/high16 p0, 0x5f000000

    goto :goto_10

    :cond_c
    const/high16 v0, 0x447a0000  # 1000.0f

    div-float p0, v0, p0

    :goto_10
    float-to-long v0, p0

    return-wide v0
.end method

.method private getCurrentFrameRate()F
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mPaused:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateTokenList:Lcom/oplus/fancyicon/FramerateTokenList;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateTokenList;->getMaxFramerate()F

    move-result p0

    :goto_c
    return p0
.end method


# virtual methods
.method public addFramerateController(Lcom/oplus/fancyicon/elements/FramerateController;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public caculateRenderMinSleepTime()J
    .registers 5

    iget-wide v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mThisFrameStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/oplus/fancyicon/FramerateManager;->caculateControllerWakeUpInterval(J)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/oplus/fancyicon/FramerateManager;->caculateFramerateInterval()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateTokenList:Lcom/oplus/fancyicon/FramerateTokenList;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateTokenList;->createToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    move-result-object p0

    return-object p0
.end method

.method public generateFrameStartTime()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mThisFrameStartTime:J

    return-wide v0
.end method

.method public loadBatteryFrameRate(Lorg/w3c/dom/Element;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mBatteryFrameRate:Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->loadFrameRate(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public maxFramerateWillbeZero()Z
    .registers 5

    invoke-direct {p0}, Lcom/oplus/fancyicon/FramerateManager;->getCurrentFrameRate()F

    move-result v0

    iget v1, p0, Lcom/oplus/fancyicon/FramerateManager;->mLastMaxFramerate:F

    cmpl-float v2, v1, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    cmpg-float v1, v0, v2

    if-gez v1, :cond_17

    const/4 v1, 0x1

    move v3, v1

    :cond_17
    iput v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mLastMaxFramerate:F

    :cond_19
    return v3
.end method

.method public needChangeBatteryCategory(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mBatteryFrameRate:Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateManager$BatteryFrameRate;->needChangeCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nextFrameisComing()Z
    .registers 5

    iget-wide v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mThisFrameStartTime:J

    iget-wide v2, p0, Lcom/oplus/fancyicon/FramerateManager;->mLastInvalidateViewTime:J

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lcom/oplus/fancyicon/FramerateManager;->caculateFramerateInterval()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public pause(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/fancyicon/FramerateManager;->mPaused:Z

    return-void
.end method

.method public recordInvalidateViewTime()V
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mThisFrameStartTime:J

    iput-wide v0, p0, Lcom/oplus/fancyicon/FramerateManager;->mLastInvalidateViewTime:J

    return-void
.end method

.method public setFramerateChangeListener(Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateManager;->mFramerateTokenList:Lcom/oplus/fancyicon/FramerateTokenList;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateTokenList;->setFramerateChangeListener(Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;)V

    return-void
.end method
