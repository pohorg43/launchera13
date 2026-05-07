.class public Lcom/coui/appcompat/list/COUIListView;
.super Landroid/widget/ListView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

.field public b:Z

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    const/4 p2, -0x2

    iput p2, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput p2, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    new-instance p1, Lcom/coui/appcompat/list/COUIListView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/list/COUIListView$1;-><init>(Lcom/coui/appcompat/list/COUIListView;)V

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_listview_scrollchoice_left_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->f:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_listview_scrollchoice_right_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->g:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :try_start_17
    iget v4, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    if-lez v4, :cond_63

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_66

    aget v5, v2, v3

    iget v6, p0, Lcom/coui/appcompat/list/COUIListView;->f:I

    sub-int/2addr v5, v6

    aget v2, v2, v3

    iget v6, p0, Lcom/coui/appcompat/list/COUIListView;->g:I

    add-int/2addr v2, v6

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5a

    if-le v1, v5, :cond_5a

    if-ge v1, v2, :cond_5a

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_5a

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_5a

    iput-boolean v2, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    return v2

    :cond_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_62

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    :cond_62
    return v3

    :cond_63
    :try_start_63
    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_65} :catch_66

    return v3

    :catch_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_6e

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    :cond_6e
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_a2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_2e

    if-eq v4, v3, :cond_28

    const/4 v5, 0x2

    if-eq v4, v5, :cond_30

    goto/16 :goto_a2

    :cond_28
    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    goto/16 :goto_a2

    :cond_2e
    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    :cond_30
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p1

    sub-int/2addr p1, v3

    if-ne v0, p1, :cond_3a

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/list/COUIListView;->a(II)V

    :cond_3a
    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    if-eqz p1, :cond_a1

    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    if-eq p1, v0, :cond_a1

    const/4 p1, -0x1

    if-eq v0, p1, :cond_a1

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;->a(ILandroid/view/View;)V

    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    if-eq p1, v2, :cond_86

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    const-wide/16 v4, 0x32

    if-ne v0, p1, :cond_73

    if-lez v0, :cond_73

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_86

    :cond_73
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    if-ne v0, p1, :cond_86

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_86

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_86
    :goto_86
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    if-ne p1, v0, :cond_9b

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    iget v1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;->a(ILandroid/view/View;)V

    :cond_9b
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    :cond_a1
    return v3

    :cond_a2
    :goto_a2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v3, :cond_ae

    const/4 v4, 0x3

    if-eq v0, v4, :cond_ae

    goto :goto_b8

    :cond_ae
    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->c:I

    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->d:I

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->e:Z

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->b:Z

    :goto_b8
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCheckItemId(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->i:I

    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->a:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    return-void
.end method
