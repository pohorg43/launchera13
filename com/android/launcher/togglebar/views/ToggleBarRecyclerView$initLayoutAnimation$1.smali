.class public final Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $bottomButton:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iput-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->$bottomButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.togglebar.adapter.AbstractToggleBarAdapter<@[FlexibleNullability] androidx.recyclerview.widget.RecyclerView.ViewHolder?>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getSelectedPosition()I

    move-result p1

    const-string/jumbo v0, "selectedPostion = "

    const-string v1, "ToggleBarRecyclerView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollToPosition(I)V

    :cond_2c
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->access$setMDispatchTouch$p(Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;Z)V

    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->access$setMDispatchTouch$p(Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;Z)V

    const-string p1, "ToggleBarRecyclerView"

    const-string v0, "Layout animation start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->$bottomButton:Landroid/view/View;

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView$initLayoutAnimation$1;->this$0:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->getBottomButtonAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1a
    return-void
.end method
