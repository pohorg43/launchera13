.class public final Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationContentAlpha(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $show:Z

.field public final synthetic this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    iput-boolean p2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    :goto_c
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->this$0:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_20

    :cond_15
    iget-boolean p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;->$show:Z

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1b
    const/16 p0, 0x8

    :goto_1d
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_20
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
