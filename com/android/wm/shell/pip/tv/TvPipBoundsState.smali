.class public Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
.super Lcom/android/wm/shell/pip/PipBoundsState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipBoundsState$Orientation;
    }
.end annotation


# static fields
.field public static final DEFAULT_TV_GRAVITY:I = 0x55

.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNDETERMINED:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private mDesiredTvExpandedAspectRatio:F

.field private final mIsTvExpandedPipSupported:Z

.field private mIsTvPipExpanded:Z

.field private mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

.field private mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

.field private mTvExpandedSize:Landroid/util/Size;

.field private mTvFixedPipOrientation:I

.field private mTvPipGravity:I

.field private mTvPipManuallyCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.expanded_picture_in_picture"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    return-void
.end method


# virtual methods
.method public getDesiredTvExpandedAspectRatio()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    return p0
.end method

.method public getPipMenuPermanentDecorInsets()Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getPipMenuTemporaryDecorInsets()Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getTvExpandedSize()Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTvFixedPipOrientation()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    return p0
.end method

.method public getTvPipGravity()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    return p0
.end method

.method public isTvExpandedPipSupported()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    return p0
.end method

.method public isTvPipExpanded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    return p0
.end method

.method public isTvPipManuallyCollapsed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    return p0
.end method

.method public resetTvPipState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    const/16 v0, 0x55

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    return-void
.end method

.method public setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    if-nez p3, :cond_6

    return-void

    :cond_6
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    return-void
.end method

.method public setDesiredTvExpandedAspectRatio(FZ)V
    .registers 5

    if-nez p2, :cond_1f

    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    if-nez p2, :cond_7

    goto :goto_1f

    :cond_7
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1c

    :cond_10
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1c

    :cond_17
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1e

    :cond_1c
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    :cond_1e
    return-void

    :cond_1f
    :goto_1f
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->resetTvPipState()V

    return-void
.end method

.method public setPipMenuPermanentDecorInsets(Landroid/graphics/Insets;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setPipMenuTemporaryDecorInsets(Landroid/graphics/Insets;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setTvExpandedSize(Landroid/util/Size;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    return-void
.end method

.method public setTvFixedPipOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    return-void
.end method

.method public setTvPipExpanded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    return-void
.end method

.method public setTvPipGravity(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    return-void
.end method

.method public setTvPipManuallyCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    return-void
.end method
