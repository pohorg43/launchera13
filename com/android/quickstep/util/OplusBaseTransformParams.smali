.class public Lcom/android/quickstep/util/OplusBaseTransformParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAlreadyPostCallback:Z

.field private final mCallback:Landroid/view/Choreographer$FrameCallback;

.field private mCurrentProgress:F

.field private mCurrentScrollOffset:F

.field private mParams:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

.field public mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/util/f;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/f;-><init>(Lcom/android/quickstep/util/OplusBaseTransformParams;)V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/OplusBaseTransformParams;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback$lambda-0(Lcom/android/quickstep/util/OplusBaseTransformParams;J)V

    return-void
.end method

.method private static final mCallback$lambda-0(Lcom/android/quickstep/util/OplusBaseTransformParams;J)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mAlreadyPostCallback:Z

    iget p2, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentProgress:F

    sput p2, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentProgress:F

    iget p2, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentScrollOffset:F

    sput p2, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentScrollOffset:F

    iget-object p2, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mParams:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v0, 0x1

    if-nez p2, :cond_17

    goto :goto_21

    :cond_17
    array-length v1, p2

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1d

    :cond_1c
    move v1, p1

    :goto_1d
    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_21

    move p1, v0

    :cond_21
    :goto_21
    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-nez p0, :cond_28

    goto :goto_35

    :cond_28
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public final needApplyNextFrame([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_22

    :cond_6
    sget-boolean v2, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mParams:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iget-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mAlreadyPostCallback:Z

    if-nez p1, :cond_1e

    iput-boolean v3, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mAlreadyPostCallback:Z

    sget-object p1, Lcom/oplus/quickstep/utils/AppWindowHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppWindowHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/AppWindowHelper;->getChoreographer()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1e
    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->invalidateIfPossible()V

    move v1, v3

    :cond_22
    :goto_22
    return v1
.end method

.method public final removeFrameCallback()V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/utils/AppWindowHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppWindowHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AppWindowHelper;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final setCurrentProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentProgress:F

    return-void
.end method

.method public final setCurrentScrollOffset(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentScrollOffset:F

    return-void
.end method
