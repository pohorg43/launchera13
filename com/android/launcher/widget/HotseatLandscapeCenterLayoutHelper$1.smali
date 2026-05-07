.class Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->commonAnimPositionCallBacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

.field public final synthetic this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMoving()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return p0
.end method

.method public onAnimationCancel()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mChildCount:I

    if-lez v0, :cond_12

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iput v0, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCurrentNumHotseatIcons:I

    iget-object v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    iput v0, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->access$200(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;[Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v2, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    iget v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mChildCount:I

    invoke-static {v0, v2, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->access$300(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;[Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mShortWidgetTagetHeight:I

    invoke-static {v0, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->access$400(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;I)V

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    iget-boolean v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mNeedUpdateDB:Z

    if-eqz v0, :cond_3d

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->checkHotseatItemDataAndUpdateDB()V

    :cond_3d
    return-void
.end method

.method public onAnimationStart()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationUpdate(FLandroid/animation/ValueAnimator;)V
    .registers 7

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mOldDistance:I

    int-to-float v2, v1

    mul-float/2addr p2, v2

    iget v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mNewDistance:I

    int-to-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p2

    float-to-int p2, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v2, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    array-length v3, v2

    if-ge v0, v3, :cond_4e

    aget-object v1, v2, v0

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v2, v2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mTargetCellY:I

    if-lt v0, v2, :cond_40

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v3

    mul-int/2addr v3, v2

    sub-int/2addr v3, p1

    iput v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->animY:I

    goto :goto_4b

    :cond_40
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iget-object v2, v2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->animY:I

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_4e
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    iget-object v0, p1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->access$000(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-static {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->access$100(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)I

    move-result p0

    invoke-virtual {v0, p1, p2, p0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printAnimData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    return-void
.end method
