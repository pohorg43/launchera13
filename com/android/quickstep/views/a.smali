.class public final synthetic Lcom/android/quickstep/views/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/a;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_4e

    :pswitch_6  #0x8
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->h0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_e  #0x7
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->a(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_16  #0x6
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->a(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1e  #0x5
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->a(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_26  #0x4
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->a(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2e  #0x3
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->c(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_36  #0x2
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->a(Lcom/android/wm/shell/bubbles/BadgedImageView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3e  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->b(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_46  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView;->a(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_4e
    iget-object p0, p0, Lcom/android/quickstep/views/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->a(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_46  #00000000
        :pswitch_3e  #00000001
        :pswitch_36  #00000002
        :pswitch_2e  #00000003
        :pswitch_26  #00000004
        :pswitch_1e  #00000005
        :pswitch_16  #00000006
        :pswitch_e  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
