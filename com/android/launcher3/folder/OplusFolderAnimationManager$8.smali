.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$centerX:I

.field public final synthetic val$centerY:I

.field public final synthetic val$contentBackground:Landroid/widget/ImageView;

.field public final synthetic val$halfContentHeight:I

.field public final synthetic val$halfContentWidth:I

.field public final synthetic val$halfFolderIconHeightPx:I

.field public final synthetic val$halfFolderIconWidthPx:I

.field public final synthetic val$initBgRadius:I

.field public final synthetic val$largeDisplayDeviceRadiusMax:F

.field public final synthetic val$largeDisplayDeviceRadiusMin:F

.field public final synthetic val$scale:F

.field public final synthetic val$translationX:I

.field public final synthetic val$translationY:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;IFIFFIIIIIIILandroid/widget/ImageView;)V
    .registers 15

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$initBgRadius:I

    iput p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$scale:F

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfContentWidth:I

    iput p5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$largeDisplayDeviceRadiusMax:F

    iput p6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$largeDisplayDeviceRadiusMin:F

    iput p7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$translationX:I

    iput p8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$translationY:I

    iput p9, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfFolderIconWidthPx:I

    iput p10, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfFolderIconHeightPx:I

    iput p11, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfContentHeight:I

    iput p12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$centerX:I

    iput p13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$centerY:I

    iput-object p14, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$contentBackground:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v1, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_17

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$300(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->setFolderBackgroundRoomInProgress(F)V

    :cond_17
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$initBgRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfContentWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v3, 0x3dcccccd  # 0.1f

    mul-float/2addr v2, v3

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$502(Lcom/android/launcher3/folder/OplusFolderAnimationManager;F)F

    goto :goto_5f

    :cond_36
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$initBgRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$largeDisplayDeviceRadiusMax:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$502(Lcom/android/launcher3/folder/OplusFolderAnimationManager;F)F

    goto :goto_5f

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$initBgRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$largeDisplayDeviceRadiusMin:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$502(Lcom/android/launcher3/folder/OplusFolderAnimationManager;F)F

    :goto_5f
    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$translationX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$translationY:I

    int-to-float v2, v2

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfFolderIconWidthPx:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfContentWidth:I

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfFolderIconHeightPx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$halfContentHeight:I

    int-to-float v5, v5

    invoke-static {p1, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$scale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v5}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$centerX:I

    sub-int v7, v6, v3

    iget v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$centerY:I

    sub-int v9, v8, v4

    add-int/2addr v6, v3

    add-int/2addr v8, v4

    invoke-virtual {v5, v7, v9, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$contentBackground:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$contentBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v3, 0x43af0000  # 350.0f

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$contentBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$700(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    div-float/2addr p1, v3

    sub-float/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_d4

    :cond_c3
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$contentBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$800(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    div-float/2addr p1, v3

    sub-float/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_d4
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;->val$contentBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    return-void
.end method
