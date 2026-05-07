.class Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$3;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$3;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget-object p1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$3;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
