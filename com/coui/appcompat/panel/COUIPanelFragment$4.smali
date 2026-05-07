.class Lcom/coui/appcompat/panel/COUIPanelFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Lcom/coui/appcompat/panel/COUIPanelFragment;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->c:Lcom/coui/appcompat/panel/COUIPanelFragment;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->a:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->b:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->c:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->access$100(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->c:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->access$100(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$4;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
