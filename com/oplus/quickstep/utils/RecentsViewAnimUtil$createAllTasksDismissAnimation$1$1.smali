.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $removedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;->$removedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->access$setAllTaskDismissRunning$p(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;->$removedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p0, :cond_11

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {p0}, Lcom/android/common/util/SoundPlayerUtils;->playDeleteSound()V

    :cond_11
    return-void
.end method
