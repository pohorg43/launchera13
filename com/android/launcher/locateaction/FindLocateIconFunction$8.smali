.class Lcom/android/launcher/locateaction/FindLocateIconFunction$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/locateaction/FindLocateIconFunction;->animationIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;


# direct methods
.method public constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$8;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$8;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$800(Lcom/android/launcher/locateaction/FindLocateIconFunction;)Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$8;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-static {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$800(Lcom/android/launcher/locateaction/FindLocateIconFunction;)Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_15
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
