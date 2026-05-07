.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;->b:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;->a:Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;->b:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->a:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->a:Z

    :cond_1c
    return-void
.end method
