.class public Lcom/coui/appcompat/menu/COUISupportMenuView;
.super Landroid/view/View;
.source ""


# static fields
.field public static final u:[I

.field public static final v:[I

.field public static final w:[I

.field public static final x:[I


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/menu/COUISupportMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/graphics/Rect;

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Paint;

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

.field public t:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009e

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/menu/COUISupportMenuView;->u:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/menu/COUISupportMenuView;->v:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_24

    sput-object v1, Lcom/coui/appcompat/menu/COUISupportMenuView;->w:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/coui/appcompat/menu/COUISupportMenuView;->x:[I

    return-void

    :array_24
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_2c
    .array-data 4
        -0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/menu/COUISupportMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/menu/COUISupportMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->c:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->f:I

    const/high16 p1, 0x41f00000  # 30.0f

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->h:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    new-instance p1, Lcom/coui/appcompat/menu/COUISupportMenuView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/menu/COUISupportMenuView$1;-><init>(Lcom/coui/appcompat/menu/COUISupportMenuView;)V

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->t:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->o:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_padding_top:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_padding_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_view_padding_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_item_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_item_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_text_padding_top:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_text_max_length:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_text_padding_side:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_support_menu_item_textsize:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->h:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$color;->coui_support_menu_textcolor_select:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$color;->coui_support_menu_textcolor_normal:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$drawable;->coui_support_menu_item_cover:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget p3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->h:F

    const/4 v0, 0x4

    invoke-static {p3, p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->h:F

    iget-object p3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->s:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    iget-object p3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->t:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    iput-object p3, p1, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    iget-object v1, v1, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->x:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_6

    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(FF)I
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    if-gt v0, v2, :cond_23

    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float p1, p2, p1

    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    div-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_42

    :cond_23
    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float p1, v0, p1

    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->p:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_42

    add-int/2addr p1, v2

    :cond_42
    :goto_42
    iget p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    if-ge p1, p0, :cond_47

    move v1, p1

    :cond_47
    return v1
.end method

.method public clearAccessibilityFocus()V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->s:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_18

    iget-object v1, p0, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_18
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->s:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_29

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/menu/COUISupportMenuView;->b(FF)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->f:I

    goto :goto_29

    :cond_26
    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->a()V

    :goto_29
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public drawableStateChanged()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->f:I

    if-ltz v0, :cond_21

    iget v1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    iget-object v0, v0, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_21
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    return-void
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    return-void

    :cond_9
    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    if-gt v0, v2, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    iget v3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    div-int/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->n:I

    goto :goto_28

    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    iget v3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    div-int/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->n:I

    :goto_28
    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->n:I

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    add-int v3, v0, v2

    iget v4, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->r:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->q:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    if-lez v4, :cond_ab

    iget-object v4, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->c:Landroid/graphics/Rect;

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    rem-int v2, v3, v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    iget v5, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->n:I

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v2

    add-int/2addr v5, v2

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    rem-int v2, v3, v2

    mul-int/2addr v2, v5

    add-int/2addr v2, v6

    sub-int v2, v0, v2

    :cond_5f
    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->j:I

    iget v5, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    div-int v6, v3, v5

    if-lez v5, :cond_68

    goto :goto_6b

    :cond_68
    iget v5, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->p:I

    add-int/2addr v0, v5

    :goto_6b
    iget v5, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->d:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    iget-object v2, v0, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, v0, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->i:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->c:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->q:I

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, p0, v0}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    throw v0

    :cond_ab
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->j:I

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->d:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->l:I

    add-int/2addr p2, v0

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    iget p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->p:I

    iget p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    iget p2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    if-gt p1, p2, :cond_20

    goto :goto_22

    :cond_20
    mul-int/lit8 v0, v0, 0x2

    :goto_22
    iget p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->o:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_15

    const/4 v2, 0x3

    if-eq p1, v2, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->a()V

    return v1

    :cond_15
    iget p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->f:I

    if-gez p1, :cond_1d

    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->a()V

    return v1

    :cond_1d
    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v0
.end method

.method public setColorSupportMenuItem(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/menu/COUISupportMenuItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_9

    return-void

    :cond_9
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-le p1, v0, :cond_19

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    iget-object v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    goto :goto_3b

    :cond_19
    const/4 v0, 0x7

    if-ne p1, v0, :cond_28

    const/4 v0, 0x6

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    iget-object v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    goto :goto_3b

    :cond_28
    const/16 v0, 0x9

    if-ne p1, v0, :cond_39

    const/16 v0, 0x8

    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    iget-object v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    goto :goto_3b

    :cond_39
    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    :goto_3b
    const/4 v0, 0x5

    if-le p1, v0, :cond_43

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    goto :goto_45

    :cond_43
    iput v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    :goto_45
    iget p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    if-ge v1, p1, :cond_a5

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    iget-object p1, p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->w:[I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->u:[I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->v:[I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->x:[I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    iput-object v0, p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    iget-object p1, p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/menu/COUISupportMenuView;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_a5
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p0, 0x1

    return p0
.end method
