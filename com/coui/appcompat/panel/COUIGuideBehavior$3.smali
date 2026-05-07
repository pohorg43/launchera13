.class Lcom/coui/appcompat/panel/COUIGuideBehavior$3;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIGuideBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIGuideBehavior;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIGuideBehavior;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 8
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->state:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_22

    if-ne v0, v3, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v0

    if-gt p1, v0, :cond_20

    goto :goto_22

    :cond_20
    move p1, v1

    goto :goto_23

    :cond_22
    :goto_22
    move p1, v3

    :goto_23
    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1, v3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$602(Lcom/coui/appcompat/panel/COUIGuideBehavior;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v0

    invoke-interface {p1, p3, v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->b(II)I

    move-result v1

    :cond_3a
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->hideable:Z

    if-eqz p3, :cond_4a

    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    goto :goto_4c

    :cond_4a
    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    :goto_4c
    invoke-static {p2, p1, p0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->hideable:Z

    if-eqz p1, :cond_9

    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    return p0

    :cond_9
    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    return p0
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$200(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setStateInternal(I)V

    :cond_10
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 11
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v1

    if-ge v0, v1, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$300(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->a(I)V

    return-void

    :cond_35
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-gez v1, :cond_5d

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p2

    if-eqz p2, :cond_4d

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    :goto_4a
    move v3, v5

    goto/16 :goto_188

    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    if-le p2, v0, :cond_5a

    move p2, v0

    goto/16 :goto_120

    :cond_5a
    iget p2, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    goto :goto_4a

    :cond_5d
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-boolean v6, v1, Lcom/coui/appcompat/panel/COUIGuideBehavior;->hideable:Z

    if-eqz v6, :cond_e4

    invoke-virtual {v1, p1, p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_e4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->a()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    invoke-static {p2, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$502(Lcom/coui/appcompat/panel/COUIGuideBehavior;Z)Z

    move p2, p3

    goto :goto_4a

    :cond_7f
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_91

    const/high16 p2, 0x43fa0000  # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_a5

    :cond_91
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->getExpandedOffset()I

    move-result p3

    add-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    if-le p2, p3, :cond_a3

    move v1, v2

    :cond_a3
    if-eqz v1, :cond_b0

    :cond_a5
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->parentHeight:I

    const/4 v3, 0x5

    invoke-static {p2, v2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$502(Lcom/coui/appcompat/panel/COUIGuideBehavior;Z)Z

    move p2, p3

    goto/16 :goto_188

    :cond_b0
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p2

    if-eqz p2, :cond_bd

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    goto :goto_4a

    :cond_bd
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_df

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    goto/16 :goto_4a

    :cond_df
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto :goto_120

    :cond_e4
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_127

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_f5

    goto :goto_127

    :cond_f5
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p2

    if-eqz p2, :cond_103

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    goto/16 :goto_188

    :cond_103
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_122

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    :goto_120
    move v3, v4

    goto :goto_188

    :cond_122
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    goto :goto_188

    :cond_127
    :goto_127
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/panel/COUIGuideBehavior;)Z

    move-result p3

    if-eqz p3, :cond_153

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_14e

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->fitToContentsOffset:I

    goto/16 :goto_4a

    :cond_14e
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    goto :goto_188

    :cond_153
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    if-ge p2, v0, :cond_16e

    iget p3, p3, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_169

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->expandedOffset:I

    goto/16 :goto_4a

    :cond_169
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto :goto_120

    :cond_16e
    sub-int p3, p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_184

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->halfExpandedOffset:I

    goto :goto_120

    :cond_184
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIGuideBehavior;->collapsedOffset:I

    :goto_188
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->state:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_9

    return v3

    :cond_9
    iget-boolean v4, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->touchingScrollingChild:Z

    if-eqz v4, :cond_e

    return v3

    :cond_e
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2b

    iget v1, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->activePointerId:I

    if-ne v1, p2, :cond_2b

    iget-object p2, v0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    if-eqz p2, :cond_2b

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_2b

    return v3

    :cond_2b
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$3;->a:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_38

    goto :goto_39

    :cond_38
    move v2, v3

    :goto_39
    return v2
.end method
