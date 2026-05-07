.class public Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 2

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    if-nez p1, :cond_6

    goto :goto_47

    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    int-to-float v1, v1

    const/high16 v4, 0x44160000  # 600.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_24

    if-nez v2, :cond_47

    if-eqz v3, :cond_47

    :cond_24
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_47

    :cond_39
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_bottom_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_47
    :goto_47
    return v0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_56

    if-nez p1, :cond_6

    goto :goto_56

    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    int-to-float v1, v1

    const/high16 v4, 0x44160000  # 600.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_24

    if-nez v2, :cond_56

    if-eqz v3, :cond_56

    :cond_24
    invoke-static {p2, p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_47

    :cond_39
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_bottom_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_47
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_56
    :goto_56
    return v0
.end method

.method public static e(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez p1, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_e
    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_22

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-nez v2, :cond_29

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->f(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v2

    :cond_29
    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p1

    sub-int/2addr v2, p1

    goto :goto_39

    :cond_2f
    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->f(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p1

    sub-int v2, v0, p1

    :goto_39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->coui_panel_max_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_74

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_d
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->i(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :cond_2b
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hide_navigationbar_enable"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_43

    move v5, v7

    goto :goto_44

    :cond_43
    move v5, v0

    :goto_44
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_4a

    move v6, v7

    goto :goto_4b

    :cond_4a
    move v6, v0

    :goto_4b
    if-eqz v5, :cond_51

    if-eqz v6, :cond_51

    move v5, v7

    goto :goto_52

    :cond_51
    move v5, v0

    :goto_52
    if-eqz v3, :cond_71

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    const/high16 v3, 0x44160000  # 600.0f

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_5f

    move p1, v7

    goto :goto_60

    :cond_5f
    move p1, v0

    :goto_60
    if-nez p1, :cond_68

    if-ne v8, v7, :cond_65

    goto :goto_66

    :cond_65
    move v7, v0

    :goto_66
    if-eqz v7, :cond_71

    :cond_68
    const/4 p1, 0x3

    if-eq v4, p1, :cond_71

    if-nez v5, :cond_71

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->a(Landroid/content/Context;)I

    move-result v0

    :cond_71
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_74
    return v0
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_74

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_d
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {p2, p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :cond_2b
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_navigationbar_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_43

    move v4, v6

    goto :goto_44

    :cond_43
    move v4, v0

    :goto_44
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_4a

    move v5, v6

    goto :goto_4b

    :cond_4a
    move v5, v0

    :goto_4b
    if-eqz v4, :cond_51

    if-eqz v5, :cond_51

    move v4, v6

    goto :goto_52

    :cond_51
    move v4, v0

    :goto_52
    if-eqz p2, :cond_71

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    const/high16 p2, 0x44160000  # 600.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5f

    move p1, v6

    goto :goto_60

    :cond_5f
    move p1, v0

    :goto_60
    if-nez p1, :cond_68

    if-ne v7, v6, :cond_65

    goto :goto_66

    :cond_65
    move v6, v0

    :goto_66
    if-eqz v6, :cond_71

    :cond_68
    const/4 p1, 0x3

    if-eq v3, p1, :cond_71

    if-nez v4, :cond_71

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->a(Landroid/content/Context;)I

    move-result v0

    :cond_71
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_74
    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p0, :cond_1b

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_1b
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static i(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static j(Landroid/view/WindowInsets;Landroid/content/Context;)I
    .registers 3

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/app/Activity;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static l(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    const p1, 0x444a4000  # 809.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static m(Landroid/content/res/Configuration;)Z
    .registers 2
    .param p0  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static n(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .registers 2

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_a
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p0, p0

    const/high16 p1, 0x44160000  # 600.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method
