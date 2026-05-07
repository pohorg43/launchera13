.class Lcom/android/launcher3/OplusCellLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateLastChildToRemove(Landroid/view/View;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mIsCancel:Z

.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$child:Landroid/widget/ImageView;

.field public final synthetic val$launcher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;Lcom/android/launcher/Launcher;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$8;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$8;->val$child:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/launcher3/OplusCellLayout$8;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$8;->mIsCancel:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusCellLayout$8;Lcom/android/launcher/Launcher;Landroid/widget/ImageView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusCellLayout$8;->lambda$onAnimationEnd$0(Lcom/android/launcher/Launcher;Landroid/widget/ImageView;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Lcom/android/launcher/Launcher;Landroid/widget/ImageView;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout$8;->mIsCancel:Z

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$8;->this$0:Lcom/android/launcher3/OplusCellLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusCellLayout;->access$202(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1c
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$8;->mIsCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$8;->val$launcher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout$8;->val$child:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher3/t0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/t0;-><init>(Lcom/android/launcher3/OplusCellLayout$8;Lcom/android/launcher/Launcher;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$8;->val$child:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
