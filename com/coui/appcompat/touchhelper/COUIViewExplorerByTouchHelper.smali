.class public Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:Landroid/view/View;

.field public c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    iput-object p1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->g(FF)I

    move-result p0

    if-ltz p0, :cond_9

    return p0

    :cond_9
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
    iget-object v1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->e()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_6

    return p3

    :cond_6
    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1, v0, p3}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->f(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->b(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->a:Landroid/graphics/Rect;

    if-ltz p1, :cond_11

    iget-object v1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->e()I

    move-result v1

    if-ge p1, v1, :cond_11

    iget-object v1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v1, p1, v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->a(ILandroid/graphics/Rect;)V

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->c()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_30
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget-object v0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->h()I

    move-result v0

    if-ne p1, v0, :cond_41

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    :cond_41
    iget-object p0, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {p0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->d()I

    move-result p0

    if-ne p1, p0, :cond_4d

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    :cond_4d
    return-void
.end method
