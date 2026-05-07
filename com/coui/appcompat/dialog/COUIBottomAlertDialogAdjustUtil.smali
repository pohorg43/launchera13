.class public Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Window;Z)V
    .registers 5

    sget v0, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_dialog_max_width_in_bottom_free:I

    invoke-static {p0, v2, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->d(Landroid/view/Window;II)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/support/appcompat/R$drawable;->coui_free_bottom_alert_dialog_background:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->e(Landroid/view/Window;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3b

    :cond_26
    move-object p1, v0

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    sget v2, Lcom/support/appcompat/R$dimen;->coui_dialog_max_width:I

    invoke-static {p0, v2, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->d(Landroid/view/Window;II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxWidth(I)V

    sget p1, Lcom/support/appcompat/R$drawable;->coui_alert_dialog_builder_background:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->e(Landroid/view/Window;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3b
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_3e
    return-void
.end method

.method public static b(Landroid/view/Window;Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;)V
    .registers 3

    sget v0, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setOnSizeChangeListener(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;)V

    :cond_f
    return-void
.end method

.method public static c(Landroid/view/Window;Landroid/view/View;)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->f(Landroid/view/View;)Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v3

    goto :goto_34

    :cond_31
    move v3, v1

    move v4, v3

    move v5, v4

    :goto_34
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/2addr v9, v10

    div-int/2addr v6, v10

    sub-int/2addr v9, v6

    sub-int/2addr v9, v5

    invoke-static {v9, v1, v8}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->g(III)I

    move-result v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v2, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    if-le v7, v2, :cond_62

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, p1, v7

    :cond_62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_7f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_7a

    if-nez v3, :cond_79

    goto :goto_7a

    :cond_79
    sub-int/2addr v8, v4

    :cond_7a
    :goto_7a
    invoke-static {v8, v1, v6}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->g(III)I

    move-result p1

    goto :goto_84

    :cond_7f
    sub-int/2addr v8, v4

    invoke-static {v8, v1, v6}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->g(III)I

    move-result p1

    :goto_84
    new-array v0, v10, [I

    aput v5, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    aget p1, v0, v1

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static d(Landroid/view/Window;II)I
    .registers 3
    .param p0  # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_12

    if-nez p1, :cond_d

    goto :goto_12

    :cond_d
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    return p2
.end method

.method public static e(Landroid/view/Window;I)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0  # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_12

    if-nez p1, :cond_d

    goto :goto_12

    :cond_d
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v1, v3, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static g(III)I
    .registers 3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
