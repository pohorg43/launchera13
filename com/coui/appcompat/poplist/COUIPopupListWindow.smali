.class public Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.super Lcom/coui/appcompat/poplist/COUIPopupWindow;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public E:Landroid/view/animation/Animation$AnimationListener;

.field public a:Landroid/content/Context;

.field public b:Landroid/widget/BaseAdapter;

.field public c:Landroid/widget/BaseAdapter;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Rect;

.field public h:Landroid/graphics/Rect;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/widget/ListView;

.field public l:Landroid/widget/ListView;

.field public m:Landroid/widget/AdapterView$OnItemClickListener;

.field public n:[I

.field public o:[I

.field public p:[I

.field public q:I

.field public r:Z

.field public s:F

.field public t:F

.field public u:I

.field public v:I

.field public w:Landroid/view/animation/Interpolator;

.field public x:Landroid/view/animation/Interpolator;

.field public y:Z

.field public z:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->r:Z

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    new-instance v2, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->E:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->q:I

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->l:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->l:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$layout;->coui_popup_list_window_layout:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget v3, Lcom/support/appcompat/R$id;->coui_popup_list_view:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v5, Lcom/support/appcompat/R$attr;->couiPopupWindowBackground:I

    aput v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_80

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$drawable;->coui_popup_window_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_80
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/view/ViewGroup;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$integer;->coui_animation_time_move_veryfast:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->u:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->v:I

    sget v0, Lcom/support/appcompat/R$anim;->coui_curve_opacity_inout:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->w:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    const/high16 v1, -0x80000000

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_23
    if-ge v5, v4, :cond_4f

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->l:Landroid/widget/ListView;

    invoke-interface {v0, v5, v8, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_3d

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :cond_3d
    invoke-virtual {v8, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-le v9, v6, :cond_4b

    move v6, v9

    :cond_4b
    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_4f
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->h(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_7c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    :cond_7c
    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->r:Z

    if-eqz v3, :cond_8c

    if-le v0, v1, :cond_8c

    move v0, v1

    :cond_8c
    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->q:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p1, :cond_b5

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_b5
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_f4

    if-eqz p1, :cond_ef

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v2, v3, v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_f4

    :cond_ef
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    :cond_f4
    :goto_f4
    return-void
.end method

.method public c(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->i:Ljava/util/List;

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Landroid/widget/BaseAdapter;

    :cond_d
    return-void
.end method

.method public d(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_386

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_c

    goto/16 :goto_386

    :cond_c
    iput-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c:Landroid/widget/BaseAdapter;

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->m:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v2, :cond_1c

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1c
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aget v6, v3, v5

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x2

    aget v7, v3, v6

    add-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x3

    aget v3, v3, v7

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    aget v3, v2, v4

    aget v2, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    aget v3, v2, v4

    aget v2, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    aget v2, v1, v4

    aget v1, v1, v5

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v8, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:[I

    aget v8, v3, v4

    aget v3, v3, v5

    iget-object v9, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    sub-int/2addr v2, v8

    aput v2, v9, v4

    sub-int/2addr v1, v3

    aput v1, v9, v5

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v2, v1, :cond_115

    goto/16 :goto_17b

    :cond_115
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    div-int/2addr v2, v6

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v9

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-lt v3, v2, :cond_151

    move v9, v5

    goto :goto_152

    :cond_151
    move v9, v4

    :goto_152
    if-lt v8, v2, :cond_156

    move v10, v5

    goto :goto_157

    :cond_156
    move v10, v4

    :goto_157
    iget-object v11, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    if-gtz v8, :cond_163

    if-gtz v3, :cond_163

    goto :goto_17b

    :cond_163
    if-eqz v10, :cond_166

    goto :goto_170

    :cond_166
    if-eqz v9, :cond_169

    goto :goto_171

    :cond_169
    if-le v3, v8, :cond_170

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->top:I

    goto :goto_171

    :cond_170
    :goto_170
    move v12, v2

    :goto_171
    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v3, v3, v5

    sub-int/2addr v12, v3

    invoke-virtual {v2, v1, v12}, Landroid/graphics/Point;->set(II)V

    :goto_17b
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_220

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    div-int/2addr v2, v6

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    if-le v2, v7, :cond_1d2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2bd

    :cond_1d2
    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    instance-of v7, v3, Landroid/app/Activity;

    if-eqz v7, :cond_20c

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_201

    iget-object v7, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_214

    :cond_201
    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_214

    :cond_20c
    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_214
    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2bd

    :cond_220
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-lt v2, v3, :cond_2a9

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2a9

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2a9

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    div-int/2addr v2, v6

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_28f

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    aget v2, v2, v4

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/2addr v3, v6

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    aget v3, v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_2bd

    :cond_28f
    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_29e

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    :cond_29e
    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2bd

    :cond_2a9
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    aget v2, v2, v4

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/2addr v3, v6

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    aget v3, v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_2bd
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-lt v1, v2, :cond_2d8

    iput v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->s:F

    goto :goto_2f1

    :cond_2d8
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->s:F

    :goto_2f1
    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v7, v7, v5

    sub-int/2addr v2, v7

    const/4 v7, 0x0

    if-lt v1, v2, :cond_304

    iput v7, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:F

    goto :goto_338

    :cond_304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->o:[I

    aget v1, v1, v5

    sub-int/2addr v8, v1

    if-le v2, v8, :cond_336

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v6

    add-int/2addr v2, v1

    iget-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:F

    goto :goto_338

    :cond_336
    iput v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:F

    :goto_338
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v1

    if-eqz v1, :cond_33f

    goto :goto_340

    :cond_33f
    move v5, v4

    :goto_340
    if-eqz v5, :cond_343

    goto :goto_386

    :cond_343
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v9, 0x3f666666  # 0.9f

    const v11, 0x3f666666  # 0.9f

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v13, 0x1

    iget v14, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->s:F

    const/4 v15, 0x1

    iget v2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:F

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v8, v1

    move/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->u:I

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->v:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_386
    :goto_386
    return-void
.end method

.method public dismiss()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_2d

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->v:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->E:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3b

    :cond_2d
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_38
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e()V

    :goto_3b
    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_19

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_19
    return-void
.end method
