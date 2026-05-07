.class public final synthetic Lcom/android/launcher/pageindicators/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/views/PressFeedbackButton;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Z)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;Z)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;Z)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/android/launcher3/folder/big/FolderIndicator;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    iput-object p2, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_42

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->b(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_10  #0x4
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->a(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1a  #0x3
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    iget-object p0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/FolderIndicator;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->a(ZLcom/android/launcher3/folder/big/FolderIndicator;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_24  #0x2
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/anim/IconPressAnimManager;

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->a(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2e  #0x1
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->a(Lcom/android/launcher/views/PressFeedbackButton;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_38  #0x0
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->c(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZLandroid/animation/ValueAnimator;)V

    return-void

    :goto_42
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->a(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_2e  #00000001
        :pswitch_24  #00000002
        :pswitch_1a  #00000003
        :pswitch_10  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
