.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideGesturesRunning(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5b

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5a
    return-void

    :cond_5b
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_8a

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$700(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideGesturesRunning(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    return-void

    :cond_75
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFullScreen(Landroid/app/Activity;Z)V

    goto :goto_e4

    :cond_8a
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)I

    move-result v0

    if-lez v0, :cond_bd

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$800(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gt v0, v2, :cond_bd

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$900(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$800(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_bd
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_e4
    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->onMotionEventSuceess()V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->access$1300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onSideSlipGestureStateChanged()V

    return-void
.end method
