.class public final Lcom/oplus/quickstep/touch/OplusTaskViewSwipeDetector;
.super Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
.source ""


# instance fields
.field private final mRv:Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;Lcom/android/quickstep/views/RecentsView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;",
            "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mRv"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object p4, p0, Lcom/oplus/quickstep/touch/OplusTaskViewSwipeDetector;->mRv:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public canScrollNegative(F)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/touch/OplusTaskViewSwipeDetector;->mRv:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_16

    iget-boolean p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsRtl:Z

    invoke-interface {v0, p1, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->isNegative(FZ)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public canScrollPositive(F)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/touch/OplusTaskViewSwipeDetector;->mRv:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-lez v1, :cond_15

    iget-boolean p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIsRtl:Z

    invoke-interface {v0, p1, p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->isPositive(FZ)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method
