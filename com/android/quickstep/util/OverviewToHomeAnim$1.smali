.class Lcom/android/quickstep/util/OverviewToHomeAnim$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OverviewToHomeAnim;->animateWithVelocity(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/OverviewToHomeAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$1;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$1;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/quickstep/util/OverviewToHomeAnim;->access$002(Lcom/android/quickstep/util/OverviewToHomeAnim;Z)Z

    iget-object p0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$1;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    invoke-static {p0}, Lcom/android/quickstep/util/OverviewToHomeAnim;->access$100(Lcom/android/quickstep/util/OverviewToHomeAnim;)V

    return-void
.end method
