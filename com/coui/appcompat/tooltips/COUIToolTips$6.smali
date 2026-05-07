.class Lcom/coui/appcompat/tooltips/COUIToolTips$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;->animateExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$100(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$402(Lcom/coui/appcompat/tooltips/COUIToolTips;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->a:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$402(Lcom/coui/appcompat/tooltips/COUIToolTips;Z)Z

    return-void
.end method
