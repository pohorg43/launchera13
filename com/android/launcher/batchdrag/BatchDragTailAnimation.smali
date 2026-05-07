.class public Lcom/android/launcher/batchdrag/BatchDragTailAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY_TIME:I = 0x8

.field public static final ANIMATION_DURATION:I = 0x4

.field public static final ANIMATION_FOLLOW_TIME:I = 0x14

.field private static final DEBUG:Z = false

.field private static final DELTA_X:I = 0x2

.field private static final DELTA_Y:I = -0x2

.field private static final IGNORE_AREA:I = 0xa

.field private static final MSG_ANIMATION_RUN:I = 0x1000

.field private static final MSG_ANIMATION_STOP:I = 0x2000

.field private static final MSG_ANIMATION_VIEW_POS:I = 0x5000

.field private static final SECOND_MILLS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BatchDragTailAnimation"

.field private static final USE_SYSTEM_ANIMATION:Z = true

.field private static final USE_TAIL_ANIMATION:Z = true


# instance fields
.field private mAnimationDuration:J

.field private mIsAnimating:Z

.field private mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRandom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTailHandler:Landroid/os/Handler;

.field private mTailViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mPointList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mRandom:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mIsAnimating:Z

    const-wide/16 v1, 0x4

    iput-wide v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mAnimationDuration:J

    new-instance v1, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;-><init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)V

    iput-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mIsAnimating:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mIsAnimating:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mPointList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->dealTail()V

    return-void
.end method

.method private dealTail()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    const-string v1, "BatchDragTailAnimation"

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "dealTail = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mIsAnimating:Z

    invoke-static {v0, v2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->endTail()V

    return-void

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_32

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "mTailViewList.size()<1"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->endTail()V

    return-void

    :cond_32
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->animateView(Landroid/view/View;Landroid/view/View;II)V

    move-object v1, v3

    goto :goto_47

    :cond_60
    return-void
.end method


# virtual methods
.method public animateView(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance p3, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;-><init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_26

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p4

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mAnimationDuration:J

    invoke-virtual {p3, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_26
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public endTail()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BatchDragTailAnimation"

    const-string v1, "endTail"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mIsAnimating:Z

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailHandler:Landroid/os/Handler;

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public isTailViewListEqualsNull()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->endTail()V

    :goto_e
    return v0
.end method

.method public setList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mRandom:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    if-eqz p1, :cond_4f

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_2d

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mRandom:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2d
    const/high16 p1, 0x447a0000  # 1000.0f

    :try_start_2f
    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p1, v3

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mAnimationDuration:J
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_45} :catch_46

    goto :goto_4f

    :catch_46
    const-wide/16 v0, 0x4

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mAnimationDuration:J

    :cond_4f
    :goto_4f
    return-void
.end method

.method public startTail()V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "BatchDragTailAnimation"

    const-string/jumbo v1, "startTail"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailHandler:Landroid/os/Handler;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->mTailHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
