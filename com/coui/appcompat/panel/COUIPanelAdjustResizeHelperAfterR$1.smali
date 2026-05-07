.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;Z)V
    .registers 4

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->b:Z

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_14
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->b:Z

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_14
    return-void
.end method
