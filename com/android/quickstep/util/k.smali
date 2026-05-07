.class public final synthetic Lcom/android/quickstep/util/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/util/k;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/quickstep/util/k;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/quickstep/util/k;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/util/k;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/quickstep/util/k;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/quickstep/util/k;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/util/k;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_1e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/util/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iget-object v1, p0, Lcom/android/quickstep/util/k;->c:Ljava/lang/Object;

    check-cast v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/android/quickstep/util/k;->d:Ljava/lang/Object;

    check-cast v2, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/android/quickstep/util/k;->e:Ljava/lang/Object;

    check-cast v3, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/android/quickstep/util/k;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->b(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/quickstep/util/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/quickstep/util/k;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/quickstep/util/k;->e:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/util/k;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/util/ImageActionUtils;->e(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
