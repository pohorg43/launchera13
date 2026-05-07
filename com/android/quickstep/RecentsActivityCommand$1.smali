.class Lcom/android/quickstep/RecentsActivityCommand$1;
.super Lcom/android/quickstep/util/OplusRemoteAnimationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsActivityCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/RecentsActivityCommand;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivityCommand;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand$1;->this$0:Lcom/android/quickstep/RecentsActivityCommand;

    invoke-direct {p0}, Lcom/android/quickstep/util/OplusRemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand$1;->this$0:Lcom/android/quickstep/RecentsActivityCommand;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsActivityCommand;->access$000(Lcom/android/quickstep/RecentsActivityCommand;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method
