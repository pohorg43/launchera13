.class public final Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/LearningGesturesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayChanged()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->access$getHasConfigurationChangeInvoked$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "onOverlayChanged, configChangeInvoked="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LearningGesturesActivity"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {v0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->access$getHasConfigurationChangeInvoked$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;->this$0:Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->access$getMAdapter$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    move-result-object p0

    if-nez p0, :cond_32

    const-string p0, "mAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_35
    return-void
.end method
