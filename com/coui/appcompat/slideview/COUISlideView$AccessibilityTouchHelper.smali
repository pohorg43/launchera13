.class Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/slideview/COUISlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityTouchHelper"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/slideview/COUISlideView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/slideview/COUISlideView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 5

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v1, v1, Lcom/coui/appcompat/slideview/COUISlideView;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v1, v1, Lcom/coui/appcompat/slideview/COUISlideView;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_21
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v1, v1, Lcom/coui/appcompat/slideview/COUISlideView;->n0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    const/16 p3, 0x10

    if-ne p2, p3, :cond_25

    if-nez p1, :cond_12

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object p3, p2, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;

    if-nez p3, :cond_12

    iget-object p0, p2, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/slideview/COUISlideView;->e(Landroid/view/View;)V

    goto :goto_23

    :cond_12
    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;

    if-eqz p2, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    invoke-interface {p2, p0, p1}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;->a(Lcom/coui/appcompat/slideview/COUISlideMenuItem;I)V

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_13

    const-string/jumbo p0, "菜单"

    :cond_13
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v0, v0, Lcom/coui/appcompat/slideview/COUISlideView;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge p1, v0, :cond_33

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v0, v0, Lcom/coui/appcompat/slideview/COUISlideView;->n0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v0, v0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string/jumbo v0, "菜单"

    :cond_1f
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_43

    :cond_33
    const-string p0, ""

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_43
    return-void
.end method
