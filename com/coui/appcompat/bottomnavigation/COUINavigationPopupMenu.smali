.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;
    }
.end annotation


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/support/appcompat/R$layout;->coui_navigation_popup_item:I

    sput v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->a:I

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onGlobalLayout()V
    .registers 1

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    const/16 p0, 0x52

    if-eq p2, p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    throw p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    return-void
.end method
