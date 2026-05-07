.class public final synthetic Lcom/android/quickstep/util/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/OplusRemoteAnimationProvider;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/h;->a:Lcom/android/quickstep/util/OplusRemoteAnimationProvider;

    iput-object p2, p0, Lcom/android/quickstep/util/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/util/h;->a:Lcom/android/quickstep/util/OplusRemoteAnimationProvider;

    iget-object v1, p0, Lcom/android/quickstep/util/h;->b:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/quickstep/util/OplusRemoteAnimationProvider;->a(Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method
