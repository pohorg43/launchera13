.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v2, :cond_46

    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g0:Z

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_min_padding_top_tiny_screen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    goto :goto_46

    :cond_35
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_normal_padding_top_tiny_screen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    :cond_46
    :goto_46
    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_58

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Z:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    :cond_58
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n(Landroid/view/WindowInsets;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_71

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:Landroid/view/inputmethod/InputMethodManager;

    :cond_71
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$bool;->is_coui_bottom_sheet_ime_adjust_in_constraint_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v2, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v3, Lcom/support/appcompat/R$id;->coui_panel_content_layout:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_98

    move-object v1, v2

    :cond_98
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v3, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a1

    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    goto :goto_a3

    :cond_a1
    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    :goto_a3
    if-eq v3, v2, :cond_aa

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    :cond_aa
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_b1

    iget-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    goto :goto_b3

    :cond_b1
    iget-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    :goto_b3
    iput-object v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b9

    move-object v5, v0

    goto :goto_ba

    :cond_b9
    move-object v5, v1

    :goto_ba
    iget-boolean v0, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->T:Z

    if-eqz v0, :cond_d4

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v7, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    iget-boolean v8, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V

    :cond_d4
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-object p2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Landroid/view/WindowInsets;

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Landroid/view/WindowInsets;

    return-object p0
.end method
