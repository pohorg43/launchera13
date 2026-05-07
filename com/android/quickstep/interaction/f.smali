.class public final synthetic Lcom/android/quickstep/interaction/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/animation/AnimatorSet;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/HomeGestureTutorialController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/interaction/f;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_36

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->c(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->d(Lcom/android/quickstep/interaction/AllSetActivity;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->continueTutorial()V

    return-void

    :pswitch_26  #0x1
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->l(Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V

    return-void

    :pswitch_2e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->l(Lcom/android/quickstep/interaction/HomeGestureTutorialController;)V

    return-void

    :goto_36
    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_26  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
