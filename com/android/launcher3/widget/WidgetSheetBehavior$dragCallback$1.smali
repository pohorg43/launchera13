.class public final Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetSheetBehavior;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private final releasedLow(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getParentHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p0

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4

    const-string p0, "child"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    const-string p3, "child"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p1

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getMHideable()Z

    move-result p3

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    if-eqz p3, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getParentHeight()I

    move-result p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p0

    :goto_1e
    invoke-static {p2, p1, p0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getMHideable()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getParentHeight()I

    move-result p0

    goto :goto_1a

    :cond_14
    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p0

    :goto_1a
    return p0
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getDraggable$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$setStateInternal(Lcom/android/launcher3/widget/WidgetSheetBehavior;I)V

    :cond_10
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    const-string p2, "changedView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    const-string v0, "releasedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x3

    if-gez v0, :cond_3b

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-static {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getFitToContents$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getFitToContentsOffset()I

    move-result p2

    :goto_1c
    move v2, v4

    goto/16 :goto_17c

    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p3

    if-le p2, p3, :cond_34

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p2

    :goto_31
    move v2, v3

    goto/16 :goto_17c

    :cond_34
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p2

    goto :goto_1c

    :cond_3b
    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getMHideable()Z

    move-result v5

    if-eqz v5, :cond_aa

    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v5, p1, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_5d

    const/high16 p2, 0x43fa0000  # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_63

    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->releasedLow(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_6c

    :cond_63
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getParentHeight()I

    move-result p2

    const/4 v2, 0x5

    goto/16 :goto_17c

    :cond_6c
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-static {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getFitToContents$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_7b

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getFitToContentsOffset()I

    move-result p2

    goto :goto_1c

    :cond_7b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_a3

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p2

    goto/16 :goto_1c

    :cond_a3
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p2

    goto :goto_31

    :cond_aa
    if-nez v0, :cond_ae

    move v0, v1

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    :goto_af
    if-nez v0, :cond_fb

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_be

    goto :goto_fb

    :cond_be
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-static {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getFitToContents$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_ce

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p2

    goto/16 :goto_17c

    :cond_ce
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_f3

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p2

    goto/16 :goto_31

    :cond_f3
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p2

    goto/16 :goto_17c

    :cond_fb
    :goto_fb
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-static {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getFitToContents$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p3

    if-eqz p3, :cond_12f

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getFitToContentsOffset()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_128

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getFitToContentsOffset()I

    move-result p2

    goto/16 :goto_1c

    :cond_128
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p2

    goto :goto_17c

    :cond_12f
    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p3

    if-ge p2, p3, :cond_155

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_14d

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p2

    goto/16 :goto_1c

    :cond_14d
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p2

    goto/16 :goto_31

    :cond_155
    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_176

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getHalfExpandedOffset()I

    move-result p2

    goto/16 :goto_31

    :cond_176
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getCollapsedOffset()I

    move-result p2

    :goto_17c
    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 7

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getMState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getTouchingScrollingChild()Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getMState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getActivePointerId()I

    move-result v0

    if-ne v0, p2, :cond_4d

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getNestedScrollingChildRef()Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getNestedScrollingChildRef()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_43

    :cond_42
    const/4 p2, 0x0

    :goto_43
    if-eqz p2, :cond_4d

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4d

    return v2

    :cond_4d
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getViewRef()Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_65

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getViewRef()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_65

    goto :goto_66

    :cond_65
    move v1, v2

    :goto_66
    return v1
.end method
