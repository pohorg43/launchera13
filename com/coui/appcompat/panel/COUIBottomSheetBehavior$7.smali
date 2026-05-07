.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

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

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->c()V

    :cond_11
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_97

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-gt v1, v3, :cond_6f

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/oplus/physicsengine/engine/DragBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/physicsengine/engine/DragBehavior;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/oplus/physicsengine/engine/DragBehavior;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oplus/physicsengine/engine/DragBehavior;->endDrag(F)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$802(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)Landroid/view/View;

    :cond_49
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-lez v1, :cond_97

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$902(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    invoke-interface {v0, p3, v1}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->b(II)I

    move-result v0

    goto :goto_97

    :cond_6f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    add-int/2addr v1, p3

    int-to-float p3, v1

    invoke-static {v2, p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;F)V

    goto :goto_97

    :cond_83
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1400(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)F

    move-result v2

    const v3, 0x461c4000  # 10000.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_97

    int-to-float p2, p3

    const/high16 p3, 0x3f000000  # 0.5f

    mul-float/2addr p2, p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p2, v1

    :cond_97
    :goto_97
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p3, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz p3, :cond_ac

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    goto :goto_ae

    :cond_ac
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    :goto_ae
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

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz p1, :cond_9

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    return p0

    :cond_9
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    return p0
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$500(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :cond_10
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 13
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/oplus/physicsengine/engine/DragBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/physicsengine/engine/DragBehavior;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/oplus/physicsengine/engine/DragBehavior;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/engine/DragBehavior;->endDrag(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$802(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)Landroid/view/View;

    :cond_24
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$902(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->d()V

    const/high16 v0, 0x3f800000  # 1.0f

    instance-of v3, p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v3, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    :cond_48
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v4, v3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-static {v3, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1000(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-gt v0, v3, :cond_7f

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    if-ge v0, v3, :cond_7f

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->a(I)V

    return-void

    :cond_7f
    cmpg-float v0, p3, v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x3

    if-gez v0, :cond_a7

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_97

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    :goto_94
    move v3, v7

    goto/16 :goto_1e7

    :cond_97
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-le p2, v0, :cond_a4

    move p2, v0

    goto/16 :goto_17d

    :cond_a4
    iget p2, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto :goto_94

    :cond_a7
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-boolean v8, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v8, :cond_12c

    invoke-virtual {v0, p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->a()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {p2, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1202(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    move p2, p3

    goto :goto_94

    :cond_c8
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_da

    const/high16 p2, 0x43fa0000  # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_ee

    :cond_da
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    add-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    if-le p2, p3, :cond_ec

    move v2, v4

    :cond_ec
    if-eqz v2, :cond_f8

    :cond_ee
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1202(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z

    move p2, p3

    goto/16 :goto_1e7

    :cond_f8
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_105

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_94

    :cond_105
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_127

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto/16 :goto_94

    :cond_127
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_17d

    :cond_12c
    cmpl-float v0, p3, v1

    if-eqz v0, :cond_185

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_13d

    goto :goto_185

    :cond_13d
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p2

    if-eqz p2, :cond_160

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p3, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz p3, :cond_15d

    invoke-interface {p3}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->a()Z

    move-result p2

    if-eqz p2, :cond_157

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_94

    :cond_157
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    goto/16 :goto_1e7

    :cond_15d
    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_183

    :cond_160
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_17f

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    :goto_17d
    move v3, v6

    goto :goto_1e7

    :cond_17f
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    :goto_183
    move v3, v5

    goto :goto_1e7

    :cond_185
    :goto_185
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p3

    if-eqz p3, :cond_1b1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_1ac

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_94

    :cond_1ac
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_183

    :cond_1b1
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-ge p2, v0, :cond_1cc

    iget p3, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_1c7

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto/16 :goto_94

    :cond_1c7
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_17d

    :cond_1cc
    sub-int p3, p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_1e2

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_17d

    :cond_1e2
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_183

    :goto_1e7
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_9

    return v3

    :cond_9
    iget-boolean v4, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->touchingScrollingChild:Z

    if-eqz v4, :cond_e

    return v3

    :cond_e
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2b

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    if-ne v1, p2, :cond_2b

    iget-object p2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

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
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;->a:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

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
