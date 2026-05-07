.class public Lcom/android/quickstep/touch/OplusBaseSeascapePagedViewHandler;
.super Lcom/android/launcher3/touch/LandscapePagedViewHandler;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 5

    const-string p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currentRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowBounds"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getClearAllPanelViewTranslationX(IFZ)F
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getClearAllPanelViewTranslationY(IFZ)F
    .registers 4

    if-eqz p3, :cond_3

    goto :goto_6

    :cond_3
    int-to-float p0, p1

    sub-float p2, p0, p2

    :goto_6
    return p2
.end method

.method public getDegreesRotated()F
    .registers 1

    const/high16 p0, 0x43870000  # 270.0f

    return p0
.end method

.method public getEmptyMessageLayoutTranslationX(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "emptyMessageLayout"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "taskSize"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "padding"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    iget p1, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public getEmptyMessageLayoutTranslationY(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 5

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getOplusTaskMenuX(FLandroid/view/View;Landroid/view/View;IIZ)F
    .registers 7

    const-string/jumbo p0, "thumbnailView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menuView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_f

    neg-float p0, p1

    goto :goto_20

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const p0, 0x3da3d70a  # 0.08f

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float p0, p2, p1

    :goto_20
    return p0
.end method

.method public getOplusTaskMenuY(FLandroid/view/View;Landroid/view/View;IIZI)F
    .registers 8

    const-string/jumbo p0, "thumbnailView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menuView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_19

    int-to-float p0, p7

    add-float/2addr p1, p0

    const p0, 0x3da3d70a  # 0.08f

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    sub-float/2addr p1, p2

    :cond_19
    return p1
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public getRotation()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getTaskDragDisplacementFactor(ZZ)I
    .registers 3

    if-eqz p1, :cond_4

    const/4 p0, -0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    mul-int/lit8 p0, p0, -0x8

    :goto_a
    return p0
.end method

.method public isNegative(FZ)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    cmpg-float p1, p1, v1

    if-gez p1, :cond_f

    goto :goto_10

    :cond_a
    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    return p0
.end method

.method public isPositive(FZ)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    goto :goto_10

    :cond_a
    cmpg-float p1, p1, v1

    if-gez p1, :cond_f

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    return p0
.end method

.method public setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_c

    :cond_3
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_c
    return-void
.end method

.method public setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_18

    :cond_3
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    neg-int p0, p4

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz p5, :cond_d

    neg-int p0, p4

    add-int/2addr p0, p3

    goto :goto_e

    :cond_d
    move p0, p4

    :goto_e
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p5, :cond_13

    goto :goto_14

    :cond_13
    neg-int p4, p4

    :goto_14
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_18
    return-void
.end method

.method public updateTaskViewWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 6

    const-string p0, "crop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p4

    invoke-static {p3, p0, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
